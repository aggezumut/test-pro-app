import 'package:flutter/material.dart';
import 'package:test_pro_app/views/name_page.dart';
import 'package:test_pro_app/widgets/app_spacer.dart';
import 'package:test_pro_app/widgets/app_text.dart';
import 'package:test_pro_app/widgets/app_text_form_field.dart';
import 'package:test_pro_app/services/auth.dart';


import '../widgets/app_button.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService _authService =AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(text: 'Email'),
            const AppSpacer(
              height: 5,
            ),
            AppTextFormField(controller: emailController),
            const AppSpacer(),
            const AppText(text: 'Create Password'),
            const AppSpacer(
              height: 5,
            ),
            AppTextFormField(
              controller: passwordController,
            ),
            const AppSpacer(),
            Center(
              child: Column(
                children: const [
                  AppText.subtitle(text: 'Forgot Password?'),
                  SizedBox(width: 100, child: Divider(color: Colors.black)),
                ],
              ),
            ),
            const AppSpacer(height: 261,),
            AppButton(text: 'Giriş Yap', color: Colors.blue, onPressed: () async{

              await _authService.signIn(emailController.text, passwordController.text);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NamePage()));


            })
          ],
        ),
      ],)

    );
  }
}
