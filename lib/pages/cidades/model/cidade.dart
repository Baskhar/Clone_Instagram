import 'dart:convert';

class Cidade {
  final String cidade;
  final String estado;

  Cidade({required this.cidade, required this.estado});

  Map<String, dynamic> toMap() {
    return {'cidade': cidade, 'estado': estado};
  }

  factory Cidade.fromMap(Map<String, dynamic> json) {
    return Cidade(
      cidade: json["cidade"] ?? '',
      estado: json["estado"] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));
}
