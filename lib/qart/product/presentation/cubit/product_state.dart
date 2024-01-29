import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
part 'product_state.g.dart';

@CopyWith()
class ProductState extends Equatable {
  final List<int>? itemSelectedList;

  const ProductState({this.itemSelectedList});

  @override
  List<Object?> get props => [itemSelectedList];
}

