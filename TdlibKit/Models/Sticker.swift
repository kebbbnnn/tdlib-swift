//
//  Sticker.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a sticker
public struct Sticker: Codable {

    /// Emoji corresponding to the sticker
    public let emoji: String

    /// Sticker height; as defined by the sender
    public let height: Int

    /// True, if the sticker is an animated sticker in TGS format
    public let isAnimated: Bool

    /// True, if the sticker is a mask
    public let isMask: Bool

    /// Position where the mask should be placed; may be null
    public let maskPosition: MaskPosition?

    /// The identifier of the sticker set to which the sticker belongs; 0 if none
    public let setId: TdInt64

    /// File containing the sticker
    public let sticker: File

    /// Sticker thumbnail in WEBP or JPEG format; may be null
    public let thumbnail: PhotoSize?

    /// Sticker width; as defined by the sender
    public let width: Int


    public init (
        emoji: String,
        height: Int,
        isAnimated: Bool,
        isMask: Bool,
        maskPosition: MaskPosition?,
        setId: TdInt64,
        sticker: File,
        thumbnail: PhotoSize?,
        width: Int) {

        self.emoji = emoji
        self.height = height
        self.isAnimated = isAnimated
        self.isMask = isMask
        self.maskPosition = maskPosition
        self.setId = setId
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

