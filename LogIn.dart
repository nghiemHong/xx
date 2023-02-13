import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});


  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String? valueChoose;
  List<String> list = ['female', 'male'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text(
            'Fill Your Profile',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 15, right: 20),
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/login.png')),
              ),
            ),
            
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "FullName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                )),

            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "NickName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                )),

            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Date of Birth",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                )),
            
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,bottom: 1,right: 20),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 2, bottom: 15, right: 20),
              child: Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(20, 8.0, 8.0, 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text('Gender'),
                      icon: Icon(Icons.arrow_drop_down),
                      value: valueChoose,
                      isExpanded: true,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: list.map((newValue) {
                        return DropdownMenuItem(
                          child: Text(newValue),
                          value: newValue,
                        );
                      }).toList(),
                    ),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, bottom: 15, right: 20),
              child: Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Conitue",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))))),
            ),
          ],
        ),
      ),
    );
  }
}
