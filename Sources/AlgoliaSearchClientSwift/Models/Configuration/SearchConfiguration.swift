//
//  SearchConfigration.swift
//  
//
//  Created by Vladislav Fitc on 20/02/2020.
//

import Foundation

public struct SearchConfigration: Configuration, Credentials {
  
  public let applicationID: ApplicationID
  
  public let apiKey: APIKey
  
  public var writeTimeout: TimeInterval
  
  public var readTimeout: TimeInterval
  
  public var logLevel: LogLevel
  
  public var hosts: [RetryableHost]
  
  public var defaultHeaders: [HTTPHeaderKey : String]?
  
  init(applicationID: ApplicationID,
       apiKey: APIKey,
       writeTimeout: TimeInterval = DefaultConfiguration.default.writeTimeout,
       readTimeout: TimeInterval = DefaultConfiguration.default.readTimeout,
       logLevel: LogLevel = DefaultConfiguration.default.logLevel,
       defaultHeaders: [HTTPHeaderKey: String]? = DefaultConfiguration.default.defaultHeaders) {
    self.applicationID = applicationID
    self.apiKey = apiKey
    self.writeTimeout = writeTimeout
    self.readTimeout = readTimeout
    self.logLevel = logLevel
    self.hosts = .init(forApplicationID: applicationID)
    self.defaultHeaders = defaultHeaders
  }
  
}
