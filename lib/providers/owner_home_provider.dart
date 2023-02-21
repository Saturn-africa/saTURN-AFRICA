import 'package:flutter/cupertino.dart';
import 'package:saturn/helper_widgets/colors.dart';

class OwnerHomeProvider extends ChangeNotifier {
  Color backgroundColor = purple;
  Color textColor = white;
  List<String> amenities = [];

  void onTileTap() {
    backgroundColor = white;
    textColor = purple;
    notifyListeners();
  }

  void addFilterAmenities(amenity) {
    amenities.add(amenity);
    notifyListeners();
  }

  void removeFilterAmenities(amenity) {
    amenities.remove(amenity);
    notifyListeners();
  }
}
