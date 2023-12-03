import 'package:amitlogin/widgets/dot_container.dart';
import 'package:amitlogin/widgets/sec_signin.dart';
import 'package:flutter/material.dart';

class LoginWithNumber extends StatelessWidget {
  const LoginWithNumber({super.key});

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
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
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
                  borderRadius: BorderRadius.circular(20),
                ),
                height: height * 0.25,
                width: width * 0.9,
                child: Padding(
                  padding:const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: 10),
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
                          SizedBox(height: 15),
                        ],
                      ),
                      const SecSignIn(
                        text: "Recover Password",
                        mycolor: Colors.deepPurple,
                        textcolor: Colors.white,
                      ),
                      const SizedBox(height: 11),
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
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.14,
            left: height * 0.035,
            right: 0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter OTP",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Please enter 6 digit Code sent to your registered\nmobile number xxx xxx 6124",
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
