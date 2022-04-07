import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

enum FavoritesOptions {
  favorites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            onSelected: (FavoritesOptions selectedValue) {
              setState(() {
                if (selectedValue == FavoritesOptions.favorites) {
                  showOnlyFavorites = true;
                } else {
                  showOnlyFavorites = false;
                }
              });
            },
            itemBuilder: (_) => const [
              PopupMenuItem(
                child: Text('Only favorites'),
                value: FavoritesOptions.favorites,
              ),
              PopupMenuItem(
                child: Text('Show all'),
                value: FavoritesOptions.all,
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(showOnlyFavorites),
    );
  }
}
