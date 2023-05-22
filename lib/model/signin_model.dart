
import 'dart:convert';

SignInModel signInModelFromJson(String str) => SignInModel.fromJson(json.decode(str));

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
    bool? success;
    String? message;
    Data? data;

    SignInModel({
        this.success,
        this.message,
        this.data,
    });

    factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? null : data?.toJson(),
    };
}

class Data {
    String? id;
    String? firstName;
    String? lastName;
    String? email;
    String? photo;
    int? mobile;
    String? password;
    int? v;
    String? token;

    Data({
        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.photo,
        this.mobile,
        this.password,
        this.v,
        this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        photo: json["photo"],
        mobile: json["mobile"],
        password: json["password"],
        v: json["__v"],
        token: json["token"] == null ? "" :json["token"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "photo": photo,
        "mobile": mobile,
        "password": password,
        "__v": v,
        "token": token == null ? "" :token,
    };
}
