import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/components/my_textfield.dart';


class SingnUp extends StatelessWidget {
  SingnUp({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void SingnUpIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                Image.asset('lib/images/logo.png'),

                const SizedBox(height: 50),

                // welcome back, you've been missed!


                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your mobile',
                  obscureText: false,
                ),

                const SizedBox(height: 10),


                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter your email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password aging',
                  obscureText: true,
                ),
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: SingnUpIn,
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
