import 'package:flutter/material.dart';
import 'package:travel_app/pages/profilepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // To save the value written in the text
  final TextEditingController emailController = TextEditingController();

  bool isVisible = true;

  String getName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              CustomTextField(
                hintText: 'Email',
                icons: Icons.email,
                controllerl: emailController,
              ),
              CustomTextField(
                hintText: 'Username',
                icons: Icons.usb_rounded,
              ),
              TextFormField(
                controller: emailController,
                obscureText: isVisible,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                      print(isVisible);
                    },
                    icon: isVisible == true
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ), //
                ),
              ),
              // CustomTextField(
              //   hintText: 'Password',
              //   icons: Icons.email,
              //   suffixIcon: Icons.remove_red_eye,
              // ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              getName = emailController.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePagee(myText: getName);
              }));
              // setState(() {
              //   getName = emailController.text;
              // });
              // print(emailController.text.toString());
            },
            child: Text('Login'),
          ),
          Center(
            child: Text(
              'Password: $getName',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icons;
  final IconData? suffixIcon;
  final TextEditingController? controllerl;

  CustomTextField(
      {required this.hintText,
      required this.icons,
      this.suffixIcon,
      this.controllerl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controllerl,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.blue,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.blue,
              ),
            ),
            hintText: hintText,
            prefixIcon: Icon(
              icons,
            ),
            suffixIcon: Icon(suffixIcon)),
      ),
    );
  }
}
