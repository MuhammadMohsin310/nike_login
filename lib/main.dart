import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NikeLoginPage(),
    );
  }
}

class NikeLoginPage extends StatelessWidget {
  const NikeLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 18, 18),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/shoes.png",
              height: 170,
            ),
            const Text(
              "Welcome back! You've been missed",
              style: TextStyle(color: Colors.deepOrange, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  label: Text(
                    "Username",
                  ),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 21),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  label: Text(
                    "Password",
                  ),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 21),
                ),
                obscureText: true,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey,
                      fontSize: 15),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                height: 55,
                width: 330,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: const [
                Divider(
                  color: Colors.grey,
                  height: 19,
                  indent: 2,
                  endIndent: 239,
                  thickness: 1,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or continue with",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 19,
                  indent: 239,
                  endIndent: 2,
                  thickness: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                  child: const Icon(
                    Icons.g_mobiledata,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                  child: const Icon(
                    Icons.call,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
