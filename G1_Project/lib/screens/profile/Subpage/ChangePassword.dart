import 'package:flutter/material.dart';
import 'package:g1_project/constants.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordFormState createState() {
    return _ChangePasswordFormState();
  }
}

class _ChangePasswordFormState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Đổi mật khẩu',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mật khẩu',
                      hintText: 'Nhập mật khẩu'),
                  obscureText: true,
                  onSaved: (newValue) => password = newValue,
                  onChanged: (value) {
                    password = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* Vui lòng nhập";
                    } else if (value.length < 8) {
                      return "* Mật khẩu quá ngắn (Yêu cầu: Mật khẩu >= 8 ký tự)";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Xác nhận mật khẩu',
                      hintText: 'Nhập lại mật khẩu'),
                  obscureText: true,
                  onSaved: (newValue) => confirmPassword = newValue,
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "* Vui lòng nhập";
                    } else if ((password != value)) {
                      return "* Mật khẩu không khớp";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () async {
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
                  child: const Text(
                    'Thay đổi',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  style: ElevatedButton.styleFrom(primary: kBackgroundColor),
                ),
              ),
            ],
          ),
        ));
  }
}