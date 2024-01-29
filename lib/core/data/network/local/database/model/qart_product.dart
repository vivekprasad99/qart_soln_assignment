import 'package:hive_flutter/hive_flutter.dart';

import '../boxes.dart';
part 'qart_product.g.dart';

@HiveType(typeId: Boxes.qartProductModelHoTypeID)
class ProductModel extends HiveObject {

  @HiveField(0)
  int? productCount;

  @HiveField(1)
  List<Products>? products;

  @HiveField(2)
  List<Brands>? brands;

  @HiveField(3)
  int? lastUpdatedToken;

  ProductModel(
      {this.productCount, this.products, this.brands, this.lastUpdatedToken});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productCount = json['ProductCount'];
    if (json['Products'] != null) {
      products = <Products>[];
      json['Products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    if (json['Brands'] != null) {
      brands = <Brands>[];
      json['Brands'].forEach((v) {
        brands!.add(Brands.fromJson(v));
      });
    }
    lastUpdatedToken = json['LastUpdatedToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ProductCount'] = this.productCount;
    if (this.products != null) {
      data['Products'] = this.products!.map((v) => v.toJson()).toList();
    }
    if (this.brands != null) {
      data['Brands'] = this.brands!.map((v) => v.toJson()).toList();
    }
    data['LastUpdatedToken'] = this.lastUpdatedToken;
    return data;
  }
}

@HiveType(typeId: Boxes.qartProductHoTypeID)
class Products extends HiveObject {

  @HiveField(0)
  String? season;
  @HiveField(1)
  String? brand;
  @HiveField(2)
  String? mood;
  @HiveField(3)
  String? gender;
  @HiveField(4)
  String? theme;
  @HiveField(5)
  String? category;
  @HiveField(6)
  String? name;
  @HiveField(7)
  String? color;
  @HiveField(8)
  String? option;
  @HiveField(9)
  num? mRP;
  @HiveField(10)
  String? subCategory;
  @HiveField(11)
  String? collection;
  @HiveField(12)
  String? fit;
  @HiveField(13)
  String? description;
  @HiveField(14)
  String? qRCode;
  @HiveField(15)
  String? looks;

  // Null? looksImageUrl;
  // Null? looksImage;
  @HiveField(16)
  String? fabric;
  @HiveField(17)
  EAN? eAN;
  @HiveField(18)
  String? finish;
  @HiveField(19)
  List<String>? availableSizes;
  @HiveField(20)
  List<AvailableSizesWithDeactivated>? availableSizesWithDeactivated;
  @HiveField(21)
  List<String>? offerMonths;
  @HiveField(22)
  int? productClass;
  @HiveField(23)
  bool? promoted;
  @HiveField(24)
  bool? secondary;
  @HiveField(25)
  bool? deactivated;

  // Null? defaultSize;
  @HiveField(26)
  String? material;
  @HiveField(27)
  String? quality;
  @HiveField(28)
  String? qRCode2;
  @HiveField(29)
  String? displayName;
  @HiveField(30)
  int? displayOrder;
  @HiveField(31)
  int? minQuantity;
  @HiveField(32)
  int? maxQuantity;
  @HiveField(33)
  String? qPSCode;

  // Null? demandType;
  @HiveField(34)
  String? image;
  @HiveField(35)
  String? imageUrl;
  @HiveField(36)
  String? imageUrl2;
  @HiveField(37)
  String? imageUrl3;
  @HiveField(38)
  String? imageUrl4;
  @HiveField(39)
  String? imageUrl5;

  // Null? imageUrl6;
  // Null? imageUrl7;
  // Null? imageUrl8;
  // Null? imageUrl9;
  // Null? imageUrl10;
  // Null? imageUrl11;
  // Null? imageUrl12;
  @HiveField(40)
  bool? adShoot;
  @HiveField(41)
  String? technology;
  @HiveField(42)
  String? imageAlt;

  // Null? technologyImage;
  @HiveField(43)
  String? technologyImageUrl;
  @HiveField(44)
  bool? isCore;
  @HiveField(45)
  int? minimumArticleQuantity;
  @HiveField(46)
  num? likeabilty;
  @HiveField(47)
  String? brandRank;

  Products({
    this.season,
    this.brand,
    this.mood,
    this.gender,
    this.theme,
    this.category,
    this.name,
    this.color,
    this.option,
    this.mRP,
    this.subCategory,
    this.collection,
    this.fit,
    this.description,
    this.qRCode,
    this.looks,
    this.fabric,
    this.eAN,
    this.finish,
    this.availableSizes,
    this.availableSizesWithDeactivated,
    this.offerMonths,
    this.productClass,
    this.promoted,
    this.secondary,
    this.deactivated,
    this.material,
    this.quality,
    this.qRCode2,
    this.displayName,
    this.displayOrder,
    this.minQuantity,
    this.maxQuantity,
    this.qPSCode,
    this.image,
    this.imageUrl,
    this.imageUrl2,
    this.imageUrl3,
    this.imageUrl4,
    this.imageUrl5,
    this.adShoot,
    this.technology,
    this.imageAlt,
    this.technologyImageUrl,
    this.isCore,
    this.minimumArticleQuantity,
    this.likeabilty,
    this.brandRank,
  });

  Products.fromJson(Map<String, dynamic> json) {
    season = json['Season'];
    brand = json['Brand'];
    mood = json['Mood'];
    gender = json['Gender'];
    theme = json['Theme'];
    category = json['Category'];
    name = json['Name'];
    color = json['Color'];
    option = json['Option'];
    mRP = json['MRP'];
    subCategory = json['SubCategory'];
    collection = json['Collection'];
    fit = json['Fit'];
    description = json['Description'];
    qRCode = json['QRCode'];
    looks = json['Looks'];
    fabric = json['Fabric'];
    eAN = json['EAN'] != null ? new EAN.fromJson(json['EAN']) : null;
    finish = json['Finish'];
    availableSizes = json['AvailableSizes'].cast<String>();
    if (json['AvailableSizesWithDeactivated'] != null) {
      availableSizesWithDeactivated = <AvailableSizesWithDeactivated>[];
      json['AvailableSizesWithDeactivated'].forEach((v) {
        availableSizesWithDeactivated!
            .add(new AvailableSizesWithDeactivated.fromJson(v));
      });
    }
    offerMonths = json['OfferMonths'].cast<String>();
    productClass = json['ProductClass'];
    promoted = json['Promoted'];
    secondary = json['Secondary'];
    deactivated = json['Deactivated'];
    material = json['Material'];
    quality = json['Quality'];
    qRCode2 = json['QRCode2'];
    displayName = json['DisplayName'];
    displayOrder = json['DisplayOrder'];
    minQuantity = json['MinQuantity'];
    maxQuantity = json['MaxQuantity'];
    qPSCode = json['QPSCode'];
    image = json['Image'];
    imageUrl = json['ImageUrl'];
    imageUrl2 = json['ImageUrl2'];
    imageUrl3 = json['ImageUrl3'];
    imageUrl4 = json['ImageUrl4'];
    imageUrl5 = json['ImageUrl5'];
    adShoot = json['AdShoot'];
    technology = json['Technology'];
    imageAlt = json['ImageAlt'];
    technologyImageUrl = json['TechnologyImageUrl'];
    isCore = json['IsCore'];
    minimumArticleQuantity = json['MinimumArticleQuantity'];
    likeabilty = json['Likeabilty'];
    brandRank = json['BrandRank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Season'] = this.season;
    data['Brand'] = this.brand;
    data['Mood'] = this.mood;
    data['Gender'] = this.gender;
    data['Theme'] = this.theme;
    data['Category'] = this.category;
    data['Name'] = this.name;
    data['Color'] = this.color;
    data['Option'] = this.option;
    data['MRP'] = this.mRP;
    data['SubCategory'] = this.subCategory;
    data['Collection'] = this.collection;
    data['Fit'] = this.fit;
    data['Description'] = this.description;
    data['QRCode'] = this.qRCode;
    data['Looks'] = this.looks;
    data['Fabric'] = this.fabric;
    if (this.eAN != null) {
      data['EAN'] = this.eAN!.toJson();
    }
    data['Finish'] = this.finish;
    data['AvailableSizes'] = this.availableSizes;
    if (this.availableSizesWithDeactivated != null) {
      data['AvailableSizesWithDeactivated'] =
          this.availableSizesWithDeactivated!.map((v) => v.toJson()).toList();
    }
    data['OfferMonths'] = this.offerMonths;
    data['ProductClass'] = this.productClass;
    data['Promoted'] = this.promoted;
    data['Secondary'] = this.secondary;
    data['Deactivated'] = this.deactivated;
    data['Material'] = this.material;
    data['Quality'] = this.quality;
    data['QRCode2'] = this.qRCode2;
    data['DisplayName'] = this.displayName;
    data['DisplayOrder'] = this.displayOrder;
    data['MinQuantity'] = this.minQuantity;
    data['MaxQuantity'] = this.maxQuantity;
    data['QPSCode'] = this.qPSCode;
    data['Image'] = this.image;
    data['ImageUrl'] = this.imageUrl;
    data['ImageUrl2'] = this.imageUrl2;
    data['ImageUrl3'] = this.imageUrl3;
    data['ImageUrl4'] = this.imageUrl4;
    data['ImageUrl5'] = this.imageUrl5;
    data['AdShoot'] = this.adShoot;
    data['Technology'] = this.technology;
    data['ImageAlt'] = this.imageAlt;
    data['TechnologyImageUrl'] = this.technologyImageUrl;
    data['IsCore'] = this.isCore;
    data['MinimumArticleQuantity'] = this.minimumArticleQuantity;
    data['Likeabilty'] = this.likeabilty;
    data['BrandRank'] = this.brandRank;
    return data;
  }
}

@HiveType(typeId: Boxes.qartEanHoTypeID)
class EAN extends HiveObject {

  @HiveField(0)
  String? s28;
  @HiveField(1)
  String? s30;
  @HiveField(2)
  String? s32;
  @HiveField(3)
  String? s34;
  @HiveField(4)
  String? s36;
  @HiveField(5)
  String? s38;
  @HiveField(6)
  String? s40;
  @HiveField(7)
  String? l;
  @HiveField(8)
  String? m;
  @HiveField(9)
  String? s;
  @HiveField(10)
  String? xL;
  @HiveField(11)
  String? xXL;
  @HiveField(12)
  String? xXXL;
  @HiveField(13)
  String? s42;
  @HiveField(14)
  String? xS;

  EAN(
      {this.s28,
        this.s30,
        this.s32,
        this.s34,
        this.s36,
        this.s38,
        this.s40,
        this.l,
        this.m,
        this.s,
        this.xL,
        this.xXL,
        this.xXXL,
        this.s42,
        this.xS});

  EAN.fromJson(Map<String, dynamic> json) {
    s28 = json['28'];
    s30 = json['30'];
    s32 = json['32'];
    s34 = json['34'];
    s36 = json['36'];
    s38 = json['38'];
    s40 = json['40'];
    l = json['L'];
    m = json['M'];
    s = json['S'];
    xL = json['XL'];
    xXL = json['XXL'];
    xXXL = json['XXXL'];
    s42 = json['42'];
    xS = json['XS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['28'] = this.s28;
    data['30'] = this.s30;
    data['32'] = this.s32;
    data['34'] = this.s34;
    data['36'] = this.s36;
    data['38'] = this.s38;
    data['40'] = this.s40;
    data['L'] = this.l;
    data['M'] = this.m;
    data['S'] = this.s;
    data['XL'] = this.xL;
    data['XXL'] = this.xXL;
    data['XXXL'] = this.xXXL;
    data['42'] = this.s42;
    data['XS'] = this.xS;
    return data;
  }
}

@HiveType(typeId: Boxes.qartAvailableSizesWithDeactivatedHoTypeID)
class AvailableSizesWithDeactivated extends HiveObject {

  @HiveField(0)
  String? size;
  @HiveField(1)
  bool? isDeactevated;

  AvailableSizesWithDeactivated({this.size, this.isDeactevated});

  AvailableSizesWithDeactivated.fromJson(Map<String, dynamic> json) {
    size = json['Size'];
    isDeactevated = json['IsDeactevated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Size'] = this.size;
    data['IsDeactevated'] = this.isDeactevated;
    return data;
  }
}

@HiveType(typeId: Boxes.qartBrandsHoTypeID)
class Brands extends HiveObject {

  @HiveField(0)
  String? name;
  @HiveField(1)
  int? mOQ;

  Brands({this.name, this.mOQ});

  Brands.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    mOQ = json['MOQ'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['MOQ'] = this.mOQ;
    return data;
  }
}

