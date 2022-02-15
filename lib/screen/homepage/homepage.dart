import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldproject/screen/shared/bottomnavbar.dart';
import 'package:goldproject/screen/shared/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'To rent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            'assets/logo.svg',
            color: Colors.deepPurple,
          ),
        ),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.03))
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 3),
                            height: 38,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade700),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            child:
                            /*DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>['One', 'Two', 'Free', 'Four']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )*/
                         InkWell(
                              onTap:(){},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text('To rent'),
                                    Icon(Icons.arrow_drop_down_outlined)
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 10,
                            child: _buildSearchCustomerTextField(context))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 180.0),
              SvgPicture.asset('assets/landingpage.svg', width: 230),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchCustomerTextField(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.white70,
            prefixIcon: const Icon(
              Icons.search_outlined,
              size: 24,
              color: AppColor.darkGrey,
            ),
            hintText: 'e.g Magodo ',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.darkGrey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onChanged: (value) {
            //this will filter the list with respect to value input
          },
          onSubmitted: (value) {
            //this will search the list with respect to value input
          },
        ),
      ),
    );
  }
}
