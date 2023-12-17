import 'package:chat_app_tute/components/my_button.dart';
import 'package:chat_app_tute/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),

                    // logo
                    Icon(
                      Icons.message,
                      size: 100,
                      color: Colors.grey[800],
                    ),

                    const SizedBox(
                      height: 50,
                    ),

                    // welcome back message
                    const Text(
                      "Welcome back you\' been missed!",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(
                      height: 50,
                    ),

                    // email textfield
                    MyTextField(
                        controller: emailController,
                        hintText: "Email",
                        obscureText: false),

                    const SizedBox(
                      height: 10,
                    ),

                    // password textfield
                    MyTextField(
                        controller: emailController,
                        hintText: "Password",
                        obscureText: true),

                    const SizedBox(
                      height: 25,
                    ),

                    // sign in button
                    MyButton(onTap: () {}, text: 'Sign in'),

                    const SizedBox(
                      height: 50,
                    ),

                    // not a member? register now
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member? "),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Register now",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
