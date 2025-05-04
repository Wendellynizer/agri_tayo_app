
import "package:agri_tayo/components/button.dart";
import "package:flutter/material.dart";

import "package:agri_tayo/utils/util.dart";
import "package:agri_tayo/components/input.dart";
import "../globals/styles.dart";

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          // bg image
          Positioned.fill(
            child: Image.asset(
              Utils.getImage("farm_bg.png"),
              fit: BoxFit.cover,
              alignment: const Alignment(-0.4, 0.5),
            ),
          ),
          // green overlay for image bg
          Container(
            // color: Colors.green.withOpacity(0.8),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xee002006), Color(0xbb549962), Color(0xaa002006)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
            ),
          ),

          // rounded green rectangle
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
          ),

          // login text and card
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40,),
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  // log in form
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 28),
                    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                        color: light,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),

                    child: Column(
                      children: [
                        Image.asset(Utils.getImage('agritayoph_logo.png'), width: 160,),
                        const SizedBox(height: 20),

                        const AppTextField(
                          icon: Icons.person_outline_rounded,
                          hintText: 'First Name',
                        ),

                        const SizedBox(height: 20),

                        const AppTextField(
                          icon: Icons.person_outline_rounded,
                          hintText: 'Last Name',
                        ),

                        const SizedBox(height: 20),

                        const AppTextField(
                          icon: Icons.mail_outline_rounded,
                          hintText: 'Email',
                        ),

                        const SizedBox(height: 20),

                        const AppPasswordField(
                          icon: Icons.lock_outline_rounded ,
                          hintText: 'Password',
                        ),

                        const SizedBox(height: 20),

                        const AppPasswordField(
                          icon: Icons.lock_outline_rounded ,
                          hintText: 'Confirm Password',
                        ),

                        const SizedBox(height: 20),


                        // login button
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            AppButton(
                              text: Text(
                                'Sign up',
                                style: TextStyle(fontSize: 16, color: light),
                              ),
                            )
                          ],),

                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?", style: TextStyle(fontSize: 14),),
                            const SizedBox(width: 4,),
                            GestureDetector(
                              child: Text("Login here", style: TextStyle(fontSize: 14, fontWeight: semibold, color: primary)),
                            )
                          ],
                        ),

                        const SizedBox(height: 10)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




