import 'package:flutter/material.dart';

class family_details extends StatefulWidget {
  const family_details({super.key});

  @override
  State<family_details> createState() => _family_detailsState();
}

class _family_detailsState extends State<family_details> {
  TextEditingController name_f = TextEditingController();
  TextEditingController age_f = TextEditingController();
  TextEditingController gender_f = TextEditingController();
  TextEditingController relation_f = TextEditingController();
  TextEditingController aadhar_f = TextEditingController();
  TextEditingController mobileNum_f = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: ListView(
            children: [
              TextField(
                controller: name_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Name"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: age_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Age"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: gender_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Gender"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: relation_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Relation"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: aadhar_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Aadhar Number"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: mobileNum_f,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Mobile Number"),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/family_details');
                  },
                  child: Text(
                    "Add Member",
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dera_details');
          },
          child: Text('Dera Details >'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
        ),
      ),
    );
  }
}
