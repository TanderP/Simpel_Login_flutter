import 'pages.dart';
import 'package:flutter/material.dart';

class userData {
  // user pass map
  static Map<String, String> accounts = {
    'atom': 'neutron',
    'uncle': 'rich',
    'user': 'CE Lab',
    'anon': 'flakes'
  };

// status map
  static Map<String, String> status = {
    'atom': 'admin',
    'uncle': 'admin',
    'user': 'user',
    'anon': 'user',
  };
  // string
  static String username = "";
  static String password = '';
  static String logStatus = '';
}

class functRoute {
  // pass user func map
  static void LogRoute(BuildContext context) {
    if (userData.accounts.containsKey(userData.username) &&
        userData.accounts[userData.username] == userData.password) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page1()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page2()),
      );
    }
  }

  // status map
  static void logStatus(BuildContext context) {
    if (userData.accounts.containsKey(userData.username) &&
        userData.accounts[userData.username] == userData.password) {
      userData.logStatus = userData.status[userData.username]!;
    } else {
      userData.logStatus = 'null';
    }
  }
}
