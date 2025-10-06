// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: CharLocation
// ==========================================

/// A character location reference within a document.
@freezed
abstract class CharLocation with _$CharLocation {
  const CharLocation._();

  /// Factory constructor for CharLocation
  const factory CharLocation({
    /// The type of location reference.
    required String type,

    /// The text that was cited.
    @JsonKey(name: 'cited_text') required String citedText,

    /// The index of the document being referenced.
    @JsonKey(name: 'document_index', includeIfNull: false) int? documentIndex,
  }) = _CharLocation;

  /// Object construction from a JSON representation
  factory CharLocation.fromJson(Map<String, dynamic> json) =>
      _$CharLocationFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'cited_text',
    'document_index',
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'cited_text': citedText,
      'document_index': documentIndex,
    };
  }
}
