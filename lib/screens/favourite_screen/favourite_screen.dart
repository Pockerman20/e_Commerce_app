import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_ecommerce/models/product_model/product_model.dart';
import 'package:youtube_ecommerce/screens/favourite_screen/widgets/single_favourite_item.dart';

import '../../firebase_helper/firebase_firestore_helper/firebase_firestore.dart';
import '../../models/order_model/order_model.dart';
import '../../provider/app_provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colo,
        title: const Text(
          "Favourite Screen",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      // body: StreamBuilder(
      //     stream: Stream.fromFuture(
      //       FirebaseFirestoreHelper.instance.getFavourite(),
      //     ),
      //     // future: FirebaseFirestoreHelper.instance.getUserOrder(),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.waiting) {
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //       if (snapshot.data!.isEmpty ||
      //           snapshot.data == null ||
      //           !snapshot.hasData) {
      //         return const Center(
      //           child: Text("No Favourite Found"),
      //         );
      //       }
      //       return ListView.builder(
      //           // itemCount: appProvider.getFavouriteProductList.length,
      //           itemCount: snapshot.data!.length,
      //           padding: const EdgeInsets.all(12),
      //           itemBuilder: (ctx, index) {
      //             ProductModel productModel = snapshot.data![index];
      //             return SingleFavouriteItem(
      //               // singleProduct: appProvider.getFavouriteProductList[index],
      //               singleProduct: productModel,
      //             );
      //           });
      //     }),
      body: appProvider.getFavouriteProductList.isEmpty
          ? const Center(
              child: Text("Empty"),
            )
          : ListView.builder(
              itemCount: appProvider.getFavouriteProductList.length,
              padding: const EdgeInsets.all(12),
              itemBuilder: (ctx, index) {
                return SingleFavouriteItem(
                  singleProduct: appProvider.getFavouriteProductList[index],
                );
              }),
    );
  }
}
