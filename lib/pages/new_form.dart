import 'package:flutter/material.dart';

class new_form extends StatefulWidget {
  const new_form({super.key});

  @override
  State<new_form> createState() => _new_formState();
}

class _new_formState extends State<new_form> {
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController father_name = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController marital_status = TextEditingController();
  TextEditingController mobile_num = TextEditingController();
  TextEditingController destination = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController route_use = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("New Entry"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                TextField(
                  controller: id,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "ID",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Name",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: father_name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Father's Name",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: religion,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Religion",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: marital_status,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Marital Status",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: mobile_num,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Mobile Num",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: destination,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Destination",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: duration,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Duration",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: route_use,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    hintText: "Route Used",
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/family_details');
              },
              child: Text('Family Details >')),
        ),
      ),
    );
  }
}
