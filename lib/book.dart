import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medisync_patient/doctors.dart';
import 'package:medisync_patient/global.dart';
import 'package:medisync_patient/rating.dart';

class MyBookis extends StatelessWidget {
  const MyBookis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: const _MyRow(),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 255, 255, 255),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: const Color(0xff333232), width: 1),
            ),
            child: const SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: BookColm(),
            ),
          )
        ],
      ),
    );
  }
}

class BookColm extends StatelessWidget {
  const BookColm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyBookWidget(name: "John Doe", category: "Dentist", rating: 4.5),
        const Divider(color: Colors.black, thickness: 1.0),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        const Text(
          "123 Main Street, City, Country",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Container(
          height: MediaQuery.of(context).size.height *
              0.3, // Adjust the height as needed
          color: Colors.grey, // Use grey color for the box
          child: const Center(
            child: Text(
              "Map Placeholder",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Text(
          "Available Slots",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Today",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0x1fffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: const Color(0xff938e8e), width: 1),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Time : 09 : 30 AM ",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CheckboxExample(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0x1fffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: const Color(0xff938e8e), width: 1),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Time : 12 : 30 PM ",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CheckboxExample(),
              ),
            ],
          ),
        ),
        const Text(
          "Tomorrow",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0x1fffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: const Color(0xff938e8e), width: 1),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Time : 09 : 30 AM ",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CheckboxExample(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0x1fffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: const Color(0xff938e8e), width: 1),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Time : 12 : 30 PM ",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CheckboxExample(),
              ),
            ],
          ),
        ),
        const Text(
          "Describe your symptoms",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Enter your symptoms here",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, "/appointments"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text("Book Appointment"),
          ),
        ),
      ],
    );
  }
}

class MyBookWidget extends StatelessWidget {
  const MyBookWidget(
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 28.0,
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
                name,
                style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 102, 99, 99)),
              ),
              StarRating(rating: rating, size: 20),
            ],
          ),
        ),
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
