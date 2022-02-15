
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldproject/screen/dashboard/dashboardscreen.dart';
import 'package:goldproject/screen/shared/color.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        padding:
        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40),
        height: 60,
        decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 6,// changes position of shadow
            ),
          ],

          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: ()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                             const DashBoardScreen())
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('P',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColor.darkGrey)),
                    Text("Home",
                        style: TextStyle(color: AppColor.darkGrey))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.search_outlined,
                      color: Colors.deepPurple),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.menu, color: AppColor.darkGrey),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}