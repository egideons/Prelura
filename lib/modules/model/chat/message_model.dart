import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required dynamic id,
    required String text,
    String? attachment,
    required bool read,
    required bool deleted,
    required bool isItem,
    int? itemId,
    MessageModel? replyTo,
    required UserModel sender,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  factory MessageModel.fromSocket(Map<String, dynamic> json) => MessageModel(
        id: json["id"],

        text: json["text"],
        attachment: json["attachment"],

        read: json["read"],
        deleted: json["deleted"],
        isItem: json["is_item"],
        itemId: json["item_id"],
        // itemType: json["item_type"],
        sender: UserModel(id: json["sender"], username: json['senderName']),
        replyTo: json["reply_to"],
        // messageUuid: json["message_uuid"],
        // receiverProfile: json["receiverProfile"],
        // replyToMessageText: json["reply_to_message_text"],
      );
}
