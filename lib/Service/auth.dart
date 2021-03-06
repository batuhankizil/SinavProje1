import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //final CollectionReference perconCollection = FirebaseFirestore.instance.collection('person');

  late final String uid;
  //AuthService({required this.uid});


  //giriş yap fonksiyonu
  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  //çıkış yap fonksiyonu
  /*signOut() async {
    return await _auth.signOut();
  }*/

  //kayıt ol fonksiyonu
  Future<User?> createPerson(String name, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await FirebaseAuth.instance.currentUser?.updateProfile(displayName: name);


    await _firestore
        .collection("person")
        .doc(user.user?.uid)
        .set({'userName': name, 'email': email});
    return user.user;
  }
}