class AssetsImages {
  static const logoWhite = 'assets/images/logo_white.png';
}

class WidgetKeys {
  static const passwordTextField = 'passwordTextField';
}

class PreferencesKeys {
  static const wasWelcomeShowed = 'wasWelcomeShowed';
}

enum ReasonType {
  unknown,
  noPickUp,
  noDelivery,
  deliveryTimeOut,
  deliveryPartial,
  cancelOrder,
  callNoAnswered,
  novelty,
  refund,
}

enum OrderServiceStatus {
  unknown,
  connected,
  noConnected,
}

enum OrderType {
  general,
  mailRoom,
  unknown,
  type8k,
}
