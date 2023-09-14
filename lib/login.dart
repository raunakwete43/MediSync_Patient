import 'package:flutter/material.dart';
import 'package:medisync_patient/global.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(size: 24.0),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(40.0),
                height: 500,
                width: 368,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff8b8b8b), width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter PID',
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff8b8b8b), width: 2.0),
                          )),
                    ),
                    const SizedBox(height: 40.0),
                    TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: const UnderlineInputBorder(),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff8b8b8b), width: 2.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: _togglePasswordVisibility,
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 15.0, color: Color(0xff8b8b8b)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, '/searchdoctors');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff0073e6),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          )),
                    ),
                    const SizedBox(height: 40.0),
                    const Divider(
                      thickness: 2.0,
                      color: Color(0xff8b8b8b),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Register to MediSync here     ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xff19a7c9),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
