import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '''Error trying to connect.
Please try again later.''',
        key: Key("testError"),
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
