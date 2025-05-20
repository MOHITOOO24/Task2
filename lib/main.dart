import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            BackgroundImage(backimage: 'assests/images/sky_image.jpeg'),
            ProfileBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 100),
                    ProfileImage(),
                    SizedBox(height: 20),
                    Text(
                      'Rohan Mohite',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(),
                    Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          color: Colors.blue,
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.dribbble),
                          color: Colors.pink,
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: Colors.blue,
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.pinterest),
                          color: Colors.red,
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.facebook),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 150),
                        Column(
                          children: [
                            Text(
                              '240',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              '24K',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                      width: 350,

                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(105, 177, 218, 252),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Transform.translate(
                                  offset: Offset(0, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_1.jpg',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-20, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_2.jpg',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-20, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_3.jpg',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-20, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_4.jpg',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-20, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_5.jpg',
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-20, 0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assests/images/mutual_6.jpg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text('22 Follower you know'),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('FOLLOW NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.backimage});
  final String backimage;
  @override
  Widget build(BuildContext context) {
    return Image.asset(backimage, width: 600, height: 300, fit: BoxFit.cover);
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundImage: AssetImage('assests/images/user.png'),
    );
  }
}

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 700,
        width: 350,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
        ),
      ),
    );
  }
}
