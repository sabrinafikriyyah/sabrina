import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  TextEditingController _loginUsernameController = TextEditingController();
  TextEditingController _loginPasswordController = TextEditingController();

  TextEditingController _registerUsernameController = TextEditingController();
  TextEditingController _registerPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login/Register Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _loginUsernameController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Username cannot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    controller: _loginPasswordController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Password cannot be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_loginFormKey.currentState?.validate() ?? false) {
                        // Perform login logic here
                        // You can access the entered values using
                        // _loginUsernameController.text and _loginPasswordController.text
                        // Add your authentication logic here
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _registerFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _registerUsernameController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Username cannot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    controller: _registerPasswordController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Password cannot be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  TextFormField(
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Confirm Password cannot be empty';
                      } else if (value != _registerPasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_registerFormKey.currentState?.validate() ?? false) {
                        // Perform registration logic here
                        // You can access the entered values using
                        // _registerUsernameController.text and _registerPasswordController.text
                        // Add your registration logic here
                      }
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
