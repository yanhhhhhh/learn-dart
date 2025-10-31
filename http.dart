import 'dart:convert';

import 'package:http/http.dart' as http;

class Package {
  final String name;
  final String latestVersion;
  final String? description;
  Package(this.name, this.latestVersion, {this.description});

  @override
  String toString() {
    return "Package{name: $name,latestVersion:$latestVersion, descripte: $description}";
  }
}

main() async {
  final httpPackage = Uri.https('dart.dev', '/f/packages/http.json');
  print(httpPackage);
  final httpPackageResponse = await http.get(httpPackage);
  print(httpPackageResponse.toString());
  if (httpPackageResponse.statusCode != 200) {
    print('Failed to get the http package ');
    print('error');
    return;
  }
  final json = jsonDecode(httpPackageResponse.body);
  final package = Package(json['name'], json['latestVersion'],
      description: json['description']);
  print(package);
}
