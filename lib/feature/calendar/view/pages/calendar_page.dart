import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              _SubsSchedule(),
              _SubsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubsSchedule extends StatefulWidget {
  const _SubsSchedule({Key? key}) : super(key: key);

  @override
  State<_SubsSchedule> createState() => _SubsScheduleState();
}

class _SubsScheduleState extends State<_SubsSchedule> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 0.35.sh,
      child: Card(
        elevation: 5.0,
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Subs\n schedule',
            ),
            const ListTile(
              title: Text('3 subscriptions for today'),
              trailing: _DropDownButton(),
            ),
            SizedBox(
              width: 0.95.sw,
              height: 130.h,
              child: const Placeholder(
                child: Center(
                  child: Text('Calendar widget'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DropDownButton extends StatefulWidget {
  const _DropDownButton({Key? key}) : super(key: key);

  @override
  State<_DropDownButton> createState() => __DropDownButtonState();
}

class __DropDownButtonState extends State<_DropDownButton> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'January';
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      //style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['January', 'February', 'March', 'April']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _SubsSection extends StatelessWidget {
  const _SubsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _BillsCard(),
        SizedBox(
          width: 0.95.sw,
          height: 200.h,
          child: const Placeholder(
            child: Center(
              child: Text('Subs items'),
            ),
          ),
        ),
      ],
    );
  }
}

class _BillsCard extends StatelessWidget {
  const _BillsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.95.sw,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('January'),
              Text('\$24.98'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('00.00.0000'),
              Text('in upcoming bills'),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubsCard extends StatelessWidget {
  final Widget subIcon;
  final String subName;
  final double subPrice;
  const _SubsCard({
    Key? key,
    required this.subIcon,
    required this.subName,
    required this.subPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 3.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          subIcon,
          const Spacer(),
          Text(subName),
          Text('\$$subPrice'),
        ],
      ),
    );
  }
}
