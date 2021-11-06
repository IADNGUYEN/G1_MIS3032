import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberFormState createState() {
    return _PhoneNumberFormState();
  }
}

class _PhoneNumberFormState extends State<PhoneNumber> {
  final _formKey = GlobalKey<FormState>();
  String? phonenumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thay đổi số điện thoại'),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Số điện thoại',
                    hintText: 'Nhập số điện thoại của bạn'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "* Vui lòng nhập";
                  } else if (value.length < 10 || value.length >= 12) {
                    return "* Số điện thoại không hợp lệ!";
                  }
                  return null;
                },
                onSaved: (newValue) => phonenumber = newValue,
                // autofocus: true,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20.0),
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

                      // await Future.delayed(const Duration(seconds: 1), () {});
                      // Navigator.push(
                      //   context,
                      //   new MaterialPageRoute(
                      //       builder: (context) => new ChangePassword()),
                      // );
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                ),
              )
            ],
          )),
    );
  }
}

