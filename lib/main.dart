import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskb/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChangeRadio(),
      child: MaterialApp(
        home: RadioButtonExample(),
      ),
    );
  }
}

class RadioButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ChangeRadio>(builder: (context, provider, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RadioListTile(
                title: Text('1'),
                value: 'Option 1',
                groupValue: provider.selectedRadioValue,
                onChanged: (String? value) {
                  provider.valuChange(value);
                },
              ),
              RadioListTile(
                title: Text('2'),
                value: 'Option 2',
                groupValue: provider.selectedRadioValue,
                onChanged: (String? value) {
                  provider.valuChange(value);
                },
              ),
              RadioListTile(
                title: Text('3'),
                value: 'Option 3',
                groupValue: provider.selectedRadioValue,
                onChanged: (String? value) {
                  provider.valuChange(value);
                },
              ),
              Container(
                child: Text(provider.selectedRadioValue.toString()),
              )
            ],
          );
        }),
      ),
    );
  }
}
