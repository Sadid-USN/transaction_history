import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../models/spending_model.dart';

class MyGroupedListView extends StatelessWidget {
  const MyGroupedListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GroupedListView(
      order: GroupedListOrder.DESC,
      groupHeaderBuilder: ((Map element) {
        return Container(
          height: 50,
          color: Colors.grey.shade400,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              DateFormat('EEE, MMM d').format(
                element['time'],
              ),
              style: TextStyle(
                  color: Colors.blueGrey.shade900, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
      itemBuilder: (context, Map element) {
        return Container(
            color: Colors.white,
            child: ListTile(
              title: Text(
                element['store'],
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey.shade800,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  DateFormat('hh:mm').format(
                    element['time'],
                  ),
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.normal)),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(element['image']),
              ),
              trailing: Text(
                element['cost'],
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey.shade800,
                    fontWeight: FontWeight.bold),
              ),
            ));
      },
      elements: spending,
      groupBy: (Map element) => DateTime(
          element['time'].year, element['time'].month, element['time'].day),
    );
  }
}
