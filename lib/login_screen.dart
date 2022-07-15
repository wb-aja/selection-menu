import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'home_screen.dart';

//List<FocusNode> _focusNodes = [
// FocusNode(),
// FocusNode(),
//];

//@override
//void initState() {
// _focusNodes.forEach((node) {
//    node.addListener(() {
//      setState(() {});
//    });
//  });
//  super.initState();
//}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;

  //FocusNode fieldNode = FocusNode();

  bool hidePass = true;
  double textSize = 12.0;

  @override
  void initState() {
    _focusNode1.addListener(() {
      if (_focusNode1.hasFocus) {
        setState(() {
          _color1 = Colors.blue;
        });
      } else {
        setState(() {
          _color1 = Colors.grey;
        });
      }
    });
    _focusNode2.addListener(() {
      if (_focusNode2.hasFocus) {
        setState(() {
          _color2 = Colors.blue;
        });
      } else {
        setState(() {
          _color2 = Colors.grey;
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
            height: 30,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/salero.jpg',
              height: 800,
            ),
          ),
          Text(
            'Salero',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
          ),
          Theme(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    //Theme.of(context).primaryColor
                    style: TextStyle(color: _color1),
                    controller: userNameController,
                    //focusNode: _focusNodes[0],
                    //focusNode: fieldNode,
                    //cursorColor: Colors.black,
                    //keyboardType: TextInputType.text,
                    //style: TextStyle(
                    //color: Colors.black
                    //),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        //color: fieldNode.hasFocus ? Theme.of(context).primaryColor : Colors.blue
                        //color: _focusNodes[0].hasFocus ? Colors.blue :
                        //color : Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      //labelStyle: TextStyle(color: Colors.blue,),
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
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Username',
                      hintText: 'Username',
                    ),
                    focusNode: _focusNode1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    style: TextStyle(color: _color2),
                    obscureText: hidePass,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        //color: Theme.of(context).primaryColor
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(hidePass ? Icons.visibility : Icons.visibility_off),
                        //color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            hidePass = !hidePass;
                          });
                        },
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
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      //labelText: 'Password',
                      hintText: 'Password',
                    ),
                    focusNode: _focusNode2,
                  ),
                ),
              ],
            ),
            data: Theme.of(context).copyWith(
              primaryColor: Colors.blue,
              // textTheme: const TextTheme(
              //  subtitle1: const TextStyle(
              //    color: Colors.blue, // <-- TextFormField input color
              //  ),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Container(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                  text: 'Forgot Password?',
                  style: TextStyle(fontSize: textSize, color: Colors.black),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Fitur dalam pengembangan'),
                        ),
                      );
                    },
                ),
              ),
              //TextSpan(
              //  text: 'Forgot Password?',
              //  style: TextStyle(color: Colors.black),
              //  recognizer: TapGestureRecognizer()
              //    ..onTap = () {
              //          ScaffoldMessenger.of(context).showSnackBar(
              //          SnackBar(
              //            content: Text('Fitur dalam pengembangan'),
              //          ),
              //       );
              //    },
              //),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  if (userNameController.text == "kasir1" && passwordController.text == "kasir1") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Sukses login'),
                      ),
                    );
                    var box = Hive.box('userBox');
                    box.put('isLogin', true);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('User name atau password salah'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('LOG IN')),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
