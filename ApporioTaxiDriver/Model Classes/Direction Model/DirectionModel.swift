//
//  DirectionModel.swift
//
//  Created by Gyanender on 01/03/19
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public struct DirectionModel: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let status = "status"
    static let routes = "routes"
    static let geocodedWaypoints = "geocoded_waypoints"
  }

  // MARK: Properties
  public var status: String?
  public var routes: [Routes]?
  public var geocodedWaypoints: [GeocodedWaypoints]?

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
    status <- map[SerializationKeys.status]
    routes <- map[SerializationKeys.routes]
    geocodedWaypoints <- map[SerializationKeys.geocodedWaypoints]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = status { dictionary[SerializationKeys.status] = value }
    if let value = routes { dictionary[SerializationKeys.routes] = value.map { $0.dictionaryRepresentation() } }
    if let value = geocodedWaypoints { dictionary[SerializationKeys.geocodedWaypoints] = value.map { $0.dictionaryRepresentation() } }
    return dictionary
  }

}
