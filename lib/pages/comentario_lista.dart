import 'package:ejercicio_final_genchi/pages/comentario_formulario.dart';
import 'package:ejercicio_final_genchi/widgets/listview_comentarios.dart';
import 'package:flutter/material.dart';

class ComentarioLista extends StatefulWidget {
  const ComentarioLista({super.key});

  @override
  State<ComentarioLista> createState() => _ComentarioListaState();
}

class _ComentarioListaState extends State<ComentarioLista> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const  ListviewComentarios(),
      
      floatingActionButton: FloatingActionButton(onPressed: () async{
       await Navigator.push(context, MaterialPageRoute(
          builder:( context ) =>  const ComentarioFormulario() 
        ));
      }),
      );
  }
}