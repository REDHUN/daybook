import 'package:daybook/screens/addrate.dart';
import 'package:flutter/material.dart';

import 'package:daybook/screens/screentwo.dart';
import 'package:daybook/widgets/homepagetext.dart';

import 'package:daybook/widgets/textFiled.dart';
import 'package:daybook/models/ratemodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ms1op = TextEditingController();
  var ms1clo = TextEditingController();
  var ms2op = TextEditingController();
  var ms2clo = TextEditingController();
  var mstest = TextEditingController();
  var hsd1op = TextEditingController();
  var hds1clo = TextEditingController();
  var hsd2op = TextEditingController();
  var hsd2clo = TextEditingController();
  var hsdtest = TextEditingController();
  var cngaop = TextEditingController();
  var cngaclo = TextEditingController();
  var cngbop = TextEditingController();
  var cngbclo = TextEditingController();
  var twot = TextEditingController();
  double pertrolrate = 0;
  double diselrate = 0;
  double cngrate = 0;

  void _addrate(Rate rate) {
    setState(() {
      pertrolrate = rate.petrolrate;
      diselrate = rate.dieselrate;
      cngrate = rate.cngrate;
    });
    print(pertrolrate);
  }

  void _openAddRate() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) =>
            SingleChildScrollView(child: AddRate(submitrate: _addrate)));
  }

  _submitData() {
    if (ms1op.text.isEmpty) {
      ms1op = (TextEditingController(text: '0'));
    }
    if (ms1clo.text.isEmpty) {
      ms1clo = (TextEditingController(text: '0'));
    }
    if (ms2clo.text.isEmpty) {
      ms2clo = (TextEditingController(text: '0'));
    }
    if (ms2op.text.isEmpty) {
      ms2op = (TextEditingController(text: '0'));
    }
    if (hsd1op.text.isEmpty) {
      hsd1op = (TextEditingController(text: '0'));
    }
    if (hds1clo.text.isEmpty) {
      hds1clo = (TextEditingController(text: '0'));
    }
    if (hsd2clo.text.isEmpty) {
      hsd2clo.text = "0";
    }
    if (hsd2op.text.isEmpty) {
      hsd2op = (TextEditingController(text: '0'));
    }
    if (hsdtest.text.isEmpty) {
      hsdtest = (TextEditingController(text: '0'));
    }
    if (cngaop.text.isEmpty) {
      cngaop = (TextEditingController(text: '0'));
    }
    if (cngaclo.text.isEmpty) {
      cngaclo = (TextEditingController(text: '0'));
    }
    if (mstest.text.isEmpty) {
      mstest = (TextEditingController(text: '0'));
    }
    if (cngbclo.text.isEmpty) {
      cngbclo = (TextEditingController(text: '0'));
    }
    if (cngbop.text.isEmpty) {
      cngbop = (TextEditingController(text: '0'));
    }
    if (twot.text.isEmpty) {
      twot = (TextEditingController(text: '0'));
    }

    final double n1ms = (double.parse(ms1clo.text) - double.parse(ms1op.text)) -
        double.parse(mstest.text);
    final double n2ms = (double.parse(ms2clo.text) - double.parse(ms2op.text));
    final double n1hsd =
        (double.parse(hds1clo.text) - double.parse(hsd1op.text)) -
            double.parse(hsdtest.text);
    final double n2hsd =
        (double.parse(hsd2clo.text) - double.parse(hsd2op.text));

    final double ca = (double.parse(cngaclo.text) - double.parse(cngaop.text));
    final double cb = (double.parse(cngbclo.text) - double.parse(cngbop.text));

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ScreenTwo(
                n1ms: n1ms,
                n2ms: n2ms,
                n1hsd: n1hsd,
                ca: ca,
                cb: cb,
                n2hsd: n2hsd,
                twot: double.parse(twot.text),
                diesalrate: diselrate,
                petrolrate: pertrolrate,
                cngrate: cngrate,
              )),
    );
  }

  @override
  void dispose() {
    ms1op.dispose();
    ms1clo.dispose();
    hds1clo.dispose();
    hsd1op.dispose();
    ms2clo.dispose();
    ms2op.dispose();
    hds1clo.dispose();
    hsd1op.dispose();
    hsd2clo.dispose();
    hsd1op.dispose();
    mstest.dispose();
    hsdtest.dispose();
    twot.dispose();
    cngaclo.dispose();
    cngaop.dispose();
    cngbclo.dispose();
    cngbop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'DAY  BOOK',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          flexibleSpace: Container(
            decoration: const BoxDecoration(),
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.more_vert, size: 40),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Text(
                    "Redhun",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("redhuns123@gmail.com"),

                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "R",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' Change Rate'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' About Developer '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 80),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 80),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 31, 31),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              HomePageText(text: "MS 1:   "),
                              TextFiledDesign(
                                hint: 'Opening',
                                ControllerText: ms1op,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: "Closing",
                                ControllerText: ms1clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const HomePageText(text: 'MS 2:  '),
                              TextFiledDesign(
                                hint: 'Opening',
                                ControllerText: ms2op,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: ms2clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 8,
                          child: TextFiledDesign(
                            hint: 'Test',
                            ControllerText: mstest,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 80),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 31, 31),
                    //borderRadius: BorderRadius.all(Radius.circular(20),),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              HomePageText(text: 'HSD 1 : '),
                              TextFiledDesign(
                                hint: "Opening",
                                ControllerText: hsd1op,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hds1clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              HomePageText(text: 'HSD 2 :  '),
                              TextFiledDesign(
                                hint: "Opening",
                                ControllerText: hsd2op,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                              TextFiledDesign(
                                hint: 'Closing',
                                ControllerText: hsd2clo,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 8,
                          child: TextFiledDesign(
                            hint: 'Test',
                            ControllerText: hsdtest,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 31, 31),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          HomePageText(text: 'CNG A :  '),
                          TextFiledDesign(
                              hint: "Opening", ControllerText: cngaop),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                          TextFiledDesign(
                              hint: "Closing", ControllerText: cngaclo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          HomePageText(text: 'CNG B :  '),
                          TextFiledDesign(
                              hint: "Opening", ControllerText: cngbop),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                          TextFiledDesign(
                              hint: "Closing", ControllerText: cngbclo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 31, 31),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      HomePageText(text: '2T :   '),
                      TextFiledDesign(hint: "2T Sale", ControllerText: twot),
                    ],
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color.fromARGB(255, 254, 203, 60),
                      ),
                      onPressed: _submitData,
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 31, 31, 31),
                      )),
                      label: Text(
                        'Entry Expense',
                        style:
                            TextStyle(color: Color.fromARGB(255, 254, 203, 60)),
                      )),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          // isExtended: true,
          child: Icon(
            Icons.arrow_drop_up_sharp,
            size: 50,
            color: Colors.black,
          ),
          backgroundColor: Color.fromARGB(255, 254, 203, 60),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (ctx) => AddRate(
                      submitrate: _addrate,
                    ));
          },
        ));
  }
}
