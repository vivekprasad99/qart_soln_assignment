import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';
import 'package:qart_soln_assignment/core/router/router.dart';
import 'package:qart_soln_assignment/qart/product/presentation/cubit/product_cubit.dart';
import 'package:qart_soln_assignment/qart/product/presentation/widget/tabs_widget.dart';

import '../../../../core/widget/network_sensitive/internet_sensitive.dart';
import '../cubit/product_state.dart';

class ProductWidget extends StatelessWidget {
  final Products products;

  const ProductWidget(
    this.products, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return buildWidgetsForMobile(context);
  }

  Widget buildWidgetsForMobile(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: buildProductWidget(context)),
    );
  }

  Widget buildProductWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildBackIcon(),
        const SizedBox(
          height: 8,
        ),
        InternetSensitive(
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildOptionToSelectText(context),
                  buildProductImage(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "OP : ${products.option}, MAX: ${products.mRP}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "${products.color}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        "₹ ${products.mRP?.toInt()}",
                        style: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TabsWidget(products),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildOptionToSelectText(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "3 Options(Tap to Select)",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              RichText(
                text: TextSpan(
                    text: 'Total Qty: ',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: "${state.itemSelectedList?.length ?? 0}",
                        style: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildProductImage() {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (prev, cur) {
        return (prev.itemSelectedList != cur.itemSelectedList);
      },
      builder: (context, state) {
        return SizedBox(
          height: 130,
          child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context.read<ProductCubit>().addItem(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color:
                              state.itemSelectedList?.contains(index) ?? false
                                  ? Colors.deepPurple
                                  : Colors.transparent,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: "${products.imageUrl}",
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }

  Widget buildBackIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkWell(
        onTap: () {
          MRouter.pop(null);
        },
        child: const Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}
