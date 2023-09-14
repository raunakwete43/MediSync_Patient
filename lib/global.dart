import 'package:flutter/material.dart';

//Brand Logo
class Logo extends StatelessWidget {
  const Logo({super.key, this.size = 16.0});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Med",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: size, color: Colors.black),
        ),
        Text(
          "i",
          style: TextStyle(
              color: const Color(0xffff6347),
              fontWeight: FontWeight.w500,
              fontSize: size),
        ),
        Text(
          "Sync",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: size, color: Colors.black),
        ),
        Text(
          "Patient",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: size * 0.625,
              color: Colors.black),
        )
      ],
    );
  }
}

// Search Bar
class SearchBox extends StatelessWidget {
  SearchBox(
      {super.key,
      required this.onchangedfunction,
      this.hintTextString = "Search"});

  Function onchangedfunction;
  String hintTextString;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        onchangedfunction(text);
      },
      decoration: InputDecoration(
        hintText: hintTextString,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
          },
          child: ClipOval(
            child: Container(
              width: 21, // Adjust the size of the circular checkbox as needed
              height: 21,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(
                      255, 50, 51, 51), // Border color when unchecked
                  width: 2.0,
                ),
                color: _isChecked
                    ? const Color.fromARGB(255, 32, 190, 80)
                    : Colors.transparent, // Fill color when checked
              ),
              child: _isChecked
                  ? const Icon(
                      Icons.check,
                      size: 16.0,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
        ),
      ],
    );
  }
}
