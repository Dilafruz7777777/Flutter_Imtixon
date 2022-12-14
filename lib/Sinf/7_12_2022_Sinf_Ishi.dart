import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sinf extends StatefulWidget {
  const Sinf({Key? key}) : super(key: key);
  @override
  State<Sinf> createState() => _SinfState();
}

String selecTime = "";
String seletDate = "";
class _SinfState extends State<Sinf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Date time picker")),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Center(child: Text("Choose Date")),
            ),
            ElevatedButton(
              onPressed: () {
                // showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1920), lastDate: DateTime(2025));
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(
                    Duration(days: 365 * 90),
                  ),
                  lastDate: DateTime.now().add(
                    Duration(days: 365 * 10),
                  ),
                ).then((value) {
                  seletDate = "${value?.month ?? 0} / ${value?.day ?? 0} / ${value?.year ?? 0}";
                  setState(() {});
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("$seletDate"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(110),
              child: Center(child: Text("Choose Time")),
            ),

            ElevatedButton(onPressed: (){
              showTimePicker(context: context, initialTime: TimeOfDay.now(),
              ).then((value) {
                selecTime = "${value?.hour ?? TimeOfDay.now().hour} : ${value?.minute ?? TimeOfDay.now().minute}";
                setState(() {});
              });
            }, child: Text(" $selecTime"),),


          ],
        ),
      ),
    );
  }
}
