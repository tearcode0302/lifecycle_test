import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) SonWidget(),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클릭해서 보이기 안보이기'),
            ),
          ],
        ),
      ),
    );
  }
}

class SonWidget extends StatefulWidget {
  SonWidget({super.key}) {
    print('1) StateFul Widget Constructor');
  }

  @override
  State<SonWidget> createState() {
    print('2) Stateful Widget CreateState');

    return _SonWidgetState();
  }
}

class _SonWidgetState extends State<SonWidget> {

  @override
  void initState() {
    print('3) Stateful Widget initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) Stateful Widget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5) Stateful Widget build');
    return Container(
      color: Colors.red,
      width: 50.0,
      height: 50.0,
    );
  }

  @override
  void deactivate() {
    print('6) Stateful Widget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) Stateful Widget dispose');
    super.dispose();
  }
}
