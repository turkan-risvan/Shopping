import 'package:desingui/src%20/components/product_card.dart';
import 'package:desingui/src%20/layout/main_layout.dart';
import 'package:flutter/material.dart';

class PageProductList extends StatefulWidget {
  const PageProductList({super.key});

  @override
  State<PageProductList> createState() => _PageProductListState();
}

class _PageProductListState extends State<PageProductList> {
  @override
  Widget build(BuildContext context) {
    return LayoutMain(
      content: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 50,
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 8.0), child: CompProductCard()),
        ),
      ),
    );
  }
}

//  child: ListView.separated(
//           itemCount: 50,
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           itemBuilder: (context, index) => const Padding(
//               padding: EdgeInsets.only(bottom: 8.0), child: CompProductCard()),
//           separatorBuilder: (context, index) => Divider(
//             color: index % 2 == 0 ? Colors.red : Colors.blue,
//             thickness: index.toDouble() % 2,
//           ),
//         ),