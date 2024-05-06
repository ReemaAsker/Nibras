import 'package:flutter/material.dart';
import 'package:nibras_test/features_ui/CompaniesPage.dart';
import 'package:nibras_test/widgets/backgroundScreen.dart';
import 'package:nibras_test/widgets/homeButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24.withOpacity(0.5),
        title: Text('الرئيسية'),
      ),
      body: BackgroundWidget(
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 20.0,
          children: [
            HomeButton(
              icon: Icons.person,
              label: 'المحامون',
              onPressed: () {},
            ),
            HomeButton(
              icon: Icons.business,
              label: 'الشركات',
              onPressed: () {
                // Action to perform when Companies button is pressed
              },
            ),
            HomeButton(
              icon: Icons.business,
              label: 'المنشات',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompaniesPage(),
                    ));
              },
            ),
            HomeButton(
              icon: Icons.business_center,
              label: 'عن الشركة',
              onPressed: () {
                // Action to perform when Our Company button is pressed
              },
            ),
            HomeButton(
              icon: Icons.archive,
              label: 'الارشيف',
              onPressed: () {
                // Action to perform when Archive button is pressed
              },
            ),
          ],
        ),
      ),
    );
  }
}
