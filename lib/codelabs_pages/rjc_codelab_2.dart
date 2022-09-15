import 'package:flutter/material.dart';

//---GLOBAL VARIABLES---

const Color mainColor = Color(0xFFFF5656);

final List<MountModel> mountItems = [
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Semeru.jpg/272px-Semeru.jpg',
    name: 'Mount Semeru',
    description:
        'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
    location: 'East Java',
  ),
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Gunung_Merbabu_2.jpg/272px-Gunung_Merbabu_2.jpg',
    name: 'Mount Merbaru',
    description:
        'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
    location: 'Central Java',
  ),
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Mauna_Loa_Volcano.jpg/288px-Mauna_Loa_Volcano.jpg',
    name: 'Mauna Loa',
    description:
        'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
    location: 'Hawaii',
  ),
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Vesuvius_from_Pompeii_%28hires_version_2_scaled%29.png/272px-Vesuvius_from_Pompeii_%28hires_version_2_scaled%29.png',
    name: 'Mount Vesuvius',
    description:
        'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
    location: 'Italy',
  ),
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Mexico-Popocatepetl.jpg/272px-Mexico-Popocatepetl.jpg',
    name: 'Mount Popocatépetl',
    description:
        'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
    location: 'Mexico',
  )
];

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk),
];

//---PAGES---

class RJCCodelab2 extends StatelessWidget {
  const RJCCodelab2({Key? key}) : super(key: key);

  //The build method gets executed by Flutter when mounting the widget on the widget tree, which in turn builds its contents

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      //Future.delayed takes two parameters: a Duration object with its seconds property set to 2, and a callback. When the 2 seconds have elapsed, it will call the callback. The callback has inside a trigger to perform a navigation. Use Navigator.of to push a new route to the global navigation stack, using the BuildContext context to retrieve the closest navigator in the hierarchy, in our case, the one available by default from the MaterialApp. Use a MaterialPageRoute to wrap the widget you want to navigate to, in our case the MountsApp widget created
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MountsApp(),
        ),
      );
    });
    return Container(
      color: mainColor,
      //Use mainColor variable here
      child: Stack(
        //Use a Stack to add widgets one on top of each other, in a stack fashion
        children: [
          const Align(
            //Align lets you position widgets inside Stack
            alignment: Alignment.center,
            child: Icon(Icons.terrain, color: Colors.white, size: 90.0),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 80.0),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                //AlwaysStoppedAnimation gives more properties to use for example Color
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  //Represents landing page after SplashPage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //The application's topmost bar, where we can place a title, navigation icons, menu icons, etc.
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Icon(
            Icons.terrain,
            color: mainColor,
            size: 40.0,
          ),
        ),
        actions: const [
          SizedBox(
            //To make sure Icon is really centered!
            width: 40.0,
            height: 40.0,
          ),
        ],
        iconTheme: const IconThemeData(
          color: mainColor,
        ),
      ),
      drawer: Drawer(
        //Panel that slides out horizontally from the edge of a Scaffold widget, used for menus, navigation links, etc.
        child: Container(
          padding: const EdgeInsets.all(30.0),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategoryList(),
          AppBottomBar()
        ],
      ),
    );
  }
}

//---WIDGETS---

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 30.0,
        top: 30.0,
        right: 30.0,
      ),
      child: Row(
        children: [
          ClipOval(
            //Use a ClipOval widget which in turn wraps an Image widget that we'll fetch from the network, with fixed dimensions (50px X 50px) with a fit of BoxFit.cover so it fills up the dimensions of the image, maintaining its aspect ratio
            child: Image.network(
              'https://avatars.githubusercontent.com/u/83029930?v=4',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello :plotsklapps',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppSearch extends StatelessWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppMountListView extends StatelessWidget {
  const AppMountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        //ListView.builder constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible
        scrollDirection: Axis.horizontal,
        //Which direction to scroll
        itemCount: mountItems.length,
        //Check your global variables for the name of the list
        itemBuilder: (context, index) {
          //Callback that gets triggered for as many items you set in itemCount (one for every item in the mountItems collection); returns widgets created on demand as they become visible
          MountModel currentMount = mountItems[index];
          return Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(10.0),
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                //Retrieve the image from the currentMount class
                image: NetworkImage(currentMount.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentMount.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  currentMount.location,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AppCategoryList extends StatelessWidget {
  const AppCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Category',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See More',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100.0,
          margin: const EdgeInsets.only(left: 10.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              CategoryModel currentCategory = categories[index];
              return Container(
                width: 100.0,
                margin: const EdgeInsets.only(top: 10.0, right: 10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentCategory.icon,
                      color: mainColor,
                    ),
                    Text(
                      currentCategory.category,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  List<AppBottomBarItemModel> bottomBarItems = [
    AppBottomBarItemModel(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItemModel(
      icon: Icons.explore,
      label: 'Explore',
      isSelected: false,
    ),
    AppBottomBarItemModel(
      icon: Icons.turned_in_not,
      label: 'Tag',
      isSelected: false,
    ),
    AppBottomBarItemModel(
      icon: Icons.person_outline,
      label: 'Profile',
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          bottomBarItems.length,
          (index) {
            AppBottomBarItemModel currentBarItem = bottomBarItems[index];

            Widget barItemWidget;

            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 5.0,
                  bottom: 5.0,
                  right: 15.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: mainColor,
                ),
                child: Row(
                  children: [
                    Icon(
                      currentBarItem.icon,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      currentBarItem.label,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              barItemWidget = IconButton(
                icon: Icon(
                  currentBarItem.icon,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(
                    () {
                      for (AppBottomBarItemModel item in bottomBarItems) {
                        item.isSelected = item == currentBarItem;
                      }
                    },
                  );
                },
              );
            }
            return barItemWidget;
          },
        ),
      ),
    );
  }
}

//----MODELS----

class MountModel {
  String path;
  String name;
  String location;
  String description;

  MountModel({
    this.path = '',
    this.name = '',
    this.location = '',
    this.description = '',
  });
}

class CategoryModel {
  String category;
  IconData? icon;

  CategoryModel({
    this.category = '',
    this.icon,
  });
}

class AppBottomBarItemModel {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarItemModel({
    this.icon,
    this.label = '',
    this.isSelected = false,
  });
}
