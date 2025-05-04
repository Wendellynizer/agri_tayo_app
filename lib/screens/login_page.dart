
import "package:agri_tayo/components/button.dart";
import "package:flutter/material.dart";

import "package:agri_tayo/utils/util.dart";
import "package:agri_tayo/components/input.dart";
import "../globals/styles.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    "Login",
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
                          icon: Icons.mail_outline_rounded,
                          hintText: 'Email',
                        ),

                        const SizedBox(height: 20),

                        const AppPasswordField(
                          icon: Icons.lock_outline_rounded ,
                          hintText: 'Password',
                        ),

                        const SizedBox(height: 10,),
                        AppCheckbox(),
                        const SizedBox(height: 10),

                        // login button
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                          AppButton(
                            text: Text(
                              'Login',
                              style: TextStyle(fontSize: 16, color: light),
                            ),
                          )
                        ],),

                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?", style: TextStyle(fontSize: 14),),
                            const SizedBox(width: 4,),
                            GestureDetector(
                              child: Text("Sign up here", style: TextStyle(fontSize: 14, fontWeight: semibold, color: primary)),
                            )
                          ],
                        ),

                        const SizedBox(height: 10)
                      ],
                    ),
                  ),

                  const SizedBox(height: 60,),
                  Text('or continue with', style: TextStyle(color: light, fontSize: 14),),

                  const SizedBox(height: 20,),

                  // alt sign ins
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              padding: const EdgeInsets.all(12),
                              backgroundColor: light
                          ),

                          onPressed: () => print("Google ni"),
                          child: Image.asset(
                            Utils.getImage('google_icon.png'),
                            width: 30,
                            height: 30,
                          )
                      ),
                      const SizedBox(width: 24,),
                      // facebook
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              padding: const EdgeInsets.all(12),
                              backgroundColor: light
                          ),

                          onPressed: () => print("Facebook ni"),
                          child: Image.asset(
                            Utils.getImage('facebook_icon.png'),
                            width: 30,
                            height: 30,
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




