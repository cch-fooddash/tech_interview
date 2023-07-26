// usecase : final enum = ErrorType.findByName(stringValue);
enum ErrorType {
  undefined("UNDEFINED"),
  //매장 오픈 여부
  storeOpenStatus("store-open-status-0003"),
  //주문 타입별 가능 여부
  storeOrderType("store-order-type-0003"),
  //주문 타입별 최소 주문 금액
  storeOrderTypeLessThanMinAmount("store-order-type-less-than-min-amount-0003"),
  //배달 주문시 최대 배달거리 체크
  storeDistanceValidate("store-distance-validate-0003"),
  //예약 가능여부
  storeReservationValidate("store-reservation-validate-0003"),
  //메뉴품절 여부
  menuStock("menu-stock-0003"),
  //공동주문 - 선착순 충족
  jointOrderOverGoal("joint-order-over-goal-0003"),
  //공동주문 - 주문 최대수량 체크
  jointOrderOverMax("joint-order-over-max-0003"),
  //본인인증 여부
  userIdentityVerification("user_identity_verification-0007"),
  //주류포함
  notAdult("not-adult-0003"),
  // 토큰 만료
  accessTokenExpired("AUTH-8888"),
  // 리프레시 토큰 비정상
  refreshTokenInvalid("AUTH-0004"),
  // 휴대폰 인증번호 중복 발송
  duplicatedPhoneAuthRequest("PhoneAuthManager-0006"),
  ;

  const ErrorType(this.description);

  final String description;

  static ErrorType findByName({String? name}) {
    const defaultValue = ErrorType.undefined;
    if (name == null) {
      return defaultValue;
    }

    return ErrorType.values.firstWhere(
            (element) =>
            element.description
                .replaceAll("_", "")
                .replaceAll("-", "")
                .toUpperCase() ==
            name.replaceAll("_", "").replaceAll("-", "").toUpperCase(),
        orElse: () => defaultValue);
  }
}
