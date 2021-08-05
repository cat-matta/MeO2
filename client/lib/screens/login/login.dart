import 'dart:ui';

import 'package:client/constants.dart';
import 'package:client/screens/about/about.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      color: BackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Spacer(),
            Image.asset("images/MeO2.png"),
            Spacer(),
            EmailTextField(),
            Spacer(),
            PasswordTextField(),
            Spacer(),
            SignInBttn(),
            Spacer(),
            NewUserText(),
            Spacer(),
            Stack(
              children: [
                Image.asset(
                  "images/2.png",
                  scale: size.width,
                ),
                // Image.asset("images/2.png"),

                Image.asset("images/1.png", scale: size.width),
                // Image.asset("images/4.png"),
                // Image.asset("images/5.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EmailTextField extends StatefulWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  _EmailTextField createState() => _EmailTextField();
}

class _EmailTextField extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 60,
      width: size.width / 1.3,
      child: Form(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    LightGreen.withOpacity(0.6),
                    LightGreen.withOpacity(0.6)
                  ])),
          child: TextFormField(
            enableSuggestions: true,
            autocorrect: false,
            style: GoogleFonts.openSans(
                textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              prefixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8.0),
                  child: Icon(Icons.mail_outline_rounded, color: DarkGreen)),
              labelText: "Email...",
              labelStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordTextField createState() => _PasswordTextField();
}

class _PasswordTextField extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 60,
      width: size.width / 1.3,
      child: Form(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    LightGreen.withOpacity(0.6),
                    LightGreen.withOpacity(0.6)
                  ])),
          child: TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            style: GoogleFonts.openSans(
                textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              prefixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8.0),
                  child: Icon(Icons.lock_outline_rounded, color: DarkGreen)),
              labelText: "Password...",
              labelStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}

class SignInBttn extends StatelessWidget {
  const SignInBttn({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 60,
      width: size.width / 2,
      child: TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: DarkGreen.withOpacity(0.65),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: DarkGreen.withOpacity(0.2),
                ),
              )),
          child: Text(
            "Sign in",
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
              color: DarkGreen,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
          ),
          onPressed: () {
            print("Hi");
          }),
    );
  }
}

class NewUserText extends StatelessWidget {
  const NewUserText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // button for a user to make an account
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "New here? Sign up!",
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: DarkGreen.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            PageRouteBuilder(pageBuilder: (_, __, ___) => AboutPage()));
        // userNameFieldController.clear();
        // passwordFieldController
        //     .clear(); // clears password // if the user is not registered go to the sign up page
      },
    );
  }
}
