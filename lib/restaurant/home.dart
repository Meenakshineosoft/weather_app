import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: ListView(
              children: <Widget>[
                buildEatBar(context),
                const SizedBox(height: 20.0),
                buildSearchBar(context),
                const SizedBox(height: 20.0),
                buildCategories(context),
                const SizedBox(height: 20.0),
                _nameCategories(context),
                const SizedBox(height: 20.0,),
                popular_food('Popular Food', context),
                const SizedBox(height: 20.0,),
                popular_food_images(context),
                const SizedBox(height: 20.0,),
                best_food_image('Best Food',context),
                const SizedBox(height: 20.0,),
              ],
            ),
          ),
        )
    );
  }

  buildEatBar(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('What you would like to eat?',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black)),
          Spacer(),
          Icon(Icons.notification_important),
        ]
    );
  }

  buildSearchBar(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: TextField(
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            hintText: 'Find a food or restaurant',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.pink,
            ),
            suffixIcon: const Icon(
              Icons.filter_list,
              color: Colors.pink,
            ),
            hintStyle: const TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          maxLines: 1,
        ),
      ),
    );
  }

  buildCategories(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 10.0),
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/706/706164.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/3075/3075977.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/1404/1404945.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2921/2921822.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/706/706195.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2934/2934108.png',
                fit: BoxFit.contain,
              ),
            ),
            Card(
              color: Colors.white,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/1046/1046755.png',
                fit: BoxFit.contain,
              ),
            ),

          ],

        )
    );
  }

  _nameCategories(BuildContext context) {
    return Container(
        height: 20,
        padding: EdgeInsets.only(left: 5.0, right: 10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 60.0,
              child: Text('Drinks'),
            ),
            Container(
              width: 60.0,
              child: Text('Burger'),
            ),
            Container(
              width: 60.0,
              child: Text('Pizza'),
            ),
            Container(
              width: 60.0,
              child: Text('Fries'),
            ),
            Container(
              width: 60.0,
              child: Text('Fruits'),
            ),
            Container(
              width: 60.0,
              child: Text('Proteins'),
            ),
            Container(
              width: 60.0,
              child: Text('Chinese'),
            ),
          ],

        )
    );
  }

  /* best_food(String bestFood, BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Text('$bestFood',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          )
        ]
    );
  } */




  best_food_image(String popularFood, BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('$popularFood',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: Column(children: <Widget> [
                Card(
                  color: Colors.white,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
              )
          )
        ]
    );
  }

  popular_food(String popularFood, BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Text('$popularFood',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          )
        ]
    );
  }

  popular_food_images(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      height: 160,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: <Widget>[
          Card(
            color: Colors.white,
            child: Image.network(
              'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.contain,
            ),
          ),
          Card(
            color: Colors.white,
            child: Image.network(
              'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1980&q=80',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

}

