import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  var nameEditingController = TextEditingController();
  var contactEditingController = TextEditingController();
  var emailEditingController = TextEditingController();
  var addressEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Center(
          child: Text("Hello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        ),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 50),
        child: Center(
          child: Container(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "ADD Company",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Text(
                  "First Name",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                widgetProfiledetail(nameEditingController, "Name"),
                const Text(
                  "Contact No.",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                widgetProfiledetail(contactEditingController, "Contact"),
                const Text(
                  "Email.",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                widgetProfiledetail(emailEditingController, "Email"),
                const Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                widgetProfiledetail(addressEditingController, "Address")
              ],
            ),
          ),
        ),
      ),
    );
  }

  widgetProfiledetail(
      TextEditingController textEditingController, String hintText) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 50,
        child: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2)),
            focusColor: Colors.blue,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
          controller: textEditingController,
        ),
      ),
    );
  }
}
