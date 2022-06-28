# solo_flutter_example

To install flutter on your device visit [flutter install docs](https://docs.flutter.dev/get-started/install)
## Getting Started

To run the app type:
```dart
flutter run
```

To build the app type:

```dart
flutter build apk
flutter build ios
```

## Problem Statement
### PART-1
---

- When the user clicks on 'Get Details' button, app will interact with the native flutter plugin which you will create for the iOS/android platform and pass `access_token` to it.

- ```bash
  curl -X 'GET' \
  'https://user-service.solobeta.co/v1/user/context' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer $access_token'
- Your native plugin will do a GET api call to the cUrl mentioned above with the `access_token` that is passed to the plugin and will return flutter parsable object. It is assumed that the function name flutter with interact with is `getUserDetails`. And the method channel name is `com.example.solo_flutter_example/getUserDetails`

### Useful Links
- Android: https://docs.flutter.dev/development/platform-integration/platform-channels#step-3-add-an-android-platform-specific-implementation
- iOS: https://docs.flutter.dev/development/platform-integration/platform-channels#step-4-add-an-ios-platform-specific-implementation

## Evaluation

You will be evaluated on the code readability, extensibility and architecture. Good UI asthetics is not a mandate.