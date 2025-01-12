import 'dart:convert';

class GetCountRequest {
  String? doctype;

  GetCountRequest({this.doctype});

  factory GetCountRequest.fromMap(Map<String, dynamic> data) {
    return GetCountRequest(
      doctype: data['doctype'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetCountRequest].
  factory GetCountRequest.fromJson(String data) {
    return GetCountRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GetCountRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
