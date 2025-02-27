# typed: strict
# frozen_string_literal: true

module RubyLsp
  # Supported features
  #
  # - [DocumentSymbol](rdoc-ref:RubyLsp::Requests::DocumentSymbol)
  # - [DocumentLink](rdoc-ref:RubyLsp::Requests::DocumentLink)
  # - [Hover](rdoc-ref:RubyLsp::Requests::Hover)
  # - [FoldingRange](rdoc-ref:RubyLsp::Requests::FoldingRanges)
  # - [SelectionRange](rdoc-ref:RubyLsp::Requests::SelectionRanges)
  # - [SemanticHighlighting](rdoc-ref:RubyLsp::Requests::SemanticHighlighting)
  # - [Formatting](rdoc-ref:RubyLsp::Requests::Formatting)
  # - [OnTypeFormatting](rdoc-ref:RubyLsp::Requests::OnTypeFormatting)
  # - [Diagnostic](rdoc-ref:RubyLsp::Requests::Diagnostics)
  # - [CodeAction](rdoc-ref:RubyLsp::Requests::CodeActions)
  # - [CodeActionResolve](rdoc-ref:RubyLsp::Requests::CodeActionResolve)
  # - [DocumentHighlight](rdoc-ref:RubyLsp::Requests::DocumentHighlight)
  # - [InlayHint](rdoc-ref:RubyLsp::Requests::InlayHints)
  # - [PathCompletion](rdoc-ref:RubyLsp::Requests::PathCompletion)
  # - [CodeLens](rdoc-ref:RubyLsp::Requests::CodeLens)

  module Requests
    autoload :BaseRequest, "ruby_lsp/requests/base_request"
    autoload :DocumentSymbol, "ruby_lsp/requests/document_symbol"
    autoload :DocumentLink, "ruby_lsp/requests/document_link"
    autoload :Hover, "ruby_lsp/requests/hover"
    autoload :FoldingRanges, "ruby_lsp/requests/folding_ranges"
    autoload :SelectionRanges, "ruby_lsp/requests/selection_ranges"
    autoload :SemanticHighlighting, "ruby_lsp/requests/semantic_highlighting"
    autoload :Formatting, "ruby_lsp/requests/formatting"
    autoload :OnTypeFormatting, "ruby_lsp/requests/on_type_formatting"
    autoload :Diagnostics, "ruby_lsp/requests/diagnostics"
    autoload :CodeActions, "ruby_lsp/requests/code_actions"
    autoload :CodeActionResolve, "ruby_lsp/requests/code_action_resolve"
    autoload :DocumentHighlight, "ruby_lsp/requests/document_highlight"
    autoload :InlayHints, "ruby_lsp/requests/inlay_hints"
    autoload :PathCompletion, "ruby_lsp/requests/path_completion"
    autoload :CodeLens, "ruby_lsp/requests/code_lens"

    # :nodoc:
    module Support
      autoload :RuboCopDiagnostic, "ruby_lsp/requests/support/rubocop_diagnostic"
      autoload :SelectionRange, "ruby_lsp/requests/support/selection_range"
      autoload :SemanticTokenEncoder, "ruby_lsp/requests/support/semantic_token_encoder"
      autoload :Annotation, "ruby_lsp/requests/support/annotation"
      autoload :Sorbet, "ruby_lsp/requests/support/sorbet"
      autoload :HighlightTarget, "ruby_lsp/requests/support/highlight_target"
      autoload :RailsDocumentClient, "ruby_lsp/requests/support/rails_document_client"
      autoload :PrefixTree, "ruby_lsp/requests/support/prefix_tree"
      autoload :Common, "ruby_lsp/requests/support/common"
      autoload :FormatterRunner, "ruby_lsp/requests/support/formatter_runner"
    end
  end
end
