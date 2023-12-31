import 'package:get/get.dart';

import '../global_widgets/view_state.enum.dart';
import '../services/navigation.service.dart';

class BaseController extends GetxController {
  @override
  // ignore: avoid_void_async
  void onInit() async {
    navigationService = Get.find<NavigationService>();
    // currentUser = await storageService.fetchCustomer();
    super.onInit();
  }

  late NavigationService navigationService;

  // final _currentUser = UserDto.empty().obs;
  // UserDto get currentUser => _currentUser.value;
  // set currentUser(UserDto? user) {
  //   _currentUser
  //     ..value = user ?? UserDto.empty()
  //     ..refresh();
  // }

  final _viewState = ViewState.idle.obs;
  ViewState get viewState => _viewState.value;
  set viewState(ViewState state) {
    _viewState.value = state;
  }
}
