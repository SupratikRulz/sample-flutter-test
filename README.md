# solo_flutter_example

A new Flutter project.

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
### PART - 1
---

   - Use `ExampleService.instance.getToken()` to get the access_token
   - Show a loading indicator when data is being fetched and keep 'Get Details' button disabled
   - If error, show a error text and hide loading indicator
   - If success, show the access token in the screen and enable 'Get Details' button


### PART-2
---

- When the user clicks on 'Get Details' button, it will interact with the flutter plugin which you will create for the iOS and pass `access_token` to it.

- ```bash
  curl -X 'GET' \
  'https://user-service.solobeta.co/v1/user/context' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer $access_token'
- iOS part of the plugin will do a GET api call to mentioned in the cUrl above with the `access_token` that is passed to the flutter plugin and will return flutter parsable object. In case of android device it will return "Not Implemented" as a value of error key of the parsable object.

## Evaluation

You will be evaluated on the code readability, extensibility and architecture. Good UI asthetics is not a mandate.