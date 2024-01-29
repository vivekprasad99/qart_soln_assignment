import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';

class ProductTile extends StatelessWidget {
  final Products products;
  final Function(Products products) onTap;
  const ProductTile({super.key, required this.products,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap(products);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("${products.name}",style:  TextStyle(color: Colors.grey[600],fontSize: 16,fontWeight: FontWeight.bold),),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(imageUrl:"${products.imageUrl}",height: 80,
                  width: 80,fit: BoxFit.fill,
                  placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text("OP : ${products.option}, MAX: ${products.mRP}",overflow: TextOverflow.ellipsis,
                  maxLines: 1,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                Text("${products.color}",overflow: TextOverflow.ellipsis,
                  maxLines: 1,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                const SizedBox(height: 8,),
                RichText(
                  text:  TextSpan(
                      text: 'Sizes: ',
                      style:  const TextStyle(
                          color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(text: products.availableSizes!.join(','),
                          style: const TextStyle(color: Colors.blueAccent,fontSize: 14,fontWeight: FontWeight.w400),
                        )
                      ]
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
