import 'package:flutter/material.dart';

class family_details extends StatefulWidget {
  const family_details({super.key});

  @override
  State<family_details> createState() => _family_detailsState();
}

class _family_detailsState extends State<family_details> {
  TextEditingController no_of_family_members = TextEditingController();
  TextEditingController family_religion = TextEditingController();

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
                controller: no_of_family_members,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Number Of Family Members"),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: family_religion,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Family Religion"),
              )
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
