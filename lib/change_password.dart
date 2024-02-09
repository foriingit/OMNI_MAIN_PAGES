import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Align(
        alignment: Alignment.topCenter ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        labelText: 'Old password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        labelText: 'New password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        labelText: 'Repeat new password',
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 142,
                      height: 38,
                      child: ElevatedButton(

                        child: Text('Save'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(251, 139, 37, 1),
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                        ),
                        ),
                        onPressed: () => Null,
                      ),
                    ),
                  ),
                ],
              ),
          ),
      );

  }
}
