class GlobalGeneralState {

  static bool _isModalVisible = false;

  GlobalGeneralState._privateConstructor();

  static final GlobalGeneralState _instance = GlobalGeneralState._privateConstructor();

  factory GlobalGeneralState() {
    return _instance;
  }

  static get isModalVisible => _isModalVisible;
  static void toggleModal() => _isModalVisible = !isModalVisible;

}