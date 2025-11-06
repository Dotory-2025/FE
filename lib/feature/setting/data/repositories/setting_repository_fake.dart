import 'dart:convert';

import 'package:dotori/core/utils/custom_logger.dart';
import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:dotori/feature/setting/data/models/update_user_request.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

import 'package:flutter/services.dart' show rootBundle;

class SettingRepositoryFake implements SettingRepository {
  @override
  Future<List<MyPostsResponse>> getMyPosts() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/my_posts.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => MyPostsResponse.fromJson(e)).toList();
  }

  @override
  Future<List<BlockUsersResponse>> getBlockUsers() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/block_users.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => BlockUsersResponse.fromJson(e)).toList();
  }

  @override
  Future<MyInfoResponse> getMyInfo() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/my_info.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    return MyInfoResponse.fromJson(jsonMap);
  }

  @override
  Future<void> updateUser(UpdateUserRequest user) async {
    await Future.delayed(const Duration(seconds: 1));

    logger.d('✅ [FAKE UPDATE SUCCESS]\n유저 정보:${user.toString()}');
  }

  @override
  Future<List<MyFeedbacksResponse>> getMyFeedbacks() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/my_feedbacks.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => MyFeedbacksResponse.fromJson(e)).toList();
  }

  @override
  Future<MyFeedbacksDetailResponse> getMyFeedbacksDetail(int id) async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/my_feedbacks_detail.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    return MyFeedbacksDetailResponse.fromJson(jsonMap);
  }

  @override
  Future<List<FeedbackHistoryResponse>> getFeedbackHistory() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/feedback_history.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => FeedbackHistoryResponse.fromJson(e)).toList();
  }

  @override
  Future<List<MatchingHistoryResponse>> getMatchingHistory() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/mocks/matching_history.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => MatchingHistoryResponse.fromJson(e)).toList();
  }
}