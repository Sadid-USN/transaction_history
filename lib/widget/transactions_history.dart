import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  String dropdownValue = 'USD Dollar';
  String dropdownValue_2 = 'ALL';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff0E0E10),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction History',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xff333333))),
              child: DropdownButton<String>(
                dropdownColor: const Color(0xff333333),
                value: dropdownValue,
                icon: const Padding(
                  padding: EdgeInsets.only(left: 230),
                  child: Icon(Icons.arrow_drop_down_sharp),
                ),
                //elevation: 16,
                style: const TextStyle(color: Colors.white),
                underline: const Divider(color: Color(0xff333333)),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'USD Dollar',
                  '-\$555.00 USD',
                  '-\$321.00 USD',
                  '-\$121.00 USD',
                  '+\$89.00 USD',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 318,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: const Color(0xff333333),
                    ),
                  ),
                  child: DropdownButton<String>(
                    dropdownColor: const Color(0xff333333),
                    value: dropdownValue_2,
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 170),
                      child: Icon(Icons.arrow_drop_down_sharp),
                    ),
                    //elevation: 16,
                    style: const TextStyle(color: Colors.white),
                    underline: const Divider(color: Color(0xff333333)),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[
                      'ALL',
                      'Expenses',
                      'Income',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: const Color(0xff333333),
                    ),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
