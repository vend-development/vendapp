import 'package:application3/presentation/home_page_screen/models/home_page_item_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/services/APIService.dart';
import '/core/app_export.dart';

class HomePageController extends GetxController {
  var isLoading = true.obs;
  var venueList = <VenueModel>[].obs;
  var searchedVenues = <VenueModel>[].obs;
  var searchTerm = "".obs;


  @override
  void onInit() {
    super.onInit();
    fetchVenues();
  }

  @override
  void onReady() {
    super.onReady();
    // fetchVenues();
  }

  @override
  void onClose() {
    super.onClose();
  }


  searchVenues(){
    final foundVenues = venueList.where((element) =>
        element.name.toUpperCase().contains(searchTerm.toUpperCase()));

    searchedVenues.value =  foundVenues.toList();

  }


  void fetchVenues() async {
    try {
      isLoading(true);
      var venues = await getData("api/venues/allvenues/v1/");
      if (venues != null) {
        venueList.value = venueFromJson(venues);
      }
    } finally {
      isLoading(false);
    }
  }
}
