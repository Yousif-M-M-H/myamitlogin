import 'package:amitlogin/widgets/sign_in_button.dart';
import 'package:amitlogin/widgets/sign_in_icons.dart';
import 'package:amitlogin/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginWithNumber extends StatelessWidget {
  const LoginWithNumber({Key? key});

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
                  color: Colors.purple,
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
                height: height * 0.32,
                width: width * 0.9,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            MyTextField(
                              icon: Icon(Icons.account_box_outlined),
                              title: 'Full Name',
                            ),
                            SizedBox(height: 20),
                            MyTextField(
                              icon: Icon(Icons.account_box_outlined),
                              title: 'Full Name',
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      SignInButton(
                        text: "Recover Password",
                        mycolor: Colors.purple,
                        textcolor: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
