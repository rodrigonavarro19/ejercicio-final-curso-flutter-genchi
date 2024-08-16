import 'package:ejercicio_final_genchi/models/comentario.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class FilaComentario extends StatefulWidget {
   Comentario comentario;
   FilaComentario(this.comentario, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilaComentario createState() => _FilaComentario();
}

class _FilaComentario extends State<FilaComentario> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title:Text( widget.comentario.commentary??"sin comentario"),
        subtitle:Text( widget.comentario.userName??"sin username"),
      ),
    );
  }
}