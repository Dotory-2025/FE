import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:dotori/feature/setting/data/models/update_user_request.dart';

abstract class SettingRepository {
  Future<List<MyPostsResponse>> getMyPosts();
  Future<List<BlockUsersResponse>> getBlockUsers();
  Future<MyInfoResponse> getMyInfo();
  Future<void> updateUser(UpdateUserRequest user);
  Future<List<MyFeedbacksResponse>> getMyFeedbacks();
  Future<MyFeedbacksDetailResponse> getMyFeedbacksDetail(int id);
  Future<List<MatchingHistoryResponse>> getMatchingHistory();
  Future<List<FeedbackHistoryResponse>> getFeedbackHistory();
}