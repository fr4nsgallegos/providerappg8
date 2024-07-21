import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg8/home2_page.dart';
import 'package:providerappg8/provider/animal_provider.dart';
import 'package:providerappg8/provider/user_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
              builder: (context, user, _) => Text(
                user.name,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home2Page(),
                    ),
                  );
                },
                child: Text("GO HOME 2"))
          ],
        ),
      ),
    );
  }
}
