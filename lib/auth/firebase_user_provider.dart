import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UniFestFirebaseUser {
  UniFestFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UniFestFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UniFestFirebaseUser> uniFestFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UniFestFirebaseUser>(
      (user) {
        currentUser = UniFestFirebaseUser(user);
        return currentUser!;
      },
    );
