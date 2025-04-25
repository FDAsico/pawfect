import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int IndexNavBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "How are you today?",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications_outlined)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.shopping_cart_outlined)
          )
        ]
      ),

      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Container( //-------------------------------------------animal lovers community header
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10)
              ),
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
                        color: Colors.white
                      ),
                    ),
                  ),

                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                    child: Text("Join"),
                  )
                ],
              )

            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "What are you looking for?",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 13.7),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 163, 125, 227),
                        borderRadius: BorderRadius.circular(55),
                        border: Border.all(width: 3)
                      ),
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(33),
                        child: Image(
                          image: AssetImage('images/dog-picture.jpg')
                        ),
                      ),
                    ),

                    Text(
                      "Pet Store",
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 242, 124, 163),
                        borderRadius: BorderRadius.circular(55),
                        border: Border.all(width: 3),
                      ),
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(33),
                        child: Image(
                          image: AssetImage('images/cat-picture.jpg')
                        ),
                      ),
                    ),

                    Text(
                      "Pet Grooming",
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(55),
                        border: Border.all(width: 3)
                      ),
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(33),
                        child: Image(
                          image: AssetImage('images/rabbit-picture.jpg')
                        ),
                      ),
                    ),

                    Text(
                      "Pet Boarding",
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 44),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Best Seller",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 230),

                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  width: 164,
                  height: 220,
                  child: Image(
                    image: AssetImage('images/pedigree-dog-food.jpg')
                  ),
                ),

                SizedBox(width: 30),

                Container(
                  margin: EdgeInsets.only(left: 13.7),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5 ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  width: 164,
                  height: 220,
                  child: Image(
                    image: AssetImage('images/canin-cat-food.jpg')
                  ),
                ),
              ],
            ),

          ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() => IndexNavBar = index);
        },
        
        currentIndex: IndexNavBar,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Adopt,'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Shop'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile'
          )
        ]
      ),

      drawer: NavigationDrawer(),

    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer();
}