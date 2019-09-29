//
//  CallbackQueryPayload.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a payload of a callback query
public enum CallbackQueryPayload: Codable {

    /// The payload from a general callback button
    case callbackQueryPayloadData(CallbackQueryPayloadData)

    /// The payload from a game callback button
    case callbackQueryPayloadGame(CallbackQueryPayloadGame)


    private enum Kind: String, Codable {
        case callbackQueryPayloadData
        case callbackQueryPayloadGame
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callbackQueryPayloadData:
            let value = try CallbackQueryPayloadData(from: decoder)
            self = .callbackQueryPayloadData(value)
        case .callbackQueryPayloadGame:
            let value = try CallbackQueryPayloadGame(from: decoder)
            self = .callbackQueryPayloadGame(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callbackQueryPayloadData(let value):
            try container.encode(Kind.callbackQueryPayloadData, forKey: .type)
            try value.encode(to: encoder)
        case .callbackQueryPayloadGame(let value):
            try container.encode(Kind.callbackQueryPayloadGame, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The payload from a general callback button
public struct CallbackQueryPayloadData: Codable {

    /// Data that was attached to the callback button
    public let data: Data


    public init (data: Data) {
        self.data = data
    }
}

/// The payload from a game callback button
public struct CallbackQueryPayloadGame: Codable {

    /// A short name of the game that was attached to the callback button
    public let gameShortName: String


    public init (gameShortName: String) {
        self.gameShortName = gameShortName
    }
}
