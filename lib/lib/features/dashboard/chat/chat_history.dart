import 'package:hive/hive.dart';

part 'chat_history.g.dart';

@HiveType(typeId: 0)
class ChatHistory extends HiveObject {

  @HiveField(0)
  List<List<Map<String, dynamic>>> messages;


  ChatHistory(this.messages);

}