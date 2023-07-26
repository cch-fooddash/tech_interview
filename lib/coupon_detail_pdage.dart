import 'package:flutter/material.dart';

class CouponDetailPage extends StatelessWidget {
  const CouponDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 3,
            title: Text("쿠폰 상세 페이지 입니다."),
          ),
        ],
      ),
    );
  }
}
