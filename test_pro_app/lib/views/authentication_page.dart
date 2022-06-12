import 'package:flutter/material.dart';
import 'package:test_pro_app/views/signin_page.dart';
import 'package:test_pro_app/views/signup_page.dart';
import 'package:test_pro_app/widgets/app_spacer.dart';



class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool isSignupScreen = true;
  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                              controller.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: isSignupScreen
                                        ? Colors.grey[300]
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50,
                                width: 160,
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: isSignupScreen
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                              controller.previousPage(duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: isSignupScreen
                                        ? Colors.white
                                        : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50,
                                width: 160,
                                child: Center(
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: isSignupScreen
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const AppSpacer(
                  height: 40,
                ),
                SizedBox(
                  height: 540,
                  width: double.infinity,
                  child: PageView(
                      controller: controller,

                      children:  [
                        SignInPage(),
                        SignUpPage(),
                      ]),
                ),
              ],
            ),
          ],)
        ),
      ),
    );
  }
}
