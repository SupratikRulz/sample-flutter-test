import 'package:flutter/material.dart';
// import 'package:solo_flutter_example/example.service.dart';

/* 
PART - 1
---------
   Use ```ExampleService.instance.getToken()``` to get the access_token
   Show a loading indicator when data is being fetched and keep 'Get Details' button disabled
   If error, show a error text and hide loading indicator
   If success, show the access token in the screen and enable 'Get Details' button
*/
/* 
PART - 2
---------
  If the user clicks on 'Get Details' button,
  it will interact with the flutter plugin which you will create for the iOS.

curl -X 'GET' \
  'https://user-service.solobeta.co/v1/user/context' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer $access_token'

  iOS part of the plugin will do a GET api call to specified API in cUrl above with the access_token
  that is passed to the flutter plugin and will return flutter parsable object.
  In case of android device it will return "Not Implemented" as a value of error key of the parsable object.
*/

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var token = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solo Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Token received: $token',
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
                onPressed: () {
                  // Interact with Flutter SDK with the access_token (that is received by calling ExampleService.instance.getToken())
                }),
          ],
        ),
      ),
    );
  }
}
