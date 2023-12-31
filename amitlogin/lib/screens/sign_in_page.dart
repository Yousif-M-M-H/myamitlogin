import 'package:amitlogin/widgets/sec_signin.dart';
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
                    color: Colors.deepPurple,
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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.24,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: height * 0.35,
                width: width * 0.9,
                child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                MyTextField(
                                    icon: Icon(Icons.email), title: 'Email'),
                                SizedBox(
                                  height: 15,
                                ),
                                MyTextField(
                                    icon: Icon(Icons.lock_outlined),
                                    title: 'password')
                              ],
                            )),
                        SecSignIn(
                          text: "Sign in",
                          mycolor: Colors.deepPurple,
                          textcolor: Colors.white,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: height * 0.29,
            child: const Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
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
              bottom: height * 0.15,
              child: Container(
                height: 90,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
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
                        icon: Icons.view_in_ar_outlined,
                        color: Colors.deepPurple),
                  ],
                ),
              )),
          Positioned(
            top: height * 0.14,
            left: height * 0.035,
            right: 0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign in to discover amazing things near\n around you",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
