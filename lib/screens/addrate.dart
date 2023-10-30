import 'package:daybook/models/ratemodel.dart';
import 'package:daybook/widgets/addratepagetext.dart';

import 'package:daybook/widgets/lastpagetextfield.dart';
import 'package:daybook/widgets/modelpagetextfiled.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddRate extends StatefulWidget {
  AddRate({super.key, required this.submitrate});
  final void Function(Rate rates) submitrate;
  @override
  State<AddRate> createState() => _AddRate();
}

class _AddRate extends State<AddRate> {
  static const String KEYNAMEPETROL = 'petrol';
  static const String KEYNAMEDIESEL = 'diesel';
  static const String KEYNAMECNG = 'cng';

  double petrolr = 0.0;
  double dieselr = 0.0;
  double cngr = 0.0;

  var petrolrate = TextEditingController();
  var dieselrate = TextEditingController();
  var cngrate = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getdiesel = prefs.getDouble(KEYNAMEDIESEL);
    var getcng = prefs.getDouble(KEYNAMECNG);
    var getPetrol = prefs.getDouble(KEYNAMEPETROL);
    petrolr = getPetrol != null ? getPetrol : 0.0;
    cngr = getcng != null ? getcng : 0.0;
    dieselr = getdiesel != null ? getdiesel : 0.0;

    setState(() {
      petrolrate = (TextEditingController(text: petrolr.toString()));
      dieselrate = (TextEditingController(text: dieselr.toString()));
      cngrate = (TextEditingController(text: cngr.toString()));
      print(petrolrate);
    });
  }

  void _saverate() async {
    var petrolrate1 = petrolrate.text.toString();
    var dieselrate1 = dieselrate.text.toString();
    var cngrate1 = cngrate.text.toString();
    var prefs = await SharedPreferences.getInstance();
    prefs.setDouble(KEYNAMEPETROL, double.parse(petrolrate1));
    prefs.setDouble(KEYNAMEDIESEL, double.parse(dieselrate1));
    prefs.setDouble(KEYNAMECNG, double.parse(cngrate1));

    widget.submitrate(Rate(
        petrolrate: double.parse(petrolrate.text),
        dieselrate: double.parse(dieselrate.text),
        cngrate: double.parse(cngrate.text)));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      height: (MediaQuery.of(context).size.height / 2) + keyboardSpace,
      padding: EdgeInsets.fromLTRB(16, 48, 16, keyboardSpace + 16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 203, 60),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              AddRatePageText(text: "Petrol Rate : ", size: 17.0),
              ModelPageTextfiled(
                hint: petrolrate.text,
                controllertext: petrolrate,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              AddRatePageText(size: 17.0, text: 'Diesel Rate : '),
              ModelPageTextfiled(
                hint: dieselrate.text,
                controllertext: dieselrate,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              AddRatePageText(size: 17.0, text: 'Cng Rate :      '),
              ModelPageTextfiled(
                hint: cngrate.text,
                controllertext: cngrate,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('cancel'),
              ),
              ElevatedButton(onPressed: _saverate, child: const Text('save'))
            ],
          )
        ],
      ),
    );
  }
}
