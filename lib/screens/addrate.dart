import 'package:daybook/models/ratemodel.dart';
import 'package:flutter/material.dart';

class AddRate extends StatefulWidget{
   AddRate({super.key,required this.submitrate});
    final void Function(Rate rates) submitrate;
 @override
  State<AddRate>createState()=>_AddRate();
 
  }

class _AddRate extends State<AddRate> {
  

 
  final petrolrate=TextEditingController();
  final dieselrate=TextEditingController();
  void _saverate(){
    widget.submitrate(Rate(petrolrate: petrolrate.text, dieselrate: dieselrate.text));
     Navigator.pop(context);
  
    }

  @override
  Widget build(BuildContext context) {
    return Container(
     
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/10,left: MediaQuery.of(context).size.width/10),
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/10,left: MediaQuery.of(context).size.width/10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 203, 60),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20),
           color: Colors.white,
            child: TextFormField(
              controller: petrolrate,
              keyboardType: TextInputType.number,
            
              decoration: InputDecoration(
                fillColor: Colors.white,
             enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              //borderRadius: BorderRadius.circular(8.0),
            ),
              focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
            //  borderRadius: BorderRadius.circular(8.0),
          ),
          
                contentPadding: EdgeInsets.all(0),
                // border: OutlineInputBorder(),
                hintText: 'Petrol Rate',
                hintStyle: TextStyle(color: Colors.grey[400]),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20),
           color: Colors.white,
            child: TextFormField(
              controller: dieselrate,
              keyboardType: TextInputType.number,
            
              decoration: InputDecoration(
                fillColor: Colors.white,
             enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              //borderRadius: BorderRadius.circular(8.0),
            ),
              focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
            //  borderRadius: BorderRadius.circular(8.0),
          ),
          
                contentPadding: EdgeInsets.all(0),
                // border: OutlineInputBorder(),
                hintText: 'Diesel Rate',
                hintStyle: TextStyle(color: Colors.grey[400]),
              ),
            ),
          ),
          SizedBox(height: 30,),
           Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('cancel'),
                      ),
                      ElevatedButton(
                          onPressed: _saverate, child: const Text('save'))
                    ],
                  )
        ],
      ),
    );
  }
}
