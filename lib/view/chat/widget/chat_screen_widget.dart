import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/repository/chat_message.dart';
import '../../../utils/color_path.dart';
import '../../../viewModel/chat_controller/chat_controller.dart';
import '../../slider_view/slider_view.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  final ChatController chatController = Get.put(ChatController());

  List<ChatMessage> get unreadMessages =>
      chatController.messages.where((msg) => msg.isUnread).toList();

  List<ChatMessage> get readMessages =>
      chatController.messages.where((msg) => !msg.isUnread).toList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: unreadMessages.length + readMessages.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        if (index < unreadMessages.length) {
          final msg = unreadMessages[index];
          return MessageTile(message: msg, onTap: () {
            setState(() {
              final i = chatController.messages.indexOf(msg);
              chatController.messages[i] = msg.copyWith(isUnread: false, unreadCount: 0);
            });
          });
        }

        final readIndex = index - unreadMessages.length;
        final msg = readMessages[readIndex];
        return MessageTile(message: msg, onTap: () {
          setState(() {
            final i = chatController.messages.indexOf(msg);
            chatController.messages[i] = msg.copyWith(isUnread: false, unreadCount: 0);
          });
        });
      },
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   scrollDirection: Axis.vertical,
    //   itemCount: chatController.messages.length,
    //   itemBuilder: (context, index) {
    //     final message = chatController.messages[index];
    //     return Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         GestureDetector(
    //           onTap: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder:
    //                     (context) => SlideView(
    //                       sender: message.sender,
    //                       imageUrl: message.imageUrl,
    //                       message: message.message,
    //                       isDeleted: message.isDeleted,
    //                       additionalIcon: message.additionalIcon,
    //                       additionalText: message.additionalText,
    //                       timestamp: message.timestamp,
    //                       icon: message.icon,
    //                     ),
    //               ),
    //             );
    //           },
    //           child: ListTile(
    //             leading: CircleAvatar(
    //               backgroundColor: ColorPath.greyShade,
    //               backgroundImage:
    //                   message.imageUrl != null
    //                       ? AssetImage(message.imageUrl!)
    //                       : null,
    //               child:
    //                   message.imageUrl == null
    //                       ? (message.icon != null
    //                           ? Icon(message.icon, color: ColorPath.grey)
    //                           : Text(
    //                             message.sender
    //                                 .split(" ")
    //                                 .map((e) => e[0])
    //                                 .take(2)
    //                                 .join()
    //                                 .toUpperCase(),
    //                             style: TextStyle(
    //                               color: ColorPath.grey,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ))
    //                       : null,
    //             ),
    //             title: Row(
    //               children: [
    //                 Expanded(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       if (message.additionalIcon != null ||
    //                           message.additionalText != null)
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(
    //                             vertical: 4.0,
    //                           ),
    //                           child: Row(
    //                             children: [
    //                               if (message.additionalIcon != null)
    //                                 Icon(
    //                                   message.additionalIcon,
    //                                   color: ColorPath.red,
    //                                   size: 14,
    //                                 ),
    //                               if (message.additionalText != null)
    //                                 Padding(
    //                                   padding: const EdgeInsets.only(
    //                                     left: 4.0,
    //                                   ),
    //                                   child: Text(
    //                                     message.additionalText!,
    //                                     overflow: TextOverflow.ellipsis,
    //                                     softWrap: false,
    //                                     style: TextStyle(
    //                                       fontSize: 11,
    //                                       fontFamily: 'Inter',
    //                                       overflow: TextOverflow.ellipsis,
    //                                       color: ColorPath.redShade,
    //                                       fontWeight: FontWeight.w400,
    //                                     ),
    //                                   ),
    //                                 ),
    //                             ],
    //                           ),
    //                         ),
    //                       Text(
    //                         message.sender,
    //                         style: TextStyle(
    //                           fontWeight: FontWeight.w500,fontFamily: 'Inter',
    //                           fontSize: 15,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 // if (message.isDeleted)
    //                 //   Icon(Icons.delete, color: Colors.red, size: 16),
    //               ],
    //             ),
    //             subtitle:
    //                 message.isDeleted
    //                     ? Row(
    //                       spacing: 3,
    //                       children: [
    //                         Icon(
    //                           Icons.lock_outline,
    //                           color: Colors.red,
    //                           size: 16,
    //                         ),
    //                         Text(
    //                           message.message,
    //                           overflow: TextOverflow.ellipsis,
    //                           style: TextStyle(
    //                             fontFamily: 'Inter',
    //                             fontStyle: FontStyle.italic,
    //                           ),
    //                           maxLines: 1,
    //                           softWrap: false,
    //                         ),
    //                       ],
    //                     )
    //                     : Text(message.message),
    //             trailing: Text(
    //               message.timestamp,
    //               style: TextStyle(fontSize: 12, color: Colors.grey,fontFamily: 'Inter'),
    //             ),
    //           ),
    //         ),
    //         if (index < chatController.messages.length - 1)
    //           Padding(
    //             padding: const EdgeInsets.only(left: 73, right: 15),
    //             child: Divider(height: 1,color: Colors.grey.shade300,),
    //           ),
    //       ],
    //     );
    //   },
    // );
  }
}

class MessageTile extends StatelessWidget {
  final ChatMessage message;
  final VoidCallback onTap;

  const MessageTile({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isUnread = message.isUnread;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => SlideView(
                  sender: message.sender,
                  imageUrl: message.imageUrl,
                  message: message.message,
                  isDeleted: message.isDeleted,
                  additionalIcon: message.additionalIcon,
                  additionalText: message.additionalText,
                  timestamp: message.timestamp,
                  icon: message.icon,
                ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorPath.greyShade,
          backgroundImage:
              message.imageUrl != null ? AssetImage(message.imageUrl!) : null,
          child:
              message.imageUrl == null
                  ? (message.icon != null
                      ? Icon(message.icon, color: ColorPath.grey)
                      : Text(
                        message.sender
                            .split(" ")
                            .map((e) => e[0])
                            .take(2)
                            .join()
                            .toUpperCase(),
                        style: TextStyle(
                          color: ColorPath.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                  : null,
        ),
        title: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (message.additionalIcon != null ||
                      message.additionalText != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          if (message.additionalIcon != null)
                            Icon(
                              message.additionalIcon,
                              color: ColorPath.red,
                              size: 14,
                            ),
                          if (message.additionalText != null)
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                message.additionalText!,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  overflow: TextOverflow.ellipsis,
                                  color: ColorPath.redShade,
                                    fontWeight: isUnread ? FontWeight.bold : FontWeight.normal
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  Text(
                    message.sender,
                    style: TextStyle(fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
                  ),
                  // Text(
                  //   message.sender,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //     fontFamily: 'Inter',
                  //     fontSize: 15,
                  //   ),
                  // ),
                ],
              ),
            ),
            // if (message.isDeleted)
            //   Icon(Icons.delete, color: Colors.red, size: 16),
          ],
        ),
        subtitle:
            message.isDeleted
                ? Row(
                  spacing: 3,
                  children: [
                    Icon(Icons.lock_outline, color: Colors.red, size: 16),
                    Text(
                      message.message,
                      style: TextStyle(fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
                    ),
                    // Text(
                    //   message.message,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: TextStyle(
                    //     fontFamily: 'Inter',
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    //   maxLines: 1,
                    //   softWrap: false,
                    // ),
                  ],
                )
                : Text(message.message),
        trailing:
            isUnread && message.unreadCount > 0
                ? CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${message.unreadCount}',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
                : Text(
                  message.timestamp,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
        // trailing: Text(
        //   message.timestamp,
        //   style: TextStyle(fontSize: 12, color: Colors.grey,fontFamily: 'Inter'),
        // ),
      ),
    );
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(child: Text(message.sender[0])),
      title: Text(
        message.sender,
        style: TextStyle(fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
      ),
      subtitle: Text(
        message.message,
        style: TextStyle(fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
      ),
      trailing: isUnread && message.unreadCount > 0
          ? CircleAvatar(
        radius: 12,
        backgroundColor: Colors.blue,
        child: Text(
          '${message.unreadCount}',
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      )
          : Text(
        message.timestamp,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
