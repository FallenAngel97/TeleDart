/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2019  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.

part of '../model.dart';

/// Represents a general file to be sent.
///
/// https://core.telegram.org/bots/api#inputmediadocument
@JsonSerializable()
class InputMediaDocument implements InputMedia {
  @override
  String? type;
  @override
  String? media;
  @override
  String? caption;
  @override
  String? parse_mode;
  @override
  List<MessageEntity>? caption_entities;
  dynamic? thumb; // InputFile or String
  bool? disable_content_type_detection;
  InputMediaDocument({
    this.type = 'document',
    this.media,
    this.thumb,
    this.caption,
    this.parse_mode,
    this.caption_entities,
    this.disable_content_type_detection,
  });
  factory InputMediaDocument.fromJson(Map<String, dynamic> json) =>
      _$InputMediaDocumentFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InputMediaDocumentToJson(this);
}
