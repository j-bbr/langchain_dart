// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: WebSearchResultItem
// ==========================================

/// A single web search result item.
@freezed
abstract class WebSearchResultItem with _$WebSearchResultItem {
  const WebSearchResultItem._();

  /// Factory constructor for WebSearchResultItem
  const factory WebSearchResultItem({
    /// The type of search result.
    required String type,

    /// The URL of the search result.
    required String url,

    /// The title of the search result.
    required String title,

    /// The encrypted content of the search result.
    @JsonKey(name: 'encrypted_content', includeIfNull: false)
    String? encryptedContent,

    /// The age or date of the page.
    @JsonKey(name: 'page_age', includeIfNull: false) String? pageAge,
  }) = _WebSearchResultItem;

  /// Object construction from a JSON representation
  factory WebSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$WebSearchResultItemFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'url',
    'title',
    'encrypted_content',
    'page_age',
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
      'encrypted_content': encryptedContent,
      'page_age': pageAge,
    };
  }
}
