// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qart_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 0;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      productCount: fields[0] as int?,
      products: (fields[1] as List?)?.cast<Products>(),
      brands: (fields[2] as List?)?.cast<Brands>(),
      lastUpdatedToken: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.productCount)
      ..writeByte(1)
      ..write(obj.products)
      ..writeByte(2)
      ..write(obj.brands)
      ..writeByte(3)
      ..write(obj.lastUpdatedToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductsAdapter extends TypeAdapter<Products> {
  @override
  final int typeId = 1;

  @override
  Products read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Products(
      season: fields[0] as String?,
      brand: fields[1] as String?,
      mood: fields[2] as String?,
      gender: fields[3] as String?,
      theme: fields[4] as String?,
      category: fields[5] as String?,
      name: fields[6] as String?,
      color: fields[7] as String?,
      option: fields[8] as String?,
      mRP: fields[9] as num?,
      subCategory: fields[10] as String?,
      collection: fields[11] as String?,
      fit: fields[12] as String?,
      description: fields[13] as String?,
      qRCode: fields[14] as String?,
      looks: fields[15] as String?,
      fabric: fields[16] as String?,
      eAN: fields[17] as EAN?,
      finish: fields[18] as String?,
      availableSizes: (fields[19] as List?)?.cast<String>(),
      availableSizesWithDeactivated:
          (fields[20] as List?)?.cast<AvailableSizesWithDeactivated>(),
      offerMonths: (fields[21] as List?)?.cast<String>(),
      productClass: fields[22] as int?,
      promoted: fields[23] as bool?,
      secondary: fields[24] as bool?,
      deactivated: fields[25] as bool?,
      material: fields[26] as String?,
      quality: fields[27] as String?,
      qRCode2: fields[28] as String?,
      displayName: fields[29] as String?,
      displayOrder: fields[30] as int?,
      minQuantity: fields[31] as int?,
      maxQuantity: fields[32] as int?,
      qPSCode: fields[33] as String?,
      image: fields[34] as String?,
      imageUrl: fields[35] as String?,
      imageUrl2: fields[36] as String?,
      imageUrl3: fields[37] as String?,
      imageUrl4: fields[38] as String?,
      imageUrl5: fields[39] as String?,
      adShoot: fields[40] as bool?,
      technology: fields[41] as String?,
      imageAlt: fields[42] as String?,
      technologyImageUrl: fields[43] as String?,
      isCore: fields[44] as bool?,
      minimumArticleQuantity: fields[45] as int?,
      likeabilty: fields[46] as num?,
      brandRank: fields[47] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Products obj) {
    writer
      ..writeByte(48)
      ..writeByte(0)
      ..write(obj.season)
      ..writeByte(1)
      ..write(obj.brand)
      ..writeByte(2)
      ..write(obj.mood)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.theme)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.color)
      ..writeByte(8)
      ..write(obj.option)
      ..writeByte(9)
      ..write(obj.mRP)
      ..writeByte(10)
      ..write(obj.subCategory)
      ..writeByte(11)
      ..write(obj.collection)
      ..writeByte(12)
      ..write(obj.fit)
      ..writeByte(13)
      ..write(obj.description)
      ..writeByte(14)
      ..write(obj.qRCode)
      ..writeByte(15)
      ..write(obj.looks)
      ..writeByte(16)
      ..write(obj.fabric)
      ..writeByte(17)
      ..write(obj.eAN)
      ..writeByte(18)
      ..write(obj.finish)
      ..writeByte(19)
      ..write(obj.availableSizes)
      ..writeByte(20)
      ..write(obj.availableSizesWithDeactivated)
      ..writeByte(21)
      ..write(obj.offerMonths)
      ..writeByte(22)
      ..write(obj.productClass)
      ..writeByte(23)
      ..write(obj.promoted)
      ..writeByte(24)
      ..write(obj.secondary)
      ..writeByte(25)
      ..write(obj.deactivated)
      ..writeByte(26)
      ..write(obj.material)
      ..writeByte(27)
      ..write(obj.quality)
      ..writeByte(28)
      ..write(obj.qRCode2)
      ..writeByte(29)
      ..write(obj.displayName)
      ..writeByte(30)
      ..write(obj.displayOrder)
      ..writeByte(31)
      ..write(obj.minQuantity)
      ..writeByte(32)
      ..write(obj.maxQuantity)
      ..writeByte(33)
      ..write(obj.qPSCode)
      ..writeByte(34)
      ..write(obj.image)
      ..writeByte(35)
      ..write(obj.imageUrl)
      ..writeByte(36)
      ..write(obj.imageUrl2)
      ..writeByte(37)
      ..write(obj.imageUrl3)
      ..writeByte(38)
      ..write(obj.imageUrl4)
      ..writeByte(39)
      ..write(obj.imageUrl5)
      ..writeByte(40)
      ..write(obj.adShoot)
      ..writeByte(41)
      ..write(obj.technology)
      ..writeByte(42)
      ..write(obj.imageAlt)
      ..writeByte(43)
      ..write(obj.technologyImageUrl)
      ..writeByte(44)
      ..write(obj.isCore)
      ..writeByte(45)
      ..write(obj.minimumArticleQuantity)
      ..writeByte(46)
      ..write(obj.likeabilty)
      ..writeByte(47)
      ..write(obj.brandRank);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EANAdapter extends TypeAdapter<EAN> {
  @override
  final int typeId = 2;

  @override
  EAN read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EAN(
      s28: fields[0] as String?,
      s30: fields[1] as String?,
      s32: fields[2] as String?,
      s34: fields[3] as String?,
      s36: fields[4] as String?,
      s38: fields[5] as String?,
      s40: fields[6] as String?,
      l: fields[7] as String?,
      m: fields[8] as String?,
      s: fields[9] as String?,
      xL: fields[10] as String?,
      xXL: fields[11] as String?,
      xXXL: fields[12] as String?,
      s42: fields[13] as String?,
      xS: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EAN obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.s28)
      ..writeByte(1)
      ..write(obj.s30)
      ..writeByte(2)
      ..write(obj.s32)
      ..writeByte(3)
      ..write(obj.s34)
      ..writeByte(4)
      ..write(obj.s36)
      ..writeByte(5)
      ..write(obj.s38)
      ..writeByte(6)
      ..write(obj.s40)
      ..writeByte(7)
      ..write(obj.l)
      ..writeByte(8)
      ..write(obj.m)
      ..writeByte(9)
      ..write(obj.s)
      ..writeByte(10)
      ..write(obj.xL)
      ..writeByte(11)
      ..write(obj.xXL)
      ..writeByte(12)
      ..write(obj.xXXL)
      ..writeByte(13)
      ..write(obj.s42)
      ..writeByte(14)
      ..write(obj.xS);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EANAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AvailableSizesWithDeactivatedAdapter
    extends TypeAdapter<AvailableSizesWithDeactivated> {
  @override
  final int typeId = 3;

  @override
  AvailableSizesWithDeactivated read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableSizesWithDeactivated(
      size: fields[0] as String?,
      isDeactevated: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AvailableSizesWithDeactivated obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.size)
      ..writeByte(1)
      ..write(obj.isDeactevated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableSizesWithDeactivatedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BrandsAdapter extends TypeAdapter<Brands> {
  @override
  final int typeId = 4;

  @override
  Brands read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Brands(
      name: fields[0] as String?,
      mOQ: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Brands obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.mOQ);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
