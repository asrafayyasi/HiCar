import 'package:flutter/material.dart';
import 'package:rentcar/pages/newhomepage.dart';
import 'package:rentcar/pages/navigasi.dart';
import 'package:rentcar/pages/signup.dart';

class login extends StatelessWidget {
  static const nameroute = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background1.jpeg'), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Container(
              height: 660,
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          'HiCar',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 40,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Car Rental Solution',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        // margin: EdgeInsetsDirectional.only(top: 50),
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: TextStyle(fontFamily: 'Poppins'),
                                fillColor: Colors.white.withOpacity(0.8),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.black.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(50))),

                            // autofocus: true,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 10),
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(fontFamily: 'Poppins'),
                                fillColor: Colors.white.withOpacity(0.8),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),

                            // autofocus: true,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 12),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith<
                                  OutlinedBorder>((_) {
                                return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20));
                              }),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 33, 33, 33))),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(navigasi.nameroute);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 80,
                            child: Text("Login"),
                          )),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(signup.nameroute);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.amber),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
