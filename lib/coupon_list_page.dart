import 'package:flutter/material.dart';
import 'package:fooddash_interview/infrastructure/authenticated_http_client.dart';
import 'package:fooddash_interview/infrastructure/core_api.dart';

class CouponListPage extends StatelessWidget {
  /// API 요청 시 사용하시면 됩니다.
  final coreApi = CoreApi(client: AuthenticatedHttpClient());

  CouponListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(),
    );
  }
}
