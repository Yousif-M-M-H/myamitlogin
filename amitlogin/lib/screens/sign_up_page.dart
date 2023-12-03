import 'package:amitlogin/widgets/sec_signin.dart';
import 'package:amitlogin/widgets/sign_in_icons.dart';
import 'package:amitlogin/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  borderRadius: BorderRadius.circular(20),
                ),
                height: height * 0.5,
                width: width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const MyTextField(
                          icon: Icon(Icons.email), title: 'Full Name'),
                      const SizedBox(height: 15),
                      const MyTextField(
                          icon: Icon(Icons.email), title: 'Email'),
                      const SizedBox(height: 15),
                      const MyTextField(
                          icon: Icon(Icons.lock_outlined), title: 'Password'),
                      const SizedBox(height: 15),
                      const SecSignIn(
                        text: "Sign in",
                        mycolor: Colors.deepPurple,
                        textcolor: Colors.white,
                      ),
                      const SizedBox(height: 5),
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'By signing up you accept our ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Terms of Service ',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                                TextSpan(
                                  text: 'and ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: height * 0.15,
            child: const Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
              bottom: height * 0.02,
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
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign up to discover amazing things near\n around you",
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
