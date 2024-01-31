import 'package:chat_ui/models/user_model.dart';
import 'package:chat_ui/utils/app_images.dart';

class Message {
  final User sender;

  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

///current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: AppImages.currentUser,
);

///gred user
final User gred = User(
  id: 1,
  name: 'Greg',
  imageUrl: AppImages.gred,
);
final User james = User(
  id: 2,
  name: 'james',
  imageUrl: AppImages.james,
);
final User john = User(
  id: 3,
  name: 'john',
  imageUrl: AppImages.john,
);

///olivia user
final User olivia = User(
  id: 1,
  name: 'olivia',
  imageUrl: AppImages.olivia,
);
final User sam = User(
  id: 2,
  name: 'sam',
  imageUrl: AppImages.sam,
);
final User sophia = User(
  id: 3,
  name: 'sophia',
  imageUrl: AppImages.sophia,
);
final User steven = User(
  id: 3,
  name: 'steven',
  imageUrl: AppImages.steven,
);

///favorite contacts
List<User> favorites = [sam, steven, olivia, john, gred];

List<Message> chat = [
  Message(
    sender: james,
    time: '5:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sophia,
    time: '2:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '1:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: gred,
    time: '1:30',
    text: 'hey , how it is going? what did you do today',
    isLiked: false,
    unread: false,
  ),
];

///Example messages in chat screen
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 AM',
    text: 'hey , how it is going? what did you do today',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:30 AM',
    text: 'just walk my doge , she was super doper cute',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '4:30 AM',
    text: 'hwo was the dogoo',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:10 AM',
    text: 'all the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 AM',
    text: 'what did you eat',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 AM',
    text: 'i eat so much today',
    isLiked: false,
    unread: true,
  ),
];
