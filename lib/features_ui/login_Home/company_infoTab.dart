import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nibras_test/widgets/customListTileWithDropBox.dart';

import '../../widgets/customListTileWithTxt.dart';

class CompanyInfoTab extends StatefulWidget {
  const CompanyInfoTab({super.key});

  @override
  State<CompanyInfoTab> createState() => _CompanyInfoTabState();
}

class _CompanyInfoTabState extends State<CompanyInfoTab> {
  File? _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      color: Colors.white24.withOpacity(0.8),
      child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey[300],
                          backgroundImage:
                              _image != null ? FileImage(_image!) : null,
                          child: _image == null
                              ? Icon(
                                  Icons.person,
                                  size: 100,
                                  color: Colors.grey[600],
                                )
                              : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SafeArea(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          leading: Icon(Icons.camera_alt),
                                          title: Text('التقط صورة بالكاميرا'),
                                          onTap: () {
                                            getImage(ImageSource.camera);
                                            Navigator.pop(context);
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.photo_library),
                                          title: Text('اختر صورة من الاستديو'),
                                          onTap: () {
                                            getImage(ImageSource.gallery);
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Column(
              children: [
                Divider(),
                CutomListTile(
                  numOfTxTf: 3,
                  title: 'اسم المنشأة',
                ),
                CutomListTile(title: ' العلامة التجارية', numOfTxTf: 1),
                CutomListTile(
                  title: 'وصف المسمى',
                  numOfTxTf: 2,
                ),
                CutomListTile(title: 'الرقم الوطني للمنشأة  ', numOfTxTf: 1),
                CutomListTile(title: 'رقم تسجيل المنشأة    ', numOfTxTf: 1),
                CutomListTile(
                  title: ' رقم السجل التجاري ',
                  numOfTxTf: 1,
                ),

                CutomListTileWithdrop(
                  title: 'صفة تسجيل المنشأة',
                  numOfTxTf: 4,
                ),
                CutomListTileWithdrop(
                  title: 'نوع المنشأة',
                  numOfTxTf: 4,
                ),
                CutomListTileWithdrop(
                  title: 'جنسية المنشأة',
                  numOfTxTf: 4,
                ),
                CutomListTile(
                  title: ' رقم  الموبايل ',
                  numOfTxTf: 1,
                ),
                CutomListTile(
                  title: ' رقم  الهاتف ',
                  numOfTxTf: 1,
                ),
                CutomListTile(
                  title: ' رقم  الفاكس ',
                  numOfTxTf: 1,
                ),
                CutomListTile(
                  title: ' البريد الالكتروني   ',
                  numOfTxTf: 1,
                ),
                CutomListTile(
                  title: '  العنوان   ',
                  numOfTxTf: 2,
                  maxline: 3,
                ),
                CutomListTile(
                  title: '  ملاحظات   ',
                  numOfTxTf: 1,
                  maxline: 5,
                ),
                CutomListTile(
                  title: '  تاريخ السجل   ',
                  numOfTxTf: 1,
                  isdate: true,
                ),
                CutomListTile(
                  title: '  تاريخ التحديث   ',
                  numOfTxTf: 1,
                  isdate: true,
                ),

                // ListTile(
                //     title: Text(
                //       'رقم تسجبل المنشأة   ',
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold),
                //     ),
                //     subtitle: Row(
                //       children: [
                //         Expanded(
                //           flex: 1,
                //           child: TextFormField(
                //             decoration: const InputDecoration(
                //               border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.all(
                //                       Radius.circular(8))),
                //               hintText: '',
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 5,
                //         ),
                //         Expanded(
                //           flex: 2,
                //           child: TextFormField(
                //             decoration: const InputDecoration(
                //               border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.all(
                //                       Radius.circular(8))),
                //               hintText: '',
                //             ),
                //           ),
                //         ),
                //       ],
                //     )),
                // Row(
                //   children: [
                //     Expanded(
                //       child: ListTile(
                //         title: Text('Department'),
                //         subtitle: TextFormField(
                //           decoration: const InputDecoration(
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(
                //                     Radius.circular(8))),
                //             hintText: '  Department',
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Expanded(
                //       child: ListTile(
                //         title: Text('Year Of Study'),
                //         subtitle: TextFormField(
                //           decoration: const InputDecoration(
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(
                //                     Radius.circular(8))),
                //             hintText: '  Year Of Study',
                //           ),
                //         ),
                //       ),
                // ),
                // ],
                // )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
