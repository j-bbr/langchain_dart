// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: Block
// ==========================================

/// A block of content in a message.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class Block with _$Block {
  const Block._();

  // ------------------------------------------
  // UNION: TextBlock
  // ------------------------------------------

  /// A block of text content.

  @FreezedUnionValue('text')
  const factory Block.text({
    /// The text content.
    required String text,

    /// The type of content block.
    @Default('text') String type,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = TextBlock;

  // ------------------------------------------
  // UNION: ImageBlock
  // ------------------------------------------

  /// A block of image content.

  @FreezedUnionValue('image')
  const factory Block.image({
    /// The source of an image block.
    required ImageBlockSource source,

    /// The type of content block.
    @Default('image') String type,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ImageBlock;

  // ------------------------------------------
  // UNION: ToolUseBlock
  // ------------------------------------------

  /// The tool the model wants to use.

  @FreezedUnionValue('tool_use')
  const factory Block.toolUse({
    /// A unique identifier for this particular tool use block.
    /// This will be used to match up the tool results later.
    required String id,

    /// The name of the tool being used.
    required String name,

    /// An object containing the input being passed to the tool, conforming to the tool's `input_schema`.
    required Map<String, dynamic> input,

    /// The type of content block.
    @Default('tool_use') String type,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ToolUseBlock;

  // ------------------------------------------
  // UNION: ToolResultBlock
  // ------------------------------------------

  /// The result of using a tool.

  @FreezedUnionValue('tool_result')
  const factory Block.toolResult({
    /// The `id` of the tool use request this is a result for.
    @JsonKey(name: 'tool_use_id') required String toolUseId,

    /// The result of the tool, as a string (e.g. `"content": "15 degrees"`)
    /// or list of nested content blocks (e.g. `"content": [{"type": "text", "text": "15 degrees"}]`).
    /// These content blocks can use the text or image types.
    @_ToolResultBlockContentConverter() required ToolResultBlockContent content,

    /// Set to `true` if the tool execution resulted in an error.
    @JsonKey(name: 'is_error', includeIfNull: false) bool? isError,

    /// The type of content block.
    @Default('tool_result') String type,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ToolResultBlock;

  // ------------------------------------------
  // UNION: ServerToolUseBlock
  // ------------------------------------------

  /// A server-side tool use block that represents tool usage initiated by the server.

  @FreezedUnionValue('server_tool_use')
  const factory Block.serverToolUse({
    /// A unique identifier for this particular server tool use block.
    /// This will be used to match up any tool results later.
    required String id,

    /// The name of the tool being used by the server.
    required String name,

    /// An object containing the input being passed to the tool, conforming to the tool's input schema.
    required Map<String, dynamic> input,

    /// The type of content block.
    @Default('server_tool_use') String type,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ServerToolUseBlock;

  // ------------------------------------------
  // UNION: WebSearchToolResultBlock
  // ------------------------------------------

  /// A web search tool result block containing search results.

  @FreezedUnionValue('web_search_tool_result')
  const factory Block.webSearchToolResult({
    /// The type of content block.
    @Default('web_search_tool_result') String type,

    /// The ID of the tool use request this is a result for.
    @JsonKey(name: 'tool_use_id') required String toolUseId,

    /// An array of web search results.
    required List<WebSearchResultItem> content,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = WebSearchToolResultBlock;

  /// Object construction from a JSON representation
  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}

// ==========================================
// ENUM: BlockEnumType
// ==========================================

enum BlockEnumType {
  @JsonValue('text')
  text,
  @JsonValue('image')
  image,
  @JsonValue('tool_use')
  toolUse,
  @JsonValue('tool_result')
  toolResult,
  @JsonValue('server_tool_use')
  serverToolUse,
  @JsonValue('web_search_tool_result')
  webSearchToolResult,
}

// ==========================================
// CLASS: ToolResultBlockContent
// ==========================================

/// The result of the tool, as a string (e.g. `"content": "15 degrees"`)
/// or list of nested content blocks (e.g. `"content": [{"type": "text", "text": "15 degrees"}]`).
/// These content blocks can use the text or image types.
@freezed
sealed class ToolResultBlockContent with _$ToolResultBlockContent {
  const ToolResultBlockContent._();

  /// An array of content blocks.
  const factory ToolResultBlockContent.blocks(List<Block> value) =
      ToolResultBlockContentBlocks;

  /// A single text block.
  const factory ToolResultBlockContent.text(String value) =
      ToolResultBlockContentText;

  /// Object construction from a JSON representation
  factory ToolResultBlockContent.fromJson(Map<String, dynamic> json) =>
      _$ToolResultBlockContentFromJson(json);
}

/// Custom JSON converter for [ToolResultBlockContent]
class _ToolResultBlockContentConverter
    implements JsonConverter<ToolResultBlockContent, Object?> {
  const _ToolResultBlockContentConverter();

  @override
  ToolResultBlockContent fromJson(Object? data) {
    if (data is List && data.every((item) => item is Map)) {
      return ToolResultBlockContentBlocks(
        data
            .map((i) => Block.fromJson(i as Map<String, dynamic>))
            .toList(growable: false),
      );
    }
    if (data is String) {
      return ToolResultBlockContentText(data);
    }
    throw Exception('Unexpected value for ToolResultBlockContent: $data');
  }

  @override
  Object? toJson(ToolResultBlockContent data) {
    return switch (data) {
      ToolResultBlockContentBlocks(value: final v) => v,
      ToolResultBlockContentText(value: final v) => v,
    };
  }
}
