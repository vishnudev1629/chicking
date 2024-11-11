import 'package:flutter/material.dart';
import 'package:auxzon/core/model/food_model.dart';

// SearchDelegate for handling search
class ProductSearchDelegate extends SearchDelegate {
  // Food list to search from
  final List<FoodModel> foodList = [
    const FoodModel(
      img: 'assets/common/image-1.jpg',
      deatiledImg: 'assets/detailedImg/combo pack.png',
      food: 'Combo Burger',
      shop: "McDonald's",
      price: 'Rs 45',
      rating: '4.5',
    ),
    const FoodModel(
      img: 'assets/common/image-2.jpg',
      deatiledImg: 'assets/detailedImg/english muffin.png',
      food: 'English Muffin',
      shop: 'Burger King',
      price: 'Rs 225',
      rating: '4.7',
    ),
    const FoodModel(
      img: 'assets/common/image-3.jpg',
      deatiledImg: 'assets/detailedImg/hawalian.png',
      food: 'Hawalian Burger',
      shop: 'Subway',
      price: 'Rs 115',
      rating: '3.7',
    ),
    const FoodModel(
      img: 'assets/common/image-4.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Snap Burger',
      shop: 'KFC',
      price: 'Rs 230',
      rating: '4.0',
    ),
    const FoodModel(
      img: 'assets/common/image-5.jpg',
      deatiledImg: 'assets/detailedImg/double_cheeese.png',
      food: 'Double Cheese Burger',
      shop: 'Taco Bell',
      price: 'Rs 100',
      rating: '3.5',
    ),
    const FoodModel(
      img: 'assets/common/image-6.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Chicken Cheese Burger',
      shop: 'Faasos',
      price: 'Rs 250',
      rating: '4.9',
    ),
    const FoodModel(
      img: 'assets/common/image-7.jpg',
      deatiledImg: 'assets/detailedImg/hamburger.png',
      food: 'Hamburger',
      shop: 'Sankalp',
      price: 'Rs 300',
      rating: '4.5',
    ),
  ];

  List<FoodModel> filteredList = [];
  final List<FoodModel> suggestionsList = [
    const FoodModel(
      img: 'assets/common/image-1.jpg',
      deatiledImg: 'assets/detailedImg/combo pack.png',
      food: 'Combo Burger',
      shop: "McDonald's",
      price: 'Rs 45',
      rating: '4.5',
    ),
    const FoodModel(
      img: 'assets/common/image-2.jpg',
      deatiledImg: 'assets/detailedImg/english muffin.png',
      food: 'English Muffin',
      shop: 'Burger King',
      price: 'Rs 225',
      rating: '4.7',
    ),
    const FoodModel(
      img: 'assets/common/image-3.jpg',
      deatiledImg: 'assets/detailedImg/hawalian.png',
      food: 'Hawalian Burger',
      shop: 'Subway',
      price: 'Rs 115',
      rating: '3.7',
    ),
    const FoodModel(
      img: 'assets/common/image-4.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Snap Burger',
      shop: 'KFC',
      price: 'Rs 230',
      rating: '4.0',
    ),
    const FoodModel(
      img: 'assets/common/image-5.jpg',
      deatiledImg: 'assets/detailedImg/double_cheeese.png',
      food: 'Double Cheese Burger',
      shop: 'Taco Bell',
      price: 'Rs 100',
      rating: '3.5',
    ),
    const FoodModel(
      img: 'assets/common/image-6.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Chicken Cheese Burger',
      shop: 'Faasos',
      price: 'Rs 250',
      rating: '4.9',
    ),
    const FoodModel(
      img: 'assets/common/image-7.jpg',
      deatiledImg: 'assets/detailedImg/hamburger.png',
      food: 'Hamburger',
      shop: 'Sankalp',
      price: 'Rs 300',
      rating: '4.5',
    ),
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.white, 
        iconTheme: IconThemeData(color: Colors.black), 
      ),
      scaffoldBackgroundColor: Colors.white, 
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {

    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; 
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {

    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); 
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    filteredList = foodList
        .where((food) => food.food.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (filteredList.isEmpty) {
      return const Center(
        child: Text('No food found.'),
      );
    }

    return _buildListView(filteredList, context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    filteredList = suggestionsList
        .where((food) => food.food.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return _buildListView(filteredList, context);
  }

  Widget _buildListView(List<FoodModel> list, BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            list[index].img,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(list[index].food),
          subtitle: Text('${list[index].price} - ${list[index].shop}'),
          trailing: IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () {
       
              suggestionsList.remove(list[index]);
              query = ''; 
              showSuggestions(context); 
            },
          ),
          onTap: () {
            query = foodList[index].food; 
            showResults(context); 
          },
        );
      },
    );
  }
}
