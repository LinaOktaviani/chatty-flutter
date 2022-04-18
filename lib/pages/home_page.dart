import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/asahi.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Hamada Asahi',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFFFFFF))),
              SizedBox(height: 2),
              Text('Korean Idol',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: lightBlueColor)),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/mashiho.png',
                      name: 'Mashiho',
                      text: "Ok, let's go!",
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/jeongwoo.png',
                      name: 'Jeongwoo',
                      text: 'school',
                      time: '9.13',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/jihoon.png',
                      name: 'Jihoon',
                      text: 'I can not',
                      time: '2:30',
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/haruto.png',
                      name: 'Haruto',
                      text: 'Nope',
                      time: 'yesterday',
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/jaehyuk.png',
                      name: 'Jaehyuk',
                      text: 'Sure',
                      time: 'yesterday',
                      unread: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Groups', style: titleTextStyle),
                    ChatTile(
                      imageUrl: 'assets/images/treasure.png',
                      name: 'Treasure',
                      text: 'Fighthing!',
                      time: '11.11',
                      unread: false,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/emoticon2.png',
                        name: 'Dorm 2',
                        text: 'Jeongwoo-yaa',
                        time: '7.11',
                        unread: true),
                    ChatTile(
                        imageUrl: 'assets/images/emoticon3.png',
                        name: 'J-Line',
                        text: 'Yoshi, hurry up',
                        time: 'yesterday',
                        unread: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
