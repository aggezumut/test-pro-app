import 'package:flutter/material.dart';
import 'package:test_pro_app/services/auth.dart';
import 'package:test_pro_app/widgets/app_button.dart';
import '../widgets/app_spacer.dart';
import '../widgets/app_text.dart';
import '../widgets/app_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

 final AuthService _authService =AuthService();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:   [
        const AppText(text: 'Email'),
        const AppSpacer(height: 5,),
        AppTextFormField(controller: emailController,),
        const AppSpacer(),
        const AppText(text: 'Create Password'),
        const AppSpacer(height: 5,),
        AppTextFormField(controller: passwordController,),
        const AppSpacer(),
        const AppText(text: 'Re-write Password'),
        AppTextFormField(controller: rePasswordController,),
        const AppSpacer(height: 150,),
        const SizedBox(
            child: AppText.subtitle(
                text:
                'Curabitur lobortis id Iorem id bibendum. Ut id consectetur magna. Terms of use augue emin, pulvinar Privacy Notice lacinia at.')),
        const AppSpacer(),
        AppButton(text: 'Continue', color: Colors.blue, onPressed: ()  {
          _authService.createPerson(emailController.text, passwordController.text);



        })

      ],);
  }
}