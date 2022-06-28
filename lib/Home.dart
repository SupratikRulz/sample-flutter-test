import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/* 
PART - 1
---------
  If the user clicks on 'Get Details' button,
  it will interact with the flutter plugin which you will create for the iOS/Android.

curl -X 'GET' \
  'https://user-service.solobeta.co/v1/user/context' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer $access_token'

  The plugin will do a GET api call to specified API in cUrl above with the access_token
  that is passed to the flutter plugin and will return flutter parsable object.
*/

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform =
      MethodChannel('com.example.solo_flutter_example/getUserDetails');
  String accessToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1PRkRUdTZ6VjBXRlFjVUY0YkxwRCJ9.eyJodHRwczovL3NvbG8uY28vdjEvdXNlcl9pZCI6MTAwMDAwMDE0MiwiaHR0cHM6Ly9zb2xvLmNvL3YxL3N0cmlwZV9hY2NvdW50X2lkIjoiYWNjdF8xTERSbWk0Sk9scGhNeWdUIiwiaXNzIjoiaHR0cHM6Ly9iZXRhLXNvbG8tcGF5LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJzbXN8NjJiMmZlMDY2ZjFhMWE1Y2JiM2E2ZTcxIiwiYXVkIjpbImh0dHBzOi8vc29sby5jby92MS8iXSwiaWF0IjoxNjU2NDA3NjA2LCJleHAiOjE2NTY0OTQwMDYsImF6cCI6ImRNMFVzMXFmbU9ta1FrdFgzQVp3U001VzdRR1p0QUpEIiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCBvZmZsaW5lX2FjY2VzcyJ9.A3lgMs-9IbbqHfekTFySP72w-Nb71AE_apvblfD4PjCJsLBTKASG9g75-3VV6_Ro6V0dY6nz6MXBXPRrsFsr0XkOJ9bqn6920tWSUQez-D9UewLSt9pOcL3Bba08w5U3XJY0NBXqQIWzWGzIAhhqU8sIpAvwauSd1IsTYRAySHpP5QYP2sY5LRLaCa0YNxkHkcViCwhmKYN3vJt67eCBeGJRZgUK8C4gZ2fpDX3SlQ_8Hhq6K9Rggny71Td-pmPuGuoDXVxw_oORQXvEIk5UWl3yY12VZIHKtWDXTK80hlGvIrJHeeQXyAfnjBxeX09UfLYiIe0slPcEvOZChyxJjg";
  String _firstName = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solo Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First Name received: $_firstName',
            ),
            const SizedBox(
              height: 24,
            ),
            MaterialButton(
                child: Container(
                  color: const Color(0xFF232323),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: const Text(
                    "Get Details",
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
                onPressed: () async {
                  dynamic result = await platform.invokeListMethod(
                      'getUserDetails', {'access_token': accessToken});
                  setState(() {
                    _firstName = result['first_name'];
                  });
                }),
          ],
        ),
      ),
    );
  }
}
