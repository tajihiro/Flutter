import 'package:cloud_firestore/cloud_firestore.dart';

class MemberDetail{
  String address;
  DateTime birthdate;
  bool isMale;

  DocumentReference reference;

  MemberDetail(this.address, {this.birthdate, this.isMale, this.reference})

  factory MemberDetail.fromJson(Map<dynamic, dynamic> json) => _MemberDetailFromJson(json);

  Map<String, dynamic> toJson() => _MemberDetailToJson(this);

  @override
  String toString() => "MemberDetail<$address>";

  MemberDetail _MemberDetailFromJson(Map<dynamic, dynamic> json){
    return MemberDetail(
      json['address'] as String,
      birthdate: json['birthdate'] == null ? null : (json['birthdate'] as Timestamp).toDate(),
      isMale: json['isMail'] as bool
    );
  }

  Map<String, dynamic> _MemberDetailToJson(MemberDetail instance) =>
      <String, dynamic>{
        'address': instance.address,
        'birthdate': instance.birthdate,
        'isMale': instance.isMale
      };
}