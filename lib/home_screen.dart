import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var profilePicture = [
    "assets/0.jpg",
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
    "assets/8.jpg",
    "assets/9.jpg",
    "assets/10.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/13.jpg",
    "assets/14.jpg",
  ];

  var titleText = [
    "Ahtisham Bhai",
    "Arfan Bhai",
    "Ashar",
    "Awais",
    "Badar Bhai",
    "Fahad",
    "Farhan",
    "Hanzla Bhai",
    "Labib Bhai",
    "Mesum",
    "Mohtashim",
    "Muzammil",
    "Rehan",
    "Sharjeel",
    "Sheharyar"
  ];

  var subtitleText = [
    "Ok ho gea.",
    "Oky hai",
    "Sahi ho gea",
    "Class hai bhai",
    "Universiy print shop",
    "Gate 2 pr",
    "Match 12 baje hai",
    "Hostel ke bahir!",
    "Book issue karvi li",
    "MP Hall mai",
    "Flood Night Tournament",
    "AMS",
    "Spectrum Scince Academy",
    "Chenab Univeristy",
    "Oky!"
  ];

  var trailingTime = [
    "12:36 Am",
    "1:20 Pm",
    "3:44 Pm",
    "2:12 Am",
    "7:21 Pm",
    "7:43 Pm",
    "9:12 Am",
    "6:36 Am",
    "11:42 Pm",
    "8:17 Am",
    "10:21 Pm",
    "11:08 Am",
    "5:31 Am",
    "1:01 Pm",
    "7:43 Am"
  ];

  var callTime = [
    " 13 March, 2024 12:36 Am",
    " 12 March, 2024 1:20 Pm",
    " 19 March, 2024 3:44 Pm",
    " 29 February, 2024 2024 Am",
    " 25 February, 2024 Pm",
    " 11 February, 2024 7:43 Pm",
    " 10 January, 2024 9:12 Am",
    " 9 January, 2024 6:36 Am",
    " 7 January, 2024 11:42 Pm",
    " 1 January, 2024 8:17 Am",
    " 14 December, 2023 10:21 Pm",
    " 11 December, 2023 11:08 Am",
    " 9 December, 2023 5:31 Am",
    " 7 December, 2023 1:01 Pm",
    " 4 December, 2023 7:43 Am"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.groups,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          actions: [
            // const Icon(Icons.camera_alt_outlined, color: Colors.white),
            // const SizedBox(width: 10),
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(child: Text('New Group')),
                      const PopupMenuItem(child: Text('Settings')),
                      const PopupMenuItem(child: Text('Log Out'))
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text(
              '    No group found',
              style: TextStyle(fontSize: 20),
            ),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(profilePicture[index]),
                      ),
                      title: Text(titleText[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(subtitleText[index]),
                      trailing: Text(trailingTime[index]));
                }),
            // const Text('Status'),

            ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                itemCount: 15,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'New Status',
                          textAlign: TextAlign.start,
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(profilePicture[index]),
                            ),
                          ),
                          title: Text(titleText[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          subtitle: Text(trailingTime[index]),
                          // trailing: const Text('12:34 am')
                        ),
                        const Text(
                          'Other Status',
                          textAlign: TextAlign.start,
                        )
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 3,
                            )),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profilePicture[index]),
                        ),
                      ),
                      title: Text(
                        titleText[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(trailingTime[index]),
                      // trailing: const Text('12:34 am')
                    );
                  }
                }),
            // const Text('Calls'),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(profilePicture[index]),
                      ),
                      title: Text(titleText[index]),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Icon(
                              color: Colors.teal,
                              size: 16,
                              index % 2 == 0
                                  ? Icons.call_made
                                  : Icons.call_received_outlined,
                            ),
                            Text(callTime[index]),
                          ],
                        ),
                      ),
                      trailing: index % 2 == 0
                          ? const Icon(
                              Icons.call,
                              color: Colors.teal,
                            )
                          : const Icon(
                              Icons.call_missed,
                              color: Colors.red,
                            ));
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
