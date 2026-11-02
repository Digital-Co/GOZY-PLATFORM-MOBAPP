import 'package:get/get.dart';
import 'package:gozy/screens/binding/property_steps_binding.dart';
import 'package:gozy/screens/views/owner/let_start/let_start_page.dart';

/// Opens "Revenues & payouts" from the dashboard.
void openOwnerEarnings() {
  // Wired with the earnings screen (see the next phase).
}

/// "Add a vehicle" from the empty state: same entry as the listings tab
/// ("Let's start" flow). The reporting is reloaded when the flow is left.
void addVehicleFromReporting({required void Function() onReturn}) {
  Get.to(
    () => LetStartScreen(),
    binding: PropertyStepsBinding(),
    arguments: {
      'refresh': (dynamic value) {},
      'whyhostfunction': null,
      'updateManagelist': (dynamic id) {},
      'removedeletedlisting': () {},
    },
  )?.then((_) => onReturn());
}
