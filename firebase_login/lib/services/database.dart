import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;
  DatabaseService ({ this.uid });
  // Collection Reference
  final CollectionReference kriCollection = Firestore.instance.collection("coffee");

  Future updateUserData(String sugars, String name, int strength) async{
    return await kriCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength':strength,

    });
  }
  //Coffee list from the snapshot

  //streams getting coffee

  Stream<QuerySnapshot> get coffee {
    return kriCollection.snapshots();
  }
}