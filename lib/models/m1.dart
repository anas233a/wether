class m1 {
  String? address;
  double? temp;
  double? dew;
  // m1({required address, required temp, required dew});
  m1.get(data) {
    // print(data);
    address = data['address'];
    temp = data['days'][0]['temp'];
    dew = data['days'][0]['dew'];
  }
}
