import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg8/home_page.dart';
import 'package:providerappg8/provider/animal_provider.dart';
import 'package:providerappg8/provider/user_provider.dart';

void main() {
  runApp(
    ProviderExample(),
  );
}

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PerritoProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider())
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
