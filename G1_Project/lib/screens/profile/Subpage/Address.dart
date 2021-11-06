import 'package:flutter/material.dart';

import '../../../constants.dart';

class Address extends StatefulWidget {
  @override
  _AddressFormState createState() {
    return _AddressFormState();
  }
}

class _AddressFormState extends State<Address> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sửa địa chỉ'),
        backgroundColor: Colors.white10,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nhập địa chỉ',
                  hintText: 'Nhập địa chỉ của bạn'),
              autofocus: false,
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
                child: const Text('Thay đổi',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                onPressed: () {
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

