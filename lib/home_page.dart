import 'package:flutter/material.dart';
import 'package:my_first_app/about.dart';
import 'package:my_first_app/description_page.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color oldBackgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oldBackgroundColor,
      //! Top Bar Section
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (oldBackgroundColor == Colors.white) {
                  oldBackgroundColor = Colors.red;
                } else {
                  oldBackgroundColor = Colors.white;
                }
              });
            },
            icon: const Icon(
              Icons.color_lens,
            ),
          )
        ],
        title: const Text("Home"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: ListTile(
                  title: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const AboutPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.info_outline_rounded),
                title: const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 5.0,
                ),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Submerine"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const NextPage();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Bitcoin"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Stock Market"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Books"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Evil Corp"),
                    ),
                  ],
                ),
              ),
              //! First Description Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'World Tour',
                          imagePath: 'images/image1.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image1.png'),
                      const ListTile(
                        title: Text("Travel Whole world without Visa!"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //! Second Description Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'Crypto Hike',
                          imagePath: 'images/image2.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image2.png'),
                      const ListTile(
                        title: Text("Crypto price Hike!"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //! Third Description Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'Lost Friends',
                          imagePath: 'images/image3.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image3.png'),
                      const ListTile(
                        title: Text("Long Lost Friends! Bens & Khushi"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //! Fourth Discription Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'Indore Households',
                          imagePath: 'images/image4.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image4.png'),
                      const ListTile(
                        title: Text("indore House holds!"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //! Fifth Description Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'Social Delima',
                          imagePath: 'images/image5.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image5.png'),
                      const ListTile(
                        title: Text("Social Delima!"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //! Sixth Description Box
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: 'Ai Takeovers!',
                          imagePath: 'images/image6.png',
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(
                              2,
                              2,
                            ))
                      ]),
                  child: Column(
                    children: [
                      Image.asset('images/image6.png'),
                      const ListTile(
                        title: Text("Ai Takeovers!"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
