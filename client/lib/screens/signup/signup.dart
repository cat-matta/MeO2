import 'package:client/constants.dart';
import 'package:client/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("images/MeO2.png"),
            Spacer(),
            NameField(),
            Spacer(),
            NewEmailTextField(),
            Spacer(),
            NewPasswordTextField(),
            Spacer(),
            ConfirmPasswordTextField(),
            Spacer(),
            SignUpBttn(),
            Spacer(),
            ExistingUserText(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class NameField extends StatefulWidget {
  const NameField({
    Key? key,
  }) : super(key: key);

  @override
  _NameField createState() => _NameField();
}

class _NameField extends State<NameField> {
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
                  child: Icon(Icons.person_outline_rounded, color: DarkGreen)),
              labelText: "Name...",
              labelStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}

class NewEmailTextField extends StatefulWidget {
  const NewEmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  _NewEmailTextField createState() => _NewEmailTextField();
}

class _NewEmailTextField extends State<NewEmailTextField> {
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

class NewPasswordTextField extends StatefulWidget {
  const NewPasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  _NewPasswordTextField createState() => _NewPasswordTextField();
}

class _NewPasswordTextField extends State<NewPasswordTextField> {
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

class ConfirmPasswordTextField extends StatefulWidget {
  const ConfirmPasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmPasswordTextField createState() => _ConfirmPasswordTextField();
}

class _ConfirmPasswordTextField extends State<ConfirmPasswordTextField> {
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
              labelText: "Confirm Password...",
              labelStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(color: DarkGreen, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpBttn extends StatelessWidget {
  const SignUpBttn({
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
            "Sign Up",
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
              color: DarkGreen,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
          ),
          onPressed: () {}),
    );
  }
}

class ExistingUserText extends StatelessWidget {
  const ExistingUserText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // button for a user to make an account
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Have an account?",
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: DarkGreen.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, PageRouteBuilder(pageBuilder: (_, __, ___) => LogIn()));
        // userNameFieldController.clear();
        // passwordFieldController
        //     .clear(); // clears password // if the user is not registered go to the sign up page
      },
    );
  }
}
