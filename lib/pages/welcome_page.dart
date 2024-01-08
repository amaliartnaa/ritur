// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritur/models/authentication_state.dart';
import '../blocs/authentication_bloc.dart';
import '../models/authentication_event.dart';
import '../widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with hill shape
          ClipPath(
            clipper: HillClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF6D776),
              ),
            ),
          ),

          // Content on top of the hill
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo R
                Container(
                  width: 113.73,
                  height: 131.72,
                  margin: const EdgeInsets.only(
                    bottom: 16.0,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Image.asset(
                          'assets/logo.png',
                          width: 75,
                          height: 75,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                // Text "Discover, Shop, Remember..."
                SizedBox(
                  width: 307,
                  child: Text(
                    'Discover, Shop, Remember.\nYour Gateway to Unique Travel Memories!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),

                // CustomButton for Sign Up
                Padding(
                  padding: const EdgeInsets.only(top: 120.0, bottom: 20.0),
                  child: CustomButton(
                    text: 'Sign Up',
                    color: Colors.black,
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(SignUpEvent());
                    },
                  ),
                ),

                // CustomButton for Login
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: CustomButton(
                    text: 'Login',
                    color: Color(0xFF96B3FF),
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(LoginEvent());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HillClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.5,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}






