import 'package:firebase_database/firebase_database.dart';
import 'package:travely/config.dart';

class UserData {
  String? id;
  String? firstname;
  String? lastname;
  String? profilePicture;
  String? phoneNumber;
  String? email;

  UserData({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.profilePicture,
    required this.phoneNumber,
    required this.email,
  });

  UserData.fromSnapshot(
    DataSnapshot dataSnapshot,
  ) {
    Map<dynamic, dynamic> map = dataSnapshot.value! as Map<dynamic, dynamic>;
    id = dataSnapshot.key;
    email = map["email"];
    firstname = map["firstname"];
    phoneNumber = map["Phone No"];
    lastname = map["lastname"];
  }
}
