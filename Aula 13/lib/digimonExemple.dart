import 'dart:io';
import 'dart:convert';

Future<void> fetchDigimonData() async {
  try {
    var url = Uri.parse('https://digimon-api.vercel.app/api/digimon');
    var response = await HttpClient().getUrl(url).then((request) => request.close());
    var responseBody = await response.transform(utf8.decoder).join();
    var data = jsonDecode(responseBody);
    for (var digimon in data) {
      print('Nome: ${digimon['name']}');
      print('Imagem: ${digimon['img']}');
      print('Level: ${digimon['level']}');
    }
  } catch (err) {
    print(err);
  }
}

void main() {
  fetchDigimonData();
}