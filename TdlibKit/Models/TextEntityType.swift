//
//  TextEntityType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a part of the text which must be formatted differently
public enum TextEntityType: Codable {

    /// A mention of a user by their username
    case textEntityTypeMention

    /// A hashtag text, beginning with "#"
    case textEntityTypeHashtag

    /// A cashtag text, beginning with "$" and consisting of capital english letters (i.e. "$USD")
    case textEntityTypeCashtag

    /// A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat
    case textEntityTypeBotCommand

    /// An HTTP URL
    case textEntityTypeUrl

    /// An email address
    case textEntityTypeEmailAddress

    /// A bold text
    case textEntityTypeBold

    /// An italic text
    case textEntityTypeItalic

    /// Text that must be formatted as if inside a code HTML tag
    case textEntityTypeCode

    /// Text that must be formatted as if inside a pre HTML tag
    case textEntityTypePre

    /// Text that must be formatted as if inside pre, and code HTML tags
    case textEntityTypePreCode(TextEntityTypePreCode)

    /// A text description shown instead of a raw URL
    case textEntityTypeTextUrl(TextEntityTypeTextUrl)

    /// A text shows instead of a raw mention of the user (e.g., when the user has no username)
    case textEntityTypeMentionName(TextEntityTypeMentionName)

    /// A phone number
    case textEntityTypePhoneNumber


    private enum Kind: String, Codable {
        case textEntityTypeMention
        case textEntityTypeHashtag
        case textEntityTypeCashtag
        case textEntityTypeBotCommand
        case textEntityTypeUrl
        case textEntityTypeEmailAddress
        case textEntityTypeBold
        case textEntityTypeItalic
        case textEntityTypeCode
        case textEntityTypePre
        case textEntityTypePreCode
        case textEntityTypeTextUrl
        case textEntityTypeMentionName
        case textEntityTypePhoneNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .textEntityTypeMention:
            self = .textEntityTypeMention
        case .textEntityTypeHashtag:
            self = .textEntityTypeHashtag
        case .textEntityTypeCashtag:
            self = .textEntityTypeCashtag
        case .textEntityTypeBotCommand:
            self = .textEntityTypeBotCommand
        case .textEntityTypeUrl:
            self = .textEntityTypeUrl
        case .textEntityTypeEmailAddress:
            self = .textEntityTypeEmailAddress
        case .textEntityTypeBold:
            self = .textEntityTypeBold
        case .textEntityTypeItalic:
            self = .textEntityTypeItalic
        case .textEntityTypeCode:
            self = .textEntityTypeCode
        case .textEntityTypePre:
            self = .textEntityTypePre
        case .textEntityTypePreCode:
            let value = try TextEntityTypePreCode(from: decoder)
            self = .textEntityTypePreCode(value)
        case .textEntityTypeTextUrl:
            let value = try TextEntityTypeTextUrl(from: decoder)
            self = .textEntityTypeTextUrl(value)
        case .textEntityTypeMentionName:
            let value = try TextEntityTypeMentionName(from: decoder)
            self = .textEntityTypeMentionName(value)
        case .textEntityTypePhoneNumber:
            self = .textEntityTypePhoneNumber
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .textEntityTypeMention:
            try container.encode(Kind.textEntityTypeMention, forKey: .type)
        case .textEntityTypeHashtag:
            try container.encode(Kind.textEntityTypeHashtag, forKey: .type)
        case .textEntityTypeCashtag:
            try container.encode(Kind.textEntityTypeCashtag, forKey: .type)
        case .textEntityTypeBotCommand:
            try container.encode(Kind.textEntityTypeBotCommand, forKey: .type)
        case .textEntityTypeUrl:
            try container.encode(Kind.textEntityTypeUrl, forKey: .type)
        case .textEntityTypeEmailAddress:
            try container.encode(Kind.textEntityTypeEmailAddress, forKey: .type)
        case .textEntityTypeBold:
            try container.encode(Kind.textEntityTypeBold, forKey: .type)
        case .textEntityTypeItalic:
            try container.encode(Kind.textEntityTypeItalic, forKey: .type)
        case .textEntityTypeCode:
            try container.encode(Kind.textEntityTypeCode, forKey: .type)
        case .textEntityTypePre:
            try container.encode(Kind.textEntityTypePre, forKey: .type)
        case .textEntityTypePreCode(let value):
            try container.encode(Kind.textEntityTypePreCode, forKey: .type)
            try value.encode(to: encoder)
        case .textEntityTypeTextUrl(let value):
            try container.encode(Kind.textEntityTypeTextUrl, forKey: .type)
            try value.encode(to: encoder)
        case .textEntityTypeMentionName(let value):
            try container.encode(Kind.textEntityTypeMentionName, forKey: .type)
            try value.encode(to: encoder)
        case .textEntityTypePhoneNumber:
            try container.encode(Kind.textEntityTypePhoneNumber, forKey: .type)
        }
    }
}

/// Text that must be formatted as if inside pre, and code HTML tags
public struct TextEntityTypePreCode: Codable {

    /// Programming language of the code; as defined by the sender
    public let language: String


    public init (language: String) {
        self.language = language
    }
}

/// A text description shown instead of a raw URL
public struct TextEntityTypeTextUrl: Codable {

    /// HTTP or tg:// URL to be opened when the link is clicked
    public let url: String


    public init (url: String) {
        self.url = url
    }
}

/// A text shows instead of a raw mention of the user (e.g., when the user has no username)
public struct TextEntityTypeMentionName: Codable {

    /// Identifier of the mentioned user
    public let userId: Int


    public init (userId: Int) {
        self.userId = userId
    }
}

