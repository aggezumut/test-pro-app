

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


   signIn(String email, String password)async{

    var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  sigOut()async{
     return  await _auth.signOut();

  }

  createPerson(String email,String password)async{
     var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
     return user.user;

  }

}