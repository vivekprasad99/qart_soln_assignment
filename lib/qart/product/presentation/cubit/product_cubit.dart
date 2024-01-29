import 'package:bloc/bloc.dart';
import 'package:qart_soln_assignment/qart/product/presentation/cubit/product_state.dart';


class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState());

  void addItem(int idx)
  {
    if(!(state.itemSelectedList?.contains(idx) ?? false))
      {
        emit(state.copyWith(itemSelectedList:[...?state.itemSelectedList,idx]));
      }
  }
}
