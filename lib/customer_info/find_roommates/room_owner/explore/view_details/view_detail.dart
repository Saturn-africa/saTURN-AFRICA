import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/explore/view_details/view_detail_card.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/models/room_owner_model/owner_cards.dart';
import 'package:saturn/providers/room_owner_provider/owner_card.dart';

class ViewDetailPage extends StatelessWidget {
  const ViewDetailPage({super.key, required this.data});
  final OwnerData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: deepBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/icons/love.svg"),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Consumer<OwnerCardProvider>(
        builder: (_, card, __) => ViewDetailCard(
          owner: data,
        ),
      ),
    );
  }
}
