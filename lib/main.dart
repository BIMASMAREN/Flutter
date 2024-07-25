import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

hasPressed() {
  print('the button has been pressed');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: RootPage()),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootState();
}

class _RootState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    "https://clipground.com/images/logos-png-8.png",
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  child: const Center(
                    child: Text(
                      'Design Guild',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                const SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Join Our\nCommunity Today.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Get connected, find designers to start a project')),
                ),
                SizedBox(height: 10),
                SizedBox(
                    width: double.infinity,
                    child: GestureDetector.new(
                        onTap: hasPressed,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment(0.4, 1),
                                colors: <Color>[
                                  Color(0xffA03CEA),
                                  Color(0xffFB6564),
                                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                              )),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  child: Text('Or Login With'),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector.new(
                        onTap: hasPressed,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 25),
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Color(0xffAFA2C3)),
                                bottom: BorderSide(color: Color(0xffAFA2C3)),
                                left: BorderSide(color: Color(0xffAFA2C3)),
                                right: BorderSide(color: Color(0xffAFA2C3))),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        )),
                    GestureDetector.new(
                        onTap: hasPressed,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 25),
                          child: Text(
                            'Linked In',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Color(0xffAFA2C3)),
                                bottom: BorderSide(color: Color(0xffAFA2C3)),
                                left: BorderSide(color: Color(0xffAFA2C3)),
                                right: BorderSide(color: Color(0xffAFA2C3))),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        )),
                    GestureDetector.new(
                        onTap: hasPressed,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 25),
                          child: Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Color(0xffAFA2C3)),
                                bottom: BorderSide(color: Color(0xffAFA2C3)),
                                left: BorderSide(color: Color(0xffAFA2C3)),
                                right: BorderSide(color: Color(0xffAFA2C3))),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 26),
                SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Text('robert.langster@gmail.com'),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border(
                            top: BorderSide(color: Color(0xffC1A28B)),
                            bottom: BorderSide(color: Color(0xffC1A28B)),
                            left: BorderSide(color: Color(0xffC1A28B)),
                            right: BorderSide(color: Color(0xffC1A28B)))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Text('* * * * * * *'),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border(
                            top: BorderSide(color: Color(0xffC1A28B)),
                            bottom: BorderSide(color: Color(0xffC1A28B)),
                            left: BorderSide(color: Color(0xffC1A28B)),
                            right: BorderSide(color: Color(0xffC1A28B)))),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3C2C20),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                    width: double.infinity,
                    child: GestureDetector.new(
                        onTap: hasPressed,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment(0.4, 1),
                                colors: <Color>[
                                  Color(0xffA03CEA),
                                  Color(0xffFB6564),
                                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                              )),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
