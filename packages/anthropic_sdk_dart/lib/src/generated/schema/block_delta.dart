// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of anthropic_schema;

// ==========================================
// CLASS: BlockDelta
// ==========================================

/// A delta in a streaming message.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class BlockDelta with _$BlockDelta {
  const BlockDelta._();

  // ------------------------------------------
  // UNION: TextBlockDelta
  // ------------------------------------------

  /// A delta in a streaming text block.

  @FreezedUnionValue('text_delta')
  const factory BlockDelta.textDelta({
    /// The text delta.
    required String text,

    /// The type of content block.
    required String type,
  }) = TextBlockDelta;

  // ------------------------------------------
  // UNION: InputJsonBlockDelta
  // ------------------------------------------

  /// A delta in a streaming input JSON.

  @FreezedUnionValue('input_json_delta')
  const factory BlockDelta.inputJsonDelta({
    /// The partial JSON delta.
    @JsonKey(name: 'partial_json', includeIfNull: false) String? partialJson,

    /// The type of content block.
    required String type,
  }) = InputJsonBlockDelta;

  // ------------------------------------------
  // UNION: CitationsDelta
  // ------------------------------------------

  /// A delta in streaming citations.

  @FreezedUnionValue('citations_delta')
  const factory BlockDelta.citationsDelta({
    /// The type of content block.
    required String type,

    /// A character location reference within a document.
    required CharLocation citation,
  }) = CitationsDelta;

  /// Object construction from a JSON representation
  factory BlockDelta.fromJson(Map<String, dynamic> json) =>
      _$BlockDeltaFromJson(json);
}

// ==========================================
// ENUM: BlockDeltaEnumType
// ==========================================

enum BlockDeltaEnumType {
  @JsonValue('text_delta')
  textDelta,
  @JsonValue('input_json_delta')
  inputJsonDelta,
  @JsonValue('citations_delta')
  citationsDelta,
}
