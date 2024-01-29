import 'package:flutter/material.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';

class TabsWidget extends StatelessWidget {
  final Products products;

  const TabsWidget(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return buildTabs();
  }

  Widget buildTabs() {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  height: 42,
                  padding: const EdgeInsets.all(4.0),
                  child: const TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    tabs: [
                      Tab(
                          child: Text(
                        "Details",
                      )),
                      Tab(
                          child: Text(
                        "Description",
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      buildDetailTab(),
                      buildDescription(),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget buildDetailTab() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            buildProductDetails("Brand", "${products.brand}", "Category",
                "${products.category}"),
            const SizedBox(
              height: 8,
            ),
            buildProductDetails("Collection", "${products.collection}",
                "Sub-Category", "${products.subCategory}"),
            const SizedBox(
              height: 8,
            ),
            buildProductDetails(
                "Fit", "${products.fit}", "Theme", "${products.theme}"),
            const SizedBox(
              height: 8,
            ),
            buildProductDetails("Finish", "${products.finish}", "Offer Month",
                products.offerMonths![0]),
            const SizedBox(
              height: 8,
            ),
            buildProductDetails(
                "Gender", "${products.gender}", "Name", "${products.name}"),
          ],
        ),
      ),
    );
  }

  Widget buildProductDetails(
      String key1, String? value1, String key2, String? value2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key1,
                  style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  value1 ?? "No Data",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key2,
                  style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  value2 ?? "No Data",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDescription() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "${products.description}",
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
