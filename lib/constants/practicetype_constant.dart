enum PracticeType {
  undefined('undefined', ''),
  add('add', '덧셈'),

  //정수와 유리수의 계산 종류
  //1_1
  sameAdd('sameAdd', '부호가 같은 두 수의 덧셈'),
  diffAdd('diffAdd', '부호가 다른 두 수의 덧셈'),
  subtraction('subtraction', '뺄셈'),
  addSub('addSub', '괄호와 양의 부호가 생략된 덧셈과 뺄셈'),

  //1_2
  multiplicationTwo('multiplicationTwo', '두 수의 곱셈'),
  multiplicationMany('multiplicationMany', '세 개 이상의 수의 곱셈'),
  division('division', '나눗셈'),
  mix('mix', '혼합 계산'),

  //문자의 사용과 식의 계산 종류
  //2_1
  omissionOfMultiplicationSign('omissionOfMultiplicationSign', '곱셈 기호의 생략'),
  omissionOfDivisionSign('omissionOfDivisionSign', '나눗셈 기호의 생략'),
  valueOfExpression('valueOfExpression', '식의 값'),

  //2_2
  termsOfPolynomial1('termsOfPolynomial1', '항 구분하기'),
  termsOfPolynomial2('termsOfPolynomial2', '항 상수항 계수'),
  termsOfPolynomial3('termsOfPolynomial3', '단항식과 다항식'),
  termsOfPolynomial4('termsOfPolynomial4', '차수'),
  termsOfPolynomial5('termsOfPolynomial5', '일차식 찾기'),

  //2_3
  singleExpressionMulNum('singleExpressionMulNum', '단항식과 수의 곱셈'),
  singleExpressionDivNum('singleExpressionDivNum', '단항식과 수의 나눗셈'),
  polyExpressionMulNum('polyExpressionMulNum', '일차식과 수의 곱셈'),
  polyExpressionDivNum('polyExpressionDivNum', '일차식과 수의 나눗셈'),

  //2_4
  similarTerms1('similarTerms1', '동류항 찾기'),
  similarTerms2('similarTerms2', '동류항의 계산'),
  polyExpressionAdd('polyExpressionAdd', '일차식의 덧셈'),
  polyExpressionSub('polyExpressionSub', '일차식의 뺄셈'),
  // polyExpressionAddSub('polyExpressionAddSub', '일차식의 덧셈과 뺄셈'),

  //일차방정식의 계산 종류
  //3_1
  meaningOfEqualSignExpression('meaningOfEqualSignExpression', '등식의 뜻'),
  findingEquation('findingEquation', '방정식과 항등식'),
  solutionOfEquation('solutionOfEquation', '방정식의 해'),

  //3_2
  propertiesOfEquations('propertiesOfEquations', '등식의 성질'),
  movingTerms('movingTerms', '이항'),
  findingFirstEquation('findingFirstEquation', '일차방정식 찾기'),
  solvingOfEquations('solvingOfEquations', '일차방정식의 풀이');

  final String code;
  final String displayName;

  const PracticeType(this.code, this.displayName);

  factory PracticeType.getByCode(String code) {
    return PracticeType.values.firstWhere((value) => value.code == code,
        orElse: () => PracticeType.undefined);
  }
}

class PracticeTypeProvider {
  //정수와 유리수의 덧셈 뺄셈
  final c1_1_addSub = [
    PracticeType.sameAdd,
    PracticeType.diffAdd,
    PracticeType.subtraction,
    PracticeType.addSub,
  ];

  //정수와 유리수의 곱셈 나눗셈
  final c1_2_mulDivMix = [
    PracticeType.multiplicationTwo,
    PracticeType.multiplicationMany,
    PracticeType.division,
    PracticeType.mix,
  ];

  //곱셈과 나눗셈 기호의 생략, 식의 값
  final c2_1_omissionOfSignAndValueOfExpression = [
    PracticeType.omissionOfMultiplicationSign,
    PracticeType.omissionOfDivisionSign,
    PracticeType.valueOfExpression,
  ];

  //항, 상수항, 계수, 차수
  final c2_2_termsOfPolynomial = [
    PracticeType.termsOfPolynomial1,
    PracticeType.termsOfPolynomial2,
    PracticeType.termsOfPolynomial3,
    PracticeType.termsOfPolynomial4,
    PracticeType.termsOfPolynomial5,
  ];


  //일차식과 수의 곱셈 나눗셈
  final c2_3_ExpressionMulDivNum = [
    PracticeType.singleExpressionMulNum,
    PracticeType.singleExpressionDivNum,
    PracticeType.polyExpressionMulNum,
    PracticeType.polyExpressionDivNum,
  ];

  //동류항의 계산, 일차식의 덧셈 뺄셈
  final c2_4_similarTermsAndPolyExpressionAddSub = [
    PracticeType.similarTerms1,
    PracticeType.similarTerms2,
    PracticeType.polyExpressionAdd,
    PracticeType.polyExpressionSub,
  ];

  //등식, 방정식, 항등식, 방정식의 해
  final c3_1_EqualSignExpressionAndSolution = [
    PracticeType.meaningOfEqualSignExpression,
    PracticeType.findingEquation,
    PracticeType.solutionOfEquation,
  ];

  //등식의 성질, 이항, 일차방정식의 풀이
  final c3_2_solvingOfEquations = [
    PracticeType.propertiesOfEquations,
    PracticeType.movingTerms,
    PracticeType.findingFirstEquation,
    PracticeType.solvingOfEquations,
  ];



  allOfTypeDisplayName() {
    PracticeType.values
        .map((practiceType) => practiceType.displayName)
        .toList();
  }
}
