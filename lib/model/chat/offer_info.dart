import 'dart:convert';

class OfferInfo {
  String? id;
  dynamic message;
  dynamic offerPrice;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<OfferSubStateInfo>? children;
  dynamic status;
  String? createdBy;
  dynamic expiresAt;
  bool? deleted;
  Recipient? buyer;
  Product? product;
  String? typename;

  OfferInfo({
    this.id,
    this.message,
    this.offerPrice,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.children,
    this.createdBy,
    this.expiresAt,
    this.deleted,
    this.buyer,
    this.product,
    this.typename,
  });

  factory OfferInfo.fromJson(Map<String, dynamic> json) => OfferInfo(
        id: json["id"],
        message: json["message"],
        createdBy: json["createdBy"],
        offerPrice: json["offer_price"] ?? json["offerPrice"],
        status: json["offer_status"] ?? json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        expiresAt: json["expiresAt"],
        deleted: json["deleted"],
        buyer: json["buyer"] == null ? null : Recipient.fromJson(json["buyer"]),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        typename: json["__typename"],
        children: json["children"] == null
            ? []
            : List<OfferSubStateInfo>.from(
                json["children"]!.map((x) => OfferSubStateInfo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "offerPrice": offerPrice,
        "status": status,
        "createdBy": createdBy,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "expiresAt": expiresAt,
        "deleted": deleted,
        "buyer": buyer?.toJson(),
        "product": product?.toJson(),
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
        "__typename": typename,
      };
}

class Product {
  String? id;
  String? name;
  String? description;
  bool? isFeatured;
  dynamic status;
  bool? userLiked;
  Category? category;
  List<ImagesUrl>? imagesUrl;
  Category? size;
  Recipient? seller;
  String? condition;
  String? discountPrice;
  dynamic price;
  String? parcelSize;
  int? views;
  dynamic brand;
  int? likes;
  String? typename;

  Product({
    this.id,
    this.name,
    this.description,
    this.isFeatured,
    this.userLiked,
    this.imagesUrl,
    this.category,
    this.status,
    this.size,
    this.seller,
    this.condition,
    this.brand,
    this.discountPrice,
    this.price,
    this.parcelSize,
    this.views,
    this.likes,
    this.typename,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        isFeatured: json["isFeatured"],
        userLiked: json["userLiked"],
        status: json["status"],
        brand: json["brand"],
        imagesUrl: json["imagesUrl"] == null
            ? []
            : List<ImagesUrl>.from(json["imagesUrl"]!.map(
                (x) => ImagesUrl.fromJson(
                  jsonDecode(x),
                ),
              )),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        size: json["size"] == null ? null : Category.fromJson(json["size"]),
        seller:
            json["seller"] == null ? null : Recipient.fromJson(json["seller"]),
        condition: json["condition"],
        discountPrice: json["discountPrice"],
        price: json["price"],
        parcelSize: json["parcelSize"],
        views: json["views"],
        likes: json["likes"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "isFeatured": isFeatured,
        "status": status,
        "userLiked": userLiked,
        "category": category?.toJson(),
        "size": size?.toJson(),
        "seller": seller?.toJson(),
        "condition": condition,
        "discountPrice": discountPrice,
        "price": price,
        "parcelSize": parcelSize,
        "views": views,
        "likes": likes,
        "__typename": typename,
      };
}

class Category {
  int? id;
  String? name;
  String? typename;

  Category({
    this.id,
    this.name,
    this.typename,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "__typename": typename,
      };
}

class Recipient {
  int? id;
  String? username;
  String? profilePictureUrl;
  String? thumbnailUrl;
  dynamic displayName;
  String? typename;

  Recipient({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.typename,
  });

  factory Recipient.fromJson(Map<String, dynamic> json) => Recipient(
        id: json["id"],
        username: json["username"],
        profilePictureUrl: json["profilePictureUrl"],
        thumbnailUrl: json["thumbnailUrl"],
        displayName: json["displayName"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "profilePictureUrl": profilePictureUrl,
        "thumbnailUrl": thumbnailUrl,
        "displayName": displayName,
        "__typename": typename,
      };
}

class OfferSubStateInfo {
  String? id;
  dynamic message;
  String? offerPrice;
  String? updatedBy, createdBy;
  String? status;
  Recipient? buyer;
  ChildProduct? product;
  String? typename;

  OfferSubStateInfo({
    this.id,
    this.message,
    this.offerPrice,
    this.status,
    this.updatedBy,
    this.createdBy,
    this.buyer,
    this.product,
    this.typename,
  });

  factory OfferSubStateInfo.fromJson(Map<String, dynamic> json) =>
      OfferSubStateInfo(
        id: json["id"],
        message: json["message"],
        offerPrice: json["offerPrice"],
        updatedBy: json["updatedBy"],
        createdBy: json["createdBy"],
        status: json["status"],
        buyer: json["buyer"] == null ? null : Recipient.fromJson(json["buyer"]),
        product: json["product"] == null
            ? null
            : ChildProduct.fromJson(json["product"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "offerPrice": offerPrice,
        "updatedBy": updatedBy,
        "createdBy": createdBy,
        "status": status,
        "buyer": buyer?.toJson(),
        "product": product?.toJson(),
        "__typename": typename,
      };
}

class ChildProduct {
  Recipient? seller;
  String? typename;

  ChildProduct({
    this.seller,
    this.typename,
  });

  factory ChildProduct.fromJson(Map<String, dynamic> json) => ChildProduct(
        seller:
            json["seller"] == null ? null : Recipient.fromJson(json["seller"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "seller": seller?.toJson(),
        "__typename": typename,
      };
}

OfferInfo offerInfoFromJson(String str) => OfferInfo.fromJson(json.decode(str));

String offerInfoToJson(OfferInfo data) => json.encode(data.toJson());

class ImagesUrl {
  String? url;
  String? thumbnail;

  ImagesUrl({
    this.url,
    this.thumbnail,
  });

  ImagesUrl copyWith({
    String? url,
    String? thumbnail,
  }) =>
      ImagesUrl(
        url: url ?? this.url,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory ImagesUrl.fromJson(Map<String, dynamic> json) => ImagesUrl(
        url: json["url"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "thumbnail": thumbnail,
      };
}
