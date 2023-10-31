import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "home";

  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CategoryData? selectedCategory;

  List<CategoryData> categories = [
    const CategoryData(
      categoryId: "sports",
      categoryTitle: "Sports",
      categoryImage: "assets/images/sports_icon.png",
      categoryBackgroundColor: Color(0xFFC91C22),
    ),
    const CategoryData(
      categoryId: "general",
      categoryTitle: "Politics",
      categoryImage: "assets/images/politics_icon.png",
      categoryBackgroundColor: Color(0xFF003E90),
    ),
    const CategoryData(
      categoryId: "health",
      categoryTitle: "Health",
      categoryImage: "assets/images/health_icon.png",
      categoryBackgroundColor: Color(0xFFED1E79),
    ),
    const CategoryData(
      categoryId: "business",
      categoryTitle: "Business",
      categoryImage: "assets/images/business_icon.png",
      categoryBackgroundColor: Color(0xFFCF7E48),
    ),
    const CategoryData(
      categoryId: "environment",
      categoryTitle: "Environment",
      categoryImage: "assets/images/environment_icon.png",
      categoryBackgroundColor: Color(0xFF4882CF),
    ),
    const CategoryData(
      categoryId: "science",
      categoryTitle: "Science",
      categoryImage: "assets/images/science_icon.png",
      categoryBackgroundColor: Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            selectedCategory == null
                ? "News App"
                : selectedCategory!.categoryTitle,
            style: theme.textTheme.titleLarge,
          ),
        ),
        drawer: CustomDrawer(
          onItemClicked: onCategoryDrawerClicked,
        ),
        body: selectedCategory == null
            ? Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pick your category \n of interest",
                      textAlign: TextAlign.start,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: const Color(0xFF4F5A69)),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(20.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 9 / 11,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) => CategoryItem(
                          categoryData: categories[index],
                          index: index,
                          onItemClick: onItemClicked,
                        ),
                        itemCount: categories.length,
                      ),
                    )
                  ],
                ),
              )
            : NewsView(categoryData: selectedCategory!),
      ),
    );
  }

  onItemClicked(CategoryData categoryData) {
    print(categoryData.categoryId);
    selectedCategory = categoryData;
    setState(() {});
  }

  onCategoryDrawerClicked() {
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}

class CategoryData {
  final String categoryId;
  final String categoryTitle;
  final String categoryImage;
  final Color categoryBackgroundColor;

  const CategoryData({
    required this.categoryId,
    required this.categoryTitle,
    required this.categoryImage,
    required this.categoryBackgroundColor,
  });
}
