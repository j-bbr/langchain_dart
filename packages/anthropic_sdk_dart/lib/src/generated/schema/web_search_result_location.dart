// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: WebSearchResultLocation
// ==========================================

/// A citation reference to a web search result location.
@freezed
abstract class WebSearchResultLocation with _$WebSearchResultLocation {
  const WebSearchResultLocation._();

  /// Factory constructor for WebSearchResultLocation
  const factory WebSearchResultLocation({
    /// The type of citation.
    required String type,

    /// The URL of the cited source.
    required String url,

    /// The title of the cited source.
    required String title,

    /// The encrypted index identifier.
    @JsonKey(name: 'encrypted_index') required String encryptedIndex,

    /// The text that was cited from this source.
    @JsonKey(name: 'cited_text') required String citedText,
  }) = _WebSearchResultLocation;

  /// Object construction from a JSON representation
  factory WebSearchResultLocation.fromJson(Map<String, dynamic> json) =>
      _$WebSearchResultLocationFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'url',
    'title',
    'encrypted_index',
    'cited_text',
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'url': url,
      'title': title,
      'encrypted_index': encryptedIndex,
      'cited_text': citedText,
    };
  }
}
