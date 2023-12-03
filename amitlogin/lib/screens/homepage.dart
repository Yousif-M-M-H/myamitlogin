import 'package:amitlogin/widgets/sec_signin.dart';
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
              top: MediaQuery.of(context).size.height * 0.3,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 50.0 , right: 20 , left: 20), 
              child: Container(
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: height * 0.4,
                width: width * 0.9,
                child: const Padding(
                  padding:  EdgeInsets.all(20.0),
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
                      SecSignIn(
                        text: "Sign in",
                        mycolor: Colors.deepPurple,
                        textcolor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      SecSignIn(
                        text: "Sign up",
                        mycolor: Colors.white,
                        textcolor: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: Divider(),
                          )),
                          Text("  Or connect using  "),
                          Expanded(
                              child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
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
                                color: Colors.deepPurple),
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
            top: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 70,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Icon(Icons.facebook, size: 50 , color: Colors.deepPurple,)), 
              const   Text(
                  "App Icon",
                  style:  TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold),
                ),
              ],
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
                child: const Text(
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
