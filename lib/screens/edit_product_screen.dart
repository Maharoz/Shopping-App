import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName='./edit-product';
  @override
  _EditProductScreen createState() => _EditProductScreen();
}

class _EditProductScreen extends State<EditProductScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Title',),
              textInputAction: TextInputAction.next,
              
            ),
          ],
        )),
      ),
    );
  }
}
