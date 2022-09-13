import 'package:doctor_app/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//buttonA 1
Widget buttonA(String text, String routeName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Container(
      alignment: Alignment.center,
      width: 180,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: accent2Color,
        border: Border.all(
          color: mainColor,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: mainColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

// search bar
class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  void updateList(String value) {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 370,
      child: Column(
        children: [
          TextField(
            style: const TextStyle(fontSize: 20, color: accent1Color),
            decoration: InputDecoration(
              filled: true,
              fillColor: accent3Color,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(fontSize: 20, color: accent1Color),
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: accent1Color,
            ),
          ),
          const SizedBox(height: 0),
          Expanded(
            child: ListView(),
          )
        ],
      ),
    );
  }
}

//list of services
Widget list1(AssetImage assetImage, String info) {
  return Container(
    height: 150,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(color: accent1Color),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
            color: accent2Color,
            image: DecorationImage(
              image: assetImage,
              fit: BoxFit.none,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          info,
          style: const TextStyle(color: accent1Color, fontSize: 20),
        ),
      ],
    ),
  );
}

//doctors info
Widget doctorInfo(AssetImage assetImageLink, String name, String docInfo,
    AssetImage ratingsImage) {
  return Container(
    height: 120,
    width: 370,
    decoration: BoxDecoration(
      color: accent3Color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: accent2Color,
            image: DecorationImage(
              image: assetImageLink,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          height: 110,
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 5),
              Text(
                docInfo,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: accent1Color,
                ),
              ),
              const SizedBox(height: 5),
              Image(
                image: ratingsImage,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//bottom nav
class ContainerBottom extends StatefulWidget {
  const ContainerBottom({super.key});

  @override
  State<ContainerBottom> createState() => _ContainerBottomState();
}

class _ContainerBottomState extends State<ContainerBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: accent3Color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.house),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, 'home_page');
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.calendar),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, 'reminder');
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.message),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.user),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, 'reminder');
            },
          ),
        ],
      ),
    );
  }
}
