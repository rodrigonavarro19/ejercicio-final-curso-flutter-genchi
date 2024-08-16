

import 'package:ejercicio_final_genchi/models/comentario.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ComentarioService{


  static Stream<List<Comentario>> obtenerListadoStream() async* {
    List<Comentario> resultado=[];
    //https://seg.cl/api/Comment/listall (GET)
    var url = Uri.https('seg.cl', 'api/Comment/listall', {});

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;
      resultado=jsonResponse.map((prod)=>Comentario.fromJson(prod)).toList();
    } else {
      throw Exception("error");
    }
    yield resultado;
  }

  static Future<int> insertarAsync(Comentario comentario) async {
    int resultado=0;
    //https://seg.cl/api/Comment/insert (POST)
    var url = Uri.https('seg.cl', '/api/Comment/insert', {});
    var body=convert.jsonEncode(comentario.toJson());

    var response = await http.post(url,body: body);
    if (response.statusCode == 200) {
      resultado=int.parse(response.body);
    } else {
      throw Exception("error");
    }
    return resultado;
  }


}