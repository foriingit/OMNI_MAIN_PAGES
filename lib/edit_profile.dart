import 'package:flutter/material.dart';
import 'main.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class Edit_profile extends StatelessWidget {
  const Edit_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(2),
            child: Column(
                children: [
                  Stack(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100), child: Image.network('https://as1.ftcdn.net/v2/jpg/01/68/80/20/1000_F_168802075_Il6LeUG0NCK4JOELmkC7Ki81g0CiLpxU.jpg')),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                            child: IconButton(
                              icon: Icon(Icons.drive_file_rename_outline_sharp,
                              color: Colors.black,
                              size: 20,),
                              onPressed: (){
                                showAdaptiveActionSheet(
                                  context: context,
                                  androidBorderRadius: 30,
                                  actions: <BottomSheetAction>[
                                    
                                    BottomSheetAction(title: const Text('Select photo'), onPressed: (context) {}),
                                    BottomSheetAction(title: const Text('Take a photo'), onPressed: (context) {}),
                                    BottomSheetAction(title: const Text('Delete', style: TextStyle(color: Colors.red,)), onPressed: (context) {}),
                                  ],
                                  cancelAction: CancelAction(title: const Text('Cancel')),
                                );
                              },
                            ),

                          ),
                        ),
                      ]
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 348,
                          height: 58,
                          child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0, top: 6),
                                    child: Text('Email'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0),
                                    child: Text('turdova@auca.kg'),
                                  )
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            width: 348,
                            height: 58,
                            child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(left: 17.0, top: 6),
                                      child: Text('Email'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17.0),
                                      child: Text('turdova@auca.kg'),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 26),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 163,
                                  height: 58,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2.0, top: 6),
                                          child: Text('Country'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 16.0),
                                          child: Text('Kyrgyzstan'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 163,
                                  height: 58,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2.0, top: 6),
                                          child: Text('Country'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 17.0),
                                          child: Text('Kyrgyzstan'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            )
                        ),

                      ],
                    ),
                  )
                ]

            ),
          ),
        )
    );
  }
}