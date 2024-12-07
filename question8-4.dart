import 'dart:io';

void main() async {
  // creating file object
  File file = File('sample.csv');
  // read file
  // read file asynchoronously
  file.readAsString().then((String contents) {
    // print file
    print(contents);
  });

  String contents = await file.readAsString();
}
