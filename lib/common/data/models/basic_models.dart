class Validation {
  bool validated;
  String error;

  Validation({this.validated = true, this.error = ''});
}

class RespModel {
  String feedback;
  dynamic response;

  RespModel({this.feedback = '', this.response});
}
