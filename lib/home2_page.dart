import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg8/provider/animal_provider.dart';
import 'package:providerappg8/provider/user_provider.dart';

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerUser = Provider.of<UserProvider>(context);
    final provierPerrito = Provider.of<PerritoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME2"),
      ),
      body: Column(
        children: [
          Text(
            "Informacion del userprovider: ${providerUser.name}",
            style: TextStyle(fontSize: 35),
          ),
          ElevatedButton(
            onPressed: () {
              providerUser.name = "Jhonny";
            },
            child: Text("cambiar nfo de user"),
          ),
          Divider(),
          Text(
            "Informacion del perritoprovider: ${provierPerrito.name}",
            style: TextStyle(fontSize: 35),
          ),
          ElevatedButton(
            onPressed: () {
              provierPerrito.name = "Lucho wof wof";
            },
            child: Text("cambiar nfo de user"),
          ),
        ],
      ),
    );
  }
}
