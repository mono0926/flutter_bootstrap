# flutter_bootstrap

# Usage

## Create plain project

```bash
# Flutter App
./scripts/bootstrap.sh
# Package(including example)
./scripts/bootstrap_package.sh
```

The project will be generated on `generated` directory.

## Add Firebase

See [Add Firebase to your Flutter app](https://firebase.google.com/docs/flutter/setup#top_of_page)

### Android

1. Add `classpath 'com.google.gms:google-services:4.3.2'` to `build.gradle` - `dependencies`
2. Add `apply plugin: 'com.google.gms.google-services'` to line line of `app/build.gradle`.
3. Modify `minSdkVersion` to 21 or higher.
    - [Enable multidex for apps with over 64K methods](https://developer.android.com/studio/build/multidex.html#top_of_page)
