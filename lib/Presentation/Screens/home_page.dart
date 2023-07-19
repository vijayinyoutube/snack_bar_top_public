import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Demo'),
        backgroundColor: Colors.pink.withOpacity(0.7),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => showSnackBarFun(context),
        child: const Text('Show Snackbar'),
      )),
    );
  }

  showSnackBarFun(context) {
    SnackBar snackBar = SnackBar(
      content: const Text('Yay! A SnackBar at the top!',
          style: TextStyle(fontSize: 20)),
      backgroundColor: Colors.indigo,
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height - 150,
          left: 10,
          right: 10),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
