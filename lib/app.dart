import 'package:flutter/cupertino.dart';

import 'product_list_tab.dart'; // NEW
import 'search_tab.dart'; // NEW
import 'shopping_cart_tab.dart'; // NEW

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: ProductListTab(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: ShoppingCartTab(),
              );
            });
          default:
            assert(false, 'Unexpected tab');
            throw 'Unexpected tab';
        }
      },
    );
  }
}
