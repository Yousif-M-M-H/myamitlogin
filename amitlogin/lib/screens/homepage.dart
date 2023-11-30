import 'package:amitlogin/widgets/sign_in_button.dart';
import 'package:amitlogin/widgets/sign_in_icons.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                decoration: BoxDecoration(
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
              padding: const EdgeInsets.only(
                  top: 50.0), // Adjust the top padding as needed
              child: Container(
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: height * 0.4,
                width: width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              "Welcome to App Name",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Discover amazing things near around you",
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 20),
                      SignInButton(
                        text: "Sign in",
                        mycolor: Colors.purple,
                        textcolor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      SignInButton(
                        text: "Sign up",
                        mycolor: Colors.white,
                        textcolor: Colors.purple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Divider(),
                          )),
                          Text("  Or connect using  "),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Divider(),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SignInIcon(
                                icon: Icons.facebook, color: Colors.blue),
                            SizedBox(width: 10),
                            SignInIcon(icon: Icons.mail, color: Colors.red),
                            SizedBox(width: 10),
                            SignInIcon(
                                icon: Icons.phone_android_sharp,
                                color: Colors.grey),
                            SizedBox(width: 10),
                            SignInIcon(
                                icon: Icons.view_in_ar_outlined,
                                color: Colors.purple),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "SKIP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
