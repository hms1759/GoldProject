import 'package:flutter/material.dart';
import 'package:goldproject/screen/shared/attribute.dart';
import 'package:goldproject/screen/shared/color.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_back, color: AppColor.darkGrey),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoardScreen()));
                },
                color: Colors.white,
              ),
              title: _buildSearchCustomerTextField(context),
              bottom: TabBar(
                indicatorColor: Colors.grey.shade600,
                labelColor: AppColor.darkGrey,
                tabs: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on_outlined,
                          color: AppColor.darkGrey),
                      const SizedBox(width: 5),
                      Text(
                        "Map",
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.swap_vert, color: AppColor.darkGrey),
                      const SizedBox(width: 5),
                      Text(
                        "Sort",
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cable_outlined,
                          color: AppColor.darkGrey),
                      const SizedBox(width: 5),
                      Text(
                        "Filter",
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40),
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
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
                )),
            body: Container(
              color: AppColor.lighterGrey,
              child: _buildPropertiesList(context),
            )),
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

  Widget _buildPropertiesList(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("25 results"),
                ),
                Items(),
                Items(),
                Items()
              ],
            );
          },
        ));
  }
}

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white, // Set border width
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Column(
            children: [
          Image.asset("assets/house1.jpg", width: double.infinity),
          Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                              child: Text(
                            "#5,000,000/yr",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: AppColor.darkerGrey,
                                fontWeight: FontWeight.w700),
                          )),
                          Column(
                            children: const [
                              Text("ORAH",
                                  style: TextStyle(
                                      letterSpacing: 2.0,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700,
                                      wordSpacing: 20.0)),
                              Text('Homes',
                                  style: TextStyle(
                                      color: AppColor.darkGrey, fontSize: 12))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Column(children: const [
                        Text('3 bed flat to rent',
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColor.darkerGrey,
                                fontWeight: FontWeight.w700)),
                        Text('Magodo Lagos')
                      ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Column(
                              children: const [
                                Text("3", style: Style.Text),
                                Icon(Icons.bed_outlined)
                              ],
                            ),
                            const SizedBox(width: 20.0),
                            Row(
                              children: const [
                                Icon(Icons.shower_outlined),
                                Text("2", style: Style.Text)
                              ],
                            ),
                            const SizedBox(width: 20.0),
                            Row(
                              children: const [
                                Icon(Icons.chair_outlined),
                                Text("2", style: Style.Text)
                              ],
                            )
                          ],
                        )),
                        const Icon(Icons.bed_outlined)
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Row(
                            children: [
                              Text(isVisible
                                  ? 'Read Less'
                                  : 'More Information'),
                              Icon(
                                isVisible
                                    ? Icons.arrow_downward
                                    : Icons.arrow_upward,
                                color: Colors.grey,
                              ),
                            ],
                          ),

                        ),
                        Visibility(
                          visible: isVisible,
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,

                          child: Column(
                            children: [
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:const [
                                  Text(
                                    "Features and description",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 5,),
                             const Text('A stunning three bedroom, '
                                  'two bathroom apartment set within a'
                                  ' luxury development in Magodo estate. '
                                  'The apartment extends to approx. 1457 '
                                  'sqft & benefits from two large living rooms.'),
                            ],
                          ),
                        ),

                      ],
                    )
                  ])),






        ]
        )
    );
  }
}

/*
class _ItemsState extends State<Items> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // Set border width
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/house1.jpg", width: double.infinity),
                Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                  child: Text(
                                "#5,000,000/yr",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: AppColor.darkerGrey,
                                    fontWeight: FontWeight.w700),
                              )),
                              Column(
                                children: const [
                                  Text("ORAH",
                                      style: TextStyle(
                                          letterSpacing: 2.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700,
                                          wordSpacing: 20.0)),
                                  Text('Homes',
                                      style: TextStyle(
                                          color: AppColor.darkGrey,
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Column(children: const [
                            Text('3 bed flat to rent',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.darkerGrey,
                                    fontWeight: FontWeight.w700)),
                            Text('Magodo Lagos')
                          ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Column(
                                  children: const [
                                    Text("3", style: Style.Text),
                                    Icon(Icons.bed_outlined)
                                  ],
                                ),
                                const SizedBox(width: 20.0),
                                Row(
                                  children: const [
                                    Icon(Icons.shower_outlined),
                                    Text("2", style: Style.Text)
                                  ],
                                ),
                                const SizedBox(width: 20.0),
                                Row(
                                  children: const [
                                    Icon(Icons.chair_outlined),
                                    Text("2", style: Style.Text)
                                  ],
                                )
                              ],
                            )),
                            const Icon(Icons.bed_outlined)
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          children: [
                            Visibility(
                              visible: isVisible,
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Expanded(
                                  child: Column(
                                children: const [
                                  Text(
                                    "Features and description",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('A stunning three bedroom, '
                                      'two bathroom apartment set within a'
                                      ' luxury development in Magodo estate. '
                                      'The apartment extends to approx. 1457 '
                                      'sqft & benefits from two large living rooms.'),
                                ],
                              )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Row(
                                children: [
                                  Text(isVisible
                                      ? 'More Information'
                                      : 'Read Less'),
                                  Icon(
                                    isVisible
                                        ? Icons.arrow_downward
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.deepPurple, // Set border width
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            width: double.infinity,
            child: const Text(
              'Contact Property',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
*/
