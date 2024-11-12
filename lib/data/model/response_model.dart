import 'dart:convert';

class ResponseModel {
  int? statusCode;
  String? message;
  dynamic errorMessage;
  dynamic data;

  ResponseModel({
    this.statusCode,
    this.message,
    this.errorMessage,
    this.data,
  });

  factory ResponseModel.fromJson(String str) => ResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponseModel.fromMap(Map<String, dynamic> json) => ResponseModel(
        statusCode: json["statusCode"],
        message: json["message"],
        errorMessage: json["errorMessage"],
        data: json["data"],
      );

  Map<String, dynamic> toMap() => {
        "statusCode": statusCode,
        "message": message,
        "errorMessage": errorMessage,
        "data": data,
      };
}
