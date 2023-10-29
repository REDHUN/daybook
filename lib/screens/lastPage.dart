import 'package:daybook/widgets/lastpagetextfield.dart';
import 'package:flutter/material.dart';

import 'package:daybook/widgets/lastpagetext.dart';

class LastScreen extends StatelessWidget {
  const LastScreen(
      {super.key,
      required this.nozzel1ms,
      required this.nozzle2ms,
      required this.nozzel1hsd,
      required this.nozzle2hsd,
      required this.nozzel1ca,
      required this.nozzle2ca,
      required this.netpay,
      required this.cashhad,
      required this.twot});
  final double nozzel1ms;
  final double nozzle2ms;
  final double nozzel1hsd;
  final double nozzle2hsd;
  final double nozzel1ca;
  final double nozzle2ca;
  final double netpay;
  final double cashhad;
  final double twot;

  _grandtotal() {
    final double grandtotal = ((nozzel1ms + nozzle2ms) * 108) +
        ((nozzel1hsd + nozzle2hsd) * 96.9) +
        ((nozzel1ca + nozzle2ca) * 86) +
        twot;

    return grandtotal.toString();
  }

  _netpay() {
    final double netpay1 = (((nozzel1ms + nozzle2ms) * 108) +
            ((nozzel1hsd + nozzle2hsd) * 96.9) +
            ((nozzel1ca + nozzle2ca) * 86) +
            twot) -
        netpay;
    return netpay1.toString();
  }

  _short() {
    final short = cashhad -
        ((((nozzel1ms + nozzle2ms) * 108) +
                ((nozzel1hsd + nozzle2hsd) * 96.9) +
                ((nozzel1ca + nozzle2ca) * 86) +
                twot) -
            netpay);

    return short.toString();
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
        child: Container(color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 31, 31),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LastPageText(text: 'Petrol Sale Report', size: 20.0),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 1 MS :            ', size: 15.0),
                        LastPageTextField(hintText: nozzel1ms)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 2 MS :             ', size: 15.0),
                        LastPageTextField(hintText: nozzle2ms)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Total Sale (Petrol)  :   ', size: 15.0),
                        LastPageTextField(
                            hintText: ((nozzel1ms + nozzle2ms) * 108))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 31, 31),
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LastPageText(text: 'Diesel Sale Report', size: 20.0),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 1 HSD :          ', size: 15.0),
                        LastPageTextField(hintText: nozzel1hsd)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 2 HSD :          ', size: 15.0),
                        LastPageTextField(hintText: nozzle2hsd)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Total Sale (Diesel) :    ', size: 15.0),
                        LastPageTextField(
                            hintText: ((nozzel1hsd + nozzle2hsd) * 96.90))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 31, 31),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LastPageText(text: 'CNG Sale Report', size: 20.0),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 1 CNG :        ', size: 15.0),
                        LastPageTextField(hintText: nozzel1ca)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NOZZLE 2 CNG :        ', size: 15.0),
                        LastPageTextField(hintText: nozzle2ca)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Total Sale (CNG) :      ', size: 15.0),
                        LastPageTextField(
                            hintText: ((nozzel1ca + nozzle2ca) * 86))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 31, 31),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LastPageText(text: 'Total Sale Report', size: 20.0),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Grant Total Sale :       ', size: 15.0),
                        LastPageTextField(hintText: _grandtotal())
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'NET Amount :              ', size: 15.0),
                        LastPageTextField(hintText: (_netpay()))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Cash In Hand :             ', size: 15.0),
                        LastPageTextField(hintText: cashhad)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        LastPageText(
                            text: 'Short / Excess :           ', size: 15.0),
                        LastPageTextField(hintText: _short())
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
