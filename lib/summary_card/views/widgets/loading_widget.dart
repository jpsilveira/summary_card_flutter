import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Loading...',
            style: TextStyle(fontSize: 20.0),
            key: Key("testLoading"),
          ),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
