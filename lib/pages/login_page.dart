import 'package:dera/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  //text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
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

                  //sign-in button
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home_page');
                      },
                      child: Text('Login'),
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_page');
                      },
                      child: Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
