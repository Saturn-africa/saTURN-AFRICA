import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/request_full_screen.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class RequestTabs extends StatelessWidget {
  const RequestTabs({super.key});

  @override
  Widget build(BuildContext context) {
    OwnerDetails owner = OwnerDetails(
        status: "Verified",
        personalInfo: PersonalInfo(username: "John Igwe", gender: "Male"),
        houseInfo:
            HouseInfo(location1: "12, Abudu street, abule-oja, yaba, Lagos"),
        houseAmenities: ["Fan", "A.C", "TV", "Elevator", "Wi-Fi", "Security"],
        additionalInfo: "The room is good",
        roommatePref: RoommatePref(),
        lifestyleInfo: LifestyleInfo());
    List requestlist = [
      {
        "profileImage": "assets/images/female.png",
        "username": owner.personalInfo!.username,
        "cardText": "roomate request to join",
        "requestDetailScreen": RequestDetailCard(owner: owner),
      },
      {
        "profileImage": "assets/images/female.png",
        "username": owner.personalInfo!.username,
        "cardText": "roommate request to join",
        "requestDetailScreen": RequestDetailCard(owner: owner),
      },
      {
        "requestDetailScreen": RequestDetailCard(owner: owner),
        "profileImage": "assets/images/female.png",
        "username": owner.personalInfo!.username,
        "cardText": "Sent a roommate request."
      },
    ];
    return Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: requestlist.length,
          itemBuilder: (context, index) {
            return Request(
              profileImage: requestlist[index]["profileImage"],
              requestDetailScreen: requestlist[index]["requestDetailScreen"],
              username: requestlist[index]["username"],
              cardText: requestlist[index]["cardText"],
            );
          }),
    );
  }
}

class Request extends StatelessWidget {
  final String profileImage;
  final String username;
  final String cardText;
  final dynamic requestDetailScreen;
  const Request(
      {super.key,
      required this.profileImage,
      required this.username,
      required this.cardText,
      this.requestDetailScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
          child: Container(
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.1),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: const Color.fromRGBO(153, 0, 204, 1).withOpacity(0.3)),
        ),
        child: InkWell(
          onTap: () {
            (Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                builder: ((context) => requestDetailScreen))));
          },
          child: ListTile(
            leading: SizedBox(
              width: 80,
              height: 100,
              child: Image.asset(
                profileImage.toString(),
                fit: BoxFit.cover,
              ),
            ),
            title: Text(username.toString(), style: requestCardHeaderStyle),
            subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(cardText.toString(), style: requestCardTextStyle)),
          ),
        ),
      )),
    );
  }
}
