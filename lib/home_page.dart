import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health_app/emojis.dart';
import 'package:mental_health_app/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hey User! and Date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hey User!',
                            style: GoogleFonts.dosis(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '25/9/2022',
                            style: GoogleFonts.dosis(
                              fontSize: 20,
                              color: Colors.blue[300],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[700],
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),

                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: GoogleFonts.dosis(fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  // How are you feeling
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How are you feeling right now',
                        style: GoogleFonts.dosis(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  // Emojis
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Emoji : 'Window Key' + ';'
                      Emojis(emoji: '😥', emojiName: 'Sad'),
                      Emojis(emoji: '🙁', emojiName: 'Not Okay'),
                      Emojis(emoji: '😣', emojiName: 'Frustrated'),
                      Emojis(emoji: '😀', emojiName: 'Good'),
                      Emojis(emoji: '😄', emojiName: 'Amazing'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.grey[300],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: GoogleFonts.dosis(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                    ),
                    // Exercises
                    ExerciseTile(
                      icon: Icons.favorite,
                      titleText: 'Breathing Exercise',
                      time: '15 minutes',
                      iconColor: Colors.red,
                      iconBorderColor: Colors.orange,
                    ),
                    SizedBox(height: 20),
                    ExerciseTile(
                      icon: Icons.star,
                      titleText: 'Meditation',
                      time: '10 minutes',
                      iconColor: Colors.yellow,
                      iconBorderColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Navigation Bar
            BottomNavigationBar(
              backgroundColor: Colors.grey[300],
              elevation: null,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'favorite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
