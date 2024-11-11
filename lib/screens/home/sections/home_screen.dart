import 'package:auxzon/core/constants/text_styles.dart';
import 'package:auxzon/core/model/category_model.dart';
import 'package:auxzon/core/model/food_model.dart';
import 'package:auxzon/screens/product/product_screen.dart';
import 'package:auxzon/widgets/search_delegate.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: const Color(0XFFEA4444),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50),
                              Text(
                                "Location",
                                style: TextStyles.rubik16WhiteW500,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "St, Abigoael",
                                    style: TextStyles.rubik16WhiteW500,
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Promo Buy 1 Get 1 more!",
                                style: TextStyles.rubik23WhiteW700,
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Order Now",
                                    style: TextStyles.rubik14WredeW600,
                                  )),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(104, 255, 255, 255),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Spacer(),
                            Image.asset(
                              'assets/common/image-8.png',
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 290,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      showSearch(
                        context: context,
                        delegate: ProductSearchDelegate(),
                      );
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            'Search food, restaurant, etc',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              runSpacing: 15,
              spacing: 15,
              children: [
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0XFFFBD3DB),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              'assets/icons/rice.png',
                              fit: BoxFit.contain,
                              color: const Color.fromARGB(255, 131, 131, 131),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Rice",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0XFFFBD3DB),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              'assets/icons/snacks.png',
                              fit: BoxFit.contain,
                              color: const Color.fromARGB(255, 131, 131, 131),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Snacks",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0XFFFBD3DB),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              'assets/icons/juice.png',
                              fit: BoxFit.contain,
                              color: const Color.fromARGB(255, 131, 131, 131),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Drinks",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0XFFFBD3DB),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              'assets/icons/more.png',
                              fit: BoxFit.contain,
                              color: const Color.fromARGB(255, 131, 131, 131),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "More",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          TopRatedFood(),
          const SizedBox(height: 30),
          RestaurantNearYou(),
          const SizedBox(height: 30),
          WhatsOnYourMind(),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}

class TopRatedFood extends StatelessWidget {
  TopRatedFood({
    super.key,
  });

  final List<FoodModel> foodList = [
    const FoodModel(
      img: 'assets/common/image-1.jpg',
      deatiledImg: 'assets/detailedImg/combo pack.png',
      food: 'Combo Burger',
      shop: "McDonald's",
      details:
          "This beef burger uses 100% quality beef and is packed with sliced tomatoes, cucumbers, and onions. Fresh vegetables add crunch, making it a wholesome meal. Available at McDonald's, it's a perfect combo for burger lovers.",
      price: '45',
      rating: '4.5',
    ),
    const FoodModel(
      img: 'assets/common/image-2.jpg',
      deatiledImg: 'assets/detailedImg/english muffin.png',
      food: 'English Muffin',
      shop: 'Burger King',
      details:
          "The English Muffin from Burger King features a soft, toasted muffin with a savory patty inside. It's layered with fresh lettuce, tomatoes, and onions, making it a light yet satisfying snack. A great choice for a quick, delicious bite.",
      price: '225',
      rating: '4.7',
    ),
    const FoodModel(
      img: 'assets/common/image-3.jpg',
      deatiledImg: 'assets/detailedImg/hawalian.png',
      food: 'Hawalian Burger',
      details:
          "Subway’s Hawalian Burger brings a tropical twist to the classic burger with grilled pineapple and tangy sauce. The combination of sweet and savory flavors, along with fresh veggies, makes this burger a unique experience.",
      shop: 'Subway',
      price: '115',
      rating: '3.7',
    ),
    const FoodModel(
      img: 'assets/common/image-4.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Snap Burger',
      details:
          "The Snap Burger at KFC boasts a crispy chicken patty wrapped in soft buns, topped with lettuce, onions, and mayonnaise. It’s a simple yet flavorful option for anyone looking for a quick and satisfying meal.",
      shop: 'KFC',
      price: '230',
      rating: '4.0',
    ),
    const FoodModel(
      img: 'assets/common/image-5.jpg',
      deatiledImg: 'assets/detailedImg/double_cheeese.png',
      food: 'Double Cheese Burger',
      shop: 'Taco Bell',
      details:
          "Taco Bell's Double Cheese Burger is a cheese lover's dream with two beef patties covered in melted cheese. Fresh lettuce, pickles, and ketchup add the perfect balance of flavors, making it a rich, cheesy delight.",
      price: '100',
      rating: '3.5',
    ),
    const FoodModel(
      img: 'assets/common/image-6.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Chicken Cheese Burger',
      shop: 'Faasos',
      details:
          "Faasos offethe Chicken Cheese Burger, which features a juicy chicken patty topped with melted cheddar cheese. Crisp vegetables and tangy sauces enhance the flavors, creating a perfect cheesy and savory bite.",
      price: '250',
      rating: '4.9',
    ),
    const FoodModel(
      img: 'assets/common/image-7.jpg',
      deatiledImg: 'assets/detailedImg/hamburger.png',
      food: 'Hamburger',
      details:
          "The Hamburger from Sankalp is a classic with a beef patty topped with crispy lettuce and onions. Served in soft sesame buns, it’s completed with ketchup and mustard for a timeless burger experience.",
      shop: 'Sankalp',
      price: '300',
      rating: '4.5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Top Rated Food",
            style: TextStyles.rubik16blackW600,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 205,
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 8, bottom: 8, top: 8, left: 3),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductDetailScreen(
                                foodModel: foodList[index],
                              );
                            },
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(12),
                      splashColor: Colors.grey.withOpacity(0.3),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: SizedBox(
                          width: 165,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        width: double.infinity,
                                        child: Image.asset(
                                          foodList[index].img,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 235, 235, 235),
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber[700],
                                                ),
                                                Text(
                                                  '(${foodList[index].rating})',
                                                  style: TextStyles
                                                      .rubik12bluegreyW600,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  foodList[index].food.length > 14
                                      ? '${foodList[index].food.substring(0, 14)}...'
                                      : foodList[index].food,
                                  style: TextStyles.rubik14blackW600,
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      foodList[index].shop,
                                      style: TextStyles.rubik12greyW600,
                                    ),
                                    const Spacer(),
                                    Text(
                                      '\$ ${foodList[index].price}',
                                      style: TextStyles.rubik14blackW600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantNearYou extends StatelessWidget {
  RestaurantNearYou({
    super.key,
  });
  final List<FoodModel> foodList = [
    const FoodModel(
      img: 'assets/hotel/bueret cafe.jpg',
      deatiledImg: 'assets/detailedImg/combo pack.png',
      food: 'Combo Burger',
      shop: "Beirut Cafe",
      timing: '10 - 15',
      price: '45',
      rating: '4.5',
    ),
    const FoodModel(
      img: 'assets/hotel/burger king.jpg',
      deatiledImg: 'assets/detailedImg/english muffin.png',
      food: 'English Muffin',
      shop: 'Burger King',
      timing: '25 - 30',
      price: '225',
      rating: '4.7',
    ),
    const FoodModel(
      img: 'assets/hotel/faasos.jpg',
      deatiledImg: 'assets/detailedImg/hawalian.png',
      food: 'Hawalian Burger',
      shop: 'Fasos',
      price: '115',
      timing: '5 - 15',
      rating: '3.7',
    ),
    const FoodModel(
      img: 'assets/hotel/kfc.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Snap Burger',
      shop: 'KFC',
      price: '230',
      timing: '5 - 10',
      rating: '4.0',
    ),
    const FoodModel(
      img: 'assets/hotel/mcdonalds.jpg',
      deatiledImg: 'assets/detailedImg/double_cheeese.png',
      food: 'Double Cheese Burger',
      shop: 'MCDonalds',
      price: '100',
      timing: '10 - 25',
      rating: '3.5',
    ),
    const FoodModel(
      img: 'assets/hotel/subway.jpg',
      deatiledImg: 'assets/detailedImg/chicken_burger.png',
      food: 'Chicken Cheese Burger',
      shop: 'Subway',
      price: '250',
      timing: '30 - 45',
      rating: '4.9',
    ),
    const FoodModel(
      img: 'assets/hotel/taco bell.jpg',
      deatiledImg: 'assets/detailedImg/hamburger.png',
      food: 'Hamburger',
      shop: 'Taco Bell',
      price: '300',
      timing: '10 - 15',
      rating: '4.5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Restaurant near you",
                style: TextStyles.rubik16blackW600,
              ),
              const Spacer(),
              Text(
                "View all",
                style: TextStyles.rubik12greyW600,
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 225,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8, left: 3),
                  child: SizedBox(
                    width: 130,
                    height: 195,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            height: 140,
                            width: double.infinity,
                            child: Image.asset(
                              foodList[index].img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 6),
                                Text(
                                  foodList[index].shop,
                                  style: TextStyles.rubik15blackW600,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "${foodList[index].timing} mins",
                                  style: TextStyles.montserrat14blackW500,
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class WhatsOnYourMind extends StatelessWidget {
  WhatsOnYourMind({
    super.key,
  });

  final List<CategoryModel> categoryList = [
    const CategoryModel(
      img: 'assets/mind categories/biriyani.png',
      title: 'Biriyani',
    ),
    const CategoryModel(
      img: 'assets/mind categories/burgers.png',
      title: 'Burgers',
    ),
    const CategoryModel(
      img: 'assets/mind categories/coffee.png',
      title: 'Coffee',
    ),
    const CategoryModel(
      img: 'assets/mind categories/dosa.png',
      title: 'Dosa',
    ),
    const CategoryModel(
      img: 'assets/mind categories/idli.png',
      title: 'Idli',
    ),
    const CategoryModel(
      img: 'assets/mind categories/noodles.png',
      title: 'Noodles',
    ),
    const CategoryModel(
      img: 'assets/mind categories/pancakes.png',
      title: 'Pancakes',
    ),
    const CategoryModel(
      img: 'assets/mind categories/pastry.png',
      title: 'Pastry',
    ),
    const CategoryModel(
      img: 'assets/mind categories/pizzas.png',
      title: 'Pizzas',
    ),
    const CategoryModel(
      img: 'assets/mind categories/poori.png',
      title: 'Poori',
    ),
    const CategoryModel(
      img: 'assets/mind categories/porota.png',
      title: 'Porota',
    ),
    const CategoryModel(
      img: 'assets/mind categories/pothichoru.png',
      title: 'Pothichoru',
    ),
    const CategoryModel(
      img: 'assets/mind categories/rolls.png',
      title: 'Roll',
    ),
    const CategoryModel(
      img: 'assets/mind categories/shawarma.png',
      title: 'Shawarma',
    ),
    const CategoryModel(
      img: 'assets/mind categories/uttapam.png',
      title: 'Uttapam',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "VISHNU, WHAT'S ON YOUR MIND ?",
                style: TextStyles.rubik14gblackyW500,
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 295, // Adjust the height as needed
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 rows
                // crossAxisSpacing: 8, // Spacing between columns
                // mainAxisSpacing: 8, // Spacing between rows
                childAspectRatio:
                    16 / 12, // Aspect ratio to control item size (1 for square)
              ),
              itemCount: categoryList.length, // Number of items
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        categoryList[index].img,
                      ),
                    ),
                    Center(
                      child: Text(
                        categoryList[index].title,
                        style: TextStyles.nunito,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
