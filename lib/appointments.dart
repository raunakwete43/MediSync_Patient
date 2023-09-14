import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medisync_patient/doctors.dart';
import 'package:medisync_patient/global.dart';
import 'package:medisync_patient/rating.dart';

class MyAppointment extends StatelessWidget {
  const MyAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyColm(),
    );
  }
}

class MyColm extends StatelessWidget {
  const MyColm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          child: const _MyRow(),
        ),
        Container(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: const Text(
              "Appointments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              child: Column(children: [
                ExpandableCard(),
                ExpandableCard(),
                ExpandableCard(),
                ExpandableCard(),
                ExpandableCard(),
              ]),
            ),
          ),
        )
      ],
    );
  }
}

class _MyRow extends StatelessWidget {
  const _MyRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, "/searchdoctors"),
            icon: const Icon(Icons.arrow_back)),
        const Logo(size: 24),
        Padding(
            padding: const EdgeInsets.symmetric(),
            child: MyPopUp(
              menulist: [
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
                              )),
                        ))
                  ],
                ))
              ],
              myicon: const CircleAvatar(
                radius: 27.0,
                backgroundColor: Color(0xff8b8b8b),
              ),
            ))
      ],
    );
  }
}

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({super.key});

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Color(0xff9e9e9e), width: 1),
      ),
      elevation: 2.0,
      margin: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: const CardRow(
            name: "John Doe", category: "Gynecologist", rating: 3.5),
        trailing: _isExpanded
            ? const Icon(Icons.expand_less)
            : const Icon(Icons.expand_more),
        onExpansionChanged: (bool isExpanded) {
          setState(() {
            _isExpanded = isExpanded;
          });
        },
        children: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 30),
              Text(
                "GreenWood General Hospital",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "123 Main Street, Greenwood, New York",
                style: TextStyle(fontSize: 16.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "DID :",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text("123456",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 192, 65, 65),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Date :",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text("14-09-2023",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 32, 32, 32),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Time :",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text("12:30 PM",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 32, 32, 32),
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  const CardRow(
      {super.key,
      this.name = "Unknown",
      this.rating = 0,
      this.category = "Unknown"});
  final String name;
  final String category;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 27.0,
          backgroundColor: Color(0xff8b8b8b),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            StarRating(rating: rating, size: 16)
          ],
        ),
        const Expanded(child: Text(" ")),
        TextButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, '/searchdoctors'),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 212, 61, 81),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Text(
                "Cancel",
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ))
      ],
    );
  }
}
