//
//  DownOptions.swift
//  Down
//
//  Created by Rob Phillips on 5/28/16.
//  Copyright © 2016 Glazed Donut, LLC. All rights reserved.
//

import Foundation
import libcmark

public struct DownOptions: OptionSet {
    public let rawValue: Int32
    public init(rawValue: Int32) { self.rawValue = rawValue }

    /**
     Default options
    */
    public static let `default` = DownOptions(rawValue: CMARK_OPT_DEFAULT)

    // MARK: - Rendering Options

    /**
     Include a `data-sourcepos` attribute on all block elements
    */
    public static let sourcePos = DownOptions(rawValue: CMARK_OPT_SOURCEPOS)

    /**
     Render `softbreak` elements as hard line breaks.
    */
    public static let hardBreaks = DownOptions(rawValue: CMARK_OPT_HARDBREAKS)

    /** Render `softbreak` elements as spaces.
     */
   public static let noBreaks = DownOptions(rawValue: CMARK_OPT_NOBREAKS)

    // MARK: - Parsing Options

    /**
     * ### Options affecting parsing
     */

    /** Legacy option (no effect).
     */
    public static let normalize = DownOptions(rawValue: CMARK_OPT_NORMALIZE)

    /** Validate UTF-8 in the input before parsing, replacing illegal
     * sequences with the replacement character U+FFFD.
     */
    public static let validateUTF8 = DownOptions(rawValue: CMARK_OPT_VALIDATE_UTF8)

    /** Convert straight quotes to curly, --- to em dashes, -- to en dashes.
     */
    public static let smart = DownOptions(rawValue: CMARK_OPT_SMART)

    /** Use GitHub-style <pre lang="x"> tags for code blocks instead of <pre><code
     * class="language-x">.
     */
    public static let githubPreLang = DownOptions(rawValue: CMARK_OPT_GITHUB_PRE_LANG)

    /** Be liberal in interpreting inline HTML tags.
     */
    public static let liberalHTMLTag = DownOptions(rawValue: CMARK_OPT_LIBERAL_HTML_TAG)

    /** Parse footnotes.
     */
    public static let footnotes = DownOptions(rawValue: CMARK_OPT_FOOTNOTES)

    /** Only parse strikethroughs if surrounded by exactly 2 tildes.
     * Gives some compatibility with redcarpet.
     */
    public static let strikethroughDoubleTilde = DownOptions(rawValue: CMARK_OPT_STRIKETHROUGH_DOUBLE_TILDE)

    /** Use style attributes to align table cells instead of align attributes.
     */
    public static let tablePreferStyleAttributes = DownOptions(rawValue: CMARK_OPT_TABLE_PREFER_STYLE_ATTRIBUTES)

    /** Include the remainder of the info string in code blocks in
     * a separate attribute.
     */
    public static let fullInfoString = DownOptions(rawValue: CMARK_OPT_FULL_INFO_STRING)

    /** Allow raw HTML and unsafe links, `javascript:`, `vbscript:`, `file:`, and
     * all `data:` URLs -- by default, only `image/png`, `image/gif`, `image/jpeg`,
     * or `image/webp` mime types are allowed. Without this option, raw HTML is
     * replaced by a placeholder HTML comment, and unsafe links are replaced by
     * empty strings.
     */
    public static let unsafe = DownOptions(rawValue: CMARK_OPT_UNSAFE)
}
