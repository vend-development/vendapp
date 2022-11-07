import 'package:application3/presentation/trending_page/models/trending_item_model.dart';

import '../../../core/services/APIService.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/trending_page/models/trending_model.dart';

class TrendingController extends GetxController {
  // TrendingController(this.trendingModelObj);
  var isLoading = true.obs;
  var postList = <PostsModel>[].obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var posts = await getData("api/social/allposts/v1/");



      if (posts != null) {
        postList.value = postsModelFromJson(posts);
      }
    } finally {
      isLoading(false);
    }
  }
}



