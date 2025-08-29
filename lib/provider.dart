import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_assignment_1/Model/models.dart';
import 'package:riverpod_assignment_1/apiservice.dart';

final apiservice = Provider<Apiservice>((ref) => Apiservice());

final commentsProvider = FutureProvider<List<Comment>>((ref) {
  return ref.watch(apiservice).fatchComment();
});
