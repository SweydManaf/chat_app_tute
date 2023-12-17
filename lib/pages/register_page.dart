import 'package:chat_app_tute/components/my_button.dart';
import 'package:chat_app_tute/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPwController = TextEditingController();

  void signUp() {}

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

                    // create account message
                    const Text(
                      "Let's create an account for you!",
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
                        controller: passwordController,
                        hintText: "Password",
                        obscureText: true),

                    const SizedBox(
                      height: 25,
                    ),

                    // confirm password textfield
                    MyTextField(
                        controller: confirmPwController,
                        hintText: "Confirm password",
                        obscureText: true),

                    const SizedBox(
                      height: 25,
                    ),

                    // sign up button
                    MyButton(onTap: signUp, text: 'Sign Up'),

                    const SizedBox(
                      height: 50,
                    ),

                    // not a member? register now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already a member? "),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            "Login now",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
