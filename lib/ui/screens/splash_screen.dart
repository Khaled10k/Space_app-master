// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space_app/core/constants/app_colors.dart';
import 'package:space_app/core/constants/app_images.dart';
import 'package:space_app/ui/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/login";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          AppImages.splashImage,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Explore \nThe \nUniverse ",
              style: TextStyle(
                  fontSize: 48,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                onPressed: () =>Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:16),
                      
                      child: Text(
                        
                        "Explore",
                        
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: AppColors.white),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  ],
                )),
          ),
        )
      ]),
    );
  }
}
