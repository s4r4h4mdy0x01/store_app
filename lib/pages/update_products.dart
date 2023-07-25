import 'package:flutter/material.dart';
import 'package:stroe_app/models/product_model.dart';
import 'package:stroe_app/services/update_product.dart';
import 'package:stroe_app/widget/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../widget/custom_buttom.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = "updateProduct";
 
  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, image, des;
  dynamic price;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductsModel product =
        ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black45),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              MyTextfield(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Name product',
                color: Colors.orange[800]!,
                fillColor: Colors.orange[300]!,
                hintColor: Colors.orange[800]!,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                onChanged: (data) {
                  des = data;
                },
                hintText: 'description',
                color: Colors.green[800]!,
                fillColor: Colors.green[300]!,
                hintColor: Colors.green[800]!,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                textInputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
                hintText: 'price',
                color: Colors.blue[800]!,
                fillColor: Colors.blue[300]!,
                hintColor: Colors.blue[800]!,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
               
                onChanged: (data) {
                  image = data;
                  
                },
                hintText: 'image',
                color: Colors.red[800]!,
                fillColor: Colors.red[300]!,
                hintColor: Colors.red[800]!,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Update',
                onTap: () async {
                  isLoading = true;
                  setState(() {});

                  try {
                    await updataProduct(product);
                    print('susseful');
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> updataProduct(ProductsModel product) async {
    await UpdateProductServices().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price : price!,
        descr: des == null ? product.description : des!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
