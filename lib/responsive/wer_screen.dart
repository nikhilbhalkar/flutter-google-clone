import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/widget/web/translation_button.dart';

import '../widget/search.dart';
import '../widget/web/search_buttons.dart';
import '../widget/web/web_footer.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Gmail',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Images',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              )),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: Colors.white,
              )),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
              right: 10
            ),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                "Sign in ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body:  Padding(
        padding:const EdgeInsets.only(left: 5,right: 5),
        child: Column(
          children: [
            SizedBox(height:size.height*0.25,),
           const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                   Search(),
                   SizedBox(height: 20,),
                   SearchButtons(),
                   SizedBox(height: 20,),
                   TranslationButton(),
                  ],
                ),
                 WebFooter()
              ],
            ),)
          ],
        ),),
    );
  }
}
