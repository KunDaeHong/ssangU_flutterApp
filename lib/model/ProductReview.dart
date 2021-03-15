class productReview{
  int id;
  String nickname;
  String createAt;
  String description;
  int grade;
  String productFiles;

  productReview.fromJson(Map<String, dynamic> json)
      : id = json["idx"],
        nickname = json['name'],
        createAt = json['created_at'],
        description = json['description'],
        grade = json['grade'],
        productFiles = json['image'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'nickname' : nickname,
    "createAt" : createAt,
    "description" : description,
    'grade' : grade,
    'image': productFiles,
    // 'productFiles': productFiles
  };
}

