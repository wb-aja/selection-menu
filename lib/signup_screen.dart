import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController userName2Controller = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController conPassword2Controller = TextEditingController();

  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  FocusNode _focusNode5 = FocusNode();
  FocusNode _focusNode6 = FocusNode();
  FocusNode _focusNode7 = FocusNode();

  Color _color3 = Colors.grey;
  Color _color4 = Colors.grey;
  Color _color5 = Colors.grey;
  Color _color6 = Colors.grey;
  Color _color7 = Colors.grey;

  bool hidePass = true;
  double textSize = 12.0;
  @override
  void initState() {
    _focusNode3.addListener(() {
      if (_focusNode3.hasFocus) {
        setState(() {
          _color3 = Colors.orange;
        });
      } else {
        setState(() {
          _color3 = Colors.grey;
        });
      }
    });
    _focusNode4.addListener(() {
      if (_focusNode4.hasFocus) {
        setState(() {
          _color4 = Colors.orange;
        });
      } else {
        setState(() {
          _color4 = Colors.grey;
        });
      }
    });
    _focusNode5.addListener(() {
      if (_focusNode5.hasFocus) {
        setState(() {
          _color5 = Colors.orange;
        });
      } else {
        setState(() {
          _color5 = Colors.grey;
        });
      }
    });
    _focusNode6.addListener(() {
      if (_focusNode6.hasFocus) {
        setState(() {
          _color6 = Colors.orange;
        });
      } else {
        setState(() {
          _color6 = Colors.grey;
        });
      }
    });
    _focusNode7.addListener(() {
      if (_focusNode7.hasFocus) {
        setState(() {
          _color7 = Colors.orange;
        });
      } else {
        setState(() {
          _color7 = Colors.grey;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                iconSize: 30,
                color: Colors.black,
                splashColor: Colors.orange,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ]),
          Text(
            'Lets Get Started!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          Text(
            'Create an account to Q Allure to get all features ',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 40,
          ),
          Theme(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    style: TextStyle(color: _color3),
                    controller: userName2Controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Username',
                    ),
                    focusNode: _focusNode3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: _color4),
                    controller: mailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Email',
                    ),
                    focusNode: _focusNode4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: _color5),
                    controller: phoneController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_android),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Phone',
                    ),
                    focusNode: _focusNode5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    style: TextStyle(color: _color6),
                    controller: password2Controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Password',
                    ),
                    focusNode: _focusNode6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    style: TextStyle(color: _color7),
                    controller: conPassword2Controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Confirm Password',
                    ),
                    focusNode: _focusNode7,
                  ),
                ),
              ],
            ),
            data: Theme.of(context).copyWith(
              primaryColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Fitur sedang dalam pengembangan'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('CREATE')),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
              text: 'Already have an account ? ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Login here',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
