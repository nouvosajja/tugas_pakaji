import 'package:flutter/material.dart';
import 'SecondRoute.dart';

class formregistrasi extends StatefulWidget {
  const formregistrasi({Key? key}) : super(key: key);

  @override
  State<formregistrasi> createState() => _formregistrasiState();
}

class _formregistrasiState extends State<formregistrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myPhone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Registration'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pilih Jenis Kelamin",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 1;
                      });
                    }),
                Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 2;
                      });
                    }),
                Text("Female")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Phone: ${myPhone}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SecondRoute(),));
              
                  
               setState(() {
                 myPhone = result.toString();
               });

              },
              child: Text("input number"),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
