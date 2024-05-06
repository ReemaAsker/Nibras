import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nibras_test/features_ui/login_Home/company_infoTab.dart';
import 'package:nibras_test/widgets/backgroundScreen.dart';
import 'package:nibras_test/widgets/companyInfo.dart';

class CompaniesPage extends StatefulWidget {
  CompaniesPage({Key? key}) : super(key: key);

  @override
  State<CompaniesPage> createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Future<void> _showSearchResults() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('المنشات:'),
          content: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        ' #',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'رقم المنشأة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1,
                      comName:
                          ' شركة اوبتما لادارة الخدمات والنفقات الطبية التأمينية'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                  CompanyInfoWidget(
                      num: 1, comName: 'شركة الفوسقات الاردنية المحدودة'),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24.withOpacity(0.5),
          title: Text('المنشات'),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    _showSearchResults();
                  },
                  icon: Icon(
                    Icons.search,
                    color: const Color(0xffffc200),
                    size: 30.0,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    print("hello");
                  },
                  icon: Icon(
                    Icons.menu,
                    color: const Color(0xffffc200),
                    size: 30.0,
                  )),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              color: const Color(0xffffc200),
            ),
            labelColor: Colors.black,
            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'المعلومات الاولية \n للمنشاة',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.info),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'السجل التجاري\n للمنشاة',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.edit_calendar_outlined),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'المفوضون بالتوقيع\n عن  المنشاة',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.person),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: BackgroundWidget(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  CompanyInfoTab(),
                  Center(
                    child: Text('2'),
                  ),
                  Center(
                    child: Text('3'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
