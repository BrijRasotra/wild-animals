import 'package:animalapp/providerpage/providerpage.dart';
import 'package:animalapp/spacerpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:ChangeNotifierProvider(create: (_)=>ProviderOne(),
      child: SpacerPage(),)
    );
  }
}
