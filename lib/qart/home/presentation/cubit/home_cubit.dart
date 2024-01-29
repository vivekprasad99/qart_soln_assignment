import 'package:bloc/bloc.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/qart_preferences/qart_preferences.dart';

import '../../../../core/exception/exception.dart';
import '../../../../core/utils/app_log.dart';
import '../../data/network/repository/home_remote_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRemoteRepository _homeRemoteRepository;

  HomeCubit(this._homeRemoteRepository) : super(const HomeState());

  void getProducts({bool? isComingFromRefresh}) async {
    try {
      emit(state.copyWith(isLoading: true));
      ProductModel? productModelHive =
          QartPreferences.getInstance().getProductData();
      if (productModelHive == null || (isComingFromRefresh ?? false)) {
        ProductModel productModel = await _homeRemoteRepository.getProducts();
        QartPreferences.getInstance().clearProductData();
        QartPreferences.getInstance().putProductData(productModel);
        emit(state.copyWith(
            isLoading: false,
            products: productModel.products,
            brands: productModel.brands));
      } else {
        emit(state.copyWith(
            isLoading: false,
            products: productModelHive.products,
            brands: productModelHive.brands));
      }
    } on ServerException catch (e) {
      emit(state.copyWith(
          isLoading: false,
          failedWithoutAlertMessage: e.message!,
          products: null,
          brands: null));
    } on FailureException catch (e) {
      emit(state.copyWith(
          isLoading: false,
          failedWithoutAlertMessage: e.message!,
          products: null,
          brands: null));
    } catch (e, st) {
      AppLog.e('getProducts : ${e.toString()} \n${st.toString()}');
      emit(state.copyWith(
          isLoading: false,
          products: null,
          brands: null,
          failedWithoutAlertMessage: 'we regret the technical error'));
    }
  }

  void getSearchItem(String queryTxt) {
    try {
      emit(state.copyWith(isLoading: true));
      ProductModel? productModelHive =
          QartPreferences.getInstance().getProductData();
      if (queryTxt.isNotEmpty) {
        List<Products>? searchList = getFilterProduct(queryTxt);
        emit(state.copyWith(
            isLoading: false, products: searchList, brands: state.brands));
      } else {
        emit(state.copyWith(
            isLoading: false,
            products: productModelHive?.products,
            brands: productModelHive?.brands));
      }
    } catch (e, st) {
      AppLog.e('getProducts : ${e.toString()} \n${st.toString()}');
      emit(state.copyWith(
          isLoading: false,
          products: null,
          brands: null,
          failedWithoutAlertMessage: 'we regret the technical error'));
    }
  }

  List<Products>? getFilterProduct(String queryTxt) {
    ProductModel? productModelHive =
        QartPreferences.getInstance().getProductData();
    final searchedQrCodeList = productModelHive?.products!.where((element) {
      return element.qRCode!.contains(queryTxt) ||
          element.option!.contains(queryTxt);
    }).toList();
    return searchedQrCodeList;
  }
}
