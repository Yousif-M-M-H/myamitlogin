import 'package:amitlogin/widgets/sign_in_button.dart';
import 'package:amitlogin/widgets/sign_in_icons.dart';
import 'package:amitlogin/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .5,
                decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
              Container(
                height: height * .5,
                decoration: BoxDecoration(color: Colors.grey[200]),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: height * 0.33,
                width: width * 0.9,
                child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                MyTextField(
                                    icon: Icon(Icons.email), title: 'Email'),
                                SizedBox(
                                  height: 20,
                                ),
                                MyTextField(
                                    icon: Icon(Icons.lock_outlined),
                                    title: 'password')
                              ],
                            )),
                        SignInButton(
                          text: "Sign in",
                          mycolor: Colors.purple,
                          textcolor: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.purple),
                        )
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 230,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                )),
                Text("Or Connect Using"),
                Expanded(child: Divider())
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 120,
              child: Container(
                height: 90,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInIcon(icon: Icons.facebook, color: Colors.blue),
                    SizedBox(width: 10),
                    SignInIcon(icon: Icons.mail, color: Colors.red),
                    SizedBox(width: 10),
                    SignInIcon(
                        icon: Icons.phone_android_sharp, color: Colors.grey),
                    SizedBox(width: 10),
                    SignInIcon(
                        icon: Icons.view_in_ar_outlined, color: Colors.purple),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
