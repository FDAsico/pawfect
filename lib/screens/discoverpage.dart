import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _HomePageState();
}

class _HomePageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            //-------------------------------------------animal lovers community header
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10)),
            width: 455,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: Text(
                    "Join our animal lovers community",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text("Join"),
                )
              ],
            )),

        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "What are you looking for?",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(top: 15.0),
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFA0A2DA),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1)),
                    width: 110,
                    height: 107,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/store.png')),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Pet Store",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF18487),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 1),
                    ),
                    width: 110,
                    height: 107,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/grooming.png')),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Pet Grooming",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFEF9E1B),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1)),
                    width: 110,
                    height: 107,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/boarding.png')),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Pet Boarding",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
