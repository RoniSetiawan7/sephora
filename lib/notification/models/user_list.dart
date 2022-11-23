class UserList {
  final String? imagePath;
  final String name;

  UserList(this.imagePath, this.name);

  String get userInitial {
    final split = name.split(' ').map((e) => e.substring(0, 1)).toList().join();
    return split;
  }
}
