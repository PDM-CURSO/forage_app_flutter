import 'package:flutter/material.dart';

class AddForage extends StatelessWidget {
  const AddForage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new forage'),
      ),
      body: ListView(
        children: [
          TextField(
            // controller: ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name",
            ),
          ),
          TextField(
            // controller: ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Location",
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              onChanged: (newVal) {
                //
              },
            ),
            title: Text("Currently in season"),
          ),
          TextField(
            // controller: ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Notes",
            ),
          ),
          Row(
            children: [
              MaterialButton(
                child: Text("SAVE"),
                onPressed: () {},
              ),
              MaterialButton(
                child: Text("DELETE"),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
