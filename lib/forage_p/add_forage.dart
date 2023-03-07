import 'package:flutter/material.dart';
import 'package:forage/forage_p/providers/forage_provider.dart';
import 'package:provider/provider.dart';

class AddForage extends StatelessWidget {
  AddForage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new forage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 24),
            TextField(
              controller: context.read<ForageProvider>().nameCont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Name"),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              controller: context.read<ForageProvider>().locationCont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Location"),
              ),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Checkbox(
                value: context.watch<ForageProvider>().getIsInSeason,
                onChanged: (newVal) {
                  context.read<ForageProvider>().setCurrentlyInSeason(newVal);
                },
              ),
              title: Text("Currently in season"),
            ),
            SizedBox(height: 24),
            TextField(
              controller: context.read<ForageProvider>().notesCont,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Notes"),
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  child: Text("SAVE"),
                  onPressed: () {
                    context.read<ForageProvider>().saveNewForage();
                    Navigator.of(context).pop();
                  },
                ),
                MaterialButton(
                  child: Text("DELETE"),
                  onPressed: () {
                    context.read<ForageProvider>().clearNewForage();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
