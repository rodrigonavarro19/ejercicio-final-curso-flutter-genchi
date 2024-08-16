import 'package:ejercicio_final_genchi/models/comentario.dart';
import 'package:ejercicio_final_genchi/services/comentario_service.dart';
import 'package:ejercicio_final_genchi/widgets/fila_comentario.dart';
import 'package:flutter/material.dart';

class ListviewComentarios extends StatefulWidget {
  const ListviewComentarios({super.key});

  @override
  State<ListviewComentarios> createState() => _ListviewComentariosState();
}

class _ListviewComentariosState extends State<ListviewComentarios> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: ComentarioService.obtenerListadoStream(),
        builder: (BuildContext contexto, AsyncSnapshot<List<Comentario>> snap) {
          if(snap.hasData) {
            return ListView.builder(
                itemBuilder:
                (BuildContext contexto, int fila) {
              return FilaComentario(snap.data![fila]);
            },
              itemCount: snap.data!.length,

            );
          }
          return Container();
    });
  }
}