import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseapp/models/MemberDetail.dart';

class Member{
  String first_name;
  String last_name;
  List<MemberDetail> memberDetails = List<MemberDetail>();

  DocumentReference reference;

  Member(this.first_name, this.last_name, this.memberDetails, this.reference);

  factory Member.fromSnapshot(DocumentSnapshot snapshot){
    Member member = Member.fromJson(snapshot.data);
    member.reference = snapshot.reference;
    return member;
  }

  factory Member.fromJson(Map<String, dynamic> json) => _MemberFromJson(json);
  Map<String, dynamic> toJson() => _MemberToJson(this);

  @override
  String toString() => "Member<$last_name>";

}