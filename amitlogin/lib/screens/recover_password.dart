import 'package:amitlogin/widgets/sec_signin.dart';
import 'package:amitlogin/widgets/textfield.dart';
import 'package:flutter/material.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({super.key});

  @override
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
                height: height * 0.35,
                width: width * 0.9,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyTextField(icon: Icon(Icons.phone), title: '- - - - - - 45939'),
                      SizedBox(height: 10),
                      MyTextField(
                          icon: Icon(Icons.email), title: 'example@gmail.com'),
                      SizedBox(height: 20), 
                      SecSignIn(
                        text: "Recover password",
                        mycolor: Colors.deepPurple,
                        textcolor: Colors.white,
                      ),
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
                  "Recover your password",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Select credentials which should we use to\n recover your password",
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
