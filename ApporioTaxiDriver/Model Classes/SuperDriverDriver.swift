//
//  Driver.swift
//
//  Created by apple on 3/2/19
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public struct SuperDriverDriver: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let occupiedSeats = "occupied_seats"
    static let homeLocationActive = "home_location_active"
    static let statusForPool = "status_for_pool"
    static let driverVerifyStatus = "driver_verify_status"
    static let bankName = "bank_name"
    static let profileImage = "profile_image"
    static let lastRideRequestTimestamp = "last_ride_request_timestamp"
    static let outstandAmount = "outstand_amount"
    static let freeBusy = "free_busy"
    static let currentLatitude = "current_latitude"
    static let fullName = "fullName"
    static let id = "id"
    static let totalTrips = "total_trips"
    static let password = "password"
    static let playerId = "player_id"
    static let accountNumber = "account_number"
    static let signupStep = "signupStep"
    static let email = "email"
    static let phoneNumber = "phoneNumber"
    static let currentLongitude = "current_longitude"
    static let signupFrom = "signupFrom"
    static let driverAdminStatus = "driver_admin_status"
    static let updatedAt = "updated_at"
    static let driverGender = "driver_gender"
    static let accuracy = "accuracy"
    static let rating = "rating"
    static let merchantId = "merchant_id"
    static let accountHolderName = "account_holder_name"
    static let totalComanyEarning = "total_comany_earning"
    static let loginLogout = "login_logout"
    static let poolRideActive = "pool_ride_active"
    static let totalEarnings = "total_earnings"
    static let countryAreaId = "country_area_id"
    static let createdAt = "created_at"
    static let onlineOffline = "online_offline"
    static let availSeats = "avail_seats"
    static let bearing = "bearing"
    static let accessTokenId = "access_token_id"
    static let lastLocationUpdateTime = "last_location_update_time"
  }

  // MARK: Properties
  public var occupiedSeats: Int?
  public var homeLocationActive: Int?
  public var statusForPool: Int?
  public var driverVerifyStatus: Int?
  public var bankName: String?
  public var profileImage: String?
  public var lastRideRequestTimestamp: String?
  public var outstandAmount: String?
  public var freeBusy: Int?
  public var currentLatitude: String?
  public var fullName: String?
  public var id: Int?
  public var totalTrips: Int?
  public var password: String?
  public var playerId: String?
  public var accountNumber: String?
  public var signupStep: Int?
  public var email: String?
  public var phoneNumber: String?
  public var currentLongitude: String?
  public var signupFrom: Int?
  public var driverAdminStatus: Int?
  public var updatedAt: String?
  public var driverGender: Int?
  public var accuracy: String?
  public var rating: String?
  public var merchantId: Int?
  public var accountHolderName: String?
  public var totalComanyEarning: String?
  public var loginLogout: Int?
  public var poolRideActive: Int?
  public var totalEarnings: String?
  public var countryAreaId: Int?
  public var createdAt: String?
  public var onlineOffline: Int?
  public var availSeats: Int?
  public var bearing: String?
  public var accessTokenId: String?
  public var lastLocationUpdateTime: String?

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
    occupiedSeats <- map[SerializationKeys.occupiedSeats]
    homeLocationActive <- map[SerializationKeys.homeLocationActive]
    statusForPool <- map[SerializationKeys.statusForPool]
    driverVerifyStatus <- map[SerializationKeys.driverVerifyStatus]
    bankName <- map[SerializationKeys.bankName]
    profileImage <- map[SerializationKeys.profileImage]
    lastRideRequestTimestamp <- map[SerializationKeys.lastRideRequestTimestamp]
    outstandAmount <- map[SerializationKeys.outstandAmount]
    freeBusy <- map[SerializationKeys.freeBusy]
    currentLatitude <- map[SerializationKeys.currentLatitude]
    fullName <- map[SerializationKeys.fullName]
    id <- map[SerializationKeys.id]
    totalTrips <- map[SerializationKeys.totalTrips]
    password <- map[SerializationKeys.password]
    playerId <- map[SerializationKeys.playerId]
    accountNumber <- map[SerializationKeys.accountNumber]
    signupStep <- map[SerializationKeys.signupStep]
    email <- map[SerializationKeys.email]
    phoneNumber <- map[SerializationKeys.phoneNumber]
    currentLongitude <- map[SerializationKeys.currentLongitude]
    signupFrom <- map[SerializationKeys.signupFrom]
    driverAdminStatus <- map[SerializationKeys.driverAdminStatus]
    updatedAt <- map[SerializationKeys.updatedAt]
    driverGender <- map[SerializationKeys.driverGender]
    accuracy <- map[SerializationKeys.accuracy]
    rating <- map[SerializationKeys.rating]
    merchantId <- map[SerializationKeys.merchantId]
    accountHolderName <- map[SerializationKeys.accountHolderName]
    totalComanyEarning <- map[SerializationKeys.totalComanyEarning]
    loginLogout <- map[SerializationKeys.loginLogout]
    poolRideActive <- map[SerializationKeys.poolRideActive]
    totalEarnings <- map[SerializationKeys.totalEarnings]
    countryAreaId <- map[SerializationKeys.countryAreaId]
    createdAt <- map[SerializationKeys.createdAt]
    onlineOffline <- map[SerializationKeys.onlineOffline]
    availSeats <- map[SerializationKeys.availSeats]
    bearing <- map[SerializationKeys.bearing]
    accessTokenId <- map[SerializationKeys.accessTokenId]
    lastLocationUpdateTime <- map[SerializationKeys.lastLocationUpdateTime]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = occupiedSeats { dictionary[SerializationKeys.occupiedSeats] = value }
    if let value = homeLocationActive { dictionary[SerializationKeys.homeLocationActive] = value }
    if let value = statusForPool { dictionary[SerializationKeys.statusForPool] = value }
    if let value = driverVerifyStatus { dictionary[SerializationKeys.driverVerifyStatus] = value }
    if let value = bankName { dictionary[SerializationKeys.bankName] = value }
    if let value = profileImage { dictionary[SerializationKeys.profileImage] = value }
    if let value = lastRideRequestTimestamp { dictionary[SerializationKeys.lastRideRequestTimestamp] = value }
    if let value = outstandAmount { dictionary[SerializationKeys.outstandAmount] = value }
    if let value = freeBusy { dictionary[SerializationKeys.freeBusy] = value }
    if let value = currentLatitude { dictionary[SerializationKeys.currentLatitude] = value }
    if let value = fullName { dictionary[SerializationKeys.fullName] = value }
    if let value = id { dictionary[SerializationKeys.id] = value }
    if let value = totalTrips { dictionary[SerializationKeys.totalTrips] = value }
    if let value = password { dictionary[SerializationKeys.password] = value }
    if let value = playerId { dictionary[SerializationKeys.playerId] = value }
    if let value = accountNumber { dictionary[SerializationKeys.accountNumber] = value }
    if let value = signupStep { dictionary[SerializationKeys.signupStep] = value }
    if let value = email { dictionary[SerializationKeys.email] = value }
    if let value = phoneNumber { dictionary[SerializationKeys.phoneNumber] = value }
    if let value = currentLongitude { dictionary[SerializationKeys.currentLongitude] = value }
    if let value = signupFrom { dictionary[SerializationKeys.signupFrom] = value }
    if let value = driverAdminStatus { dictionary[SerializationKeys.driverAdminStatus] = value }
    if let value = updatedAt { dictionary[SerializationKeys.updatedAt] = value }
    if let value = driverGender { dictionary[SerializationKeys.driverGender] = value }
    if let value = accuracy { dictionary[SerializationKeys.accuracy] = value }
    if let value = rating { dictionary[SerializationKeys.rating] = value }
    if let value = merchantId { dictionary[SerializationKeys.merchantId] = value }
    if let value = accountHolderName { dictionary[SerializationKeys.accountHolderName] = value }
    if let value = totalComanyEarning { dictionary[SerializationKeys.totalComanyEarning] = value }
    if let value = loginLogout { dictionary[SerializationKeys.loginLogout] = value }
    if let value = poolRideActive { dictionary[SerializationKeys.poolRideActive] = value }
    if let value = totalEarnings { dictionary[SerializationKeys.totalEarnings] = value }
    if let value = countryAreaId { dictionary[SerializationKeys.countryAreaId] = value }
    if let value = createdAt { dictionary[SerializationKeys.createdAt] = value }
    if let value = onlineOffline { dictionary[SerializationKeys.onlineOffline] = value }
    if let value = availSeats { dictionary[SerializationKeys.availSeats] = value }
    if let value = bearing { dictionary[SerializationKeys.bearing] = value }
    if let value = accessTokenId { dictionary[SerializationKeys.accessTokenId] = value }
    if let value = lastLocationUpdateTime { dictionary[SerializationKeys.lastLocationUpdateTime] = value }
    return dictionary
  }

}
