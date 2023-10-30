import 'package:flutter/material.dart';
import 'package:daybook/screens/lastPage.dart';
import 'package:daybook/widgets/homepagetext.dart';
import 'package:daybook/widgets/secondScreenTextFiled.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo(
      {super.key,
      required this.n1ms,
      required this.n2ms,
      required this.n1hsd,
      required this.n2hsd,
      required this.ca,
      required this.cb,
      required this.twot,
      required this.diesalrate,
      required this.petrolrate,
      required this.cngrate});
  final double n1ms;
  final double n2ms;
  final double n1hsd;
  final double n2hsd;
  final double ca;
  final double cb;
  final double twot;
  final double petrolrate;
  final double diesalrate;
  final double cngrate;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final lp = TextEditingController(text: '0');

  final ags = TextEditingController(text: '0');

  final sib = TextEditingController(text: '0');

  final ptm = TextEditingController(text: '0');

  final gpay = TextEditingController(text: '0');

  final er = TextEditingController(text: '0');

  final ep = TextEditingController(text: '0');

  final idt = TextEditingController(text: '0');

  final ch = TextEditingController(text: '0');

  _submitdata() {
    final double cashhand = double.parse(ch.text);
    final netvalue = double.parse(lp.text) +
        double.parse(ags.text) +
        double.parse(sib.text) +
        double.parse(ptm.text) +
        double.parse(gpay.text) +
        double.parse(er.text) +
        double.parse(ep.text) +
        double.parse(idt.text);

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LastScreen(
                nozzel1ms: widget.n1ms,
                nozzle2ms: widget.n2ms,
                nozzel1hsd: widget.n1hsd,
                nozzle2hsd: widget.n2hsd,
                nozzle2ca: widget.cb,
                nozzel1ca: widget.ca,
                netpay: netvalue,
                cashhad: cashhand,
                twot: widget.twot,
                dieselrate: widget.diesalrate,
                petrolrate: widget.petrolrate,
                cngrate: widget.cngrate,
              )),
    );
  }

  @override
  void dispose() {
    ags.dispose();
    lp.dispose();
    sib.dispose();
    ptm.dispose();
    gpay.dispose();
    er.dispose();
    ep.dispose();
    idt.dispose();
    ch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Expense Entry',
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
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 31, 31),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Less Payments :  '),
                        SecondTextFiled(
                          data: lp,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'AGS :                       '),
                        SecondTextFiled(
                          data: ags,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'SIB :                         '),
                        SecondTextFiled(
                          data: sib,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Paytm :                   '),
                        SecondTextFiled(
                          data: ptm,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Gpay SIB :              '),
                        SecondTextFiled(
                          data: gpay,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Extra Reward:      '),
                        SecondTextFiled(
                          data: er,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Extra Power :        '),
                        SecondTextFiled(
                          data: ep,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      HomePageText(text: ' Indent :                  '),
                      SecondTextFiled(
                        data: idt,
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HomePageText(text: 'Cash In Hand :      '),
                        SecondTextFiled(
                          data: ch,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
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
                    onPressed: _submitdata,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 31, 31, 31),
                    )),
                    label: Text(
                      'Final Shot',
                      style:
                          TextStyle(color: Color.fromARGB(255, 254, 203, 60)),
                    )),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
