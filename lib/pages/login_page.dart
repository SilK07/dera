import 'package:dera/components/my_button.dart';
import 'package:dera/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  //text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),

                //App name
                Text(
                  "S O H A N G",
                  style: TextStyle(fontSize: 20),
                ),

                Text(
                  "E D U C A T I O N",
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 50),

                // email textfield
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),

                const SizedBox(height: 15),

                //password textfield
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController,
                ),

                const SizedBox(height: 10),

                // forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //sign-in button
                    MyButton(
                      text: "Login",
                      onTap: () {
                        Navigator.pushNamed(context, '/home_page');
                      },
                    ),

                    const SizedBox(width: 25),

                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
