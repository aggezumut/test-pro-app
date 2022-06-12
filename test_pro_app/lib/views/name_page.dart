import 'package:flutter/material.dart';
import 'package:test_pro_app/widgets/app_padding.dart';
import 'package:test_pro_app/widgets/app_spacer.dart';
import 'package:test_pro_app/widgets/app_text.dart';
import 'package:test_pro_app/widgets/app_text_form_field.dart';
import '../widgets/app_button.dart';
import 'page_view_page.dart';

class NamePage extends StatelessWidget {
   NamePage({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.grey, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: AppPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const AppSpacer(height: 30,),
              const AppText.title(text: 'YourName?'),
              const AppSpacer(height: 30,),
              AppTextFormField(hintText: 'Your Name',controller: name,),


            ],
          ),
        ),
        bottomSheet: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: AppButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const PageViewPage()));
              },
              text: 'Continue',
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
