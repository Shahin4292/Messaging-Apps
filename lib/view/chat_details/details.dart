import 'package:demo/view/chat_details/widget/modify_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../res/components/custom_text.dart';
import '../../utils/color_path.dart';
import '../settings/widget/customCard.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.only(left: 14, right: 14, top: 10),
        key: const ValueKey(2),
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ModifyCard(
                  icon: CupertinoIcons.arrow_2_circlepath,
                  text: 'Open',
                  onPress: () {},
                  color: ColorPath.paleGrey,
                  colors: ColorPath.exchangeGrey),
                ModifyCard(
                  icon: Icons.downloading_outlined,
                  text: 'Pending',
                  onPress: () {},
                  color: ColorPath.greenGrey,
                  colors: ColorPath.pendingGrey),
                ModifyCard(
                  icon: Icons.ac_unit_outlined,
                  text: 'Unit',
                  onPress: () {},
                  color: Colors.blue.shade100,
                  colors: Colors.blue)]),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              child: Text(
                                "L",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))),
                            SizedBox(width: 8),
                            CustomText(text: 'Liya Akter'),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                              color: Colors.black38)]))),
                    CustomDivider(),
                    InkWell(
                      onTap: () {},
                      child: CustomCard(
                        text: 'No Team Assigned',
                        icon: Icons.shield_outlined,
                        icons: Icons.arrow_forward_ios,
                        texst: '')),
                    CustomDivider(),
                    InkWell(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14)),
                      onTap: () {},
                      child: CustomCard(
                        text: 'No Priority Added',
                        icon: Icons.signal_cellular_alt,
                        icons: Icons.arrow_forward_ios,
                        texst: ''))]))),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Labels',
                  style: TextStyle(
                    fontFamily: "InterB",
                    color: Colors.grey)),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 6,
                      children: [
                        Icon(Icons.sell_outlined, size: 20, color: Colors.blueAccent),
                        Text(
                          'Add',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter",
                            color: Colors.blueAccent))])))]),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Participants',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "InterB",
                    color: Colors.grey)),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14)),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 11,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))),
                                SizedBox(width: 8),
                                CustomText(text: 'Liya Akter'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 13,
                                  color: Colors.black38)]))),
                        CustomDivider(),
                        InkWell(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14)),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.person_add_alt,size: 20,color: Colors.blueAccent),
                                SizedBox(width: 8),
                                CustomText(text: 'Add Participants'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 13,
                                  color: Colors.black38)])))])))]),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Attributes',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "InterB",
                    color: Colors.grey)),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14)),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              CustomText(text: 'Conversation ID'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black38)]))),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Divider(height: 1, color: Colors.grey[300])),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              CustomText(text: 'Browser'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black38)]))),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Divider(height: 1, color: Colors.grey[300])),
                      InkWell(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14)),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              CustomText(text: 'Facebook'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black38)])))]))])])));}}
