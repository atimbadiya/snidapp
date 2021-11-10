//
//  BottomButton.swift
//
//  Created by apple on 2/13/19
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public struct DriverRecieptBottomButton: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let action = "action"
    static let textBackGroundColor = "text_back_ground_Color"
    static let visibility = "visibility"
    static let text = "text"
  }

  // MARK: Properties
  public var action: String?
  public var textBackGroundColor: String?
  public var visibility: Bool? = false
  public var text: String?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public mutating func mapping(map: Map) {
    action <- map[SerializationKeys.action]
    textBackGroundColor <- map[SerializationKeys.textBackGroundColor]
    visibility <- map[SerializationKeys.visibility]
    text <- map[SerializationKeys.text]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = action { dictionary[SerializationKeys.action] = value }
    if let value = textBackGroundColor { dictionary[SerializationKeys.textBackGroundColor] = value }
    dictionary[SerializationKeys.visibility] = visibility
    if let value = text { dictionary[SerializationKeys.text] = value }
    return dictionary
  }

}
