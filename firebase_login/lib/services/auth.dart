import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/models/user.dart';
import 'package:firebase_login/services/database.dart';

class AuthService{
  //instance object created that helps to communicate with backend firebase
  //This is also a property to be used below
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user object based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid): null;
  }
  // auth changes user stream(in wrapper to access both home and auth)
  Stream <User> get user{
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);


  }
  //sign in anon
  Future signInAnon() async{
    try{
      //authenticating to sign in
      AuthResult result = await _auth.signInAnonymously();
      //fetching the user
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }


  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      //create a new document for the user with the uid
      await DatabaseService(uid: user.uid).updateUserData('0', 'New member', 100);
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
}

  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}