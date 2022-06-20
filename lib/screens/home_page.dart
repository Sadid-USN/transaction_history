import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widget/gromygrouped_list_view.dart';
import '../widget/header.dart';
import '../widget/transactions_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    DateFormat('EEEE').format(date);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.ios_share_rounded)),
        ],
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          Header(),
          SizedBox(
            height: 70,
          ),
          TransactionHistory(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: MyGroupedListView(),
          ),
        ],
      ),
    );
  }
}


// Container(
          //   height: 50,
          //   width: double.infinity,
          //   color: Colors.white,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 10, left: 10),
          //     child: Text(
          //       'Yesterday',
          //       style: TextStyle(
          //           color: Colors.grey.shade900, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     color: Colors.white,
          //     child: ListView.separated(
          //         itemBuilder: (context, index) {
          //           return Container(
          //             height: 70,
          //             color: Colors.white,
          //             child: ListTile(
          //               leading: CircleAvatar(
          //                 radius: 20,
          //                 backgroundImage: NetworkImage(
          //                   spending[index]['image'],
          //                 ),
          //               ),
          //               subtitle: Text(
          //                 spending[index]['time'].toString(),
          //               ),
          //               trailing: Text(
          //                 spending[index]['cost'],
          //                 style: TextStyle(
          //                     color: Colors.blueGrey.shade900,
          //                     fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //           );
          //         },
          //         separatorBuilder: (context, index) {
          //           return const Divider(
          //             thickness: 0.1,
          //             color: Colors.red,
          //           );
          //         },
          //         itemCount: spending.length),
          //   ),
          // ),