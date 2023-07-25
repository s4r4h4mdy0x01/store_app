import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stroe_app/models/product_model.dart';
import 'package:stroe_app/services/get_all_product.dart';
import 'package:stroe_app/widget/custom_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductsModel>>(
      future: GetAllProduct().getProduct(),
      builder: (context, snapshot) {
        

        if (snapshot.hasData) {
            List<ProductsModel> productList = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'New Trend',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.cartPlus,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 65, left: 10, right: 10),
              child: GridView.builder(
                itemCount:productList.length ,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 90,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Costomcard(product:productList[index] ,);
                  }),
            ),
          );
        } else {
          return Center(
            child: LoadingAnimationWidget.discreteCircle(
                color: Colors.purpleAccent, size: 100),
          );
        }
      },
    );
  }
}
