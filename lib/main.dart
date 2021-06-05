import 'package:flutter/material.dart';
import 'package:gozero_baskin_robbins/login/login_home.dart';
import 'package:gozero_baskin_robbins/provider/fixed_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MyApp());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FixedProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    FixedProvider fixedProvider =
        Provider.of<FixedProvider>(context, listen: false);
    fixedProvider.setDeviceWidth(MediaQuery.of(context).size.width);
    fixedProvider.setDeviceHeight(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 199, 239, 1),
      body: LoginHome(),
    );
  }
}
