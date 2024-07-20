// ignore: file_names
import 'package:flutter/material.dart';

// TODO: import BMRModel.dart
import 'BMRmodel.dart';

// ignore: must_be_immutable
class BMRresultPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  BMRresultPage({Key? key, required this.bmrdata});
  // TODO: add new parameter for storing bmrdata from caller

  // TODO: declare parameter to keep bmrdata
  Bmrdata bmrdata;
  
  @override
  State<BMRresultPage> createState() => _BMRresultPageState();
}

class _BMRresultPageState extends State<BMRresultPage> {
  late var _weight, _height, _age, _bmr, _gender, _unit;

  @override
  void initState() {
    super.initState();
    // TODO: initialize variables for displaying on listtile
    // move bmrdata into variables for showing ...here...
    _weight = widget.bmrdata.weight;
    _height = widget.bmrdata.height;
    _gender = widget.bmrdata.gender;
    _age = widget.bmrdata.age;
    _unit = widget.bmrdata.unit;
    _bmr = widget.bmrdata.bmr;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Result of Your BMR'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Weight:'),
              subtitle: Text('$_weight'),
              leading: const Icon(Icons.scale_outlined),
            ),
            ListTile(
              title: const Text('Height:'),
              subtitle: Text('$_height'),
              leading: const Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: const Text('Age:'),
              subtitle: Text('$_age Years'),
              leading: const Icon(Icons.timer),
            ),
            ListTile(
              title: const Text('Gender:'),
              subtitle: Text('$_gender'),
              leading: const Icon(Icons.person_outlined),
            ),
            ListTile(
              title: const Text('BMR Value:'),
              subtitle: Text(
                '$_bmr $_unit',
                style: TextStyle(color: Colors.deepOrange),
              ),
              leading: const Icon(Icons.timeline_rounded),
            ),
          ],
        ));
  }
}
