import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medisync_patient/global.dart';
import 'package:medisync_patient/rating.dart';

class MyDoctor extends StatefulWidget {
  const MyDoctor({super.key});

  @override
  State<MyDoctor> createState() => _MyDoctorState();
}

class _MyDoctorState extends State<MyDoctor> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCol(),
    );
  }
}

class MyCol extends StatelessWidget {
  const MyCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const MyRowPad(),
        const SizedBox(height: 20),
        SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: SearchBox(
              onchangedfunction: (text) {},
              hintTextString: "Search Doctors",
            )),
        const SizedBox(height: 40),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: const Color(0xff000000), width: 1),
          ),
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              children: [
                NameDoctor(
                    name: "John Doe", rating: 2, category: "Pediatrician"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Anne Hill", rating: 3.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Max Trus", rating: 2.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Foo Dove", rating: 1, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Kate String", rating: 4.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Trace Mahk", rating: 3, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "John Doe", rating: 2, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Anne Hill", rating: 4.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Max Trus", rating: 2.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Foo Dove", rating: 1, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Kate String", rating: 4.5, category: "Cardiologist"),
                SizedBox(height: 20),
                NameDoctor(
                    name: "Trace Mahk", rating: 3, category: "Cardiologist"),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class NameDoctor extends StatelessWidget {
  const NameDoctor(
      {super.key,
      this.name = "Unknown",
      this.rating = 0,
      this.category = "Unknown"});
  final String name;
  final String category;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 102,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff8b8b8b)),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff333333)),
                          ),
                          Text(
                            category,
                            style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 102, 99, 99)),
                          ),
                          StarRating(rating: rating, size: 20),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.popAndPushNamed(context, "/book"),
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff008000),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 20.0),
                                child: Text(
                                  "Book",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyRowPad extends StatelessWidget {
  const MyRowPad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Logo(size: 24),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: MyPopUp(
                menulist: [
                  PopupMenuItem(
                      child: ListTile(
                    onTap: () =>
                        Navigator.popAndPushNamed(context, "/appointments"),
                    leading: const Icon(CupertinoIcons.list_bullet),
                    title: const Text("Appointments"),
                  )),
                  const PopupMenuDivider(height: 10),
                  PopupMenuItem(
                      child: ListTile(
                    onTap: () => Navigator.popAndPushNamed(context, "/profile"),
                    leading: const Icon(CupertinoIcons.profile_circled),
                    title: const Text("My Profile"),
                  )),
                  const PopupMenuDivider(height: 10),
                  PopupMenuItem(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 8, 63, 182),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: TextButton(
                                  onPressed: () =>
                                      Navigator.popAndPushNamed(context, "/"),
                                  child: const Text(
                                    "Logout",
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white),
                                  ))))
                    ],
                  ))
                ],
                myicon: const CircleAvatar(
                  radius: 27.0,
                  backgroundColor: Color(0xff8b8b8b),
                ),
              )),
        ],
      ),
    );
  }
}

class MyPopUp extends StatelessWidget {
  final List<PopupMenuEntry> menulist;
  final Widget myicon;

  const MyPopUp({super.key, required this.menulist, required this.myicon});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      elevation: 4,
      tooltip: "Settings",
      position: PopupMenuPosition.under,
      itemBuilder: ((context) => menulist),
      iconSize: 50,
      icon: myicon,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
