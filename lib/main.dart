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
      home: RootPage(),
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
          Padding(
            padding: EdgeInsets.all(5),
            child: Image.network(
              "https://clipground.com/images/logos-png-8.png",
              width: 40,
            ),
          ),
          Container(
            width: double.infinity,
            child: const Center(
              child: Text(
                'Design Guild',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
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
                const SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: hasPressed,
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.deepPurple),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Text('Or Login With'),
                ),
                SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: hasPressed, child: Text('Facebook')),
                    ElevatedButton(
                        onPressed: hasPressed, child: Text('Linked In')),
                    ElevatedButton(onPressed: hasPressed, child: Text('Google'))
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Email'),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'What do people call you?',
                        labelText: 'Email'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: hasPressed,
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.deepPurple),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
