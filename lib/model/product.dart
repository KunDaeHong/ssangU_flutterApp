import 'package:share_product_v2/models/member.dart';

class Product {
  int id;
  String title = "";
  String description = "";
  int price = 0;
  int dateCount = 0;
  String createdDate = "";
  String updatedDate = "";
  Member member;
  Category category;
  List<ProductFile> productFiles;
  String status;

  Product.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        description = json["description"],
        price = json["price"],
        dateCount = json["dateCount"],
        createdDate = json["createdDate"],
        updatedDate = json["updatedDate"],
        status = json['status'],
        member =
            json["member"] != null ? Member.fromJson(json["member"]) : Member(),
        category = json["category"] != null
            ? Category.fromJson(json["category"])
            : Category(),
        productFiles = json['productFiles'] != null
            ? (json['productFiles'] as List)
                .map((e) => ProductFile.fromJson(e))
                .toList()
            : List<ProductFile>.empty();

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'category': category.name,
        'productFiles': productFiles.isEmpty ? null : productFiles[0].path,
      };
}

class Category {
  int id;
  String name;

  Category({this.id, this.name});

  Category.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"];
}

class ProductFile {
  int id;
  String path;

  ProductFile.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        path = json["path"];
}
