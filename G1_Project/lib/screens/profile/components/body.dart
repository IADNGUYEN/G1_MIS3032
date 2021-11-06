import 'package:flutter/material.dart';
import 'package:g1_project/models/profile.dart';
import 'package:g1_project/screens/login/sign_in/sign_in_screen.dart';
import 'package:g1_project/screens/profile/Subpage/ChangePassword.dart';
import 'package:g1_project/screens/profile/components/profile_email.dart';
import 'package:g1_project/screens/profile/components/profile_menu.dart';
import 'package:g1_project/screens/profile/components/profile_pic.dart';
import 'package:g1_project/screens/profile/Subpage/Address.dart';
import 'package:g1_project/screens/profile/Subpage/Birthday.dart';
import 'package:g1_project/screens/profile/Subpage/PhoneNumber.dart';
import 'package:g1_project/screens/profile/Subpage/UpdateName.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../constants.dart';

class BodyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Body();
}

class _Body extends State<BodyProfile> {
  List<Profile> _profile = [];

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  Future<void> _fetch() async {
    const url = 'http://10.0.2.2:3000/profile';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<Profile> list = [];
      data["Default"].forEach((element) {
        final profile = new Profile(
          id: element['id'],
          name: element['name'],
          gender: element['gender'],
          birthday: element['birthday'],
          phoneNumber: element['phoneNumber'],
          email: element['email'],
          address: element['address'],
        );
        list.add(profile);
      });
      setState(() => _profile = list);
    }
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;

    if (index > _profile.length) index = 0;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Họ tên: " + _profile[index].name,
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return UpdateName();
                },
              )),
            },
          ),
          ProfileMenu(
            text: "Giới tính: " + _profile[index].gender,
            icon: "assets/icons/Icons gender.svg",
            press: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                child: Text(
                                  'Nam',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: Text(
                                  'Nữ',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: Text(
                                  'Khác',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
          ProfileMenu(
            text: "Ngày sinh: " + _profile[index].birthday,
            icon: "assets/icons/Birthday.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Birthday(title: 'Chỉnh sửa ngày sinh');
              }));
            },
          ),
          ProfileMenu(
            text: "Số điện thoại: " + _profile[index].phoneNumber,
            icon: "assets/icons/Call.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return PhoneNumber();
                },
              ));
            },
          ),
          ProfileEmail(
            text: "Email: " + _profile[index].email,
            icon: "assets/icons/Mail.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Địa chỉ: " + _profile[index].address,
            icon: "assets/icons/Location point.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Address();
              }));
            },
          ),
          ProfileMenu(
            text: "Đổi mật khẩu",
            icon: "assets/icons/Cash.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return ChangePassword();
              }));
            },
          ),
          ProfileMenu(
            text: "Đăng xuất",
            icon: "assets/icons/Log out.svg",
            press: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text(
                                  'Bạn có muốn đăng xuất không?',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                      child: Center(
                                        child: Text(
                                          'Có',
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 17),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, SignInScreen.routeName);
                                      }),
                                  TextButton(
                                    child: Text(
                                      'Không',
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 17),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
