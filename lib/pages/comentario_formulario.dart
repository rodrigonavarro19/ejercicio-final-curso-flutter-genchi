import 'package:ejercicio_final_genchi/models/comentario.dart';
import 'package:ejercicio_final_genchi/services/comentario_service.dart';
import 'package:flutter/material.dart';

class ComentarioFormulario extends StatefulWidget {
  const ComentarioFormulario({super.key});

  @override
  State<ComentarioFormulario> createState() => _ComentarioFormularioState();
}

class _ComentarioFormularioState extends State<ComentarioFormulario> {
  
  Comentario comentario =
  Comentario(idComment: 1,userName:"admin", idRoom: 1, commentary: '' );
  var userNameCtrl  = TextEditingController();
  var idRoomCtrl = TextEditingController();
  var commentaryCtrl = TextEditingController();

  
  @override
  void initState() {
    super.initState();

     
     userNameCtrl.text  = comentario.userName.toString();
     idRoomCtrl.text  = comentario.idRoom.toString();
     commentaryCtrl.text  = comentario.commentary.toString();


    userNameCtrl.addListener((){ 
      comentario.userName = userNameCtrl.text; 
    });
    idRoomCtrl.addListener((){ 
      comentario.idRoom = int.parse(idRoomCtrl.text); 
    });
    commentaryCtrl.addListener((){ 
      comentario.commentary = commentaryCtrl.text; 
    });


  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
       body: Padding(
        padding:  const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
             const Text("username"),
            TextField(
              controller: userNameCtrl,
            ),
             const Text("Comentario"),
            TextField(
              controller: commentaryCtrl,
            ),
             const Text("id room"),
            TextField(
              controller: idRoomCtrl,
            ),
            Container(height: 20,),
            ElevatedButton(
                onPressed: () async {
                  // ignore: unused_local_variable
                  var resultado = await ComentarioService.insertarAsync(comentario);
                  //print(resultado);
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                },
                child:  const Text("Agregar"))
          ],
        ),
           ),
     );
  }
  
}