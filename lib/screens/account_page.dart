import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  static const routeName = '/account-page';

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNo = TextEditingController();
  late DateTime dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: Container(
        height: 500,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Account Details'),
            TextFormField(
              maxLength: 20,
              controller: firstName,
              decoration: const InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Enter your First name',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
              //onChanged: (val) {
              //  titleInput=val;
              //},
              controller: lastName,
              onSubmitted: null,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email Address'),
              //onChanged: (val) {
              //  titleInput=val;
              //},
              controller: email,
              onSubmitted: null,
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Phone No.'),
              //onChanged: (val) {
              //  titleInput=val;
              //},
              controller: phoneNo,
              onSubmitted: null,
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
      ),
    );
  }
}
