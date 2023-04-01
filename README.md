An extension to standard functionality of [Serverpod's](https://github.com/serverpod/serverpod) [CloudStorage](https://github.com/serverpod/serverpod/blob/70473726427c4989ef0506473c08412a97cff80e/packages/serverpod/lib/src/cloud_storage/cloud_storage.dart). It extends only the S3 functionality, there is no support for other providers of cloud services.

## Features

Standard [CloudStorage](https://github.com/serverpod/serverpod/blob/70473726427c4989ef0506473c08412a97cff80e/packages/serverpod/lib/src/cloud_storage/cloud_storage.dart) defines only the most basic of API calls to providers of cloud services. This package exposes some additional REST API calls to AWS, such as:

- list bucket contents
- copy object

and it should be easy to extend this list to other methods, if there is ever a need to do so.

## Getting started

I wrote this package as a temporary fix to the current shortcoming of Serverpod and, as such, I'd expect it to be deprecated in not so distant future, as Serverpod becomes more advanced/complete. For this reason, I'm not planning on registering this package. To use it, simply clone the repo and use it as as a local package. (You'll of course need to depend on `Serverpod`. See [Serverpod](https://serverpod.dev/) for more info on how to get started.)

## Usage

In your `server.dart` add:

```dart
// * ADDED *
late final AwsS3ClientExtension awsS3ClientExtension;

void run(List<String> args) async {
    // (...)

    // * ADDED *
    awsS3ClientExtension = AwsS3ClientExtension(
        serverpod: pod,
        region: 'bucket-region', // probably us-west-2
        buckets: {
            'private': 'name-of-your-private-bucket',
            'public': 'name-of-your-public-bucket',
        },
    );
}
```

> :warning: [AwsS3ClientExtension] will work **only if** you've added [S3CloudStorage] to your `pod`!

And then, you may call `awsS3ClientExtension` from your endpoints, for instance:

```dart
class MyEndpoint extends Endpoint {
    Future<bool> copyObject(
        Session session, {
        required String sourcePath,
        required String destinationPath,
        bool sourcePublic = false,
        bool destinationPublic = false,
    }) async {
        final result = await awsS3ClientExtension.copyObject(
            destinationPath: destinationPath,
            destinationBucket: awsS3ClientExtension.buckets[destinationPublic ? 'public' : 'private']!,
            sourcePath: sourcePath,
            sourceBucket: awsS3ClientExtension.buckets[sourcePublic ? 'public' : 'private']!,
        );
        return result != null;
    }

    Future<List<String>?> listFiles(
        Session session, {
        String directory,
        bool public = true
    }) async {
        final result = await awsS3ClientExtension.listObjects(
            bucketId: awsS3ClientExtension.buckets[public ? 'public' : 'private']!,
            prefix: directory,
        );
        return result?.map((r)=>r.name).toList();
    }
}

```
