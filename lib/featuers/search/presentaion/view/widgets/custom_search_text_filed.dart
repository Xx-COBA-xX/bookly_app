import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          disabledBorder: buildOutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
