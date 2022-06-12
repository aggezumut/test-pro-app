import 'package:flutter/material.dart';
import 'package:test_pro_app/views/authentication_page.dart';
import 'package:test_pro_app/views/name_page.dart';
import 'package:test_pro_app/widgets/app_button.dart';
import 'package:test_pro_app/widgets/app_logo.dart';
import 'package:test_pro_app/widgets/app_padding.dart';
import 'package:test_pro_app/widgets/app_spacer.dart';
import 'package:test_pro_app/widgets/app_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(),
            const AppSpacer(height: 30,),
            const AppText(text: 'Demo Uygulamasına Hoşgediniz...'),
            const AppSpacer(),
            AppPadding(
              child: AppButton(
                  text: "Continue with e-mail",
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AuthenticationPage()));
                  }),
            ),
            const AppSpacer(),
            AppPadding(
              child: AppButton(
                  text: "Continue with google",
                  color: Colors.blue,
                  onPressed: () {}),
            ),
            const AppSpacer(),
            AppPadding(
              child: AppButton(
                  text: "Continue with facebook",
                  color: Colors.blue,
                  onPressed: () {}),
            ),
            const AppSpacer(),
            AppPadding(
              child: AppButton(
                  text: "Continue without signing up",
                  color: Colors.blue,
                  onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> NamePage()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
