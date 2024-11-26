import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Javid Hussain"),
              accountEmail: Text("abc123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.cnbcfm.com/api/v1/image/106929712-1629291557207-gettyimages-1165574948-dscf4879_2019080123827927.jpeg?v=1725968127&w=1920&h=1080')),
              onDetailsPressed: () {},
            ),
            ListTile(
              title: const Text("Details"),
              leading: Icon(Icons.details),
              onLongPress: () {},
            ),
            ListTile(
              title: const Text("Settings"),
              leading: Icon(Icons.settings),
              onLongPress: () {},
            ),
            ListTile(
              title: const Text("Car Repair"),
              leading: Icon(Icons.car_repair_sharp),
              onLongPress: () {},
            ),
            ListTile(
              title: const Text("Help"),
              leading: Icon(Icons.help_center),
              onLongPress: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
        title: Text(
          'BMW CARS',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                  'https://www.bmw-me.com/content/dam/bmw/common/all-models/m-series/series-overview/bmw-m-series-seo-overview-ms-04.jpg/jcr:content/renditions/cq5dam.resized.img.585.low.time1674651825572.jpg',
                )))),
            Text(
              'Welcome to BMW Page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Details Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: Text(
                'Go to Details',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              height: 200,
              width: 300,
              child: Text(
                  "The official founding date of the German motor vehicle manufacturer BMW is 7 March 1916, when an aircraft producer called Bayerische Flugzeugwerke (formerly Otto Flugmaschinenfabrik) was established.This company was renamed to Bayerische Motoren Werke (BMW) in 1922."),
            ),
            Container(
              height: 200,
              width: 300,
              child: Text(
                  "BMW cars India offers 23 new models in India with price starting at Rs. 43.90 Lakh and going upto Rs. 2.60 Crore. The popular cars of BMW include M5(Rs. 1.99 Crore), X7(Rs. 1.27 Crore) and X1(Rs. 49.50 Lakh) . The cheapest BMW car is 2 Series (Rs. 43.90 Lakh) and the most expensive one is XM (Rs. 2.60 Crore). "),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail), label: "Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share")
      ]),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.bmwgroup.com/en/company/_jcr_content/main/layoutcontainer_1988/columncontrol/columncontrolparsys/globalimage.coreimg.jpeg/1701354503044/720x720-i5er.jpeg'))),
          ),
          Text(
            "530i Standard Features-2.0-liter BMW TwinPower Turbo inline 4-cylinder, 16-valve 255-hp engine with eBoost 48V mild hybrid technology-Auto Start-Stop function-Air Curtains-Active kidney grille-Electronic throttle control.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Pop the current screen and return to the previous screen
              Navigator.pop(context);
            },
            child: Text(
              'Back to Home',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.price_check), label: "Price"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "More"),
          BottomNavigationBarItem(
              icon: Icon(Icons.drive_eta), label: "TestDrive")
        ],
      ),
    );
  }
}
