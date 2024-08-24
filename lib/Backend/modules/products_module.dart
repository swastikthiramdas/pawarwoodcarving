import 'package:cloud_firestore/cloud_firestore.dart';

class PoojectInfoModel {
  final String? brief;
  final String? color;
  final String? fontimg;
  final String? fonttext;
  final String? id;
  final String? logoimg;
  final String? logotext;
  final String? template;
  final String? text1;
  final String? text2;

  PoojectInfoModel(
      {required this.brief,
      required this.text1,
      required this.text2,
      required this.fonttext,
      required this.color,
      required this.fontimg,
      required this.id,
      required this.logoimg,
      required this.logotext,
      required this.template});

  Map<String, dynamic> toJason() => {
        'brief': brief,
        'text1': text1,
        'text2': text2,
        'color': color,
        'fontimg': fontimg,
        'id': id,
        'logoimg': logoimg,
        'logotext': logotext,
        'template': template,
        'fonttext': fonttext,
      };

  static PoojectInfoModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, String>;

    return PoojectInfoModel(
      brief: snapshot['brief'],
      fonttext: snapshot['fonttext'],
      color: snapshot['color'],
      fontimg: snapshot['fontimg'],
      id: snapshot['id'],
      logoimg: snapshot['logoimg'],
      logotext: snapshot['logotext'],
      template: snapshot['template'],
      text1: snapshot['text1'],
      text2: snapshot['text2'],
    );
  }
}
