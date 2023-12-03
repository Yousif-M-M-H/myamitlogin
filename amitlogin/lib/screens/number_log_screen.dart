import 'package:amitlogin/widgets/dot_container.dart';
import 'package:amitlogin/widgets/sec_signin.dart';
import 'package:amitlogin/widgets/sign_in_icons.dart';
import 'package:amitlogin/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginWithNumberScreen extends StatelessWidget {
  const LoginWithNumberScreen({super.key});

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
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Column(
                          children: [
                            MyTextField(
                                icon: Icon(Icons.phone_android_sharp),
                                title: 'Enter mobile number'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DotContainer(),
                                DotContainer(),
                                DotContainer(),
                                DotContainer(),
                                DotContainer(),
                                DotContainer(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SecSignIn(
                          text: "Next",
                          mycolor: Colors.deepPurple,
                          textcolor: Colors.white,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Not received Code? ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Resend',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
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
                  "Login with number",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your number will safe with us. We won't share\nyour details with anyone",
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
