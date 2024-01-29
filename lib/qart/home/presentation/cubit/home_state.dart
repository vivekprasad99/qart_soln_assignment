import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';

part 'home_state.g.dart';

@CopyWith()
class HomeState extends Equatable {
  final bool? isLoading;
  final String? failedWithoutAlertMessage;
  final List<Products>? products;
  final List<Brands>? brands;

  const HomeState({this.isLoading,this.failedWithoutAlertMessage,this.products,this.brands});

  @override
  List<Object?> get props => [isLoading,failedWithoutAlertMessage,products,brands];
}


