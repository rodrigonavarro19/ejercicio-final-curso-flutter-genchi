class Comentario {
  int? idComment;
  String? userName;
  String? commentary;
  int? idRoom;

  Comentario({this.idComment, this.userName, this.commentary, this.idRoom});

  Comentario.fromJson(Map<String, dynamic> json) {
    idComment = json['IdComment'];
    userName = json['UserName'];
    commentary = json['Commentary'];
    idRoom = json['IdRoom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdComment'] = idComment;
    data['UserName'] = userName;
    data['Commentary'] = commentary;
    data['IdRoom'] = idRoom;
    return data;
  }
}