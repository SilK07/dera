import 'package:flutter/material.dart';

class register_page extends StatefulWidget {
  const register_page({Key? key}) : super(key: key);

  @override
  State<register_page> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<register_page> {
  // Declare TextEditingControllers
  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final occupationController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();

  // Declare variable for dob (properly initialized)
  DateTime? dob;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('User Registration'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 154,
              ),

              SizedBox(
                height: 60,
              ),
              // Name text field
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10.0),

              // Date of birth text field
              TextField(
                readOnly: true,
                controller: dobController,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () async {
                      dob = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      // Update controller text with formatted date (optional)
                      dobController.text =
                          "${dob!.year}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}";
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              // Occupation text field
              TextField(
                controller: occupationController,
                decoration: InputDecoration(labelText: 'Occupation'),
              ),
              SizedBox(height: 10.0),

              // Mobile number text field
              TextField(
                keyboardType: TextInputType.phone,
                controller: mobileNumberController,
                decoration: InputDecoration(labelText: 'Mobile Number'),
              ),
              SizedBox(height: 10.0),

              // Email text field
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email ID'),
              ),
              SizedBox(height: 20.0),

              // Register button
              ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  String dob = dobController.text;
                  String occupation = occupationController.text;
                  String mobileNumber = mobileNumberController.text;
                  String email = emailController.text;

                  // Handle form submission logic (e.g., register user)
                  print('Name: $name');
                  print('Date of Birth: $dob');
                  print('Occupation: $occupation');
                  print('Mobile Number: $mobileNumber');
                  print('Email ID: $email');
                  Navigator.pushNamed(context, '/login_page');
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
