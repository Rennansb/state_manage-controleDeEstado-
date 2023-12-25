import 'package:flutter/material.dart';
import 'package:state_manage/bloc_pattern/bloc_pattern_page.dart';
import 'package:state_manage/change_notifier/change_notifier.dart';
import 'package:state_manage/setState/imc_setstate_page.dart';
import 'package:state_manage/value_notifier/value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => _goToPage(context, ImcSetstatePage()),
                child: Text('SetState')),
            ElevatedButton(
                onPressed: () => _goToPage(
                      context,
                      ValueNotifierPage(),
                    ),
                child: Text('ValueNotifier')),
            ElevatedButton(
                onPressed: () => _goToPage(
                      context,
                      ChangeNotifierPage(),
                    ),
                child: Text('ChangeNotifier')),
            ElevatedButton(
                onPressed: () => _goToPage(
                      context,
                      BlocPatternPage(),
                    ), child: Text('Bloc Pattern (Streams)'))
          ],
        ),
      ),
    );
  }
}
