import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qart_soln_assignment/core/router/router.dart';
import 'package:qart_soln_assignment/core/utils/helper.dart';
import 'package:qart_soln_assignment/qart/home/presentation/widget/tiles/product_tile.dart';

import '../../../../core/dialog/loading/app_circular_Progress_indicator.dart';
import '../../../../core/widget/network_sensitive/internet_sensitive.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomeWidget extends StatelessWidget {
   HomeWidget({super.key});

  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getProducts();
    return buildWidgetsForMobile(context);
  }

  Widget buildWidgetsForMobile(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.failedWithoutAlertMessage?.isNotEmpty ?? false) {
          Helper.showErrorToast(state.failedWithoutAlertMessage ?? "");
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 2,
            title: _searchBox(context),
          ),
          body: InternetSensitive(
            child: RefreshIndicator(
                onRefresh: () async {
                  context.read<HomeCubit>().getProducts(isComingFromRefresh: true);
                },
                child: buildProductList()),
          ),
        );
      },
    );
  }

   Widget _searchBox(BuildContext context) {
     return SizedBox(
       height: 40,
       child: TextFormField(
         textAlign: TextAlign.start,
         controller: _searchText,
         onChanged: (String value){
           onSearchTextChanged(value,context);
         },
         decoration: InputDecoration(
           filled: true,
           fillColor: Colors.white,
           prefixIcon: const Icon(Icons.search),
           suffixIcon: InkWell(
             child: const Icon(Icons.close),
             onTap: () {
               context.read<HomeCubit>().getProducts();
               _searchText.clear();
               FocusScope.of(context).unfocus();
             },
           ),
           hintText: 'Search for Product...',
           contentPadding: const EdgeInsets.all(0),
           border: const OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(10)),
           ),
         ),
       ),
     );
   }

  Widget buildProductList() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (preState, curState) {
          return (preState.isLoading != curState.isLoading && preState.products != curState.products);
        },
        builder: (context, state) {
          if (state.isLoading ?? false || state.products != null) {
            return const Padding(
              padding: EdgeInsets.all(150),
              child: AppCircularProgressIndicator(),
            );
          } else if(state.products?.isEmpty ?? false)
            {
              return  Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Image.asset('assets/img/no-data-found.jpg'),
                ),
              );
            }
          else {
            return ListView.separated(
              itemCount: state.products!.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, i) {
                return ProductTile(products: state.products![i],onTap: (products){
                  MRouter.pushNamed(MRouter.productWidget, arguments: products);
                },);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            );
          }
        },
      ),
    );
  }

   void onSearchTextChanged(String text,BuildContext context) async {
     context.read<HomeCubit>().getSearchItem(text);
   }
}
