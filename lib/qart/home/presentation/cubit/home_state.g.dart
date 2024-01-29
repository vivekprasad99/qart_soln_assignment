// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState isLoading(bool? isLoading);

  HomeState failedWithoutAlertMessage(String? failedWithoutAlertMessage);

  HomeState products(List<Products>? products);

  HomeState brands(List<Brands>? brands);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    bool? isLoading,
    String? failedWithoutAlertMessage,
    List<Products>? products,
    List<Brands>? brands,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeState.copyWith.fieldName(...)`
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  const _$HomeStateCWProxyImpl(this._value);

  final HomeState _value;

  @override
  HomeState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  HomeState failedWithoutAlertMessage(String? failedWithoutAlertMessage) =>
      this(failedWithoutAlertMessage: failedWithoutAlertMessage);

  @override
  HomeState products(List<Products>? products) => this(products: products);

  @override
  HomeState brands(List<Brands>? brands) => this(brands: brands);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? failedWithoutAlertMessage = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? brands = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
      failedWithoutAlertMessage:
          failedWithoutAlertMessage == const $CopyWithPlaceholder()
              ? _value.failedWithoutAlertMessage
              // ignore: cast_nullable_to_non_nullable
              : failedWithoutAlertMessage as String?,
      products: products == const $CopyWithPlaceholder()
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<Products>?,
      brands: brands == const $CopyWithPlaceholder()
          ? _value.brands
          // ignore: cast_nullable_to_non_nullable
          : brands as List<Brands>?,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
