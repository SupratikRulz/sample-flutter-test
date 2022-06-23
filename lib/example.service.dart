import 'dart:convert';
import 'dart:math';

class ExampleService {
  ExampleService._internal();

  static final ExampleService instance = ExampleService._internal();

  Future<dynamic> getToken() {
    return Future.delayed(const Duration(seconds: 3)).then((value) {
      bool errorBool = Random().nextBool();

      if (errorBool) {
        throw jsonEncode({'status': 500, 'message': 'Server Fake error'});
      } else {
        return jsonEncode({
          'status': 200,
          'access_token':
              'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1PRkRUdTZ6VjBXRlFjVUY0YkxwRCJ9.eyJodHRwczovL3NvbG9ub3cuY28vdjEvdXNlcl9pZCI6MTAwMDAwMDE0MiwiaHR0cHM6Ly9zb2xvbm93LmNvL3YxL3N0cmlwZV9hY2NvdW50X2lkIjoiYWNjdF8xTERSbWk0Sk9scGhNeWdUIiwiaXNzIjoiaHR0cHM6Ly9iZXRhLXNvbG8tcGF5LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJzbXN8NjJiMmZlMDY2ZjFhMWE1Y2JiM2E2ZTcxIiwiYXVkIjpbImh0dHBzOi8vc29sb25vdy5jby92MS8iXSwiaWF0IjoxNjU1OTc2MDkyLCJleHAiOjE2NTYwNjI0OTIsImF6cCI6ImRNMFVzMXFmbU9ta1FrdFgzQVp3U001VzdRR1p0QUpEIiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCBvZmZsaW5lX2FjY2VzcyJ9.fqgRh5463O0mKE0JdZjwyHZl2n2vo6SyG57O3o8o3j2MhagS8OYjSTbZmxGfLUd992IvzY6AqAkVDysneAMAjJ8KzMJ4ZZMeZGGTcxKr3ygkqni835F7htdpY_A8aiPp79PKUAVd2kglE_lDaOEgdp4FGlFC4fetPXnjOsSkDcgJmVCnQp_dQLwEANDPY-rUIyeFD2EvN0TMZw4oTPcqgJwXTyu_WUrLsDHWWdJ9l03uaPDApLFYgctmX4l_b666kTpRVi6Sf6z7CZPKm64ox__YjnvFKrtH_BacE9CP8L8hCE_QVxppvZC6yZc71_zBYmRB3T0uwEY8851O39yrPQ'
        });
      }
    });
  }
}
