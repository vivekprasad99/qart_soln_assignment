// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductStateCWProxy {
  ProductState itemSelectedList(List<int>? itemSelectedList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductState call({
    List<int>? itemSelectedList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductState.copyWith.fieldName(...)`
class _$ProductStateCWProxyImpl implements _$ProductStateCWProxy {
  const _$ProductStateCWProxyImpl(this._value);

  final ProductState _value;

  @override
  ProductState itemSelectedList(List<int>? itemSelectedList) =>
      this(itemSelectedList: itemSelectedList);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductState call({
    Object? itemSelectedList = const $CopyWithPlaceholder(),
  }) {
    return ProductState(
      itemSelectedList: itemSelectedList == const $CopyWithPlaceholder()
          ? _value.itemSelectedList
          // ignore: cast_nullable_to_non_nullable
          : itemSelectedList as List<int>?,
    );
  }
}

extension $ProductStateCopyWith on ProductState {
  /// Returns a callable class that can be used as follows: `instanceOfProductState.copyWith(...)` or like so:`instanceOfProductState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductStateCWProxy get copyWith => _$ProductStateCWProxyImpl(this);
}
