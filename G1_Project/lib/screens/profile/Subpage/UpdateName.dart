import 'package:flutter/material.dart';
import 'package:g1_project/screens/profile/components/body.dart';

import '../../../constants.dart';

class UpdateName extends StatefulWidget {
  @override
  _UpdateNameFormState createState() {
    return _UpdateNameFormState();
  }
}

class _UpdateNameFormState extends State<UpdateName> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sửa tên',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nhập tên',
                  hintText: 'Nhập tên của bạn'),
              autofocus: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '* Vui lòng nhập';
                }
                return null;
              },
            ),
            new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 20.0),
              child: ElevatedButton(
                child: const Text('Đồng ý',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                            'Thay đổi thành công !!!',
                            textAlign: TextAlign.center,
                          )),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(primary: kPrimaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

