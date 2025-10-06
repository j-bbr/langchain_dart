// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: Tool
// ==========================================

/// A tool the model may use.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class Tool with _$Tool {
  const Tool._();

  // ------------------------------------------
  // UNION: ToolCustom
  // ------------------------------------------

  /// A custom tool the model may use.

  const factory Tool.custom({
    /// The type of tool.
    @JsonKey(includeIfNull: false) String? type,

    /// The name of the tool. Must match the regex `^[a-zA-Z0-9_-]{1,64}$`.
    required String name,

    /// Description of what this tool does.
    ///
    /// Tool descriptions should be as detailed as possible. The more information that
    /// the model has about what the tool is and how to use it, the better it will
    /// perform. You can use natural language descriptions to reinforce important
    /// aspects of the tool input JSON schema.
    @JsonKey(includeIfNull: false) String? description,

    /// [JSON schema](https://json-schema.org/) for this tool's input.
    ///
    /// This defines the shape of the `input` that your tool accepts and that the model
    /// will produce.
    @JsonKey(name: 'input_schema') required Map<String, dynamic> inputSchema,
  }) = ToolCustom;

  // ------------------------------------------
  // UNION: ToolComputerUse
  // ------------------------------------------

  /// A tool that uses a mouse and keyboard to interact with a computer, and take screenshots.

  @FreezedUnionValue('computer_20241022')
  const factory Tool.computerUse({
    /// The type of tool.
    @Default('computer_20241022') String type,

    /// The name of the tool.
    @Default('computer') String name,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,

    /// The width of the display in pixels.
    @JsonKey(name: 'display_width_px') required int displayWidthPx,

    /// The height of the display in pixels.
    @JsonKey(name: 'display_height_px') required int displayHeightPx,

    /// The number of the display to use.
    @JsonKey(name: 'display_number', includeIfNull: false) int? displayNumber,
  }) = ToolComputerUse;

  // ------------------------------------------
  // UNION: ToolTextEditor
  // ------------------------------------------

  /// A tool for viewing, creating and editing files.

  @FreezedUnionValue('text_editor_20241022')
  const factory Tool.textEditor({
    /// The type of tool.
    @Default('text_editor_20241022') String type,

    /// The name of the tool.
    @Default('str_replace_editor') String name,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ToolTextEditor;

  // ------------------------------------------
  // UNION: ToolBash
  // ------------------------------------------

  /// A tool for running commands in a bash shell.

  @FreezedUnionValue('bash_20241022')
  const factory Tool.bash({
    /// The type of tool.
    @Default('bash_20241022') String type,

    /// The name of the tool.
    @Default('bash') String name,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ToolBash;

  // ------------------------------------------
  // UNION: ToolWebSearch
  // ------------------------------------------

  /// A tool for performing web searches.

  @FreezedUnionValue('web_search_20250305')
  const factory Tool.webSearch({
    /// The type of tool.
    @Default('web_search_20250305') String type,

    /// The name of the tool.
    @Default('web_search') String name,

    /// Optional limit on the number of searches per request.
    @JsonKey(name: 'max_uses', includeIfNull: false) int? maxUses,

    /// Optional list of domains to restrict search results to.
    @JsonKey(name: 'allowed_domains', includeIfNull: false)
    List<String>? allowedDomains,

    /// Optional list of domains to exclude from search results.
    @JsonKey(name: 'blocked_domains', includeIfNull: false)
    List<String>? blockedDomains,

    /// Optional user location for localizing search results.
    @JsonKey(name: 'user_location', includeIfNull: false)
    ToolWebSearchUserLocation? userLocation,

    /// The cache control settings.
    @JsonKey(name: 'cache_control', includeIfNull: false)
    CacheControlEphemeral? cacheControl,
  }) = ToolWebSearch;

  /// Object construction from a JSON representation
  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
}

// ==========================================
// ENUM: ToolEnumType
// ==========================================

enum ToolEnumType {
  @JsonValue('computer_20241022')
  computer20241022,
  @JsonValue('text_editor_20241022')
  textEditor20241022,
  @JsonValue('bash_20241022')
  bash20241022,
  @JsonValue('web_search_20250305')
  webSearch20250305,
}

// ==========================================
// CLASS: ToolWebSearchUserLocation
// ==========================================

/// Optional user location for localizing search results.
@freezed
abstract class ToolWebSearchUserLocation with _$ToolWebSearchUserLocation {
  const ToolWebSearchUserLocation._();

  /// Factory constructor for ToolWebSearchUserLocation
  const factory ToolWebSearchUserLocation({
    /// The type of location specification.
    required ToolWebSearchUserLocationType type,

    /// The city name.
    @JsonKey(includeIfNull: false) String? city,

    /// The region or state name.
    @JsonKey(includeIfNull: false) String? region,

    /// The country code (e.g., "US").
    @JsonKey(includeIfNull: false) String? country,

    /// The timezone identifier (e.g., "America/Los_Angeles").
    @JsonKey(includeIfNull: false) String? timezone,
  }) = _ToolWebSearchUserLocation;

  /// Object construction from a JSON representation
  factory ToolWebSearchUserLocation.fromJson(Map<String, dynamic> json) =>
      _$ToolWebSearchUserLocationFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'city',
    'region',
    'country',
    'timezone',
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'city': city,
      'region': region,
      'country': country,
      'timezone': timezone,
    };
  }
}

// ==========================================
// ENUM: ToolWebSearchUserLocationType
// ==========================================

/// The type of location specification.
enum ToolWebSearchUserLocationType {
  @JsonValue('approximate')
  approximate,
}
