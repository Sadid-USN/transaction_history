import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://c4.wallpaperflare.com/wallpaper/881/281/94/american-flag-eagle-united-states-usa-wallpaper-preview.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'USD Account',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
              ),
              const SizedBox(
                width: 70,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 5),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Hide',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '\$ ',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                '180,900,76',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ],
          )
        ],
      ),
    );
  }
}
