import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odlly/Elements/odlly_Material_buttons.dart';

import '../../Elements/odlly_Text_Form_Field.dart';
import '../../constants/constants.dart';

class SignUpLogInUser extends StatefulWidget {
  final bool logIn;
  const SignUpLogInUser({Key? key, this.logIn = false}) : super(key: key);

  @override
  State<SignUpLogInUser> createState() => _SignUpLogInUserState();
}

class _SignUpLogInUserState extends State<SignUpLogInUser> {
  // FOR SIGN UP
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  // FOR LOGIN
  TextEditingController usernameLogInController = TextEditingController();
  TextEditingController passwordLogInController = TextEditingController();
  FocusNode usernameLogInFocusNode = FocusNode();
  FocusNode passwordLogInFocusNode = FocusNode();

  late Color commonColor;

  @override
  void initState() {
    nameFocusNode.addListener(() {
      setState(() {});
    });
    usernameFocusNode.addListener(() {
      setState(() {});
    });
    passwordFocusNode.addListener(() {
      setState(() {});
    });
    confirmPasswordController.addListener(() {
      setState(() {});
    });
    usernameLogInFocusNode.addListener(() {
      setState(() {});
    });
    passwordLogInFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int ranNum = Random().nextInt(9);
    commonColor = Constants.odllyColorList[ranNum];
    return Scaffold(
      body: SafeArea(
          child: Material(
              child: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: commonColor,
                blurRadius: 3.0,
                spreadRadius: 1.0,
                offset:
                    const Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.logIn ? 'Log In' : 'Sign Up',
                  style: TextStyle(fontSize: 30.0 ,color: commonColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (widget.logIn) ...logInWidgets() else ...signUpWidgets(),
                // SIGN UP BUTTON
                MaterialButtonOdlly(
                  onPressed: () {},
                  text: widget.logIn ? 'Log In' : 'Sign Up',
                  color: commonColor,
                ),
              ],
            ),
          ),
        ),
      ))),
    );
  }

  // LOG IN FORM FIELDS
  List logInWidgets() {
    return [
      // ENTER YOUR USERNAME
      TextFormFieldOdlly(
        fieldFocusNode: usernameLogInFocusNode,
        fieldController: usernameLogInController,
        text: 'Enter username',
        labelColor: commonColor,
      ),
      const SizedBox(
        height: 20,
      ),
      // ENTER YOUR PASSWORD
      TextFormFieldOdlly(
        fieldFocusNode: passwordLogInFocusNode,
        fieldController: passwordLogInController,
        text: 'Enter password',
        labelColor: commonColor,
      ),
      const SizedBox(
        height: 20,
      ),
    ];
  }

  // SIGNUP FORM FIELDS
  List signUpWidgets() {
    return [
      // ENTER YOUR NAME
      TextFormFieldOdlly(
        fieldFocusNode: nameFocusNode,
        fieldController: nameController,
        text: 'Enter your name',
        labelColor: commonColor,
      ),
      const SizedBox(
        height: 20,
      ),
      // CREATE YOUR USERNAME
      TextFormFieldOdlly(
        fieldFocusNode: usernameFocusNode,
        fieldController: usernameController,
        text: 'Create a username',
        labelColor: commonColor,
      ),
      const SizedBox(
        height: 20,
      ),
      // CREATE A PASSWORD
      TextFormFieldOdlly(
        fieldFocusNode: passwordFocusNode,
        fieldController: passwordController,
        text: 'Create a password',
        labelColor: commonColor,
        obscureText: true,
      ),
      const SizedBox(
        height: 20,
      ),
      // RE-ENTER YOUR PASSWORD
      TextFormFieldOdlly(
        fieldFocusNode: confirmPasswordFocusNode,
        fieldController: confirmPasswordController,
        text: 'Re-enter your password',
        labelColor: commonColor,
        obscureText: true,
      ),
      const SizedBox(
        height: 20.0,
      ),
    ];
  }
}
