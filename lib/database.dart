import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';

class Database{
  FirebaseAnalytics analytics = FirebaseAnalytics();
  BuildContext context;
  CollectionReference collectionReference = Firestore.instance.collection("Users");

  Database(BuildContext context){
    FirebaseAnalyticsObserver(analytics: analytics);
    this.context = context;
  }

  Future<bool> createUser(String email,String password) async {
    try{
    final FirebaseUser firebaseUser = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email,password: password)).user;
    if(firebaseUser != null){
      FirebaseUser user = await FirebaseAuth.instance.currentUser();
      collectionReference.document(user.uid).setData({
        "email" : email,
        "type" : "passenger"
      });
      return true;
    }
    }catch(exception){
    return false;
    }
    return false;
  }

  Future<bool> login(String email,String password) async {
    try{
      final FirebaseUser firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email,password: password)).user;
      if(firebaseUser != null)
        return true;
    }catch(exception){
      return false;
    }
    return false;
  }
}