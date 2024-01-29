// class ProductModel {
//   int? productCount;
//   List<Products>? products;
//   List<Brands>? brands;
//   int? lastUpdatedToken;
//
//   ProductModel(
//       {this.productCount, this.products, this.brands, this.lastUpdatedToken});
//
//   ProductModel.fromJson(Map<String, dynamic> json) {
//     productCount = json['ProductCount'];
//     if (json['Products'] != null) {
//       products = <Products>[];
//       json['Products'].forEach((v) {
//         products!.add(Products.fromJson(v));
//       });
//     }
//     if (json['Brands'] != null) {
//       brands = <Brands>[];
//       json['Brands'].forEach((v) {
//         brands!.add(Brands.fromJson(v));
//       });
//     }
//     lastUpdatedToken = json['LastUpdatedToken'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['ProductCount'] = this.productCount;
//     if (this.products != null) {
//       data['Products'] = this.products!.map((v) => v.toJson()).toList();
//     }
//     if (this.brands != null) {
//       data['Brands'] = this.brands!.map((v) => v.toJson()).toList();
//     }
//     data['LastUpdatedToken'] = this.lastUpdatedToken;
//     return data;
//   }
// }
//
// class Products {
//   String? season;
//   String? brand;
//   String? mood;
//   String? gender;
//   String? theme;
//   String? category;
//   String? name;
//   String? color;
//   String? option;
//   num? mRP;
//   String? subCategory;
//   String? collection;
//   String? fit;
//   String? description;
//   String? qRCode;
//   String? looks;
//
//   // Null? looksImageUrl;
//   // Null? looksImage;
//   String? fabric;
//   EAN? eAN;
//   String? finish;
//   List<String>? availableSizes;
//   List<AvailableSizesWithDeactivated>? availableSizesWithDeactivated;
//   List<String>? offerMonths;
//   int? productClass;
//   bool? promoted;
//   bool? secondary;
//   bool? deactivated;
//
//   // Null? defaultSize;
//   String? material;
//   String? quality;
//   String? qRCode2;
//   String? displayName;
//   int? displayOrder;
//   int? minQuantity;
//   int? maxQuantity;
//   String? qPSCode;
//
//   // Null? demandType;
//   String? image;
//   String? imageUrl;
//   String? imageUrl2;
//   String? imageUrl3;
//   String? imageUrl4;
//   String? imageUrl5;
//
//   // Null? imageUrl6;
//   // Null? imageUrl7;
//   // Null? imageUrl8;
//   // Null? imageUrl9;
//   // Null? imageUrl10;
//   // Null? imageUrl11;
//   // Null? imageUrl12;
//   bool? adShoot;
//   String? technology;
//   String? imageAlt;
//
//   // Null? technologyImage;
//   String? technologyImageUrl;
//   bool? isCore;
//   int? minimumArticleQuantity;
//   num? likeabilty;
//   String? brandRank;
//
//   // List<Null>? gradeToRatiosApps;
//   // List<Null>? relatedProducts;
//
//   Products({
//     this.season,
//     this.brand,
//     this.mood,
//     this.gender,
//     this.theme,
//     this.category,
//     this.name,
//     this.color,
//     this.option,
//     this.mRP,
//     this.subCategory,
//     this.collection,
//     this.fit,
//     this.description,
//     this.qRCode,
//     this.looks,
//     this.fabric,
//     this.eAN,
//     this.finish,
//     this.availableSizes,
//     this.availableSizesWithDeactivated,
//     this.offerMonths,
//     this.productClass,
//     this.promoted,
//     this.secondary,
//     this.deactivated,
//     this.material,
//     this.quality,
//     this.qRCode2,
//     this.displayName,
//     this.displayOrder,
//     this.minQuantity,
//     this.maxQuantity,
//     this.qPSCode,
//     this.image,
//     this.imageUrl,
//     this.imageUrl2,
//     this.imageUrl3,
//     this.imageUrl4,
//     this.imageUrl5,
//     this.adShoot,
//     this.technology,
//     this.imageAlt,
//     this.technologyImageUrl,
//     this.isCore,
//     this.minimumArticleQuantity,
//     this.likeabilty,
//     this.brandRank,
//   });
//
//   Products.fromJson(Map<String, dynamic> json) {
//     season = json['Season'];
//     brand = json['Brand'];
//     mood = json['Mood'];
//     gender = json['Gender'];
//     theme = json['Theme'];
//     category = json['Category'];
//     name = json['Name'];
//     color = json['Color'];
//     option = json['Option'];
//     mRP = json['MRP'];
//     subCategory = json['SubCategory'];
//     collection = json['Collection'];
//     fit = json['Fit'];
//     description = json['Description'];
//     qRCode = json['QRCode'];
//     looks = json['Looks'];
//     fabric = json['Fabric'];
//     eAN = json['EAN'] != null ? new EAN.fromJson(json['EAN']) : null;
//     finish = json['Finish'];
//     availableSizes = json['AvailableSizes'].cast<String>();
//     if (json['AvailableSizesWithDeactivated'] != null) {
//       availableSizesWithDeactivated = <AvailableSizesWithDeactivated>[];
//       json['AvailableSizesWithDeactivated'].forEach((v) {
//         availableSizesWithDeactivated!
//             .add(new AvailableSizesWithDeactivated.fromJson(v));
//       });
//     }
//     offerMonths = json['OfferMonths'].cast<String>();
//     productClass = json['ProductClass'];
//     promoted = json['Promoted'];
//     secondary = json['Secondary'];
//     deactivated = json['Deactivated'];
//     material = json['Material'];
//     quality = json['Quality'];
//     qRCode2 = json['QRCode2'];
//     displayName = json['DisplayName'];
//     displayOrder = json['DisplayOrder'];
//     minQuantity = json['MinQuantity'];
//     maxQuantity = json['MaxQuantity'];
//     qPSCode = json['QPSCode'];
//     image = json['Image'];
//     imageUrl = json['ImageUrl'];
//     imageUrl2 = json['ImageUrl2'];
//     imageUrl3 = json['ImageUrl3'];
//     imageUrl4 = json['ImageUrl4'];
//     imageUrl5 = json['ImageUrl5'];
//     adShoot = json['AdShoot'];
//     technology = json['Technology'];
//     imageAlt = json['ImageAlt'];
//     technologyImageUrl = json['TechnologyImageUrl'];
//     isCore = json['IsCore'];
//     minimumArticleQuantity = json['MinimumArticleQuantity'];
//     likeabilty = json['Likeabilty'];
//     brandRank = json['BrandRank'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Season'] = this.season;
//     data['Brand'] = this.brand;
//     data['Mood'] = this.mood;
//     data['Gender'] = this.gender;
//     data['Theme'] = this.theme;
//     data['Category'] = this.category;
//     data['Name'] = this.name;
//     data['Color'] = this.color;
//     data['Option'] = this.option;
//     data['MRP'] = this.mRP;
//     data['SubCategory'] = this.subCategory;
//     data['Collection'] = this.collection;
//     data['Fit'] = this.fit;
//     data['Description'] = this.description;
//     data['QRCode'] = this.qRCode;
//     data['Looks'] = this.looks;
//     data['Fabric'] = this.fabric;
//     if (this.eAN != null) {
//       data['EAN'] = this.eAN!.toJson();
//     }
//     data['Finish'] = this.finish;
//     data['AvailableSizes'] = this.availableSizes;
//     if (this.availableSizesWithDeactivated != null) {
//       data['AvailableSizesWithDeactivated'] =
//           this.availableSizesWithDeactivated!.map((v) => v.toJson()).toList();
//     }
//     data['OfferMonths'] = this.offerMonths;
//     data['ProductClass'] = this.productClass;
//     data['Promoted'] = this.promoted;
//     data['Secondary'] = this.secondary;
//     data['Deactivated'] = this.deactivated;
//     data['Material'] = this.material;
//     data['Quality'] = this.quality;
//     data['QRCode2'] = this.qRCode2;
//     data['DisplayName'] = this.displayName;
//     data['DisplayOrder'] = this.displayOrder;
//     data['MinQuantity'] = this.minQuantity;
//     data['MaxQuantity'] = this.maxQuantity;
//     data['QPSCode'] = this.qPSCode;
//     data['Image'] = this.image;
//     data['ImageUrl'] = this.imageUrl;
//     data['ImageUrl2'] = this.imageUrl2;
//     data['ImageUrl3'] = this.imageUrl3;
//     data['ImageUrl4'] = this.imageUrl4;
//     data['ImageUrl5'] = this.imageUrl5;
//     data['AdShoot'] = this.adShoot;
//     data['Technology'] = this.technology;
//     data['ImageAlt'] = this.imageAlt;
//     data['TechnologyImageUrl'] = this.technologyImageUrl;
//     data['IsCore'] = this.isCore;
//     data['MinimumArticleQuantity'] = this.minimumArticleQuantity;
//     data['Likeabilty'] = this.likeabilty;
//     data['BrandRank'] = this.brandRank;
//     return data;
//   }
// }
//
// class EAN {
//   String? s28;
//   String? s30;
//   String? s32;
//   String? s34;
//   String? s36;
//   String? s38;
//   String? s40;
//   String? l;
//   String? m;
//   String? s;
//   String? xL;
//   String? xXL;
//   String? xXXL;
//   String? s42;
//   String? xS;
//
//   EAN(
//       {this.s28,
//       this.s30,
//       this.s32,
//       this.s34,
//       this.s36,
//       this.s38,
//       this.s40,
//       this.l,
//       this.m,
//       this.s,
//       this.xL,
//       this.xXL,
//       this.xXXL,
//       this.s42,
//       this.xS});
//
//   EAN.fromJson(Map<String, dynamic> json) {
//     s28 = json['28'];
//     s30 = json['30'];
//     s32 = json['32'];
//     s34 = json['34'];
//     s36 = json['36'];
//     s38 = json['38'];
//     s40 = json['40'];
//     l = json['L'];
//     m = json['M'];
//     s = json['S'];
//     xL = json['XL'];
//     xXL = json['XXL'];
//     xXXL = json['XXXL'];
//     s42 = json['42'];
//     xS = json['XS'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['28'] = this.s28;
//     data['30'] = this.s30;
//     data['32'] = this.s32;
//     data['34'] = this.s34;
//     data['36'] = this.s36;
//     data['38'] = this.s38;
//     data['40'] = this.s40;
//     data['L'] = this.l;
//     data['M'] = this.m;
//     data['S'] = this.s;
//     data['XL'] = this.xL;
//     data['XXL'] = this.xXL;
//     data['XXXL'] = this.xXXL;
//     data['42'] = this.s42;
//     data['XS'] = this.xS;
//     return data;
//   }
// }
//
// class AvailableSizesWithDeactivated {
//   String? size;
//   bool? isDeactevated;
//
//   AvailableSizesWithDeactivated({this.size, this.isDeactevated});
//
//   AvailableSizesWithDeactivated.fromJson(Map<String, dynamic> json) {
//     size = json['Size'];
//     isDeactevated = json['IsDeactevated'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Size'] = this.size;
//     data['IsDeactevated'] = this.isDeactevated;
//     return data;
//   }
// }
//
// class Brands {
//   String? name;
//   int? mOQ;
//
//   Brands({this.name, this.mOQ});
//
//   Brands.fromJson(Map<String, dynamic> json) {
//     name = json['Name'];
//     mOQ = json['MOQ'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Name'] = this.name;
//     data['MOQ'] = this.mOQ;
//     return data;
//   }
// }
