
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopLogoItem extends StatelessWidget {
  const TopLogoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/logo.svg', width: 40, color: Colors.deepPurple,),
          SizedBox(width: 10,),
          const Text('Property', style: TextStyle(fontSize: 26.0, color: Colors.deepPurple, fontWeight: FontWeight.w700)),


        ],
      );
  }
}
