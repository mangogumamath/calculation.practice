class UserDataModel {
  String uid;
  String email;
  String nickName;
  int userHighScoreOfAll;
  int sameAddHighScore;
  int diffAddHighScore;
  int subtractionHighScore;
  int addSubHighScore;
  int multiplicationTwoHighScore;
  int multiplicationManyHighScore;
  int divisionHighScore;
  int mixHighScore;

  UserDataModel({
    required this.uid,
    required this.email,
    required this.nickName,
    required this.userHighScoreOfAll,
    required this.sameAddHighScore,
    required this.diffAddHighScore,
    required this.subtractionHighScore,
    required this.addSubHighScore,
    required this.multiplicationTwoHighScore,
    required this.multiplicationManyHighScore,
    required this.divisionHighScore,
    required this.mixHighScore,
  });

  factory UserDataModel.fromMap(Map data) {
    return UserDataModel(
      uid: data['uid'],
      email: data['email'] ?? '',
      nickName: data['nickName'] ?? '',
      userHighScoreOfAll: data['userHighScoreOfAll'] ?? 0,
      sameAddHighScore: data['sameAddHighScore'] ?? 0,
      diffAddHighScore: data['diffAddHighScore'] ?? 0,
      subtractionHighScore: data['subtractionHighScore'] ?? 0,
      addSubHighScore: data['addSubHighScore'] ?? 0,
      multiplicationTwoHighScore: data['multiplicationTwoHighScore'] ?? 0,
      multiplicationManyHighScore: data['multiplicationManyHighScore'] ?? 0,
      divisionHighScore: data['divisionHighScore'] ?? 0,
      mixHighScore: data['mixHighScore'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "email": email,
        "nickName": nickName,
        "userHighScoreOfAll": userHighScoreOfAll,
        "sameAddHighScore": sameAddHighScore,
        "diffAddHighScore": diffAddHighScore,
        "subtractionHighScore": subtractionHighScore,
        "addSubHighScore": addSubHighScore,
        "multiplicationTwoHighScore": multiplicationTwoHighScore,
        "multiplicationManyHighScore": multiplicationManyHighScore,
        "divisionHighScore": divisionHighScore,
        "mixHighScore": mixHighScore,
      };
  getVariableFromString(String key) {
    //String을 인자로 인스턴스의 변수 읽기
    switch (key) {
      case "uid":
        return uid;
      case "email":
        return email;
      case "nickName":
        return nickName;
      case "userHighScoreOfAll":
        return userHighScoreOfAll;
      case "sameAddHighScore":
        return sameAddHighScore;
      case "diffAddHighScore":
        return diffAddHighScore;
      case "subtractionHighScore":
        return subtractionHighScore;
      case "addSubHighScore":
        return addSubHighScore;
      case "multiplicationTwoHighScore":
        return multiplicationTwoHighScore;
      case "multiplicationManyHighScore":
        return multiplicationManyHighScore;
      case "divisionHighScore":
        return divisionHighScore;
      case "mixHighScore":
        return mixHighScore;
    }
  }

  setVariableFromString(String key, dynamic value) {
    switch (key) {
      case "uid":
        uid = value;
        break;
      case "email":
        email = value;
        break;
      case "nickName":
        nickName = value;
        break;
      case "userHighScoreOfAll":
        userHighScoreOfAll = value;
        break;
      case "sameAddHighScore":
        sameAddHighScore = value;
        break;
      case "diffAddHighScore":
        diffAddHighScore = value;
        break;
      case "subtractionHighScore":
        subtractionHighScore = value;
        break;
      case "addSubHighScore":
        addSubHighScore = value;
        break;
      case "multiplicationTwoHighScore":
        multiplicationTwoHighScore = value;
        break;
      case "multiplicationManyHighScore":
        multiplicationManyHighScore = value;
        break;
      case "divisionHighScore":
        divisionHighScore = value;
        break;
      case "mixHighScore":
        mixHighScore = value;
        break;
    }
  }
}
