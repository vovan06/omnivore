// swiftlint:disable all
// This file was auto-generated using maticzav/swift-graphql. DO NOT EDIT MANUALLY!
import SwiftGraphQL

// MARK: - Operations

enum Operations {}
extension Objects.Query: GraphQLHttpOperation {
  static var operation: String { "query" }
}

extension Objects.Mutation: GraphQLHttpOperation {
  static var operation: String { "mutation" }
}

extension Objects.Subscription: GraphQLWebSocketOperation {
  static var operation: String { "subscription" }
}

// MARK: - Objects

enum Objects {}
extension Objects {
  struct AddPopularReadError {
    let __typename: TypeName = .addPopularReadError
    let errorCodes: [String: [Enums.AddPopularReadErrorCode]]

    enum TypeName: String, Codable {
      case addPopularReadError = "AddPopularReadError"
    }
  }
}

extension Objects.AddPopularReadError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.AddPopularReadErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.AddPopularReadError {
  func errorCodes() throws -> [Enums.AddPopularReadErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias AddPopularReadError<T> = Selection<T, Objects.AddPopularReadError>
}

extension Objects {
  struct AddPopularReadSuccess {
    let __typename: TypeName = .addPopularReadSuccess
    let pageId: [String: String]

    enum TypeName: String, Codable {
      case addPopularReadSuccess = "AddPopularReadSuccess"
    }
  }
}

extension Objects.AddPopularReadSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "pageId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    pageId = map["pageId"]
  }
}

extension Fields where TypeLock == Objects.AddPopularReadSuccess {
  func pageId() throws -> String {
    let field = GraphQLField.leaf(
      name: "pageId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias AddPopularReadSuccess<T> = Selection<T, Objects.AddPopularReadSuccess>
}

extension Objects {
  struct ApiKey {
    let __typename: TypeName = .apiKey
    let createdAt: [String: DateTime]
    let expiresAt: [String: DateTime]
    let id: [String: String]
    let key: [String: String]
    let name: [String: String]
    let scopes: [String: [String]]
    let usedAt: [String: DateTime]

    enum TypeName: String, Codable {
      case apiKey = "ApiKey"
    }
  }
}

extension Objects.ApiKey: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "expiresAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "key":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "scopes":
        if let value = try container.decode([String]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "usedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    expiresAt = map["expiresAt"]
    id = map["id"]
    key = map["key"]
    name = map["name"]
    scopes = map["scopes"]
    usedAt = map["usedAt"]
  }
}

extension Fields where TypeLock == Objects.ApiKey {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func expiresAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "expiresAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.expiresAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func key() throws -> String? {
    let field = GraphQLField.leaf(
      name: "key",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.key[field.alias!]
    case .mocking:
      return nil
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func scopes() throws -> [String]? {
    let field = GraphQLField.leaf(
      name: "scopes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.scopes[field.alias!]
    case .mocking:
      return nil
    }
  }

  func usedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "usedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.usedAt[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ApiKey<T> = Selection<T, Objects.ApiKey>
}

extension Objects {
  struct ApiKeysError {
    let __typename: TypeName = .apiKeysError
    let errorCodes: [String: [Enums.ApiKeysErrorCode]]

    enum TypeName: String, Codable {
      case apiKeysError = "ApiKeysError"
    }
  }
}

extension Objects.ApiKeysError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ApiKeysErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ApiKeysError {
  func errorCodes() throws -> [Enums.ApiKeysErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ApiKeysError<T> = Selection<T, Objects.ApiKeysError>
}

extension Objects {
  struct ApiKeysSuccess {
    let __typename: TypeName = .apiKeysSuccess
    let apiKeys: [String: [Objects.ApiKey]]

    enum TypeName: String, Codable {
      case apiKeysSuccess = "ApiKeysSuccess"
    }
  }
}

extension Objects.ApiKeysSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKeys":
        if let value = try container.decode([Objects.ApiKey]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    apiKeys = map["apiKeys"]
  }
}

extension Fields where TypeLock == Objects.ApiKeysSuccess {
  func apiKeys<Type>(selection: Selection<Type, [Objects.ApiKey]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "apiKeys",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.apiKeys[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ApiKeysSuccess<T> = Selection<T, Objects.ApiKeysSuccess>
}

extension Objects {
  struct ArchiveLinkError {
    let __typename: TypeName = .archiveLinkError
    let errorCodes: [String: [Enums.ArchiveLinkErrorCode]]
    let message: [String: String]

    enum TypeName: String, Codable {
      case archiveLinkError = "ArchiveLinkError"
    }
  }
}

extension Objects.ArchiveLinkError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ArchiveLinkErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.ArchiveLinkError {
  func errorCodes() throws -> [Enums.ArchiveLinkErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }

  func message() throws -> String {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.message[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArchiveLinkError<T> = Selection<T, Objects.ArchiveLinkError>
}

extension Objects {
  struct ArchiveLinkSuccess {
    let __typename: TypeName = .archiveLinkSuccess
    let linkId: [String: String]
    let message: [String: String]

    enum TypeName: String, Codable {
      case archiveLinkSuccess = "ArchiveLinkSuccess"
    }
  }
}

extension Objects.ArchiveLinkSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "linkId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    linkId = map["linkId"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.ArchiveLinkSuccess {
  func linkId() throws -> String {
    let field = GraphQLField.leaf(
      name: "linkId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.linkId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func message() throws -> String {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.message[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArchiveLinkSuccess<T> = Selection<T, Objects.ArchiveLinkSuccess>
}

extension Objects {
  struct Article {
    let __typename: TypeName = .article
    let author: [String: String]
    let content: [String: String]
    let contentReader: [String: Enums.ContentReader]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let hasContent: [String: Bool]
    let hash: [String: String]
    let highlights: [String: [Objects.Highlight]]
    let id: [String: String]
    let image: [String: String]
    let isArchived: [String: Bool]
    let labels: [String: [Objects.Label]]
    let language: [String: String]
    let linkId: [String: String]
    let originalArticleUrl: [String: String]
    let originalHtml: [String: String]
    let pageType: [String: Enums.PageType]
    let postedByViewer: [String: Bool]
    let publishedAt: [String: DateTime]
    let readAt: [String: DateTime]
    let readingProgressAnchorIndex: [String: Int]
    let readingProgressPercent: [String: Double]
    let readingProgressTopPercent: [String: Double]
    let recommendations: [String: [Objects.Recommendation]]
    let savedAt: [String: DateTime]
    let savedByViewer: [String: Bool]
    let shareInfo: [String: Objects.LinkShareInfo]
    let sharedComment: [String: String]
    let siteIcon: [String: String]
    let siteName: [String: String]
    let slug: [String: String]
    let state: [String: Enums.ArticleSavingRequestStatus]
    let subscription: [String: String]
    let title: [String: String]
    let unsubHttpUrl: [String: String]
    let unsubMailTo: [String: String]
    let updatedAt: [String: DateTime]
    let uploadFileId: [String: String]
    let url: [String: String]
    let wordsCount: [String: Int]

    enum TypeName: String, Codable {
      case article = "Article"
    }
  }
}

extension Objects.Article: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "author":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "content":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "contentReader":
        if let value = try container.decode(Enums.ContentReader?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hasContent":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hash":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlights":
        if let value = try container.decode([Objects.Highlight]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "image":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "isArchived":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "language":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "linkId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "originalArticleUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "originalHtml":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageType":
        if let value = try container.decode(Enums.PageType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "postedByViewer":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "publishedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressAnchorIndex":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressTopPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recommendations":
        if let value = try container.decode([Objects.Recommendation]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedByViewer":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "shareInfo":
        if let value = try container.decode(Objects.LinkShareInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedComment":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "siteIcon":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "siteName":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "slug":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "state":
        if let value = try container.decode(Enums.ArticleSavingRequestStatus?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscription":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "title":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubHttpUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubMailTo":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadFileId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "wordsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    author = map["author"]
    content = map["content"]
    contentReader = map["contentReader"]
    createdAt = map["createdAt"]
    description = map["description"]
    hasContent = map["hasContent"]
    hash = map["hash"]
    highlights = map["highlights"]
    id = map["id"]
    image = map["image"]
    isArchived = map["isArchived"]
    labels = map["labels"]
    language = map["language"]
    linkId = map["linkId"]
    originalArticleUrl = map["originalArticleUrl"]
    originalHtml = map["originalHtml"]
    pageType = map["pageType"]
    postedByViewer = map["postedByViewer"]
    publishedAt = map["publishedAt"]
    readAt = map["readAt"]
    readingProgressAnchorIndex = map["readingProgressAnchorIndex"]
    readingProgressPercent = map["readingProgressPercent"]
    readingProgressTopPercent = map["readingProgressTopPercent"]
    recommendations = map["recommendations"]
    savedAt = map["savedAt"]
    savedByViewer = map["savedByViewer"]
    shareInfo = map["shareInfo"]
    sharedComment = map["sharedComment"]
    siteIcon = map["siteIcon"]
    siteName = map["siteName"]
    slug = map["slug"]
    state = map["state"]
    subscription = map["subscription"]
    title = map["title"]
    unsubHttpUrl = map["unsubHttpUrl"]
    unsubMailTo = map["unsubMailTo"]
    updatedAt = map["updatedAt"]
    uploadFileId = map["uploadFileId"]
    url = map["url"]
    wordsCount = map["wordsCount"]
  }
}

extension Fields where TypeLock == Objects.Article {
  func author() throws -> String? {
    let field = GraphQLField.leaf(
      name: "author",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.author[field.alias!]
    case .mocking:
      return nil
    }
  }

  func content() throws -> String {
    let field = GraphQLField.leaf(
      name: "content",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.content[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func contentReader() throws -> Enums.ContentReader {
    let field = GraphQLField.leaf(
      name: "contentReader",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.contentReader[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.ContentReader.allCases.first!
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func hasContent() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "hasContent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.hasContent[field.alias!]
    case .mocking:
      return nil
    }
  }

  func hash() throws -> String {
    let field = GraphQLField.leaf(
      name: "hash",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.hash[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func highlights<Type>(input: OptionalArgument<InputObjects.ArticleHighlightsInput> = .absent(), selection: Selection<Type, [Objects.Highlight]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlights",
      arguments: [Argument(name: "input", type: "ArticleHighlightsInput", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlights[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func image() throws -> String? {
    let field = GraphQLField.leaf(
      name: "image",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.image[field.alias!]
    case .mocking:
      return nil
    }
  }

  func isArchived() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "isArchived",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.isArchived[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func labels<Type>(selection: Selection<Type, [Objects.Label]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.labels[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func language() throws -> String? {
    let field = GraphQLField.leaf(
      name: "language",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.language[field.alias!]
    case .mocking:
      return nil
    }
  }

  func linkId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "linkId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.linkId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func originalArticleUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "originalArticleUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.originalArticleUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func originalHtml() throws -> String? {
    let field = GraphQLField.leaf(
      name: "originalHtml",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.originalHtml[field.alias!]
    case .mocking:
      return nil
    }
  }

  func pageType() throws -> Enums.PageType? {
    let field = GraphQLField.leaf(
      name: "pageType",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.pageType[field.alias!]
    case .mocking:
      return nil
    }
  }

  func postedByViewer() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "postedByViewer",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.postedByViewer[field.alias!]
    case .mocking:
      return nil
    }
  }

  func publishedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "publishedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.publishedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "readAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.readAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readingProgressAnchorIndex() throws -> Int {
    let field = GraphQLField.leaf(
      name: "readingProgressAnchorIndex",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readingProgressAnchorIndex[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func readingProgressPercent() throws -> Double {
    let field = GraphQLField.leaf(
      name: "readingProgressPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readingProgressPercent[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Double.mockValue
    }
  }

  func readingProgressTopPercent() throws -> Double? {
    let field = GraphQLField.leaf(
      name: "readingProgressTopPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.readingProgressTopPercent[field.alias!]
    case .mocking:
      return nil
    }
  }

  func recommendations<Type>(selection: Selection<Type, [Objects.Recommendation]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recommendations",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.recommendations[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func savedAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "savedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savedAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func savedByViewer() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "savedByViewer",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.savedByViewer[field.alias!]
    case .mocking:
      return nil
    }
  }

  func shareInfo<Type>(selection: Selection<Type, Objects.LinkShareInfo?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "shareInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.shareInfo[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func sharedComment() throws -> String? {
    let field = GraphQLField.leaf(
      name: "sharedComment",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedComment[field.alias!]
    case .mocking:
      return nil
    }
  }

  func siteIcon() throws -> String? {
    let field = GraphQLField.leaf(
      name: "siteIcon",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.siteIcon[field.alias!]
    case .mocking:
      return nil
    }
  }

  func siteName() throws -> String? {
    let field = GraphQLField.leaf(
      name: "siteName",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.siteName[field.alias!]
    case .mocking:
      return nil
    }
  }

  func slug() throws -> String {
    let field = GraphQLField.leaf(
      name: "slug",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.slug[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func state() throws -> Enums.ArticleSavingRequestStatus? {
    let field = GraphQLField.leaf(
      name: "state",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.state[field.alias!]
    case .mocking:
      return nil
    }
  }

  func subscription() throws -> String? {
    let field = GraphQLField.leaf(
      name: "subscription",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.subscription[field.alias!]
    case .mocking:
      return nil
    }
  }

  func title() throws -> String {
    let field = GraphQLField.leaf(
      name: "title",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.title[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func unsubHttpUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubHttpUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubHttpUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func unsubMailTo() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubMailTo",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubMailTo[field.alias!]
    case .mocking:
      return nil
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func uploadFileId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "uploadFileId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.uploadFileId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func wordsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "wordsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.wordsCount[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Article<T> = Selection<T, Objects.Article>
}

extension Objects {
  struct ArticleEdge {
    let __typename: TypeName = .articleEdge
    let cursor: [String: String]
    let node: [String: Objects.Article]

    enum TypeName: String, Codable {
      case articleEdge = "ArticleEdge"
    }
  }
}

extension Objects.ArticleEdge: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "cursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "node":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    cursor = map["cursor"]
    node = map["node"]
  }
}

extension Fields where TypeLock == Objects.ArticleEdge {
  func cursor() throws -> String {
    let field = GraphQLField.leaf(
      name: "cursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.cursor[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func node<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "node",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.node[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleEdge<T> = Selection<T, Objects.ArticleEdge>
}

extension Objects {
  struct ArticleError {
    let __typename: TypeName = .articleError
    let errorCodes: [String: [Enums.ArticleErrorCode]]

    enum TypeName: String, Codable {
      case articleError = "ArticleError"
    }
  }
}

extension Objects.ArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ArticleError {
  func errorCodes() throws -> [Enums.ArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleError<T> = Selection<T, Objects.ArticleError>
}

extension Objects {
  struct ArticleSavingRequest {
    let __typename: TypeName = .articleSavingRequest
    let article: [String: Objects.Article]
    let createdAt: [String: DateTime]
    let errorCode: [String: Enums.CreateArticleErrorCode]
    let id: [String: String]
    let slug: [String: String]
    let status: [String: Enums.ArticleSavingRequestStatus]
    let updatedAt: [String: DateTime]
    let url: [String: String]
    let user: [String: Objects.User]
    let userId: [String: String]

    enum TypeName: String, Codable {
      case articleSavingRequest = "ArticleSavingRequest"
    }
  }
}

extension Objects.ArticleSavingRequest: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCode":
        if let value = try container.decode(Enums.CreateArticleErrorCode?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "slug":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "status":
        if let value = try container.decode(Enums.ArticleSavingRequestStatus?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "userId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    article = map["article"]
    createdAt = map["createdAt"]
    errorCode = map["errorCode"]
    id = map["id"]
    slug = map["slug"]
    status = map["status"]
    updatedAt = map["updatedAt"]
    url = map["url"]
    user = map["user"]
    userId = map["userId"]
  }
}

extension Fields where TypeLock == Objects.ArticleSavingRequest {
  @available(*, deprecated, message: "article has been replaced with slug")
  func article<Type>(selection: Selection<Type, Objects.Article?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "article",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.article[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func errorCode() throws -> Enums.CreateArticleErrorCode? {
    let field = GraphQLField.leaf(
      name: "errorCode",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.errorCode[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func slug() throws -> String {
    let field = GraphQLField.leaf(
      name: "slug",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.slug[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func status() throws -> Enums.ArticleSavingRequestStatus {
    let field = GraphQLField.leaf(
      name: "status",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.status[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.ArticleSavingRequestStatus.allCases.first!
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  @available(*, deprecated, message: "userId has been replaced with user")
  func userId() throws -> String {
    let field = GraphQLField.leaf(
      name: "userId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.userId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleSavingRequest<T> = Selection<T, Objects.ArticleSavingRequest>
}

extension Objects {
  struct ArticleSavingRequestError {
    let __typename: TypeName = .articleSavingRequestError
    let errorCodes: [String: [Enums.ArticleSavingRequestErrorCode]]

    enum TypeName: String, Codable {
      case articleSavingRequestError = "ArticleSavingRequestError"
    }
  }
}

extension Objects.ArticleSavingRequestError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ArticleSavingRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ArticleSavingRequestError {
  func errorCodes() throws -> [Enums.ArticleSavingRequestErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleSavingRequestError<T> = Selection<T, Objects.ArticleSavingRequestError>
}

extension Objects {
  struct ArticleSavingRequestSuccess {
    let __typename: TypeName = .articleSavingRequestSuccess
    let articleSavingRequest: [String: Objects.ArticleSavingRequest]

    enum TypeName: String, Codable {
      case articleSavingRequestSuccess = "ArticleSavingRequestSuccess"
    }
  }
}

extension Objects.ArticleSavingRequestSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleSavingRequest":
        if let value = try container.decode(Objects.ArticleSavingRequest?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    articleSavingRequest = map["articleSavingRequest"]
  }
}

extension Fields where TypeLock == Objects.ArticleSavingRequestSuccess {
  func articleSavingRequest<Type>(selection: Selection<Type, Objects.ArticleSavingRequest>) throws -> Type {
    let field = GraphQLField.composite(
      name: "articleSavingRequest",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.articleSavingRequest[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleSavingRequestSuccess<T> = Selection<T, Objects.ArticleSavingRequestSuccess>
}

extension Objects {
  struct ArticleSuccess {
    let __typename: TypeName = .articleSuccess
    let article: [String: Objects.Article]

    enum TypeName: String, Codable {
      case articleSuccess = "ArticleSuccess"
    }
  }
}

extension Objects.ArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    article = map["article"]
  }
}

extension Fields where TypeLock == Objects.ArticleSuccess {
  func article<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "article",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.article[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleSuccess<T> = Selection<T, Objects.ArticleSuccess>
}

extension Objects {
  struct ArticlesError {
    let __typename: TypeName = .articlesError
    let errorCodes: [String: [Enums.ArticlesErrorCode]]

    enum TypeName: String, Codable {
      case articlesError = "ArticlesError"
    }
  }
}

extension Objects.ArticlesError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ArticlesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ArticlesError {
  func errorCodes() throws -> [Enums.ArticlesErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticlesError<T> = Selection<T, Objects.ArticlesError>
}

extension Objects {
  struct ArticlesSuccess {
    let __typename: TypeName = .articlesSuccess
    let edges: [String: [Objects.ArticleEdge]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case articlesSuccess = "ArticlesSuccess"
    }
  }
}

extension Objects.ArticlesSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.ArticleEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    edges = map["edges"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Objects.ArticlesSuccess {
  func edges<Type>(selection: Selection<Type, [Objects.ArticleEdge]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "edges",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.edges[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
    let field = GraphQLField.composite(
      name: "pageInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageInfo[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticlesSuccess<T> = Selection<T, Objects.ArticlesSuccess>
}

extension Objects {
  struct BulkActionError {
    let __typename: TypeName = .bulkActionError
    let errorCodes: [String: [Enums.BulkActionErrorCode]]

    enum TypeName: String, Codable {
      case bulkActionError = "BulkActionError"
    }
  }
}

extension Objects.BulkActionError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.BulkActionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.BulkActionError {
  func errorCodes() throws -> [Enums.BulkActionErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias BulkActionError<T> = Selection<T, Objects.BulkActionError>
}

extension Objects {
  struct BulkActionSuccess {
    let __typename: TypeName = .bulkActionSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case bulkActionSuccess = "BulkActionSuccess"
    }
  }
}

extension Objects.BulkActionSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.BulkActionSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias BulkActionSuccess<T> = Selection<T, Objects.BulkActionSuccess>
}

extension Objects {
  struct CreateArticleError {
    let __typename: TypeName = .createArticleError
    let errorCodes: [String: [Enums.CreateArticleErrorCode]]

    enum TypeName: String, Codable {
      case createArticleError = "CreateArticleError"
    }
  }
}

extension Objects.CreateArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateArticleError {
  func errorCodes() throws -> [Enums.CreateArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleError<T> = Selection<T, Objects.CreateArticleError>
}

extension Objects {
  struct CreateArticleSavingRequestError {
    let __typename: TypeName = .createArticleSavingRequestError
    let errorCodes: [String: [Enums.CreateArticleSavingRequestErrorCode]]

    enum TypeName: String, Codable {
      case createArticleSavingRequestError = "CreateArticleSavingRequestError"
    }
  }
}

extension Objects.CreateArticleSavingRequestError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateArticleSavingRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateArticleSavingRequestError {
  func errorCodes() throws -> [Enums.CreateArticleSavingRequestErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleSavingRequestError<T> = Selection<T, Objects.CreateArticleSavingRequestError>
}

extension Objects {
  struct CreateArticleSavingRequestSuccess {
    let __typename: TypeName = .createArticleSavingRequestSuccess
    let articleSavingRequest: [String: Objects.ArticleSavingRequest]

    enum TypeName: String, Codable {
      case createArticleSavingRequestSuccess = "CreateArticleSavingRequestSuccess"
    }
  }
}

extension Objects.CreateArticleSavingRequestSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleSavingRequest":
        if let value = try container.decode(Objects.ArticleSavingRequest?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    articleSavingRequest = map["articleSavingRequest"]
  }
}

extension Fields where TypeLock == Objects.CreateArticleSavingRequestSuccess {
  func articleSavingRequest<Type>(selection: Selection<Type, Objects.ArticleSavingRequest>) throws -> Type {
    let field = GraphQLField.composite(
      name: "articleSavingRequest",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.articleSavingRequest[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleSavingRequestSuccess<T> = Selection<T, Objects.CreateArticleSavingRequestSuccess>
}

extension Objects {
  struct CreateArticleSuccess {
    let __typename: TypeName = .createArticleSuccess
    let created: [String: Bool]
    let createdArticle: [String: Objects.Article]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case createArticleSuccess = "CreateArticleSuccess"
    }
  }
}

extension Objects.CreateArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "created":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    created = map["created"]
    createdArticle = map["createdArticle"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.CreateArticleSuccess {
  func created() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "created",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.created[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func createdArticle<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createdArticle",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleSuccess<T> = Selection<T, Objects.CreateArticleSuccess>
}

extension Objects {
  struct CreateGroupError {
    let __typename: TypeName = .createGroupError
    let errorCodes: [String: [Enums.CreateGroupErrorCode]]

    enum TypeName: String, Codable {
      case createGroupError = "CreateGroupError"
    }
  }
}

extension Objects.CreateGroupError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateGroupError {
  func errorCodes() throws -> [Enums.CreateGroupErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateGroupError<T> = Selection<T, Objects.CreateGroupError>
}

extension Objects {
  struct CreateGroupSuccess {
    let __typename: TypeName = .createGroupSuccess
    let group: [String: Objects.RecommendationGroup]

    enum TypeName: String, Codable {
      case createGroupSuccess = "CreateGroupSuccess"
    }
  }
}

extension Objects.CreateGroupSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "group":
        if let value = try container.decode(Objects.RecommendationGroup?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    group = map["group"]
  }
}

extension Fields where TypeLock == Objects.CreateGroupSuccess {
  func group<Type>(selection: Selection<Type, Objects.RecommendationGroup>) throws -> Type {
    let field = GraphQLField.composite(
      name: "group",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.group[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateGroupSuccess<T> = Selection<T, Objects.CreateGroupSuccess>
}

extension Objects {
  struct CreateHighlightError {
    let __typename: TypeName = .createHighlightError
    let errorCodes: [String: [Enums.CreateHighlightErrorCode]]

    enum TypeName: String, Codable {
      case createHighlightError = "CreateHighlightError"
    }
  }
}

extension Objects.CreateHighlightError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateHighlightError {
  func errorCodes() throws -> [Enums.CreateHighlightErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightError<T> = Selection<T, Objects.CreateHighlightError>
}

extension Objects {
  struct CreateHighlightReplyError {
    let __typename: TypeName = .createHighlightReplyError
    let errorCodes: [String: [Enums.CreateHighlightReplyErrorCode]]

    enum TypeName: String, Codable {
      case createHighlightReplyError = "CreateHighlightReplyError"
    }
  }
}

extension Objects.CreateHighlightReplyError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateHighlightReplyError {
  func errorCodes() throws -> [Enums.CreateHighlightReplyErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightReplyError<T> = Selection<T, Objects.CreateHighlightReplyError>
}

extension Objects {
  struct CreateHighlightReplySuccess {
    let __typename: TypeName = .createHighlightReplySuccess
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case createHighlightReplySuccess = "CreateHighlightReplySuccess"
    }
  }
}

extension Objects.CreateHighlightReplySuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Objects.CreateHighlightReplySuccess {
  func highlightReply<Type>(selection: Selection<Type, Objects.HighlightReply>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlightReply",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlightReply[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightReplySuccess<T> = Selection<T, Objects.CreateHighlightReplySuccess>
}

extension Objects {
  struct CreateHighlightSuccess {
    let __typename: TypeName = .createHighlightSuccess
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case createHighlightSuccess = "CreateHighlightSuccess"
    }
  }
}

extension Objects.CreateHighlightSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Objects.CreateHighlightSuccess {
  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightSuccess<T> = Selection<T, Objects.CreateHighlightSuccess>
}

extension Objects {
  struct CreateLabelError {
    let __typename: TypeName = .createLabelError
    let errorCodes: [String: [Enums.CreateLabelErrorCode]]

    enum TypeName: String, Codable {
      case createLabelError = "CreateLabelError"
    }
  }
}

extension Objects.CreateLabelError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateLabelError {
  func errorCodes() throws -> [Enums.CreateLabelErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateLabelError<T> = Selection<T, Objects.CreateLabelError>
}

extension Objects {
  struct CreateLabelSuccess {
    let __typename: TypeName = .createLabelSuccess
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case createLabelSuccess = "CreateLabelSuccess"
    }
  }
}

extension Objects.CreateLabelSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    label = map["label"]
  }
}

extension Fields where TypeLock == Objects.CreateLabelSuccess {
  func label<Type>(selection: Selection<Type, Objects.Label>) throws -> Type {
    let field = GraphQLField.composite(
      name: "label",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.label[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateLabelSuccess<T> = Selection<T, Objects.CreateLabelSuccess>
}

extension Objects {
  struct CreateNewsletterEmailError {
    let __typename: TypeName = .createNewsletterEmailError
    let errorCodes: [String: [Enums.CreateNewsletterEmailErrorCode]]

    enum TypeName: String, Codable {
      case createNewsletterEmailError = "CreateNewsletterEmailError"
    }
  }
}

extension Objects.CreateNewsletterEmailError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateNewsletterEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateNewsletterEmailError {
  func errorCodes() throws -> [Enums.CreateNewsletterEmailErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateNewsletterEmailError<T> = Selection<T, Objects.CreateNewsletterEmailError>
}

extension Objects {
  struct CreateNewsletterEmailSuccess {
    let __typename: TypeName = .createNewsletterEmailSuccess
    let newsletterEmail: [String: Objects.NewsletterEmail]

    enum TypeName: String, Codable {
      case createNewsletterEmailSuccess = "CreateNewsletterEmailSuccess"
    }
  }
}

extension Objects.CreateNewsletterEmailSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "newsletterEmail":
        if let value = try container.decode(Objects.NewsletterEmail?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    newsletterEmail = map["newsletterEmail"]
  }
}

extension Fields where TypeLock == Objects.CreateNewsletterEmailSuccess {
  func newsletterEmail<Type>(selection: Selection<Type, Objects.NewsletterEmail>) throws -> Type {
    let field = GraphQLField.composite(
      name: "newsletterEmail",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.newsletterEmail[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateNewsletterEmailSuccess<T> = Selection<T, Objects.CreateNewsletterEmailSuccess>
}

extension Objects {
  struct CreateReactionError {
    let __typename: TypeName = .createReactionError
    let errorCodes: [String: [Enums.CreateReactionErrorCode]]

    enum TypeName: String, Codable {
      case createReactionError = "CreateReactionError"
    }
  }
}

extension Objects.CreateReactionError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateReactionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateReactionError {
  func errorCodes() throws -> [Enums.CreateReactionErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReactionError<T> = Selection<T, Objects.CreateReactionError>
}

extension Objects {
  struct CreateReactionSuccess {
    let __typename: TypeName = .createReactionSuccess
    let reaction: [String: Objects.Reaction]

    enum TypeName: String, Codable {
      case createReactionSuccess = "CreateReactionSuccess"
    }
  }
}

extension Objects.CreateReactionSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reaction":
        if let value = try container.decode(Objects.Reaction?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reaction = map["reaction"]
  }
}

extension Fields where TypeLock == Objects.CreateReactionSuccess {
  func reaction<Type>(selection: Selection<Type, Objects.Reaction>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reaction",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reaction[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReactionSuccess<T> = Selection<T, Objects.CreateReactionSuccess>
}

extension Objects {
  struct CreateReminderError {
    let __typename: TypeName = .createReminderError
    let errorCodes: [String: [Enums.CreateReminderErrorCode]]

    enum TypeName: String, Codable {
      case createReminderError = "CreateReminderError"
    }
  }
}

extension Objects.CreateReminderError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.CreateReminderError {
  func errorCodes() throws -> [Enums.CreateReminderErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReminderError<T> = Selection<T, Objects.CreateReminderError>
}

extension Objects {
  struct CreateReminderSuccess {
    let __typename: TypeName = .createReminderSuccess
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case createReminderSuccess = "CreateReminderSuccess"
    }
  }
}

extension Objects.CreateReminderSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Objects.CreateReminderSuccess {
  func reminder<Type>(selection: Selection<Type, Objects.Reminder>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reminder",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reminder[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReminderSuccess<T> = Selection<T, Objects.CreateReminderSuccess>
}

extension Objects {
  struct DeleteAccountError {
    let __typename: TypeName = .deleteAccountError
    let errorCodes: [String: [Enums.DeleteAccountErrorCode]]

    enum TypeName: String, Codable {
      case deleteAccountError = "DeleteAccountError"
    }
  }
}

extension Objects.DeleteAccountError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteAccountErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteAccountError {
  func errorCodes() throws -> [Enums.DeleteAccountErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteAccountError<T> = Selection<T, Objects.DeleteAccountError>
}

extension Objects {
  struct DeleteAccountSuccess {
    let __typename: TypeName = .deleteAccountSuccess
    let userId: [String: String]

    enum TypeName: String, Codable {
      case deleteAccountSuccess = "DeleteAccountSuccess"
    }
  }
}

extension Objects.DeleteAccountSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "userId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    userId = map["userId"]
  }
}

extension Fields where TypeLock == Objects.DeleteAccountSuccess {
  func userId() throws -> String {
    let field = GraphQLField.leaf(
      name: "userID",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.userId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteAccountSuccess<T> = Selection<T, Objects.DeleteAccountSuccess>
}

extension Objects {
  struct DeleteFilterError {
    let __typename: TypeName = .deleteFilterError
    let errorCodes: [String: [Enums.DeleteFilterErrorCode]]

    enum TypeName: String, Codable {
      case deleteFilterError = "DeleteFilterError"
    }
  }
}

extension Objects.DeleteFilterError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteFilterError {
  func errorCodes() throws -> [Enums.DeleteFilterErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteFilterError<T> = Selection<T, Objects.DeleteFilterError>
}

extension Objects {
  struct DeleteFilterSuccess {
    let __typename: TypeName = .deleteFilterSuccess
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case deleteFilterSuccess = "DeleteFilterSuccess"
    }
  }
}

extension Objects.DeleteFilterSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    filter = map["filter"]
  }
}

extension Fields where TypeLock == Objects.DeleteFilterSuccess {
  func filter<Type>(selection: Selection<Type, Objects.Filter>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filter",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteFilterSuccess<T> = Selection<T, Objects.DeleteFilterSuccess>
}

extension Objects {
  struct DeleteHighlightError {
    let __typename: TypeName = .deleteHighlightError
    let errorCodes: [String: [Enums.DeleteHighlightErrorCode]]

    enum TypeName: String, Codable {
      case deleteHighlightError = "DeleteHighlightError"
    }
  }
}

extension Objects.DeleteHighlightError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteHighlightError {
  func errorCodes() throws -> [Enums.DeleteHighlightErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightError<T> = Selection<T, Objects.DeleteHighlightError>
}

extension Objects {
  struct DeleteHighlightReplyError {
    let __typename: TypeName = .deleteHighlightReplyError
    let errorCodes: [String: [Enums.DeleteHighlightReplyErrorCode]]

    enum TypeName: String, Codable {
      case deleteHighlightReplyError = "DeleteHighlightReplyError"
    }
  }
}

extension Objects.DeleteHighlightReplyError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteHighlightReplyError {
  func errorCodes() throws -> [Enums.DeleteHighlightReplyErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightReplyError<T> = Selection<T, Objects.DeleteHighlightReplyError>
}

extension Objects {
  struct DeleteHighlightReplySuccess {
    let __typename: TypeName = .deleteHighlightReplySuccess
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case deleteHighlightReplySuccess = "DeleteHighlightReplySuccess"
    }
  }
}

extension Objects.DeleteHighlightReplySuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Objects.DeleteHighlightReplySuccess {
  func highlightReply<Type>(selection: Selection<Type, Objects.HighlightReply>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlightReply",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlightReply[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightReplySuccess<T> = Selection<T, Objects.DeleteHighlightReplySuccess>
}

extension Objects {
  struct DeleteHighlightSuccess {
    let __typename: TypeName = .deleteHighlightSuccess
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case deleteHighlightSuccess = "DeleteHighlightSuccess"
    }
  }
}

extension Objects.DeleteHighlightSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Objects.DeleteHighlightSuccess {
  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightSuccess<T> = Selection<T, Objects.DeleteHighlightSuccess>
}

extension Objects {
  struct DeleteIntegrationError {
    let __typename: TypeName = .deleteIntegrationError
    let errorCodes: [String: [Enums.DeleteIntegrationErrorCode]]

    enum TypeName: String, Codable {
      case deleteIntegrationError = "DeleteIntegrationError"
    }
  }
}

extension Objects.DeleteIntegrationError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteIntegrationError {
  func errorCodes() throws -> [Enums.DeleteIntegrationErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteIntegrationError<T> = Selection<T, Objects.DeleteIntegrationError>
}

extension Objects {
  struct DeleteIntegrationSuccess {
    let __typename: TypeName = .deleteIntegrationSuccess
    let integration: [String: Objects.Integration]

    enum TypeName: String, Codable {
      case deleteIntegrationSuccess = "DeleteIntegrationSuccess"
    }
  }
}

extension Objects.DeleteIntegrationSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "integration":
        if let value = try container.decode(Objects.Integration?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    integration = map["integration"]
  }
}

extension Fields where TypeLock == Objects.DeleteIntegrationSuccess {
  func integration<Type>(selection: Selection<Type, Objects.Integration>) throws -> Type {
    let field = GraphQLField.composite(
      name: "integration",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.integration[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteIntegrationSuccess<T> = Selection<T, Objects.DeleteIntegrationSuccess>
}

extension Objects {
  struct DeleteLabelError {
    let __typename: TypeName = .deleteLabelError
    let errorCodes: [String: [Enums.DeleteLabelErrorCode]]

    enum TypeName: String, Codable {
      case deleteLabelError = "DeleteLabelError"
    }
  }
}

extension Objects.DeleteLabelError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteLabelError {
  func errorCodes() throws -> [Enums.DeleteLabelErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteLabelError<T> = Selection<T, Objects.DeleteLabelError>
}

extension Objects {
  struct DeleteLabelSuccess {
    let __typename: TypeName = .deleteLabelSuccess
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case deleteLabelSuccess = "DeleteLabelSuccess"
    }
  }
}

extension Objects.DeleteLabelSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    label = map["label"]
  }
}

extension Fields where TypeLock == Objects.DeleteLabelSuccess {
  func label<Type>(selection: Selection<Type, Objects.Label>) throws -> Type {
    let field = GraphQLField.composite(
      name: "label",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.label[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteLabelSuccess<T> = Selection<T, Objects.DeleteLabelSuccess>
}

extension Objects {
  struct DeleteNewsletterEmailError {
    let __typename: TypeName = .deleteNewsletterEmailError
    let errorCodes: [String: [Enums.DeleteNewsletterEmailErrorCode]]

    enum TypeName: String, Codable {
      case deleteNewsletterEmailError = "DeleteNewsletterEmailError"
    }
  }
}

extension Objects.DeleteNewsletterEmailError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteNewsletterEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteNewsletterEmailError {
  func errorCodes() throws -> [Enums.DeleteNewsletterEmailErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteNewsletterEmailError<T> = Selection<T, Objects.DeleteNewsletterEmailError>
}

extension Objects {
  struct DeleteNewsletterEmailSuccess {
    let __typename: TypeName = .deleteNewsletterEmailSuccess
    let newsletterEmail: [String: Objects.NewsletterEmail]

    enum TypeName: String, Codable {
      case deleteNewsletterEmailSuccess = "DeleteNewsletterEmailSuccess"
    }
  }
}

extension Objects.DeleteNewsletterEmailSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "newsletterEmail":
        if let value = try container.decode(Objects.NewsletterEmail?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    newsletterEmail = map["newsletterEmail"]
  }
}

extension Fields where TypeLock == Objects.DeleteNewsletterEmailSuccess {
  func newsletterEmail<Type>(selection: Selection<Type, Objects.NewsletterEmail>) throws -> Type {
    let field = GraphQLField.composite(
      name: "newsletterEmail",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.newsletterEmail[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteNewsletterEmailSuccess<T> = Selection<T, Objects.DeleteNewsletterEmailSuccess>
}

extension Objects {
  struct DeleteReactionError {
    let __typename: TypeName = .deleteReactionError
    let errorCodes: [String: [Enums.DeleteReactionErrorCode]]

    enum TypeName: String, Codable {
      case deleteReactionError = "DeleteReactionError"
    }
  }
}

extension Objects.DeleteReactionError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteReactionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteReactionError {
  func errorCodes() throws -> [Enums.DeleteReactionErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReactionError<T> = Selection<T, Objects.DeleteReactionError>
}

extension Objects {
  struct DeleteReactionSuccess {
    let __typename: TypeName = .deleteReactionSuccess
    let reaction: [String: Objects.Reaction]

    enum TypeName: String, Codable {
      case deleteReactionSuccess = "DeleteReactionSuccess"
    }
  }
}

extension Objects.DeleteReactionSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reaction":
        if let value = try container.decode(Objects.Reaction?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reaction = map["reaction"]
  }
}

extension Fields where TypeLock == Objects.DeleteReactionSuccess {
  func reaction<Type>(selection: Selection<Type, Objects.Reaction>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reaction",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reaction[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReactionSuccess<T> = Selection<T, Objects.DeleteReactionSuccess>
}

extension Objects {
  struct DeleteReminderError {
    let __typename: TypeName = .deleteReminderError
    let errorCodes: [String: [Enums.DeleteReminderErrorCode]]

    enum TypeName: String, Codable {
      case deleteReminderError = "DeleteReminderError"
    }
  }
}

extension Objects.DeleteReminderError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteReminderError {
  func errorCodes() throws -> [Enums.DeleteReminderErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReminderError<T> = Selection<T, Objects.DeleteReminderError>
}

extension Objects {
  struct DeleteReminderSuccess {
    let __typename: TypeName = .deleteReminderSuccess
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case deleteReminderSuccess = "DeleteReminderSuccess"
    }
  }
}

extension Objects.DeleteReminderSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Objects.DeleteReminderSuccess {
  func reminder<Type>(selection: Selection<Type, Objects.Reminder>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reminder",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reminder[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReminderSuccess<T> = Selection<T, Objects.DeleteReminderSuccess>
}

extension Objects {
  struct DeleteRuleError {
    let __typename: TypeName = .deleteRuleError
    let errorCodes: [String: [Enums.DeleteRuleErrorCode]]

    enum TypeName: String, Codable {
      case deleteRuleError = "DeleteRuleError"
    }
  }
}

extension Objects.DeleteRuleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteRuleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteRuleError {
  func errorCodes() throws -> [Enums.DeleteRuleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteRuleError<T> = Selection<T, Objects.DeleteRuleError>
}

extension Objects {
  struct DeleteRuleSuccess {
    let __typename: TypeName = .deleteRuleSuccess
    let rule: [String: Objects.Rule]

    enum TypeName: String, Codable {
      case deleteRuleSuccess = "DeleteRuleSuccess"
    }
  }
}

extension Objects.DeleteRuleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "rule":
        if let value = try container.decode(Objects.Rule?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    rule = map["rule"]
  }
}

extension Fields where TypeLock == Objects.DeleteRuleSuccess {
  func rule<Type>(selection: Selection<Type, Objects.Rule>) throws -> Type {
    let field = GraphQLField.composite(
      name: "rule",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.rule[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteRuleSuccess<T> = Selection<T, Objects.DeleteRuleSuccess>
}

extension Objects {
  struct DeleteWebhookError {
    let __typename: TypeName = .deleteWebhookError
    let errorCodes: [String: [Enums.DeleteWebhookErrorCode]]

    enum TypeName: String, Codable {
      case deleteWebhookError = "DeleteWebhookError"
    }
  }
}

extension Objects.DeleteWebhookError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteWebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeleteWebhookError {
  func errorCodes() throws -> [Enums.DeleteWebhookErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteWebhookError<T> = Selection<T, Objects.DeleteWebhookError>
}

extension Objects {
  struct DeleteWebhookSuccess {
    let __typename: TypeName = .deleteWebhookSuccess
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case deleteWebhookSuccess = "DeleteWebhookSuccess"
    }
  }
}

extension Objects.DeleteWebhookSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Objects.DeleteWebhookSuccess {
  func webhook<Type>(selection: Selection<Type, Objects.Webhook>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhook",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteWebhookSuccess<T> = Selection<T, Objects.DeleteWebhookSuccess>
}

extension Objects {
  struct DeviceToken {
    let __typename: TypeName = .deviceToken
    let createdAt: [String: DateTime]
    let id: [String: String]
    let token: [String: String]

    enum TypeName: String, Codable {
      case deviceToken = "DeviceToken"
    }
  }
}

extension Objects.DeviceToken: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "token":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    id = map["id"]
    token = map["token"]
  }
}

extension Fields where TypeLock == Objects.DeviceToken {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func token() throws -> String {
    let field = GraphQLField.leaf(
      name: "token",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.token[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeviceToken<T> = Selection<T, Objects.DeviceToken>
}

extension Objects {
  struct DeviceTokensError {
    let __typename: TypeName = .deviceTokensError
    let errorCodes: [String: [Enums.DeviceTokensErrorCode]]

    enum TypeName: String, Codable {
      case deviceTokensError = "DeviceTokensError"
    }
  }
}

extension Objects.DeviceTokensError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeviceTokensErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.DeviceTokensError {
  func errorCodes() throws -> [Enums.DeviceTokensErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeviceTokensError<T> = Selection<T, Objects.DeviceTokensError>
}

extension Objects {
  struct DeviceTokensSuccess {
    let __typename: TypeName = .deviceTokensSuccess
    let deviceTokens: [String: [Objects.DeviceToken]]

    enum TypeName: String, Codable {
      case deviceTokensSuccess = "DeviceTokensSuccess"
    }
  }
}

extension Objects.DeviceTokensSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "deviceTokens":
        if let value = try container.decode([Objects.DeviceToken]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    deviceTokens = map["deviceTokens"]
  }
}

extension Fields where TypeLock == Objects.DeviceTokensSuccess {
  func deviceTokens<Type>(selection: Selection<Type, [Objects.DeviceToken]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deviceTokens",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deviceTokens[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeviceTokensSuccess<T> = Selection<T, Objects.DeviceTokensSuccess>
}

extension Objects {
  struct Feature {
    let __typename: TypeName = .feature
    let createdAt: [String: DateTime]
    let expiresAt: [String: DateTime]
    let grantedAt: [String: DateTime]
    let id: [String: String]
    let name: [String: String]
    let token: [String: String]
    let updatedAt: [String: DateTime]

    enum TypeName: String, Codable {
      case feature = "Feature"
    }
  }
}

extension Objects.Feature: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "expiresAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "grantedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "token":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    expiresAt = map["expiresAt"]
    grantedAt = map["grantedAt"]
    id = map["id"]
    name = map["name"]
    token = map["token"]
    updatedAt = map["updatedAt"]
  }
}

extension Fields where TypeLock == Objects.Feature {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func expiresAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "expiresAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.expiresAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func grantedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "grantedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.grantedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func token() throws -> String {
    let field = GraphQLField.leaf(
      name: "token",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.token[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Feature<T> = Selection<T, Objects.Feature>
}

extension Objects {
  struct FeedArticle {
    let __typename: TypeName = .feedArticle
    let annotationsCount: [String: Int]
    let article: [String: Objects.Article]
    let highlight: [String: Objects.Highlight]
    let highlightsCount: [String: Int]
    let id: [String: String]
    let reactions: [String: [Objects.Reaction]]
    let sharedAt: [String: DateTime]
    let sharedBy: [String: Objects.User]
    let sharedComment: [String: String]
    let sharedWithHighlights: [String: Bool]

    enum TypeName: String, Codable {
      case feedArticle = "FeedArticle"
    }
  }
}

extension Objects.FeedArticle: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "annotationsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reactions":
        if let value = try container.decode([Objects.Reaction]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedBy":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedComment":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedWithHighlights":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    annotationsCount = map["annotationsCount"]
    article = map["article"]
    highlight = map["highlight"]
    highlightsCount = map["highlightsCount"]
    id = map["id"]
    reactions = map["reactions"]
    sharedAt = map["sharedAt"]
    sharedBy = map["sharedBy"]
    sharedComment = map["sharedComment"]
    sharedWithHighlights = map["sharedWithHighlights"]
  }
}

extension Fields where TypeLock == Objects.FeedArticle {
  func annotationsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "annotationsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.annotationsCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func article<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "article",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.article[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func highlight<Type>(selection: Selection<Type, Objects.Highlight?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.highlight[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func highlightsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "highlightsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.highlightsCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func reactions<Type>(selection: Selection<Type, [Objects.Reaction]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reactions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reactions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sharedAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "sharedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sharedAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func sharedBy<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "sharedBy",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sharedBy[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sharedComment() throws -> String? {
    let field = GraphQLField.leaf(
      name: "sharedComment",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedComment[field.alias!]
    case .mocking:
      return nil
    }
  }

  func sharedWithHighlights() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "sharedWithHighlights",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedWithHighlights[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FeedArticle<T> = Selection<T, Objects.FeedArticle>
}

extension Objects {
  struct FeedArticleEdge {
    let __typename: TypeName = .feedArticleEdge
    let cursor: [String: String]
    let node: [String: Objects.FeedArticle]

    enum TypeName: String, Codable {
      case feedArticleEdge = "FeedArticleEdge"
    }
  }
}

extension Objects.FeedArticleEdge: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "cursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "node":
        if let value = try container.decode(Objects.FeedArticle?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    cursor = map["cursor"]
    node = map["node"]
  }
}

extension Fields where TypeLock == Objects.FeedArticleEdge {
  func cursor() throws -> String {
    let field = GraphQLField.leaf(
      name: "cursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.cursor[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func node<Type>(selection: Selection<Type, Objects.FeedArticle>) throws -> Type {
    let field = GraphQLField.composite(
      name: "node",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.node[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FeedArticleEdge<T> = Selection<T, Objects.FeedArticleEdge>
}

extension Objects {
  struct FeedArticlesError {
    let __typename: TypeName = .feedArticlesError
    let errorCodes: [String: [Enums.FeedArticlesErrorCode]]

    enum TypeName: String, Codable {
      case feedArticlesError = "FeedArticlesError"
    }
  }
}

extension Objects.FeedArticlesError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.FeedArticlesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.FeedArticlesError {
  func errorCodes() throws -> [Enums.FeedArticlesErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FeedArticlesError<T> = Selection<T, Objects.FeedArticlesError>
}

extension Objects {
  struct FeedArticlesSuccess {
    let __typename: TypeName = .feedArticlesSuccess
    let edges: [String: [Objects.FeedArticleEdge]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case feedArticlesSuccess = "FeedArticlesSuccess"
    }
  }
}

extension Objects.FeedArticlesSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.FeedArticleEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    edges = map["edges"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Objects.FeedArticlesSuccess {
  func edges<Type>(selection: Selection<Type, [Objects.FeedArticleEdge]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "edges",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.edges[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
    let field = GraphQLField.composite(
      name: "pageInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageInfo[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FeedArticlesSuccess<T> = Selection<T, Objects.FeedArticlesSuccess>
}

extension Objects {
  struct Filter {
    let __typename: TypeName = .filter
    let category: [String: String]
    let createdAt: [String: DateTime]
    let defaultFilter: [String: Bool]
    let description: [String: String]
    let filter: [String: String]
    let id: [String: String]
    let name: [String: String]
    let position: [String: Int]
    let updatedAt: [String: DateTime]
    let visible: [String: Bool]

    enum TypeName: String, Codable {
      case filter = "Filter"
    }
  }
}

extension Objects.Filter: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "category":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "defaultFilter":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "position":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "visible":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    category = map["category"]
    createdAt = map["createdAt"]
    defaultFilter = map["defaultFilter"]
    description = map["description"]
    filter = map["filter"]
    id = map["id"]
    name = map["name"]
    position = map["position"]
    updatedAt = map["updatedAt"]
    visible = map["visible"]
  }
}

extension Fields where TypeLock == Objects.Filter {
  func category() throws -> String {
    let field = GraphQLField.leaf(
      name: "category",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.category[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func defaultFilter() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "defaultFilter",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.defaultFilter[field.alias!]
    case .mocking:
      return nil
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func filter() throws -> String {
    let field = GraphQLField.leaf(
      name: "filter",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func position() throws -> Int {
    let field = GraphQLField.leaf(
      name: "position",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.position[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func visible() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "visible",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.visible[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Filter<T> = Selection<T, Objects.Filter>
}

extension Objects {
  struct FiltersError {
    let __typename: TypeName = .filtersError
    let errorCodes: [String: [Enums.FiltersErrorCode]]

    enum TypeName: String, Codable {
      case filtersError = "FiltersError"
    }
  }
}

extension Objects.FiltersError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.FiltersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.FiltersError {
  func errorCodes() throws -> [Enums.FiltersErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FiltersError<T> = Selection<T, Objects.FiltersError>
}

extension Objects {
  struct FiltersSuccess {
    let __typename: TypeName = .filtersSuccess
    let filters: [String: [Objects.Filter]]

    enum TypeName: String, Codable {
      case filtersSuccess = "FiltersSuccess"
    }
  }
}

extension Objects.FiltersSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "filters":
        if let value = try container.decode([Objects.Filter]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    filters = map["filters"]
  }
}

extension Fields where TypeLock == Objects.FiltersSuccess {
  func filters<Type>(selection: Selection<Type, [Objects.Filter]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filters",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filters[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FiltersSuccess<T> = Selection<T, Objects.FiltersSuccess>
}

extension Objects {
  struct GenerateApiKeyError {
    let __typename: TypeName = .generateApiKeyError
    let errorCodes: [String: [Enums.GenerateApiKeyErrorCode]]

    enum TypeName: String, Codable {
      case generateApiKeyError = "GenerateApiKeyError"
    }
  }
}

extension Objects.GenerateApiKeyError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GenerateApiKeyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GenerateApiKeyError {
  func errorCodes() throws -> [Enums.GenerateApiKeyErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GenerateApiKeyError<T> = Selection<T, Objects.GenerateApiKeyError>
}

extension Objects {
  struct GenerateApiKeySuccess {
    let __typename: TypeName = .generateApiKeySuccess
    let apiKey: [String: Objects.ApiKey]

    enum TypeName: String, Codable {
      case generateApiKeySuccess = "GenerateApiKeySuccess"
    }
  }
}

extension Objects.GenerateApiKeySuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKey":
        if let value = try container.decode(Objects.ApiKey?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    apiKey = map["apiKey"]
  }
}

extension Fields where TypeLock == Objects.GenerateApiKeySuccess {
  func apiKey<Type>(selection: Selection<Type, Objects.ApiKey>) throws -> Type {
    let field = GraphQLField.composite(
      name: "apiKey",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.apiKey[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GenerateApiKeySuccess<T> = Selection<T, Objects.GenerateApiKeySuccess>
}

extension Objects {
  struct GetFollowersError {
    let __typename: TypeName = .getFollowersError
    let errorCodes: [String: [Enums.GetFollowersErrorCode]]

    enum TypeName: String, Codable {
      case getFollowersError = "GetFollowersError"
    }
  }
}

extension Objects.GetFollowersError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetFollowersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GetFollowersError {
  func errorCodes() throws -> [Enums.GetFollowersErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowersError<T> = Selection<T, Objects.GetFollowersError>
}

extension Objects {
  struct GetFollowersSuccess {
    let __typename: TypeName = .getFollowersSuccess
    let followers: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case getFollowersSuccess = "GetFollowersSuccess"
    }
  }
}

extension Objects.GetFollowersSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "followers":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    followers = map["followers"]
  }
}

extension Fields where TypeLock == Objects.GetFollowersSuccess {
  func followers<Type>(selection: Selection<Type, [Objects.User]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "followers",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.followers[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowersSuccess<T> = Selection<T, Objects.GetFollowersSuccess>
}

extension Objects {
  struct GetFollowingError {
    let __typename: TypeName = .getFollowingError
    let errorCodes: [String: [Enums.GetFollowingErrorCode]]

    enum TypeName: String, Codable {
      case getFollowingError = "GetFollowingError"
    }
  }
}

extension Objects.GetFollowingError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetFollowingErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GetFollowingError {
  func errorCodes() throws -> [Enums.GetFollowingErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowingError<T> = Selection<T, Objects.GetFollowingError>
}

extension Objects {
  struct GetFollowingSuccess {
    let __typename: TypeName = .getFollowingSuccess
    let following: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case getFollowingSuccess = "GetFollowingSuccess"
    }
  }
}

extension Objects.GetFollowingSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "following":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    following = map["following"]
  }
}

extension Fields where TypeLock == Objects.GetFollowingSuccess {
  func following<Type>(selection: Selection<Type, [Objects.User]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "following",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.following[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowingSuccess<T> = Selection<T, Objects.GetFollowingSuccess>
}

extension Objects {
  struct GetUserPersonalizationError {
    let __typename: TypeName = .getUserPersonalizationError
    let errorCodes: [String: [Enums.GetUserPersonalizationErrorCode]]

    enum TypeName: String, Codable {
      case getUserPersonalizationError = "GetUserPersonalizationError"
    }
  }
}

extension Objects.GetUserPersonalizationError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetUserPersonalizationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GetUserPersonalizationError {
  func errorCodes() throws -> [Enums.GetUserPersonalizationErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetUserPersonalizationError<T> = Selection<T, Objects.GetUserPersonalizationError>
}

extension Objects {
  struct GetUserPersonalizationSuccess {
    let __typename: TypeName = .getUserPersonalizationSuccess
    let userPersonalization: [String: Objects.UserPersonalization]

    enum TypeName: String, Codable {
      case getUserPersonalizationSuccess = "GetUserPersonalizationSuccess"
    }
  }
}

extension Objects.GetUserPersonalizationSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "userPersonalization":
        if let value = try container.decode(Objects.UserPersonalization?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    userPersonalization = map["userPersonalization"]
  }
}

extension Fields where TypeLock == Objects.GetUserPersonalizationSuccess {
  func userPersonalization<Type>(selection: Selection<Type, Objects.UserPersonalization?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "userPersonalization",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.userPersonalization[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetUserPersonalizationSuccess<T> = Selection<T, Objects.GetUserPersonalizationSuccess>
}

extension Objects {
  struct GoogleSignupError {
    let __typename: TypeName = .googleSignupError
    let errorCodes: [String: [Enums.SignupErrorCode?]]

    enum TypeName: String, Codable {
      case googleSignupError = "GoogleSignupError"
    }
  }
}

extension Objects.GoogleSignupError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SignupErrorCode?]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GoogleSignupError {
  func errorCodes() throws -> [Enums.SignupErrorCode?] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GoogleSignupError<T> = Selection<T, Objects.GoogleSignupError>
}

extension Objects {
  struct GoogleSignupSuccess {
    let __typename: TypeName = .googleSignupSuccess
    let me: [String: Objects.User]

    enum TypeName: String, Codable {
      case googleSignupSuccess = "GoogleSignupSuccess"
    }
  }
}

extension Objects.GoogleSignupSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "me":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    me = map["me"]
  }
}

extension Fields where TypeLock == Objects.GoogleSignupSuccess {
  func me<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "me",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.me[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GoogleSignupSuccess<T> = Selection<T, Objects.GoogleSignupSuccess>
}

extension Objects {
  struct GroupsError {
    let __typename: TypeName = .groupsError
    let errorCodes: [String: [Enums.GroupsErrorCode]]

    enum TypeName: String, Codable {
      case groupsError = "GroupsError"
    }
  }
}

extension Objects.GroupsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GroupsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.GroupsError {
  func errorCodes() throws -> [Enums.GroupsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GroupsError<T> = Selection<T, Objects.GroupsError>
}

extension Objects {
  struct GroupsSuccess {
    let __typename: TypeName = .groupsSuccess
    let groups: [String: [Objects.RecommendationGroup]]

    enum TypeName: String, Codable {
      case groupsSuccess = "GroupsSuccess"
    }
  }
}

extension Objects.GroupsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "groups":
        if let value = try container.decode([Objects.RecommendationGroup]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    groups = map["groups"]
  }
}

extension Fields where TypeLock == Objects.GroupsSuccess {
  func groups<Type>(selection: Selection<Type, [Objects.RecommendationGroup]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "groups",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.groups[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GroupsSuccess<T> = Selection<T, Objects.GroupsSuccess>
}

extension Objects {
  struct Highlight {
    let __typename: TypeName = .highlight
    let annotation: [String: String]
    let color: [String: String]
    let createdAt: [String: DateTime]
    let createdByMe: [String: Bool]
    let highlightPositionAnchorIndex: [String: Int]
    let highlightPositionPercent: [String: Double]
    let html: [String: String]
    let id: [String: String]
    let labels: [String: [Objects.Label]]
    let patch: [String: String]
    let prefix: [String: String]
    let quote: [String: String]
    let reactions: [String: [Objects.Reaction]]
    let replies: [String: [Objects.HighlightReply]]
    let sharedAt: [String: DateTime]
    let shortId: [String: String]
    let suffix: [String: String]
    let type: [String: Enums.HighlightType]
    let updatedAt: [String: DateTime]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case highlight = "Highlight"
    }
  }
}

extension Objects.Highlight: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "annotation":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "color":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdByMe":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightPositionAnchorIndex":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightPositionPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "html":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "patch":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "prefix":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "quote":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reactions":
        if let value = try container.decode([Objects.Reaction]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "replies":
        if let value = try container.decode([Objects.HighlightReply]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "shortId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "suffix":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(Enums.HighlightType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    annotation = map["annotation"]
    color = map["color"]
    createdAt = map["createdAt"]
    createdByMe = map["createdByMe"]
    highlightPositionAnchorIndex = map["highlightPositionAnchorIndex"]
    highlightPositionPercent = map["highlightPositionPercent"]
    html = map["html"]
    id = map["id"]
    labels = map["labels"]
    patch = map["patch"]
    prefix = map["prefix"]
    quote = map["quote"]
    reactions = map["reactions"]
    replies = map["replies"]
    sharedAt = map["sharedAt"]
    shortId = map["shortId"]
    suffix = map["suffix"]
    type = map["type"]
    updatedAt = map["updatedAt"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.Highlight {
  func annotation() throws -> String? {
    let field = GraphQLField.leaf(
      name: "annotation",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.annotation[field.alias!]
    case .mocking:
      return nil
    }
  }

  func color() throws -> String? {
    let field = GraphQLField.leaf(
      name: "color",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.color[field.alias!]
    case .mocking:
      return nil
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func createdByMe() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "createdByMe",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdByMe[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func highlightPositionAnchorIndex() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "highlightPositionAnchorIndex",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.highlightPositionAnchorIndex[field.alias!]
    case .mocking:
      return nil
    }
  }

  func highlightPositionPercent() throws -> Double? {
    let field = GraphQLField.leaf(
      name: "highlightPositionPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.highlightPositionPercent[field.alias!]
    case .mocking:
      return nil
    }
  }

  func html() throws -> String? {
    let field = GraphQLField.leaf(
      name: "html",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.html[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func labels<Type>(selection: Selection<Type, [Objects.Label]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.labels[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func patch() throws -> String? {
    let field = GraphQLField.leaf(
      name: "patch",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.patch[field.alias!]
    case .mocking:
      return nil
    }
  }

  func prefix() throws -> String? {
    let field = GraphQLField.leaf(
      name: "prefix",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.prefix[field.alias!]
    case .mocking:
      return nil
    }
  }

  func quote() throws -> String? {
    let field = GraphQLField.leaf(
      name: "quote",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.quote[field.alias!]
    case .mocking:
      return nil
    }
  }

  func reactions<Type>(selection: Selection<Type, [Objects.Reaction]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reactions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reactions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func replies<Type>(selection: Selection<Type, [Objects.HighlightReply]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "replies",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.replies[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sharedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "sharedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func shortId() throws -> String {
    let field = GraphQLField.leaf(
      name: "shortId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.shortId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func suffix() throws -> String? {
    let field = GraphQLField.leaf(
      name: "suffix",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.suffix[field.alias!]
    case .mocking:
      return nil
    }
  }

  func type() throws -> Enums.HighlightType {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.HighlightType.allCases.first!
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Highlight<T> = Selection<T, Objects.Highlight>
}

extension Objects {
  struct HighlightReply {
    let __typename: TypeName = .highlightReply
    let createdAt: [String: DateTime]
    let highlight: [String: Objects.Highlight]
    let id: [String: String]
    let text: [String: String]
    let updatedAt: [String: DateTime]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case highlightReply = "HighlightReply"
    }
  }
}

extension Objects.HighlightReply: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "text":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    highlight = map["highlight"]
    id = map["id"]
    text = map["text"]
    updatedAt = map["updatedAt"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.HighlightReply {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func text() throws -> String {
    let field = GraphQLField.leaf(
      name: "text",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.text[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias HighlightReply<T> = Selection<T, Objects.HighlightReply>
}

extension Objects {
  struct HighlightStats {
    let __typename: TypeName = .highlightStats
    let highlightCount: [String: Int]

    enum TypeName: String, Codable {
      case highlightStats = "HighlightStats"
    }
  }
}

extension Objects.HighlightStats: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlightCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlightCount = map["highlightCount"]
  }
}

extension Fields where TypeLock == Objects.HighlightStats {
  func highlightCount() throws -> Int {
    let field = GraphQLField.leaf(
      name: "highlightCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlightCount[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias HighlightStats<T> = Selection<T, Objects.HighlightStats>
}

extension Objects {
  struct ImportFromIntegrationError {
    let __typename: TypeName = .importFromIntegrationError
    let errorCodes: [String: [Enums.ImportFromIntegrationErrorCode]]

    enum TypeName: String, Codable {
      case importFromIntegrationError = "ImportFromIntegrationError"
    }
  }
}

extension Objects.ImportFromIntegrationError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ImportFromIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ImportFromIntegrationError {
  func errorCodes() throws -> [Enums.ImportFromIntegrationErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ImportFromIntegrationError<T> = Selection<T, Objects.ImportFromIntegrationError>
}

extension Objects {
  struct ImportFromIntegrationSuccess {
    let __typename: TypeName = .importFromIntegrationSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case importFromIntegrationSuccess = "ImportFromIntegrationSuccess"
    }
  }
}

extension Objects.ImportFromIntegrationSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.ImportFromIntegrationSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ImportFromIntegrationSuccess<T> = Selection<T, Objects.ImportFromIntegrationSuccess>
}

extension Objects {
  struct Integration {
    let __typename: TypeName = .integration
    let createdAt: [String: DateTime]
    let enabled: [String: Bool]
    let id: [String: String]
    let name: [String: String]
    let taskName: [String: String]
    let token: [String: String]
    let type: [String: Enums.IntegrationType]
    let updatedAt: [String: DateTime]

    enum TypeName: String, Codable {
      case integration = "Integration"
    }
  }
}

extension Objects.Integration: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "enabled":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "taskName":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "token":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(Enums.IntegrationType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    enabled = map["enabled"]
    id = map["id"]
    name = map["name"]
    taskName = map["taskName"]
    token = map["token"]
    type = map["type"]
    updatedAt = map["updatedAt"]
  }
}

extension Fields where TypeLock == Objects.Integration {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func enabled() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "enabled",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.enabled[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func taskName() throws -> String? {
    let field = GraphQLField.leaf(
      name: "taskName",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.taskName[field.alias!]
    case .mocking:
      return nil
    }
  }

  func token() throws -> String {
    let field = GraphQLField.leaf(
      name: "token",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.token[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func type() throws -> Enums.IntegrationType {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.IntegrationType.allCases.first!
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Integration<T> = Selection<T, Objects.Integration>
}

extension Objects {
  struct IntegrationsError {
    let __typename: TypeName = .integrationsError
    let errorCodes: [String: [Enums.IntegrationsErrorCode]]

    enum TypeName: String, Codable {
      case integrationsError = "IntegrationsError"
    }
  }
}

extension Objects.IntegrationsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.IntegrationsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.IntegrationsError {
  func errorCodes() throws -> [Enums.IntegrationsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias IntegrationsError<T> = Selection<T, Objects.IntegrationsError>
}

extension Objects {
  struct IntegrationsSuccess {
    let __typename: TypeName = .integrationsSuccess
    let integrations: [String: [Objects.Integration]]

    enum TypeName: String, Codable {
      case integrationsSuccess = "IntegrationsSuccess"
    }
  }
}

extension Objects.IntegrationsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "integrations":
        if let value = try container.decode([Objects.Integration]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    integrations = map["integrations"]
  }
}

extension Fields where TypeLock == Objects.IntegrationsSuccess {
  func integrations<Type>(selection: Selection<Type, [Objects.Integration]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "integrations",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.integrations[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias IntegrationsSuccess<T> = Selection<T, Objects.IntegrationsSuccess>
}

extension Objects {
  struct JoinGroupError {
    let __typename: TypeName = .joinGroupError
    let errorCodes: [String: [Enums.JoinGroupErrorCode]]

    enum TypeName: String, Codable {
      case joinGroupError = "JoinGroupError"
    }
  }
}

extension Objects.JoinGroupError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.JoinGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.JoinGroupError {
  func errorCodes() throws -> [Enums.JoinGroupErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias JoinGroupError<T> = Selection<T, Objects.JoinGroupError>
}

extension Objects {
  struct JoinGroupSuccess {
    let __typename: TypeName = .joinGroupSuccess
    let group: [String: Objects.RecommendationGroup]

    enum TypeName: String, Codable {
      case joinGroupSuccess = "JoinGroupSuccess"
    }
  }
}

extension Objects.JoinGroupSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "group":
        if let value = try container.decode(Objects.RecommendationGroup?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    group = map["group"]
  }
}

extension Fields where TypeLock == Objects.JoinGroupSuccess {
  func group<Type>(selection: Selection<Type, Objects.RecommendationGroup>) throws -> Type {
    let field = GraphQLField.composite(
      name: "group",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.group[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias JoinGroupSuccess<T> = Selection<T, Objects.JoinGroupSuccess>
}

extension Objects {
  struct Label {
    let __typename: TypeName = .label
    let color: [String: String]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let id: [String: String]
    let `internal`: [String: Bool]
    let name: [String: String]
    let position: [String: Int]

    enum TypeName: String, Codable {
      case label = "Label"
    }
  }
}

extension Objects.Label: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "color":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "internal":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "position":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    color = map["color"]
    createdAt = map["createdAt"]
    description = map["description"]
    id = map["id"]
    self.internal = map["internal"]
    name = map["name"]
    position = map["position"]
  }
}

extension Fields where TypeLock == Objects.Label {
  func color() throws -> String {
    let field = GraphQLField.leaf(
      name: "color",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.color[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func createdAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.createdAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func `internal`() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "internal",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.internal[field.alias!]
    case .mocking:
      return nil
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func position() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "position",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.position[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Label<T> = Selection<T, Objects.Label>
}

extension Objects {
  struct LabelsError {
    let __typename: TypeName = .labelsError
    let errorCodes: [String: [Enums.LabelsErrorCode]]

    enum TypeName: String, Codable {
      case labelsError = "LabelsError"
    }
  }
}

extension Objects.LabelsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LabelsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.LabelsError {
  func errorCodes() throws -> [Enums.LabelsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LabelsError<T> = Selection<T, Objects.LabelsError>
}

extension Objects {
  struct LabelsSuccess {
    let __typename: TypeName = .labelsSuccess
    let labels: [String: [Objects.Label]]

    enum TypeName: String, Codable {
      case labelsSuccess = "LabelsSuccess"
    }
  }
}

extension Objects.LabelsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    labels = map["labels"]
  }
}

extension Fields where TypeLock == Objects.LabelsSuccess {
  func labels<Type>(selection: Selection<Type, [Objects.Label]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.labels[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LabelsSuccess<T> = Selection<T, Objects.LabelsSuccess>
}

extension Objects {
  struct LeaveGroupError {
    let __typename: TypeName = .leaveGroupError
    let errorCodes: [String: [Enums.LeaveGroupErrorCode]]

    enum TypeName: String, Codable {
      case leaveGroupError = "LeaveGroupError"
    }
  }
}

extension Objects.LeaveGroupError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LeaveGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.LeaveGroupError {
  func errorCodes() throws -> [Enums.LeaveGroupErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LeaveGroupError<T> = Selection<T, Objects.LeaveGroupError>
}

extension Objects {
  struct LeaveGroupSuccess {
    let __typename: TypeName = .leaveGroupSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case leaveGroupSuccess = "LeaveGroupSuccess"
    }
  }
}

extension Objects.LeaveGroupSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.LeaveGroupSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LeaveGroupSuccess<T> = Selection<T, Objects.LeaveGroupSuccess>
}

extension Objects {
  struct Link {
    let __typename: TypeName = .link
    let highlightStats: [String: Objects.HighlightStats]
    let id: [String: String]
    let page: [String: Objects.Page]
    let postedByViewer: [String: Bool]
    let readState: [String: Objects.ReadState]
    let savedAt: [String: DateTime]
    let savedBy: [String: Objects.User]
    let savedByViewer: [String: Bool]
    let shareInfo: [String: Objects.LinkShareInfo]
    let shareStats: [String: Objects.ShareStats]
    let slug: [String: String]
    let updatedAt: [String: DateTime]
    let url: [String: String]

    enum TypeName: String, Codable {
      case link = "Link"
    }
  }
}

extension Objects.Link: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlightStats":
        if let value = try container.decode(Objects.HighlightStats?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "page":
        if let value = try container.decode(Objects.Page?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "postedByViewer":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readState":
        if let value = try container.decode(Objects.ReadState?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedBy":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedByViewer":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "shareInfo":
        if let value = try container.decode(Objects.LinkShareInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "shareStats":
        if let value = try container.decode(Objects.ShareStats?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "slug":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlightStats = map["highlightStats"]
    id = map["id"]
    page = map["page"]
    postedByViewer = map["postedByViewer"]
    readState = map["readState"]
    savedAt = map["savedAt"]
    savedBy = map["savedBy"]
    savedByViewer = map["savedByViewer"]
    shareInfo = map["shareInfo"]
    shareStats = map["shareStats"]
    slug = map["slug"]
    updatedAt = map["updatedAt"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Objects.Link {
  func highlightStats<Type>(selection: Selection<Type, Objects.HighlightStats>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlightStats",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlightStats[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func page<Type>(selection: Selection<Type, Objects.Page>) throws -> Type {
    let field = GraphQLField.composite(
      name: "page",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.page[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func postedByViewer() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "postedByViewer",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.postedByViewer[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func readState<Type>(selection: Selection<Type, Objects.ReadState>) throws -> Type {
    let field = GraphQLField.composite(
      name: "readState",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readState[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func savedAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "savedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savedAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func savedBy<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "savedBy",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savedBy[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func savedByViewer() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "savedByViewer",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savedByViewer[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func shareInfo<Type>(selection: Selection<Type, Objects.LinkShareInfo>) throws -> Type {
    let field = GraphQLField.composite(
      name: "shareInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.shareInfo[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func shareStats<Type>(selection: Selection<Type, Objects.ShareStats>) throws -> Type {
    let field = GraphQLField.composite(
      name: "shareStats",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.shareStats[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func slug() throws -> String {
    let field = GraphQLField.leaf(
      name: "slug",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.slug[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Link<T> = Selection<T, Objects.Link>
}

extension Objects {
  struct LinkShareInfo {
    let __typename: TypeName = .linkShareInfo
    let description: [String: String]
    let imageUrl: [String: String]
    let title: [String: String]

    enum TypeName: String, Codable {
      case linkShareInfo = "LinkShareInfo"
    }
  }
}

extension Objects.LinkShareInfo: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "imageUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "title":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    description = map["description"]
    imageUrl = map["imageUrl"]
    title = map["title"]
  }
}

extension Fields where TypeLock == Objects.LinkShareInfo {
  func description() throws -> String {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.description[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func imageUrl() throws -> String {
    let field = GraphQLField.leaf(
      name: "imageUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.imageUrl[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func title() throws -> String {
    let field = GraphQLField.leaf(
      name: "title",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.title[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LinkShareInfo<T> = Selection<T, Objects.LinkShareInfo>
}

extension Objects {
  struct LogOutError {
    let __typename: TypeName = .logOutError
    let errorCodes: [String: [Enums.LogOutErrorCode]]

    enum TypeName: String, Codable {
      case logOutError = "LogOutError"
    }
  }
}

extension Objects.LogOutError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LogOutErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.LogOutError {
  func errorCodes() throws -> [Enums.LogOutErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LogOutError<T> = Selection<T, Objects.LogOutError>
}

extension Objects {
  struct LogOutSuccess {
    let __typename: TypeName = .logOutSuccess
    let message: [String: String]

    enum TypeName: String, Codable {
      case logOutSuccess = "LogOutSuccess"
    }
  }
}

extension Objects.LogOutSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.LogOutSuccess {
  func message() throws -> String? {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.message[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LogOutSuccess<T> = Selection<T, Objects.LogOutSuccess>
}

extension Objects {
  struct LoginError {
    let __typename: TypeName = .loginError
    let errorCodes: [String: [Enums.LoginErrorCode]]

    enum TypeName: String, Codable {
      case loginError = "LoginError"
    }
  }
}

extension Objects.LoginError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LoginErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.LoginError {
  func errorCodes() throws -> [Enums.LoginErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LoginError<T> = Selection<T, Objects.LoginError>
}

extension Objects {
  struct LoginSuccess {
    let __typename: TypeName = .loginSuccess
    let me: [String: Objects.User]

    enum TypeName: String, Codable {
      case loginSuccess = "LoginSuccess"
    }
  }
}

extension Objects.LoginSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "me":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    me = map["me"]
  }
}

extension Fields where TypeLock == Objects.LoginSuccess {
  func me<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "me",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.me[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LoginSuccess<T> = Selection<T, Objects.LoginSuccess>
}

extension Objects {
  struct MarkEmailAsItemError {
    let __typename: TypeName = .markEmailAsItemError
    let errorCodes: [String: [Enums.MarkEmailAsItemErrorCode]]

    enum TypeName: String, Codable {
      case markEmailAsItemError = "MarkEmailAsItemError"
    }
  }
}

extension Objects.MarkEmailAsItemError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MarkEmailAsItemErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.MarkEmailAsItemError {
  func errorCodes() throws -> [Enums.MarkEmailAsItemErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MarkEmailAsItemError<T> = Selection<T, Objects.MarkEmailAsItemError>
}

extension Objects {
  struct MarkEmailAsItemSuccess {
    let __typename: TypeName = .markEmailAsItemSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case markEmailAsItemSuccess = "MarkEmailAsItemSuccess"
    }
  }
}

extension Objects.MarkEmailAsItemSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.MarkEmailAsItemSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MarkEmailAsItemSuccess<T> = Selection<T, Objects.MarkEmailAsItemSuccess>
}

extension Objects {
  struct MergeHighlightError {
    let __typename: TypeName = .mergeHighlightError
    let errorCodes: [String: [Enums.MergeHighlightErrorCode]]

    enum TypeName: String, Codable {
      case mergeHighlightError = "MergeHighlightError"
    }
  }
}

extension Objects.MergeHighlightError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MergeHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.MergeHighlightError {
  func errorCodes() throws -> [Enums.MergeHighlightErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MergeHighlightError<T> = Selection<T, Objects.MergeHighlightError>
}

extension Objects {
  struct MergeHighlightSuccess {
    let __typename: TypeName = .mergeHighlightSuccess
    let highlight: [String: Objects.Highlight]
    let overlapHighlightIdList: [String: [String]]

    enum TypeName: String, Codable {
      case mergeHighlightSuccess = "MergeHighlightSuccess"
    }
  }
}

extension Objects.MergeHighlightSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "overlapHighlightIdList":
        if let value = try container.decode([String]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlight = map["highlight"]
    overlapHighlightIdList = map["overlapHighlightIdList"]
  }
}

extension Fields where TypeLock == Objects.MergeHighlightSuccess {
  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func overlapHighlightIdList() throws -> [String] {
    let field = GraphQLField.leaf(
      name: "overlapHighlightIdList",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.overlapHighlightIdList[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MergeHighlightSuccess<T> = Selection<T, Objects.MergeHighlightSuccess>
}

extension Objects {
  struct MoveFilterError {
    let __typename: TypeName = .moveFilterError
    let errorCodes: [String: [Enums.MoveFilterErrorCode]]

    enum TypeName: String, Codable {
      case moveFilterError = "MoveFilterError"
    }
  }
}

extension Objects.MoveFilterError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MoveFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.MoveFilterError {
  func errorCodes() throws -> [Enums.MoveFilterErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveFilterError<T> = Selection<T, Objects.MoveFilterError>
}

extension Objects {
  struct MoveFilterSuccess {
    let __typename: TypeName = .moveFilterSuccess
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case moveFilterSuccess = "MoveFilterSuccess"
    }
  }
}

extension Objects.MoveFilterSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    filter = map["filter"]
  }
}

extension Fields where TypeLock == Objects.MoveFilterSuccess {
  func filter<Type>(selection: Selection<Type, Objects.Filter>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filter",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveFilterSuccess<T> = Selection<T, Objects.MoveFilterSuccess>
}

extension Objects {
  struct MoveLabelError {
    let __typename: TypeName = .moveLabelError
    let errorCodes: [String: [Enums.MoveLabelErrorCode]]

    enum TypeName: String, Codable {
      case moveLabelError = "MoveLabelError"
    }
  }
}

extension Objects.MoveLabelError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MoveLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.MoveLabelError {
  func errorCodes() throws -> [Enums.MoveLabelErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveLabelError<T> = Selection<T, Objects.MoveLabelError>
}

extension Objects {
  struct MoveLabelSuccess {
    let __typename: TypeName = .moveLabelSuccess
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case moveLabelSuccess = "MoveLabelSuccess"
    }
  }
}

extension Objects.MoveLabelSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    label = map["label"]
  }
}

extension Fields where TypeLock == Objects.MoveLabelSuccess {
  func label<Type>(selection: Selection<Type, Objects.Label>) throws -> Type {
    let field = GraphQLField.composite(
      name: "label",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.label[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveLabelSuccess<T> = Selection<T, Objects.MoveLabelSuccess>
}

extension Objects {
  struct Mutation {
    let __typename: TypeName = .mutation
    let addPopularRead: [String: Unions.AddPopularReadResult]
    let bulkAction: [String: Unions.BulkActionResult]
    let createArticle: [String: Unions.CreateArticleResult]
    let createArticleSavingRequest: [String: Unions.CreateArticleSavingRequestResult]
    let createGroup: [String: Unions.CreateGroupResult]
    let createHighlight: [String: Unions.CreateHighlightResult]
    let createLabel: [String: Unions.CreateLabelResult]
    let createNewsletterEmail: [String: Unions.CreateNewsletterEmailResult]
    let deleteAccount: [String: Unions.DeleteAccountResult]
    let deleteFilter: [String: Unions.DeleteFilterResult]
    let deleteHighlight: [String: Unions.DeleteHighlightResult]
    let deleteIntegration: [String: Unions.DeleteIntegrationResult]
    let deleteLabel: [String: Unions.DeleteLabelResult]
    let deleteNewsletterEmail: [String: Unions.DeleteNewsletterEmailResult]
    let deleteRule: [String: Unions.DeleteRuleResult]
    let deleteWebhook: [String: Unions.DeleteWebhookResult]
    let generateApiKey: [String: Unions.GenerateApiKeyResult]
    let googleLogin: [String: Unions.LoginResult]
    let googleSignup: [String: Unions.GoogleSignupResult]
    let importFromIntegration: [String: Unions.ImportFromIntegrationResult]
    let joinGroup: [String: Unions.JoinGroupResult]
    let leaveGroup: [String: Unions.LeaveGroupResult]
    let logOut: [String: Unions.LogOutResult]
    let markEmailAsItem: [String: Unions.MarkEmailAsItemResult]
    let mergeHighlight: [String: Unions.MergeHighlightResult]
    let moveFilter: [String: Unions.MoveFilterResult]
    let moveLabel: [String: Unions.MoveLabelResult]
    let optInFeature: [String: Unions.OptInFeatureResult]
    let recommend: [String: Unions.RecommendResult]
    let recommendHighlights: [String: Unions.RecommendHighlightsResult]
    let reportItem: [String: Objects.ReportItemResult]
    let revokeApiKey: [String: Unions.RevokeApiKeyResult]
    let saveArticleReadingProgress: [String: Unions.SaveArticleReadingProgressResult]
    let saveFile: [String: Unions.SaveResult]
    let saveFilter: [String: Unions.SaveFilterResult]
    let savePage: [String: Unions.SaveResult]
    let saveUrl: [String: Unions.SaveResult]
    let setBookmarkArticle: [String: Unions.SetBookmarkArticleResult]
    let setDeviceToken: [String: Unions.SetDeviceTokenResult]
    let setFavoriteArticle: [String: Unions.SetFavoriteArticleResult]
    let setIntegration: [String: Unions.SetIntegrationResult]
    let setLabels: [String: Unions.SetLabelsResult]
    let setLabelsForHighlight: [String: Unions.SetLabelsResult]
    let setLinkArchived: [String: Unions.ArchiveLinkResult]
    let setRule: [String: Unions.SetRuleResult]
    let setUserPersonalization: [String: Unions.SetUserPersonalizationResult]
    let setWebhook: [String: Unions.SetWebhookResult]
    let subscribe: [String: Unions.SubscribeResult]
    let unsubscribe: [String: Unions.UnsubscribeResult]
    let updateEmail: [String: Unions.UpdateEmailResult]
    let updateFilter: [String: Unions.UpdateFilterResult]
    let updateHighlight: [String: Unions.UpdateHighlightResult]
    let updateLabel: [String: Unions.UpdateLabelResult]
    let updatePage: [String: Unions.UpdatePageResult]
    let updateSubscription: [String: Unions.UpdateSubscriptionResult]
    let updateUser: [String: Unions.UpdateUserResult]
    let updateUserProfile: [String: Unions.UpdateUserProfileResult]
    let uploadFileRequest: [String: Unions.UploadFileRequestResult]
    let uploadImportFile: [String: Unions.UploadImportFileResult]

    enum TypeName: String, Codable {
      case mutation = "Mutation"
    }
  }
}

extension Objects.Mutation: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "addPopularRead":
        if let value = try container.decode(Unions.AddPopularReadResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "bulkAction":
        if let value = try container.decode(Unions.BulkActionResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createArticle":
        if let value = try container.decode(Unions.CreateArticleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createArticleSavingRequest":
        if let value = try container.decode(Unions.CreateArticleSavingRequestResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createGroup":
        if let value = try container.decode(Unions.CreateGroupResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createHighlight":
        if let value = try container.decode(Unions.CreateHighlightResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createLabel":
        if let value = try container.decode(Unions.CreateLabelResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createNewsletterEmail":
        if let value = try container.decode(Unions.CreateNewsletterEmailResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteAccount":
        if let value = try container.decode(Unions.DeleteAccountResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteFilter":
        if let value = try container.decode(Unions.DeleteFilterResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteHighlight":
        if let value = try container.decode(Unions.DeleteHighlightResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteIntegration":
        if let value = try container.decode(Unions.DeleteIntegrationResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteLabel":
        if let value = try container.decode(Unions.DeleteLabelResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteNewsletterEmail":
        if let value = try container.decode(Unions.DeleteNewsletterEmailResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteRule":
        if let value = try container.decode(Unions.DeleteRuleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deleteWebhook":
        if let value = try container.decode(Unions.DeleteWebhookResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "generateApiKey":
        if let value = try container.decode(Unions.GenerateApiKeyResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "googleLogin":
        if let value = try container.decode(Unions.LoginResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "googleSignup":
        if let value = try container.decode(Unions.GoogleSignupResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "importFromIntegration":
        if let value = try container.decode(Unions.ImportFromIntegrationResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "joinGroup":
        if let value = try container.decode(Unions.JoinGroupResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "leaveGroup":
        if let value = try container.decode(Unions.LeaveGroupResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "logOut":
        if let value = try container.decode(Unions.LogOutResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "markEmailAsItem":
        if let value = try container.decode(Unions.MarkEmailAsItemResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "mergeHighlight":
        if let value = try container.decode(Unions.MergeHighlightResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "moveFilter":
        if let value = try container.decode(Unions.MoveFilterResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "moveLabel":
        if let value = try container.decode(Unions.MoveLabelResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "optInFeature":
        if let value = try container.decode(Unions.OptInFeatureResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recommend":
        if let value = try container.decode(Unions.RecommendResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recommendHighlights":
        if let value = try container.decode(Unions.RecommendHighlightsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reportItem":
        if let value = try container.decode(Objects.ReportItemResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "revokeApiKey":
        if let value = try container.decode(Unions.RevokeApiKeyResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "saveArticleReadingProgress":
        if let value = try container.decode(Unions.SaveArticleReadingProgressResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "saveFile":
        if let value = try container.decode(Unions.SaveResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "saveFilter":
        if let value = try container.decode(Unions.SaveFilterResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savePage":
        if let value = try container.decode(Unions.SaveResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "saveUrl":
        if let value = try container.decode(Unions.SaveResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setBookmarkArticle":
        if let value = try container.decode(Unions.SetBookmarkArticleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setDeviceToken":
        if let value = try container.decode(Unions.SetDeviceTokenResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setFavoriteArticle":
        if let value = try container.decode(Unions.SetFavoriteArticleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setIntegration":
        if let value = try container.decode(Unions.SetIntegrationResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setLabels":
        if let value = try container.decode(Unions.SetLabelsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setLabelsForHighlight":
        if let value = try container.decode(Unions.SetLabelsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setLinkArchived":
        if let value = try container.decode(Unions.ArchiveLinkResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setRule":
        if let value = try container.decode(Unions.SetRuleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setUserPersonalization":
        if let value = try container.decode(Unions.SetUserPersonalizationResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "setWebhook":
        if let value = try container.decode(Unions.SetWebhookResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscribe":
        if let value = try container.decode(Unions.SubscribeResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubscribe":
        if let value = try container.decode(Unions.UnsubscribeResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateEmail":
        if let value = try container.decode(Unions.UpdateEmailResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateFilter":
        if let value = try container.decode(Unions.UpdateFilterResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateHighlight":
        if let value = try container.decode(Unions.UpdateHighlightResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateLabel":
        if let value = try container.decode(Unions.UpdateLabelResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatePage":
        if let value = try container.decode(Unions.UpdatePageResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateSubscription":
        if let value = try container.decode(Unions.UpdateSubscriptionResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateUser":
        if let value = try container.decode(Unions.UpdateUserResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateUserProfile":
        if let value = try container.decode(Unions.UpdateUserProfileResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadFileRequest":
        if let value = try container.decode(Unions.UploadFileRequestResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadImportFile":
        if let value = try container.decode(Unions.UploadImportFileResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    addPopularRead = map["addPopularRead"]
    bulkAction = map["bulkAction"]
    createArticle = map["createArticle"]
    createArticleSavingRequest = map["createArticleSavingRequest"]
    createGroup = map["createGroup"]
    createHighlight = map["createHighlight"]
    createLabel = map["createLabel"]
    createNewsletterEmail = map["createNewsletterEmail"]
    deleteAccount = map["deleteAccount"]
    deleteFilter = map["deleteFilter"]
    deleteHighlight = map["deleteHighlight"]
    deleteIntegration = map["deleteIntegration"]
    deleteLabel = map["deleteLabel"]
    deleteNewsletterEmail = map["deleteNewsletterEmail"]
    deleteRule = map["deleteRule"]
    deleteWebhook = map["deleteWebhook"]
    generateApiKey = map["generateApiKey"]
    googleLogin = map["googleLogin"]
    googleSignup = map["googleSignup"]
    importFromIntegration = map["importFromIntegration"]
    joinGroup = map["joinGroup"]
    leaveGroup = map["leaveGroup"]
    logOut = map["logOut"]
    markEmailAsItem = map["markEmailAsItem"]
    mergeHighlight = map["mergeHighlight"]
    moveFilter = map["moveFilter"]
    moveLabel = map["moveLabel"]
    optInFeature = map["optInFeature"]
    recommend = map["recommend"]
    recommendHighlights = map["recommendHighlights"]
    reportItem = map["reportItem"]
    revokeApiKey = map["revokeApiKey"]
    saveArticleReadingProgress = map["saveArticleReadingProgress"]
    saveFile = map["saveFile"]
    saveFilter = map["saveFilter"]
    savePage = map["savePage"]
    saveUrl = map["saveUrl"]
    setBookmarkArticle = map["setBookmarkArticle"]
    setDeviceToken = map["setDeviceToken"]
    setFavoriteArticle = map["setFavoriteArticle"]
    setIntegration = map["setIntegration"]
    setLabels = map["setLabels"]
    setLabelsForHighlight = map["setLabelsForHighlight"]
    setLinkArchived = map["setLinkArchived"]
    setRule = map["setRule"]
    setUserPersonalization = map["setUserPersonalization"]
    setWebhook = map["setWebhook"]
    subscribe = map["subscribe"]
    unsubscribe = map["unsubscribe"]
    updateEmail = map["updateEmail"]
    updateFilter = map["updateFilter"]
    updateHighlight = map["updateHighlight"]
    updateLabel = map["updateLabel"]
    updatePage = map["updatePage"]
    updateSubscription = map["updateSubscription"]
    updateUser = map["updateUser"]
    updateUserProfile = map["updateUserProfile"]
    uploadFileRequest = map["uploadFileRequest"]
    uploadImportFile = map["uploadImportFile"]
  }
}

extension Fields where TypeLock == Objects.Mutation {
  func addPopularRead<Type>(name: String, selection: Selection<Type, Unions.AddPopularReadResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "addPopularRead",
      arguments: [Argument(name: "name", type: "String!", value: name)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.addPopularRead[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func bulkAction<Type>(action: Enums.BulkActionType, async: OptionalArgument<Bool> = .absent(), expectedCount: OptionalArgument<Int> = .absent(), labelIds: OptionalArgument<[String]> = .absent(), query: String, selection: Selection<Type, Unions.BulkActionResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "bulkAction",
      arguments: [Argument(name: "action", type: "BulkActionType!", value: action), Argument(name: "async", type: "Boolean", value: async), Argument(name: "expectedCount", type: "Int", value: expectedCount), Argument(name: "labelIds", type: "[ID!]", value: labelIds), Argument(name: "query", type: "String!", value: query)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.bulkAction[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createArticle<Type>(input: InputObjects.CreateArticleInput, selection: Selection<Type, Unions.CreateArticleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createArticle",
      arguments: [Argument(name: "input", type: "CreateArticleInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createArticleSavingRequest<Type>(input: InputObjects.CreateArticleSavingRequestInput, selection: Selection<Type, Unions.CreateArticleSavingRequestResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createArticleSavingRequest",
      arguments: [Argument(name: "input", type: "CreateArticleSavingRequestInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createArticleSavingRequest[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createGroup<Type>(input: InputObjects.CreateGroupInput, selection: Selection<Type, Unions.CreateGroupResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createGroup",
      arguments: [Argument(name: "input", type: "CreateGroupInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createGroup[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createHighlight<Type>(input: InputObjects.CreateHighlightInput, selection: Selection<Type, Unions.CreateHighlightResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createHighlight",
      arguments: [Argument(name: "input", type: "CreateHighlightInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createHighlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createLabel<Type>(input: InputObjects.CreateLabelInput, selection: Selection<Type, Unions.CreateLabelResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createLabel",
      arguments: [Argument(name: "input", type: "CreateLabelInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createLabel[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createNewsletterEmail<Type>(selection: Selection<Type, Unions.CreateNewsletterEmailResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "createNewsletterEmail",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createNewsletterEmail[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteAccount<Type>(userId: String, selection: Selection<Type, Unions.DeleteAccountResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteAccount",
      arguments: [Argument(name: "userID", type: "ID!", value: userId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteAccount[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteFilter<Type>(id: String, selection: Selection<Type, Unions.DeleteFilterResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteFilter",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteFilter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteHighlight<Type>(highlightId: String, selection: Selection<Type, Unions.DeleteHighlightResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteHighlight",
      arguments: [Argument(name: "highlightId", type: "ID!", value: highlightId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteHighlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteIntegration<Type>(id: String, selection: Selection<Type, Unions.DeleteIntegrationResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteIntegration",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteIntegration[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteLabel<Type>(id: String, selection: Selection<Type, Unions.DeleteLabelResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteLabel",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteLabel[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteNewsletterEmail<Type>(newsletterEmailId: String, selection: Selection<Type, Unions.DeleteNewsletterEmailResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteNewsletterEmail",
      arguments: [Argument(name: "newsletterEmailId", type: "ID!", value: newsletterEmailId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteNewsletterEmail[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteRule<Type>(id: String, selection: Selection<Type, Unions.DeleteRuleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteRule",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteRule[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deleteWebhook<Type>(id: String, selection: Selection<Type, Unions.DeleteWebhookResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deleteWebhook",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deleteWebhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func generateApiKey<Type>(input: InputObjects.GenerateApiKeyInput, selection: Selection<Type, Unions.GenerateApiKeyResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "generateApiKey",
      arguments: [Argument(name: "input", type: "GenerateApiKeyInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.generateApiKey[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func googleLogin<Type>(input: InputObjects.GoogleLoginInput, selection: Selection<Type, Unions.LoginResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "googleLogin",
      arguments: [Argument(name: "input", type: "GoogleLoginInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.googleLogin[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func googleSignup<Type>(input: InputObjects.GoogleSignupInput, selection: Selection<Type, Unions.GoogleSignupResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "googleSignup",
      arguments: [Argument(name: "input", type: "GoogleSignupInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.googleSignup[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func importFromIntegration<Type>(integrationId: String, selection: Selection<Type, Unions.ImportFromIntegrationResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "importFromIntegration",
      arguments: [Argument(name: "integrationId", type: "ID!", value: integrationId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.importFromIntegration[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func joinGroup<Type>(inviteCode: String, selection: Selection<Type, Unions.JoinGroupResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "joinGroup",
      arguments: [Argument(name: "inviteCode", type: "String!", value: inviteCode)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.joinGroup[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func leaveGroup<Type>(groupId: String, selection: Selection<Type, Unions.LeaveGroupResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "leaveGroup",
      arguments: [Argument(name: "groupId", type: "ID!", value: groupId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.leaveGroup[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func logOut<Type>(selection: Selection<Type, Unions.LogOutResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "logOut",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.logOut[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func markEmailAsItem<Type>(recentEmailId: String, selection: Selection<Type, Unions.MarkEmailAsItemResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "markEmailAsItem",
      arguments: [Argument(name: "recentEmailId", type: "ID!", value: recentEmailId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.markEmailAsItem[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func mergeHighlight<Type>(input: InputObjects.MergeHighlightInput, selection: Selection<Type, Unions.MergeHighlightResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "mergeHighlight",
      arguments: [Argument(name: "input", type: "MergeHighlightInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.mergeHighlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func moveFilter<Type>(input: InputObjects.MoveFilterInput, selection: Selection<Type, Unions.MoveFilterResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "moveFilter",
      arguments: [Argument(name: "input", type: "MoveFilterInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.moveFilter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func moveLabel<Type>(input: InputObjects.MoveLabelInput, selection: Selection<Type, Unions.MoveLabelResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "moveLabel",
      arguments: [Argument(name: "input", type: "MoveLabelInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.moveLabel[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func optInFeature<Type>(input: InputObjects.OptInFeatureInput, selection: Selection<Type, Unions.OptInFeatureResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "optInFeature",
      arguments: [Argument(name: "input", type: "OptInFeatureInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.optInFeature[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func recommend<Type>(input: InputObjects.RecommendInput, selection: Selection<Type, Unions.RecommendResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recommend",
      arguments: [Argument(name: "input", type: "RecommendInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recommend[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func recommendHighlights<Type>(input: InputObjects.RecommendHighlightsInput, selection: Selection<Type, Unions.RecommendHighlightsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recommendHighlights",
      arguments: [Argument(name: "input", type: "RecommendHighlightsInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recommendHighlights[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func reportItem<Type>(input: InputObjects.ReportItemInput, selection: Selection<Type, Objects.ReportItemResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reportItem",
      arguments: [Argument(name: "input", type: "ReportItemInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reportItem[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func revokeApiKey<Type>(id: String, selection: Selection<Type, Unions.RevokeApiKeyResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "revokeApiKey",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.revokeApiKey[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func saveArticleReadingProgress<Type>(input: InputObjects.SaveArticleReadingProgressInput, selection: Selection<Type, Unions.SaveArticleReadingProgressResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "saveArticleReadingProgress",
      arguments: [Argument(name: "input", type: "SaveArticleReadingProgressInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.saveArticleReadingProgress[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func saveFile<Type>(input: InputObjects.SaveFileInput, selection: Selection<Type, Unions.SaveResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "saveFile",
      arguments: [Argument(name: "input", type: "SaveFileInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.saveFile[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func saveFilter<Type>(input: InputObjects.SaveFilterInput, selection: Selection<Type, Unions.SaveFilterResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "saveFilter",
      arguments: [Argument(name: "input", type: "SaveFilterInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.saveFilter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func savePage<Type>(input: InputObjects.SavePageInput, selection: Selection<Type, Unions.SaveResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "savePage",
      arguments: [Argument(name: "input", type: "SavePageInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savePage[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func saveUrl<Type>(input: InputObjects.SaveUrlInput, selection: Selection<Type, Unions.SaveResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "saveUrl",
      arguments: [Argument(name: "input", type: "SaveUrlInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.saveUrl[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setBookmarkArticle<Type>(input: InputObjects.SetBookmarkArticleInput, selection: Selection<Type, Unions.SetBookmarkArticleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setBookmarkArticle",
      arguments: [Argument(name: "input", type: "SetBookmarkArticleInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setBookmarkArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setDeviceToken<Type>(input: InputObjects.SetDeviceTokenInput, selection: Selection<Type, Unions.SetDeviceTokenResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setDeviceToken",
      arguments: [Argument(name: "input", type: "SetDeviceTokenInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setDeviceToken[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setFavoriteArticle<Type>(id: String, selection: Selection<Type, Unions.SetFavoriteArticleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setFavoriteArticle",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setFavoriteArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setIntegration<Type>(input: InputObjects.SetIntegrationInput, selection: Selection<Type, Unions.SetIntegrationResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setIntegration",
      arguments: [Argument(name: "input", type: "SetIntegrationInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setIntegration[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setLabels<Type>(input: InputObjects.SetLabelsInput, selection: Selection<Type, Unions.SetLabelsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setLabels",
      arguments: [Argument(name: "input", type: "SetLabelsInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setLabels[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setLabelsForHighlight<Type>(input: InputObjects.SetLabelsForHighlightInput, selection: Selection<Type, Unions.SetLabelsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setLabelsForHighlight",
      arguments: [Argument(name: "input", type: "SetLabelsForHighlightInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setLabelsForHighlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setLinkArchived<Type>(input: InputObjects.ArchiveLinkInput, selection: Selection<Type, Unions.ArchiveLinkResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setLinkArchived",
      arguments: [Argument(name: "input", type: "ArchiveLinkInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setLinkArchived[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setRule<Type>(input: InputObjects.SetRuleInput, selection: Selection<Type, Unions.SetRuleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setRule",
      arguments: [Argument(name: "input", type: "SetRuleInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setRule[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setUserPersonalization<Type>(input: InputObjects.SetUserPersonalizationInput, selection: Selection<Type, Unions.SetUserPersonalizationResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setUserPersonalization",
      arguments: [Argument(name: "input", type: "SetUserPersonalizationInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setUserPersonalization[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func setWebhook<Type>(input: InputObjects.SetWebhookInput, selection: Selection<Type, Unions.SetWebhookResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "setWebhook",
      arguments: [Argument(name: "input", type: "SetWebhookInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.setWebhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func subscribe<Type>(input: InputObjects.SubscribeInput, selection: Selection<Type, Unions.SubscribeResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscribe",
      arguments: [Argument(name: "input", type: "SubscribeInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscribe[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func unsubscribe<Type>(name: String, subscriptionId: OptionalArgument<String> = .absent(), selection: Selection<Type, Unions.UnsubscribeResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "unsubscribe",
      arguments: [Argument(name: "name", type: "String!", value: name), Argument(name: "subscriptionId", type: "ID", value: subscriptionId)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.unsubscribe[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateEmail<Type>(input: InputObjects.UpdateEmailInput, selection: Selection<Type, Unions.UpdateEmailResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateEmail",
      arguments: [Argument(name: "input", type: "UpdateEmailInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateEmail[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateFilter<Type>(input: InputObjects.UpdateFilterInput, selection: Selection<Type, Unions.UpdateFilterResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateFilter",
      arguments: [Argument(name: "input", type: "UpdateFilterInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateFilter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateHighlight<Type>(input: InputObjects.UpdateHighlightInput, selection: Selection<Type, Unions.UpdateHighlightResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateHighlight",
      arguments: [Argument(name: "input", type: "UpdateHighlightInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateHighlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateLabel<Type>(input: InputObjects.UpdateLabelInput, selection: Selection<Type, Unions.UpdateLabelResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateLabel",
      arguments: [Argument(name: "input", type: "UpdateLabelInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateLabel[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updatePage<Type>(input: InputObjects.UpdatePageInput, selection: Selection<Type, Unions.UpdatePageResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatePage",
      arguments: [Argument(name: "input", type: "UpdatePageInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatePage[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateSubscription<Type>(input: InputObjects.UpdateSubscriptionInput, selection: Selection<Type, Unions.UpdateSubscriptionResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateSubscription",
      arguments: [Argument(name: "input", type: "UpdateSubscriptionInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateSubscription[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateUser<Type>(input: InputObjects.UpdateUserInput, selection: Selection<Type, Unions.UpdateUserResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateUser",
      arguments: [Argument(name: "input", type: "UpdateUserInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateUser[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updateUserProfile<Type>(input: InputObjects.UpdateUserProfileInput, selection: Selection<Type, Unions.UpdateUserProfileResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updateUserProfile",
      arguments: [Argument(name: "input", type: "UpdateUserProfileInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateUserProfile[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func uploadFileRequest<Type>(input: InputObjects.UploadFileRequestInput, selection: Selection<Type, Unions.UploadFileRequestResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "uploadFileRequest",
      arguments: [Argument(name: "input", type: "UploadFileRequestInput!", value: input)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.uploadFileRequest[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func uploadImportFile<Type>(contentType: String, type: Enums.UploadImportFileType, selection: Selection<Type, Unions.UploadImportFileResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "uploadImportFile",
      arguments: [Argument(name: "contentType", type: "String!", value: contentType), Argument(name: "type", type: "UploadImportFileType!", value: type)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.uploadImportFile[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Mutation<T> = Selection<T, Objects.Mutation>
}

extension Objects {
  struct NewsletterEmail {
    let __typename: TypeName = .newsletterEmail
    let address: [String: String]
    let confirmationCode: [String: String]
    let createdAt: [String: DateTime]
    let id: [String: String]
    let subscriptionCount: [String: Int]

    enum TypeName: String, Codable {
      case newsletterEmail = "NewsletterEmail"
    }
  }
}

extension Objects.NewsletterEmail: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "address":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "confirmationCode":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscriptionCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    address = map["address"]
    confirmationCode = map["confirmationCode"]
    createdAt = map["createdAt"]
    id = map["id"]
    subscriptionCount = map["subscriptionCount"]
  }
}

extension Fields where TypeLock == Objects.NewsletterEmail {
  func address() throws -> String {
    let field = GraphQLField.leaf(
      name: "address",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.address[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func confirmationCode() throws -> String? {
    let field = GraphQLField.leaf(
      name: "confirmationCode",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.confirmationCode[field.alias!]
    case .mocking:
      return nil
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func subscriptionCount() throws -> Int {
    let field = GraphQLField.leaf(
      name: "subscriptionCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscriptionCount[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias NewsletterEmail<T> = Selection<T, Objects.NewsletterEmail>
}

extension Objects {
  struct NewsletterEmailsError {
    let __typename: TypeName = .newsletterEmailsError
    let errorCodes: [String: [Enums.NewsletterEmailsErrorCode]]

    enum TypeName: String, Codable {
      case newsletterEmailsError = "NewsletterEmailsError"
    }
  }
}

extension Objects.NewsletterEmailsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.NewsletterEmailsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.NewsletterEmailsError {
  func errorCodes() throws -> [Enums.NewsletterEmailsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias NewsletterEmailsError<T> = Selection<T, Objects.NewsletterEmailsError>
}

extension Objects {
  struct NewsletterEmailsSuccess {
    let __typename: TypeName = .newsletterEmailsSuccess
    let newsletterEmails: [String: [Objects.NewsletterEmail]]

    enum TypeName: String, Codable {
      case newsletterEmailsSuccess = "NewsletterEmailsSuccess"
    }
  }
}

extension Objects.NewsletterEmailsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "newsletterEmails":
        if let value = try container.decode([Objects.NewsletterEmail]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    newsletterEmails = map["newsletterEmails"]
  }
}

extension Fields where TypeLock == Objects.NewsletterEmailsSuccess {
  func newsletterEmails<Type>(selection: Selection<Type, [Objects.NewsletterEmail]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "newsletterEmails",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.newsletterEmails[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias NewsletterEmailsSuccess<T> = Selection<T, Objects.NewsletterEmailsSuccess>
}

extension Objects {
  struct OptInFeatureError {
    let __typename: TypeName = .optInFeatureError
    let errorCodes: [String: [Enums.OptInFeatureErrorCode]]

    enum TypeName: String, Codable {
      case optInFeatureError = "OptInFeatureError"
    }
  }
}

extension Objects.OptInFeatureError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.OptInFeatureErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.OptInFeatureError {
  func errorCodes() throws -> [Enums.OptInFeatureErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias OptInFeatureError<T> = Selection<T, Objects.OptInFeatureError>
}

extension Objects {
  struct OptInFeatureSuccess {
    let __typename: TypeName = .optInFeatureSuccess
    let feature: [String: Objects.Feature]

    enum TypeName: String, Codable {
      case optInFeatureSuccess = "OptInFeatureSuccess"
    }
  }
}

extension Objects.OptInFeatureSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "feature":
        if let value = try container.decode(Objects.Feature?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    feature = map["feature"]
  }
}

extension Fields where TypeLock == Objects.OptInFeatureSuccess {
  func feature<Type>(selection: Selection<Type, Objects.Feature>) throws -> Type {
    let field = GraphQLField.composite(
      name: "feature",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.feature[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias OptInFeatureSuccess<T> = Selection<T, Objects.OptInFeatureSuccess>
}

extension Objects {
  struct Page {
    let __typename: TypeName = .page
    let author: [String: String]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let hash: [String: String]
    let id: [String: String]
    let image: [String: String]
    let originalHtml: [String: String]
    let originalUrl: [String: String]
    let publishedAt: [String: DateTime]
    let readableHtml: [String: String]
    let title: [String: String]
    let type: [String: Enums.PageType]
    let updatedAt: [String: DateTime]
    let url: [String: String]

    enum TypeName: String, Codable {
      case page = "Page"
    }
  }
}

extension Objects.Page: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "author":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hash":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "image":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "originalHtml":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "originalUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "publishedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readableHtml":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "title":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(Enums.PageType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    author = map["author"]
    createdAt = map["createdAt"]
    description = map["description"]
    hash = map["hash"]
    id = map["id"]
    image = map["image"]
    originalHtml = map["originalHtml"]
    originalUrl = map["originalUrl"]
    publishedAt = map["publishedAt"]
    readableHtml = map["readableHtml"]
    title = map["title"]
    type = map["type"]
    updatedAt = map["updatedAt"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Objects.Page {
  func author() throws -> String? {
    let field = GraphQLField.leaf(
      name: "author",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.author[field.alias!]
    case .mocking:
      return nil
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func hash() throws -> String {
    let field = GraphQLField.leaf(
      name: "hash",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.hash[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func image() throws -> String {
    let field = GraphQLField.leaf(
      name: "image",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.image[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func originalHtml() throws -> String {
    let field = GraphQLField.leaf(
      name: "originalHtml",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.originalHtml[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func originalUrl() throws -> String {
    let field = GraphQLField.leaf(
      name: "originalUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.originalUrl[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func publishedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "publishedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.publishedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readableHtml() throws -> String {
    let field = GraphQLField.leaf(
      name: "readableHtml",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readableHtml[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func title() throws -> String {
    let field = GraphQLField.leaf(
      name: "title",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.title[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func type() throws -> Enums.PageType {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.PageType.allCases.first!
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Page<T> = Selection<T, Objects.Page>
}

extension Objects {
  struct PageInfo {
    let __typename: TypeName = .pageInfo
    let endCursor: [String: String]
    let hasNextPage: [String: Bool]
    let hasPreviousPage: [String: Bool]
    let startCursor: [String: String]
    let totalCount: [String: Int]

    enum TypeName: String, Codable {
      case pageInfo = "PageInfo"
    }
  }
}

extension Objects.PageInfo: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "endCursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hasNextPage":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hasPreviousPage":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "startCursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "totalCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    endCursor = map["endCursor"]
    hasNextPage = map["hasNextPage"]
    hasPreviousPage = map["hasPreviousPage"]
    startCursor = map["startCursor"]
    totalCount = map["totalCount"]
  }
}

extension Fields where TypeLock == Objects.PageInfo {
  func endCursor() throws -> String? {
    let field = GraphQLField.leaf(
      name: "endCursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.endCursor[field.alias!]
    case .mocking:
      return nil
    }
  }

  func hasNextPage() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "hasNextPage",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.hasNextPage[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func hasPreviousPage() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "hasPreviousPage",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.hasPreviousPage[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func startCursor() throws -> String? {
    let field = GraphQLField.leaf(
      name: "startCursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.startCursor[field.alias!]
    case .mocking:
      return nil
    }
  }

  func totalCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "totalCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.totalCount[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias PageInfo<T> = Selection<T, Objects.PageInfo>
}

extension Objects {
  struct Profile {
    let __typename: TypeName = .profile
    let bio: [String: String]
    let id: [String: String]
    let pictureUrl: [String: String]
    let `private`: [String: Bool]
    let username: [String: String]

    enum TypeName: String, Codable {
      case profile = "Profile"
    }
  }
}

extension Objects.Profile: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "bio":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pictureUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "private":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "username":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    bio = map["bio"]
    id = map["id"]
    pictureUrl = map["pictureUrl"]
    self.private = map["private"]
    username = map["username"]
  }
}

extension Fields where TypeLock == Objects.Profile {
  func bio() throws -> String? {
    let field = GraphQLField.leaf(
      name: "bio",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.bio[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func pictureUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "pictureUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.pictureUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func `private`() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "private",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.private[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func username() throws -> String {
    let field = GraphQLField.leaf(
      name: "username",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.username[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Profile<T> = Selection<T, Objects.Profile>
}

extension Objects {
  struct Query {
    let __typename: TypeName = .query
    let apiKeys: [String: Unions.ApiKeysResult]
    let article: [String: Unions.ArticleResult]
    let articleSavingRequest: [String: Unions.ArticleSavingRequestResult]
    let deviceTokens: [String: Unions.DeviceTokensResult]
    let filters: [String: Unions.FiltersResult]
    let getUserPersonalization: [String: Unions.GetUserPersonalizationResult]
    let groups: [String: Unions.GroupsResult]
    let hello: [String: String]
    let integrations: [String: Unions.IntegrationsResult]
    let labels: [String: Unions.LabelsResult]
    let me: [String: Objects.User]
    let newsletterEmails: [String: Unions.NewsletterEmailsResult]
    let recentEmails: [String: Unions.RecentEmailsResult]
    let recentSearches: [String: Unions.RecentSearchesResult]
    let rules: [String: Unions.RulesResult]
    let search: [String: Unions.SearchResult]
    let sendInstallInstructions: [String: Unions.SendInstallInstructionsResult]
    let subscriptions: [String: Unions.SubscriptionsResult]
    let typeaheadSearch: [String: Unions.TypeaheadSearchResult]
    let updatesSince: [String: Unions.UpdatesSinceResult]
    let user: [String: Unions.UserResult]
    let users: [String: Unions.UsersResult]
    let validateUsername: [String: Bool]
    let webhook: [String: Unions.WebhookResult]
    let webhooks: [String: Unions.WebhooksResult]

    enum TypeName: String, Codable {
      case query = "Query"
    }
  }
}

extension Objects.Query: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKeys":
        if let value = try container.decode(Unions.ApiKeysResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "article":
        if let value = try container.decode(Unions.ArticleResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "articleSavingRequest":
        if let value = try container.decode(Unions.ArticleSavingRequestResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "deviceTokens":
        if let value = try container.decode(Unions.DeviceTokensResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filters":
        if let value = try container.decode(Unions.FiltersResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "getUserPersonalization":
        if let value = try container.decode(Unions.GetUserPersonalizationResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "groups":
        if let value = try container.decode(Unions.GroupsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "hello":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "integrations":
        if let value = try container.decode(Unions.IntegrationsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode(Unions.LabelsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "me":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "newsletterEmails":
        if let value = try container.decode(Unions.NewsletterEmailsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recentEmails":
        if let value = try container.decode(Unions.RecentEmailsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recentSearches":
        if let value = try container.decode(Unions.RecentSearchesResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "rules":
        if let value = try container.decode(Unions.RulesResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "search":
        if let value = try container.decode(Unions.SearchResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sendInstallInstructions":
        if let value = try container.decode(Unions.SendInstallInstructionsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscriptions":
        if let value = try container.decode(Unions.SubscriptionsResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "typeaheadSearch":
        if let value = try container.decode(Unions.TypeaheadSearchResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatesSince":
        if let value = try container.decode(Unions.UpdatesSinceResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Unions.UserResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "users":
        if let value = try container.decode(Unions.UsersResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "validateUsername":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhook":
        if let value = try container.decode(Unions.WebhookResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhooks":
        if let value = try container.decode(Unions.WebhooksResult?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    apiKeys = map["apiKeys"]
    article = map["article"]
    articleSavingRequest = map["articleSavingRequest"]
    deviceTokens = map["deviceTokens"]
    filters = map["filters"]
    getUserPersonalization = map["getUserPersonalization"]
    groups = map["groups"]
    hello = map["hello"]
    integrations = map["integrations"]
    labels = map["labels"]
    me = map["me"]
    newsletterEmails = map["newsletterEmails"]
    recentEmails = map["recentEmails"]
    recentSearches = map["recentSearches"]
    rules = map["rules"]
    search = map["search"]
    sendInstallInstructions = map["sendInstallInstructions"]
    subscriptions = map["subscriptions"]
    typeaheadSearch = map["typeaheadSearch"]
    updatesSince = map["updatesSince"]
    user = map["user"]
    users = map["users"]
    validateUsername = map["validateUsername"]
    webhook = map["webhook"]
    webhooks = map["webhooks"]
  }
}

extension Fields where TypeLock == Objects.Query {
  func apiKeys<Type>(selection: Selection<Type, Unions.ApiKeysResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "apiKeys",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.apiKeys[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func article<Type>(format: OptionalArgument<String> = .absent(), slug: String, username: String, selection: Selection<Type, Unions.ArticleResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "article",
      arguments: [Argument(name: "format", type: "String", value: format), Argument(name: "slug", type: "String!", value: slug), Argument(name: "username", type: "String!", value: username)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.article[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func articleSavingRequest<Type>(id: OptionalArgument<String> = .absent(), url: OptionalArgument<String> = .absent(), selection: Selection<Type, Unions.ArticleSavingRequestResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "articleSavingRequest",
      arguments: [Argument(name: "id", type: "ID", value: id), Argument(name: "url", type: "String", value: url)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.articleSavingRequest[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func deviceTokens<Type>(selection: Selection<Type, Unions.DeviceTokensResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deviceTokens",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deviceTokens[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func filters<Type>(selection: Selection<Type, Unions.FiltersResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filters",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filters[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func getUserPersonalization<Type>(selection: Selection<Type, Unions.GetUserPersonalizationResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "getUserPersonalization",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.getUserPersonalization[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func groups<Type>(selection: Selection<Type, Unions.GroupsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "groups",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.groups[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func hello() throws -> String? {
    let field = GraphQLField.leaf(
      name: "hello",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.hello[field.alias!]
    case .mocking:
      return nil
    }
  }

  func integrations<Type>(selection: Selection<Type, Unions.IntegrationsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "integrations",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.integrations[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func labels<Type>(selection: Selection<Type, Unions.LabelsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.labels[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func me<Type>(selection: Selection<Type, Objects.User?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "me",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.me[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func newsletterEmails<Type>(selection: Selection<Type, Unions.NewsletterEmailsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "newsletterEmails",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.newsletterEmails[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func recentEmails<Type>(selection: Selection<Type, Unions.RecentEmailsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recentEmails",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recentEmails[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func recentSearches<Type>(selection: Selection<Type, Unions.RecentSearchesResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recentSearches",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recentSearches[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func rules<Type>(enabled: OptionalArgument<Bool> = .absent(), selection: Selection<Type, Unions.RulesResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "rules",
      arguments: [Argument(name: "enabled", type: "Boolean", value: enabled)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.rules[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func search<Type>(after: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), format: OptionalArgument<String> = .absent(), includeContent: OptionalArgument<Bool> = .absent(), query: OptionalArgument<String> = .absent(), selection: Selection<Type, Unions.SearchResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "search",
      arguments: [Argument(name: "after", type: "String", value: after), Argument(name: "first", type: "Int", value: first), Argument(name: "format", type: "String", value: format), Argument(name: "includeContent", type: "Boolean", value: includeContent), Argument(name: "query", type: "String", value: query)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.search[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sendInstallInstructions<Type>(selection: Selection<Type, Unions.SendInstallInstructionsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "sendInstallInstructions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sendInstallInstructions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func subscriptions<Type>(sort: OptionalArgument<InputObjects.SortParams> = .absent(), type: OptionalArgument<Enums.SubscriptionType> = .absent(), selection: Selection<Type, Unions.SubscriptionsResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscriptions",
      arguments: [Argument(name: "sort", type: "SortParams", value: sort), Argument(name: "type", type: "SubscriptionType", value: type)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscriptions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func typeaheadSearch<Type>(first: OptionalArgument<Int> = .absent(), query: String, selection: Selection<Type, Unions.TypeaheadSearchResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "typeaheadSearch",
      arguments: [Argument(name: "first", type: "Int", value: first), Argument(name: "query", type: "String!", value: query)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.typeaheadSearch[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updatesSince<Type>(after: OptionalArgument<String> = .absent(), first: OptionalArgument<Int> = .absent(), since: DateTime, sort: OptionalArgument<InputObjects.SortParams> = .absent(), selection: Selection<Type, Unions.UpdatesSinceResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatesSince",
      arguments: [Argument(name: "after", type: "String", value: after), Argument(name: "first", type: "Int", value: first), Argument(name: "since", type: "Date!", value: since), Argument(name: "sort", type: "SortParams", value: sort)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatesSince[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func user<Type>(userId: OptionalArgument<String> = .absent(), username: OptionalArgument<String> = .absent(), selection: Selection<Type, Unions.UserResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [Argument(name: "userId", type: "ID", value: userId), Argument(name: "username", type: "String", value: username)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func users<Type>(selection: Selection<Type, Unions.UsersResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "users",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.users[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func validateUsername(username: String) throws -> Bool {
    let field = GraphQLField.leaf(
      name: "validateUsername",
      arguments: [Argument(name: "username", type: "String!", value: username)]
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.validateUsername[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func webhook<Type>(id: String, selection: Selection<Type, Unions.WebhookResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhook",
      arguments: [Argument(name: "id", type: "ID!", value: id)],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func webhooks<Type>(selection: Selection<Type, Unions.WebhooksResult>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhooks",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhooks[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Query<T> = Selection<T, Objects.Query>
}

extension Objects {
  struct Reaction {
    let __typename: TypeName = .reaction
    let code: [String: Enums.ReactionType]
    let createdAt: [String: DateTime]
    let id: [String: String]
    let updatedAt: [String: DateTime]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case reaction = "Reaction"
    }
  }
}

extension Objects.Reaction: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "code":
        if let value = try container.decode(Enums.ReactionType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    code = map["code"]
    createdAt = map["createdAt"]
    id = map["id"]
    updatedAt = map["updatedAt"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.Reaction {
  func code() throws -> Enums.ReactionType {
    let field = GraphQLField.leaf(
      name: "code",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.code[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.ReactionType.allCases.first!
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Reaction<T> = Selection<T, Objects.Reaction>
}

extension Objects {
  struct ReadState {
    let __typename: TypeName = .readState
    let progressAnchorIndex: [String: Int]
    let progressPercent: [String: Double]
    let reading: [String: Bool]
    let readingTime: [String: Int]

    enum TypeName: String, Codable {
      case readState = "ReadState"
    }
  }
}

extension Objects.ReadState: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "progressAnchorIndex":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "progressPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reading":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingTime":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    progressAnchorIndex = map["progressAnchorIndex"]
    progressPercent = map["progressPercent"]
    reading = map["reading"]
    readingTime = map["readingTime"]
  }
}

extension Fields where TypeLock == Objects.ReadState {
  func progressAnchorIndex() throws -> Int {
    let field = GraphQLField.leaf(
      name: "progressAnchorIndex",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.progressAnchorIndex[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func progressPercent() throws -> Double {
    let field = GraphQLField.leaf(
      name: "progressPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.progressPercent[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Double.mockValue
    }
  }

  func reading() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "reading",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.reading[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readingTime() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "readingTime",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.readingTime[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ReadState<T> = Selection<T, Objects.ReadState>
}

extension Objects {
  struct RecentEmail {
    let __typename: TypeName = .recentEmail
    let createdAt: [String: DateTime]
    let from: [String: String]
    let html: [String: String]
    let id: [String: String]
    let subject: [String: String]
    let text: [String: String]
    let to: [String: String]
    let type: [String: String]

    enum TypeName: String, Codable {
      case recentEmail = "RecentEmail"
    }
  }
}

extension Objects.RecentEmail: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "from":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "html":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subject":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "text":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "to":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    from = map["from"]
    html = map["html"]
    id = map["id"]
    subject = map["subject"]
    text = map["text"]
    to = map["to"]
    type = map["type"]
  }
}

extension Fields where TypeLock == Objects.RecentEmail {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func from() throws -> String {
    let field = GraphQLField.leaf(
      name: "from",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.from[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func html() throws -> String? {
    let field = GraphQLField.leaf(
      name: "html",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.html[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func subject() throws -> String {
    let field = GraphQLField.leaf(
      name: "subject",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subject[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func text() throws -> String {
    let field = GraphQLField.leaf(
      name: "text",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.text[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func to() throws -> String {
    let field = GraphQLField.leaf(
      name: "to",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.to[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func type() throws -> String {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentEmail<T> = Selection<T, Objects.RecentEmail>
}

extension Objects {
  struct RecentEmailsError {
    let __typename: TypeName = .recentEmailsError
    let errorCodes: [String: [Enums.RecentEmailsErrorCode]]

    enum TypeName: String, Codable {
      case recentEmailsError = "RecentEmailsError"
    }
  }
}

extension Objects.RecentEmailsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecentEmailsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RecentEmailsError {
  func errorCodes() throws -> [Enums.RecentEmailsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentEmailsError<T> = Selection<T, Objects.RecentEmailsError>
}

extension Objects {
  struct RecentEmailsSuccess {
    let __typename: TypeName = .recentEmailsSuccess
    let recentEmails: [String: [Objects.RecentEmail]]

    enum TypeName: String, Codable {
      case recentEmailsSuccess = "RecentEmailsSuccess"
    }
  }
}

extension Objects.RecentEmailsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "recentEmails":
        if let value = try container.decode([Objects.RecentEmail]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    recentEmails = map["recentEmails"]
  }
}

extension Fields where TypeLock == Objects.RecentEmailsSuccess {
  func recentEmails<Type>(selection: Selection<Type, [Objects.RecentEmail]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recentEmails",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recentEmails[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentEmailsSuccess<T> = Selection<T, Objects.RecentEmailsSuccess>
}

extension Objects {
  struct RecentSearch {
    let __typename: TypeName = .recentSearch
    let createdAt: [String: DateTime]
    let id: [String: String]
    let term: [String: String]

    enum TypeName: String, Codable {
      case recentSearch = "RecentSearch"
    }
  }
}

extension Objects.RecentSearch: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "term":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdAt = map["createdAt"]
    id = map["id"]
    term = map["term"]
  }
}

extension Fields where TypeLock == Objects.RecentSearch {
  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func term() throws -> String {
    let field = GraphQLField.leaf(
      name: "term",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.term[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentSearch<T> = Selection<T, Objects.RecentSearch>
}

extension Objects {
  struct RecentSearchesError {
    let __typename: TypeName = .recentSearchesError
    let errorCodes: [String: [Enums.RecentSearchesErrorCode]]

    enum TypeName: String, Codable {
      case recentSearchesError = "RecentSearchesError"
    }
  }
}

extension Objects.RecentSearchesError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecentSearchesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RecentSearchesError {
  func errorCodes() throws -> [Enums.RecentSearchesErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentSearchesError<T> = Selection<T, Objects.RecentSearchesError>
}

extension Objects {
  struct RecentSearchesSuccess {
    let __typename: TypeName = .recentSearchesSuccess
    let searches: [String: [Objects.RecentSearch]]

    enum TypeName: String, Codable {
      case recentSearchesSuccess = "RecentSearchesSuccess"
    }
  }
}

extension Objects.RecentSearchesSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "searches":
        if let value = try container.decode([Objects.RecentSearch]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    searches = map["searches"]
  }
}

extension Fields where TypeLock == Objects.RecentSearchesSuccess {
  func searches<Type>(selection: Selection<Type, [Objects.RecentSearch]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "searches",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.searches[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentSearchesSuccess<T> = Selection<T, Objects.RecentSearchesSuccess>
}

extension Objects {
  struct RecommendError {
    let __typename: TypeName = .recommendError
    let errorCodes: [String: [Enums.RecommendErrorCode]]

    enum TypeName: String, Codable {
      case recommendError = "RecommendError"
    }
  }
}

extension Objects.RecommendError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecommendErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RecommendError {
  func errorCodes() throws -> [Enums.RecommendErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendError<T> = Selection<T, Objects.RecommendError>
}

extension Objects {
  struct RecommendHighlightsError {
    let __typename: TypeName = .recommendHighlightsError
    let errorCodes: [String: [Enums.RecommendHighlightsErrorCode]]

    enum TypeName: String, Codable {
      case recommendHighlightsError = "RecommendHighlightsError"
    }
  }
}

extension Objects.RecommendHighlightsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecommendHighlightsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RecommendHighlightsError {
  func errorCodes() throws -> [Enums.RecommendHighlightsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendHighlightsError<T> = Selection<T, Objects.RecommendHighlightsError>
}

extension Objects {
  struct RecommendHighlightsSuccess {
    let __typename: TypeName = .recommendHighlightsSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case recommendHighlightsSuccess = "RecommendHighlightsSuccess"
    }
  }
}

extension Objects.RecommendHighlightsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.RecommendHighlightsSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendHighlightsSuccess<T> = Selection<T, Objects.RecommendHighlightsSuccess>
}

extension Objects {
  struct RecommendSuccess {
    let __typename: TypeName = .recommendSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case recommendSuccess = "RecommendSuccess"
    }
  }
}

extension Objects.RecommendSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.RecommendSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendSuccess<T> = Selection<T, Objects.RecommendSuccess>
}

extension Objects {
  struct Recommendation {
    let __typename: TypeName = .recommendation
    let id: [String: String]
    let name: [String: String]
    let note: [String: String]
    let recommendedAt: [String: DateTime]
    let user: [String: Objects.RecommendingUser]

    enum TypeName: String, Codable {
      case recommendation = "Recommendation"
    }
  }
}

extension Objects.Recommendation: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "note":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recommendedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.RecommendingUser?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    id = map["id"]
    name = map["name"]
    note = map["note"]
    recommendedAt = map["recommendedAt"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.Recommendation {
  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func note() throws -> String? {
    let field = GraphQLField.leaf(
      name: "note",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.note[field.alias!]
    case .mocking:
      return nil
    }
  }

  func recommendedAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "recommendedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.recommendedAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func user<Type>(selection: Selection<Type, Objects.RecommendingUser?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.user[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Recommendation<T> = Selection<T, Objects.Recommendation>
}

extension Objects {
  struct RecommendationGroup {
    let __typename: TypeName = .recommendationGroup
    let admins: [String: [Objects.User]]
    let canPost: [String: Bool]
    let canSeeMembers: [String: Bool]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let id: [String: String]
    let inviteUrl: [String: String]
    let members: [String: [Objects.User]]
    let name: [String: String]
    let topics: [String: [String]]
    let updatedAt: [String: DateTime]

    enum TypeName: String, Codable {
      case recommendationGroup = "RecommendationGroup"
    }
  }
}

extension Objects.RecommendationGroup: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "admins":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "canPost":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "canSeeMembers":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "inviteUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "members":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "topics":
        if let value = try container.decode([String]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    admins = map["admins"]
    canPost = map["canPost"]
    canSeeMembers = map["canSeeMembers"]
    createdAt = map["createdAt"]
    description = map["description"]
    id = map["id"]
    inviteUrl = map["inviteUrl"]
    members = map["members"]
    name = map["name"]
    topics = map["topics"]
    updatedAt = map["updatedAt"]
  }
}

extension Fields where TypeLock == Objects.RecommendationGroup {
  func admins<Type>(selection: Selection<Type, [Objects.User]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "admins",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.admins[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func canPost() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "canPost",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.canPost[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func canSeeMembers() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "canSeeMembers",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.canSeeMembers[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func inviteUrl() throws -> String {
    let field = GraphQLField.leaf(
      name: "inviteUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.inviteUrl[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func members<Type>(selection: Selection<Type, [Objects.User]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "members",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.members[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func topics() throws -> [String]? {
    let field = GraphQLField.leaf(
      name: "topics",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.topics[field.alias!]
    case .mocking:
      return nil
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendationGroup<T> = Selection<T, Objects.RecommendationGroup>
}

extension Objects {
  struct RecommendingUser {
    let __typename: TypeName = .recommendingUser
    let name: [String: String]
    let profileImageUrl: [String: String]
    let userId: [String: String]
    let username: [String: String]

    enum TypeName: String, Codable {
      case recommendingUser = "RecommendingUser"
    }
  }
}

extension Objects.RecommendingUser: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "profileImageUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "userId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "username":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    name = map["name"]
    profileImageUrl = map["profileImageUrl"]
    userId = map["userId"]
    username = map["username"]
  }
}

extension Fields where TypeLock == Objects.RecommendingUser {
  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func profileImageUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "profileImageURL",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.profileImageUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func userId() throws -> String {
    let field = GraphQLField.leaf(
      name: "userId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.userId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func username() throws -> String {
    let field = GraphQLField.leaf(
      name: "username",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.username[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendingUser<T> = Selection<T, Objects.RecommendingUser>
}

extension Objects {
  struct Reminder {
    let __typename: TypeName = .reminder
    let archiveUntil: [String: Bool]
    let id: [String: String]
    let remindAt: [String: DateTime]
    let sendNotification: [String: Bool]

    enum TypeName: String, Codable {
      case reminder = "Reminder"
    }
  }
}

extension Objects.Reminder: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "archiveUntil":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "remindAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sendNotification":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    archiveUntil = map["archiveUntil"]
    id = map["id"]
    remindAt = map["remindAt"]
    sendNotification = map["sendNotification"]
  }
}

extension Fields where TypeLock == Objects.Reminder {
  func archiveUntil() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "archiveUntil",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.archiveUntil[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func remindAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "remindAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.remindAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func sendNotification() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "sendNotification",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sendNotification[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Reminder<T> = Selection<T, Objects.Reminder>
}

extension Objects {
  struct ReminderError {
    let __typename: TypeName = .reminderError
    let errorCodes: [String: [Enums.ReminderErrorCode]]

    enum TypeName: String, Codable {
      case reminderError = "ReminderError"
    }
  }
}

extension Objects.ReminderError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.ReminderError {
  func errorCodes() throws -> [Enums.ReminderErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ReminderError<T> = Selection<T, Objects.ReminderError>
}

extension Objects {
  struct ReminderSuccess {
    let __typename: TypeName = .reminderSuccess
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case reminderSuccess = "ReminderSuccess"
    }
  }
}

extension Objects.ReminderSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Objects.ReminderSuccess {
  func reminder<Type>(selection: Selection<Type, Objects.Reminder>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reminder",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reminder[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ReminderSuccess<T> = Selection<T, Objects.ReminderSuccess>
}

extension Objects {
  struct ReportItemResult {
    let __typename: TypeName = .reportItemResult
    let message: [String: String]

    enum TypeName: String, Codable {
      case reportItemResult = "ReportItemResult"
    }
  }
}

extension Objects.ReportItemResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.ReportItemResult {
  func message() throws -> String {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.message[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ReportItemResult<T> = Selection<T, Objects.ReportItemResult>
}

extension Objects {
  struct RevokeApiKeyError {
    let __typename: TypeName = .revokeApiKeyError
    let errorCodes: [String: [Enums.RevokeApiKeyErrorCode]]

    enum TypeName: String, Codable {
      case revokeApiKeyError = "RevokeApiKeyError"
    }
  }
}

extension Objects.RevokeApiKeyError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RevokeApiKeyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RevokeApiKeyError {
  func errorCodes() throws -> [Enums.RevokeApiKeyErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RevokeApiKeyError<T> = Selection<T, Objects.RevokeApiKeyError>
}

extension Objects {
  struct RevokeApiKeySuccess {
    let __typename: TypeName = .revokeApiKeySuccess
    let apiKey: [String: Objects.ApiKey]

    enum TypeName: String, Codable {
      case revokeApiKeySuccess = "RevokeApiKeySuccess"
    }
  }
}

extension Objects.RevokeApiKeySuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKey":
        if let value = try container.decode(Objects.ApiKey?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    apiKey = map["apiKey"]
  }
}

extension Fields where TypeLock == Objects.RevokeApiKeySuccess {
  func apiKey<Type>(selection: Selection<Type, Objects.ApiKey>) throws -> Type {
    let field = GraphQLField.composite(
      name: "apiKey",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.apiKey[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RevokeApiKeySuccess<T> = Selection<T, Objects.RevokeApiKeySuccess>
}

extension Objects {
  struct Rule {
    let __typename: TypeName = .rule
    let actions: [String: [Objects.RuleAction]]
    let createdAt: [String: DateTime]
    let enabled: [String: Bool]
    let eventTypes: [String: [Enums.RuleEventType]]
    let filter: [String: String]
    let id: [String: String]
    let name: [String: String]
    let updatedAt: [String: DateTime]

    enum TypeName: String, Codable {
      case rule = "Rule"
    }
  }
}

extension Objects.Rule: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "actions":
        if let value = try container.decode([Objects.RuleAction]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "enabled":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "eventTypes":
        if let value = try container.decode([Enums.RuleEventType]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    actions = map["actions"]
    createdAt = map["createdAt"]
    enabled = map["enabled"]
    eventTypes = map["eventTypes"]
    filter = map["filter"]
    id = map["id"]
    name = map["name"]
    updatedAt = map["updatedAt"]
  }
}

extension Fields where TypeLock == Objects.Rule {
  func actions<Type>(selection: Selection<Type, [Objects.RuleAction]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "actions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.actions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func enabled() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "enabled",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.enabled[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func eventTypes() throws -> [Enums.RuleEventType] {
    let field = GraphQLField.leaf(
      name: "eventTypes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.eventTypes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }

  func filter() throws -> String {
    let field = GraphQLField.leaf(
      name: "filter",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Rule<T> = Selection<T, Objects.Rule>
}

extension Objects {
  struct RuleAction {
    let __typename: TypeName = .ruleAction
    let params: [String: [String]]
    let type: [String: Enums.RuleActionType]

    enum TypeName: String, Codable {
      case ruleAction = "RuleAction"
    }
  }
}

extension Objects.RuleAction: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "params":
        if let value = try container.decode([String]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(Enums.RuleActionType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    params = map["params"]
    type = map["type"]
  }
}

extension Fields where TypeLock == Objects.RuleAction {
  func params() throws -> [String] {
    let field = GraphQLField.leaf(
      name: "params",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.params[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }

  func type() throws -> Enums.RuleActionType {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.RuleActionType.allCases.first!
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RuleAction<T> = Selection<T, Objects.RuleAction>
}

extension Objects {
  struct RulesError {
    let __typename: TypeName = .rulesError
    let errorCodes: [String: [Enums.RulesErrorCode]]

    enum TypeName: String, Codable {
      case rulesError = "RulesError"
    }
  }
}

extension Objects.RulesError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RulesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.RulesError {
  func errorCodes() throws -> [Enums.RulesErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RulesError<T> = Selection<T, Objects.RulesError>
}

extension Objects {
  struct RulesSuccess {
    let __typename: TypeName = .rulesSuccess
    let rules: [String: [Objects.Rule]]

    enum TypeName: String, Codable {
      case rulesSuccess = "RulesSuccess"
    }
  }
}

extension Objects.RulesSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "rules":
        if let value = try container.decode([Objects.Rule]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    rules = map["rules"]
  }
}

extension Fields where TypeLock == Objects.RulesSuccess {
  func rules<Type>(selection: Selection<Type, [Objects.Rule]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "rules",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.rules[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RulesSuccess<T> = Selection<T, Objects.RulesSuccess>
}

extension Objects {
  struct SaveArticleReadingProgressError {
    let __typename: TypeName = .saveArticleReadingProgressError
    let errorCodes: [String: [Enums.SaveArticleReadingProgressErrorCode]]

    enum TypeName: String, Codable {
      case saveArticleReadingProgressError = "SaveArticleReadingProgressError"
    }
  }
}

extension Objects.SaveArticleReadingProgressError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SaveArticleReadingProgressErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SaveArticleReadingProgressError {
  func errorCodes() throws -> [Enums.SaveArticleReadingProgressErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveArticleReadingProgressError<T> = Selection<T, Objects.SaveArticleReadingProgressError>
}

extension Objects {
  struct SaveArticleReadingProgressSuccess {
    let __typename: TypeName = .saveArticleReadingProgressSuccess
    let updatedArticle: [String: Objects.Article]

    enum TypeName: String, Codable {
      case saveArticleReadingProgressSuccess = "SaveArticleReadingProgressSuccess"
    }
  }
}

extension Objects.SaveArticleReadingProgressSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "updatedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    updatedArticle = map["updatedArticle"]
  }
}

extension Fields where TypeLock == Objects.SaveArticleReadingProgressSuccess {
  func updatedArticle<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedArticle",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatedArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveArticleReadingProgressSuccess<T> = Selection<T, Objects.SaveArticleReadingProgressSuccess>
}

extension Objects {
  struct SaveError {
    let __typename: TypeName = .saveError
    let errorCodes: [String: [Enums.SaveErrorCode]]
    let message: [String: String]

    enum TypeName: String, Codable {
      case saveError = "SaveError"
    }
  }
}

extension Objects.SaveError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SaveErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.SaveError {
  func errorCodes() throws -> [Enums.SaveErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }

  func message() throws -> String? {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.message[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveError<T> = Selection<T, Objects.SaveError>
}

extension Objects {
  struct SaveFilterError {
    let __typename: TypeName = .saveFilterError
    let errorCodes: [String: [Enums.SaveFilterErrorCode]]

    enum TypeName: String, Codable {
      case saveFilterError = "SaveFilterError"
    }
  }
}

extension Objects.SaveFilterError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SaveFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SaveFilterError {
  func errorCodes() throws -> [Enums.SaveFilterErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveFilterError<T> = Selection<T, Objects.SaveFilterError>
}

extension Objects {
  struct SaveFilterSuccess {
    let __typename: TypeName = .saveFilterSuccess
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case saveFilterSuccess = "SaveFilterSuccess"
    }
  }
}

extension Objects.SaveFilterSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    filter = map["filter"]
  }
}

extension Fields where TypeLock == Objects.SaveFilterSuccess {
  func filter<Type>(selection: Selection<Type, Objects.Filter>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filter",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveFilterSuccess<T> = Selection<T, Objects.SaveFilterSuccess>
}

extension Objects {
  struct SaveSuccess {
    let __typename: TypeName = .saveSuccess
    let clientRequestId: [String: String]
    let url: [String: String]

    enum TypeName: String, Codable {
      case saveSuccess = "SaveSuccess"
    }
  }
}

extension Objects.SaveSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "clientRequestId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    clientRequestId = map["clientRequestId"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Objects.SaveSuccess {
  func clientRequestId() throws -> String {
    let field = GraphQLField.leaf(
      name: "clientRequestId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.clientRequestId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveSuccess<T> = Selection<T, Objects.SaveSuccess>
}

extension Objects {
  struct SearchError {
    let __typename: TypeName = .searchError
    let errorCodes: [String: [Enums.SearchErrorCode]]

    enum TypeName: String, Codable {
      case searchError = "SearchError"
    }
  }
}

extension Objects.SearchError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SearchErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SearchError {
  func errorCodes() throws -> [Enums.SearchErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SearchError<T> = Selection<T, Objects.SearchError>
}

extension Objects {
  struct SearchItem {
    let __typename: TypeName = .searchItem
    let annotation: [String: String]
    let archivedAt: [String: DateTime]
    let author: [String: String]
    let color: [String: String]
    let content: [String: String]
    let contentReader: [String: Enums.ContentReader]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let highlights: [String: [Objects.Highlight]]
    let id: [String: String]
    let image: [String: String]
    let isArchived: [String: Bool]
    let labels: [String: [Objects.Label]]
    let language: [String: String]
    let originalArticleUrl: [String: String]
    let ownedByViewer: [String: Bool]
    let pageId: [String: String]
    let pageType: [String: Enums.PageType]
    let publishedAt: [String: DateTime]
    let quote: [String: String]
    let readAt: [String: DateTime]
    let readingProgressAnchorIndex: [String: Int]
    let readingProgressPercent: [String: Double]
    let readingProgressTopPercent: [String: Double]
    let recommendations: [String: [Objects.Recommendation]]
    let savedAt: [String: DateTime]
    let shortId: [String: String]
    let siteIcon: [String: String]
    let siteName: [String: String]
    let slug: [String: String]
    let state: [String: Enums.ArticleSavingRequestStatus]
    let subscription: [String: String]
    let title: [String: String]
    let unsubHttpUrl: [String: String]
    let unsubMailTo: [String: String]
    let updatedAt: [String: DateTime]
    let uploadFileId: [String: String]
    let url: [String: String]
    let wordsCount: [String: Int]

    enum TypeName: String, Codable {
      case searchItem = "SearchItem"
    }
  }
}

extension Objects.SearchItem: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "annotation":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "archivedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "author":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "color":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "content":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "contentReader":
        if let value = try container.decode(Enums.ContentReader?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlights":
        if let value = try container.decode([Objects.Highlight]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "image":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "isArchived":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "language":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "originalArticleUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "ownedByViewer":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageType":
        if let value = try container.decode(Enums.PageType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "publishedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "quote":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressAnchorIndex":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "readingProgressTopPercent":
        if let value = try container.decode(Double?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recommendations":
        if let value = try container.decode([Objects.Recommendation]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "savedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "shortId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "siteIcon":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "siteName":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "slug":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "state":
        if let value = try container.decode(Enums.ArticleSavingRequestStatus?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscription":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "title":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubHttpUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubMailTo":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadFileId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "wordsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    annotation = map["annotation"]
    archivedAt = map["archivedAt"]
    author = map["author"]
    color = map["color"]
    content = map["content"]
    contentReader = map["contentReader"]
    createdAt = map["createdAt"]
    description = map["description"]
    highlights = map["highlights"]
    id = map["id"]
    image = map["image"]
    isArchived = map["isArchived"]
    labels = map["labels"]
    language = map["language"]
    originalArticleUrl = map["originalArticleUrl"]
    ownedByViewer = map["ownedByViewer"]
    pageId = map["pageId"]
    pageType = map["pageType"]
    publishedAt = map["publishedAt"]
    quote = map["quote"]
    readAt = map["readAt"]
    readingProgressAnchorIndex = map["readingProgressAnchorIndex"]
    readingProgressPercent = map["readingProgressPercent"]
    readingProgressTopPercent = map["readingProgressTopPercent"]
    recommendations = map["recommendations"]
    savedAt = map["savedAt"]
    shortId = map["shortId"]
    siteIcon = map["siteIcon"]
    siteName = map["siteName"]
    slug = map["slug"]
    state = map["state"]
    subscription = map["subscription"]
    title = map["title"]
    unsubHttpUrl = map["unsubHttpUrl"]
    unsubMailTo = map["unsubMailTo"]
    updatedAt = map["updatedAt"]
    uploadFileId = map["uploadFileId"]
    url = map["url"]
    wordsCount = map["wordsCount"]
  }
}

extension Fields where TypeLock == Objects.SearchItem {
  func annotation() throws -> String? {
    let field = GraphQLField.leaf(
      name: "annotation",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.annotation[field.alias!]
    case .mocking:
      return nil
    }
  }

  func archivedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "archivedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.archivedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func author() throws -> String? {
    let field = GraphQLField.leaf(
      name: "author",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.author[field.alias!]
    case .mocking:
      return nil
    }
  }

  func color() throws -> String? {
    let field = GraphQLField.leaf(
      name: "color",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.color[field.alias!]
    case .mocking:
      return nil
    }
  }

  func content() throws -> String? {
    let field = GraphQLField.leaf(
      name: "content",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.content[field.alias!]
    case .mocking:
      return nil
    }
  }

  func contentReader() throws -> Enums.ContentReader {
    let field = GraphQLField.leaf(
      name: "contentReader",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.contentReader[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.ContentReader.allCases.first!
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func highlights<Type>(selection: Selection<Type, [Objects.Highlight]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlights",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.highlights[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func image() throws -> String? {
    let field = GraphQLField.leaf(
      name: "image",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.image[field.alias!]
    case .mocking:
      return nil
    }
  }

  func isArchived() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "isArchived",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.isArchived[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func labels<Type>(selection: Selection<Type, [Objects.Label]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.labels[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func language() throws -> String? {
    let field = GraphQLField.leaf(
      name: "language",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.language[field.alias!]
    case .mocking:
      return nil
    }
  }

  func originalArticleUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "originalArticleUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.originalArticleUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func ownedByViewer() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "ownedByViewer",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.ownedByViewer[field.alias!]
    case .mocking:
      return nil
    }
  }

  func pageId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "pageId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.pageId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func pageType() throws -> Enums.PageType {
    let field = GraphQLField.leaf(
      name: "pageType",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageType[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.PageType.allCases.first!
    }
  }

  func publishedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "publishedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.publishedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func quote() throws -> String? {
    let field = GraphQLField.leaf(
      name: "quote",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.quote[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "readAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.readAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func readingProgressAnchorIndex() throws -> Int {
    let field = GraphQLField.leaf(
      name: "readingProgressAnchorIndex",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readingProgressAnchorIndex[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func readingProgressPercent() throws -> Double {
    let field = GraphQLField.leaf(
      name: "readingProgressPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readingProgressPercent[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Double.mockValue
    }
  }

  func readingProgressTopPercent() throws -> Double? {
    let field = GraphQLField.leaf(
      name: "readingProgressTopPercent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.readingProgressTopPercent[field.alias!]
    case .mocking:
      return nil
    }
  }

  func recommendations<Type>(selection: Selection<Type, [Objects.Recommendation]?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "recommendations",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.recommendations[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func savedAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "savedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.savedAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func shortId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "shortId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.shortId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func siteIcon() throws -> String? {
    let field = GraphQLField.leaf(
      name: "siteIcon",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.siteIcon[field.alias!]
    case .mocking:
      return nil
    }
  }

  func siteName() throws -> String? {
    let field = GraphQLField.leaf(
      name: "siteName",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.siteName[field.alias!]
    case .mocking:
      return nil
    }
  }

  func slug() throws -> String {
    let field = GraphQLField.leaf(
      name: "slug",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.slug[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func state() throws -> Enums.ArticleSavingRequestStatus? {
    let field = GraphQLField.leaf(
      name: "state",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.state[field.alias!]
    case .mocking:
      return nil
    }
  }

  func subscription() throws -> String? {
    let field = GraphQLField.leaf(
      name: "subscription",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.subscription[field.alias!]
    case .mocking:
      return nil
    }
  }

  func title() throws -> String {
    let field = GraphQLField.leaf(
      name: "title",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.title[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func unsubHttpUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubHttpUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubHttpUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func unsubMailTo() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubMailTo",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubMailTo[field.alias!]
    case .mocking:
      return nil
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func uploadFileId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "uploadFileId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.uploadFileId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func wordsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "wordsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.wordsCount[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SearchItem<T> = Selection<T, Objects.SearchItem>
}

extension Objects {
  struct SearchItemEdge {
    let __typename: TypeName = .searchItemEdge
    let cursor: [String: String]
    let node: [String: Objects.SearchItem]

    enum TypeName: String, Codable {
      case searchItemEdge = "SearchItemEdge"
    }
  }
}

extension Objects.SearchItemEdge: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "cursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "node":
        if let value = try container.decode(Objects.SearchItem?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    cursor = map["cursor"]
    node = map["node"]
  }
}

extension Fields where TypeLock == Objects.SearchItemEdge {
  func cursor() throws -> String {
    let field = GraphQLField.leaf(
      name: "cursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.cursor[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func node<Type>(selection: Selection<Type, Objects.SearchItem>) throws -> Type {
    let field = GraphQLField.composite(
      name: "node",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.node[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SearchItemEdge<T> = Selection<T, Objects.SearchItemEdge>
}

extension Objects {
  struct SearchSuccess {
    let __typename: TypeName = .searchSuccess
    let edges: [String: [Objects.SearchItemEdge]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case searchSuccess = "SearchSuccess"
    }
  }
}

extension Objects.SearchSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.SearchItemEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    edges = map["edges"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Objects.SearchSuccess {
  func edges<Type>(selection: Selection<Type, [Objects.SearchItemEdge]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "edges",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.edges[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
    let field = GraphQLField.composite(
      name: "pageInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageInfo[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SearchSuccess<T> = Selection<T, Objects.SearchSuccess>
}

extension Objects {
  struct SendInstallInstructionsError {
    let __typename: TypeName = .sendInstallInstructionsError
    let errorCodes: [String: [Enums.SendInstallInstructionsErrorCode]]

    enum TypeName: String, Codable {
      case sendInstallInstructionsError = "SendInstallInstructionsError"
    }
  }
}

extension Objects.SendInstallInstructionsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SendInstallInstructionsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SendInstallInstructionsError {
  func errorCodes() throws -> [Enums.SendInstallInstructionsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SendInstallInstructionsError<T> = Selection<T, Objects.SendInstallInstructionsError>
}

extension Objects {
  struct SendInstallInstructionsSuccess {
    let __typename: TypeName = .sendInstallInstructionsSuccess
    let sent: [String: Bool]

    enum TypeName: String, Codable {
      case sendInstallInstructionsSuccess = "SendInstallInstructionsSuccess"
    }
  }
}

extension Objects.SendInstallInstructionsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "sent":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    sent = map["sent"]
  }
}

extension Fields where TypeLock == Objects.SendInstallInstructionsSuccess {
  func sent() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "sent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sent[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SendInstallInstructionsSuccess<T> = Selection<T, Objects.SendInstallInstructionsSuccess>
}

extension Objects {
  struct SetBookmarkArticleError {
    let __typename: TypeName = .setBookmarkArticleError
    let errorCodes: [String: [Enums.SetBookmarkArticleErrorCode]]

    enum TypeName: String, Codable {
      case setBookmarkArticleError = "SetBookmarkArticleError"
    }
  }
}

extension Objects.SetBookmarkArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetBookmarkArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetBookmarkArticleError {
  func errorCodes() throws -> [Enums.SetBookmarkArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetBookmarkArticleError<T> = Selection<T, Objects.SetBookmarkArticleError>
}

extension Objects {
  struct SetBookmarkArticleSuccess {
    let __typename: TypeName = .setBookmarkArticleSuccess
    let bookmarkedArticle: [String: Objects.Article]

    enum TypeName: String, Codable {
      case setBookmarkArticleSuccess = "SetBookmarkArticleSuccess"
    }
  }
}

extension Objects.SetBookmarkArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "bookmarkedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    bookmarkedArticle = map["bookmarkedArticle"]
  }
}

extension Fields where TypeLock == Objects.SetBookmarkArticleSuccess {
  func bookmarkedArticle<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "bookmarkedArticle",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.bookmarkedArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetBookmarkArticleSuccess<T> = Selection<T, Objects.SetBookmarkArticleSuccess>
}

extension Objects {
  struct SetDeviceTokenError {
    let __typename: TypeName = .setDeviceTokenError
    let errorCodes: [String: [Enums.SetDeviceTokenErrorCode]]

    enum TypeName: String, Codable {
      case setDeviceTokenError = "SetDeviceTokenError"
    }
  }
}

extension Objects.SetDeviceTokenError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetDeviceTokenErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetDeviceTokenError {
  func errorCodes() throws -> [Enums.SetDeviceTokenErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetDeviceTokenError<T> = Selection<T, Objects.SetDeviceTokenError>
}

extension Objects {
  struct SetDeviceTokenSuccess {
    let __typename: TypeName = .setDeviceTokenSuccess
    let deviceToken: [String: Objects.DeviceToken]

    enum TypeName: String, Codable {
      case setDeviceTokenSuccess = "SetDeviceTokenSuccess"
    }
  }
}

extension Objects.SetDeviceTokenSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "deviceToken":
        if let value = try container.decode(Objects.DeviceToken?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    deviceToken = map["deviceToken"]
  }
}

extension Fields where TypeLock == Objects.SetDeviceTokenSuccess {
  func deviceToken<Type>(selection: Selection<Type, Objects.DeviceToken>) throws -> Type {
    let field = GraphQLField.composite(
      name: "deviceToken",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.deviceToken[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetDeviceTokenSuccess<T> = Selection<T, Objects.SetDeviceTokenSuccess>
}

extension Objects {
  struct SetFavoriteArticleError {
    let __typename: TypeName = .setFavoriteArticleError
    let errorCodes: [String: [Enums.SetFavoriteArticleErrorCode]]

    enum TypeName: String, Codable {
      case setFavoriteArticleError = "SetFavoriteArticleError"
    }
  }
}

extension Objects.SetFavoriteArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetFavoriteArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetFavoriteArticleError {
  func errorCodes() throws -> [Enums.SetFavoriteArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFavoriteArticleError<T> = Selection<T, Objects.SetFavoriteArticleError>
}

extension Objects {
  struct SetFavoriteArticleSuccess {
    let __typename: TypeName = .setFavoriteArticleSuccess
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case setFavoriteArticleSuccess = "SetFavoriteArticleSuccess"
    }
  }
}

extension Objects.SetFavoriteArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    success = map["success"]
  }
}

extension Fields where TypeLock == Objects.SetFavoriteArticleSuccess {
  func success() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "success",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.success[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFavoriteArticleSuccess<T> = Selection<T, Objects.SetFavoriteArticleSuccess>
}

extension Objects {
  struct SetFollowError {
    let __typename: TypeName = .setFollowError
    let errorCodes: [String: [Enums.SetFollowErrorCode]]

    enum TypeName: String, Codable {
      case setFollowError = "SetFollowError"
    }
  }
}

extension Objects.SetFollowError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetFollowErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetFollowError {
  func errorCodes() throws -> [Enums.SetFollowErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFollowError<T> = Selection<T, Objects.SetFollowError>
}

extension Objects {
  struct SetFollowSuccess {
    let __typename: TypeName = .setFollowSuccess
    let updatedUser: [String: Objects.User]

    enum TypeName: String, Codable {
      case setFollowSuccess = "SetFollowSuccess"
    }
  }
}

extension Objects.SetFollowSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "updatedUser":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    updatedUser = map["updatedUser"]
  }
}

extension Fields where TypeLock == Objects.SetFollowSuccess {
  func updatedUser<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedUser",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatedUser[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFollowSuccess<T> = Selection<T, Objects.SetFollowSuccess>
}

extension Objects {
  struct SetIntegrationError {
    let __typename: TypeName = .setIntegrationError
    let errorCodes: [String: [Enums.SetIntegrationErrorCode]]

    enum TypeName: String, Codable {
      case setIntegrationError = "SetIntegrationError"
    }
  }
}

extension Objects.SetIntegrationError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetIntegrationError {
  func errorCodes() throws -> [Enums.SetIntegrationErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetIntegrationError<T> = Selection<T, Objects.SetIntegrationError>
}

extension Objects {
  struct SetIntegrationSuccess {
    let __typename: TypeName = .setIntegrationSuccess
    let integration: [String: Objects.Integration]

    enum TypeName: String, Codable {
      case setIntegrationSuccess = "SetIntegrationSuccess"
    }
  }
}

extension Objects.SetIntegrationSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "integration":
        if let value = try container.decode(Objects.Integration?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    integration = map["integration"]
  }
}

extension Fields where TypeLock == Objects.SetIntegrationSuccess {
  func integration<Type>(selection: Selection<Type, Objects.Integration>) throws -> Type {
    let field = GraphQLField.composite(
      name: "integration",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.integration[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetIntegrationSuccess<T> = Selection<T, Objects.SetIntegrationSuccess>
}

extension Objects {
  struct SetLabelsError {
    let __typename: TypeName = .setLabelsError
    let errorCodes: [String: [Enums.SetLabelsErrorCode]]

    enum TypeName: String, Codable {
      case setLabelsError = "SetLabelsError"
    }
  }
}

extension Objects.SetLabelsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetLabelsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetLabelsError {
  func errorCodes() throws -> [Enums.SetLabelsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetLabelsError<T> = Selection<T, Objects.SetLabelsError>
}

extension Objects {
  struct SetLabelsSuccess {
    let __typename: TypeName = .setLabelsSuccess
    let labels: [String: [Objects.Label]]

    enum TypeName: String, Codable {
      case setLabelsSuccess = "SetLabelsSuccess"
    }
  }
}

extension Objects.SetLabelsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    labels = map["labels"]
  }
}

extension Fields where TypeLock == Objects.SetLabelsSuccess {
  func labels<Type>(selection: Selection<Type, [Objects.Label]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "labels",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.labels[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetLabelsSuccess<T> = Selection<T, Objects.SetLabelsSuccess>
}

extension Objects {
  struct SetRuleError {
    let __typename: TypeName = .setRuleError
    let errorCodes: [String: [Enums.SetRuleErrorCode]]

    enum TypeName: String, Codable {
      case setRuleError = "SetRuleError"
    }
  }
}

extension Objects.SetRuleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetRuleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetRuleError {
  func errorCodes() throws -> [Enums.SetRuleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetRuleError<T> = Selection<T, Objects.SetRuleError>
}

extension Objects {
  struct SetRuleSuccess {
    let __typename: TypeName = .setRuleSuccess
    let rule: [String: Objects.Rule]

    enum TypeName: String, Codable {
      case setRuleSuccess = "SetRuleSuccess"
    }
  }
}

extension Objects.SetRuleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "rule":
        if let value = try container.decode(Objects.Rule?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    rule = map["rule"]
  }
}

extension Fields where TypeLock == Objects.SetRuleSuccess {
  func rule<Type>(selection: Selection<Type, Objects.Rule>) throws -> Type {
    let field = GraphQLField.composite(
      name: "rule",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.rule[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetRuleSuccess<T> = Selection<T, Objects.SetRuleSuccess>
}

extension Objects {
  struct SetShareArticleError {
    let __typename: TypeName = .setShareArticleError
    let errorCodes: [String: [Enums.SetShareArticleErrorCode]]

    enum TypeName: String, Codable {
      case setShareArticleError = "SetShareArticleError"
    }
  }
}

extension Objects.SetShareArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetShareArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetShareArticleError {
  func errorCodes() throws -> [Enums.SetShareArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareArticleError<T> = Selection<T, Objects.SetShareArticleError>
}

extension Objects {
  struct SetShareArticleSuccess {
    let __typename: TypeName = .setShareArticleSuccess
    let updatedArticle: [String: Objects.Article]
    let updatedFeedArticle: [String: Objects.FeedArticle]
    let updatedFeedArticleId: [String: String]

    enum TypeName: String, Codable {
      case setShareArticleSuccess = "SetShareArticleSuccess"
    }
  }
}

extension Objects.SetShareArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "updatedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedFeedArticle":
        if let value = try container.decode(Objects.FeedArticle?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedFeedArticleId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    updatedArticle = map["updatedArticle"]
    updatedFeedArticle = map["updatedFeedArticle"]
    updatedFeedArticleId = map["updatedFeedArticleId"]
  }
}

extension Fields where TypeLock == Objects.SetShareArticleSuccess {
  func updatedArticle<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedArticle",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatedArticle[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func updatedFeedArticle<Type>(selection: Selection<Type, Objects.FeedArticle?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedFeedArticle",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.updatedFeedArticle[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func updatedFeedArticleId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "updatedFeedArticleId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedFeedArticleId[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareArticleSuccess<T> = Selection<T, Objects.SetShareArticleSuccess>
}

extension Objects {
  struct SetShareHighlightError {
    let __typename: TypeName = .setShareHighlightError
    let errorCodes: [String: [Enums.SetShareHighlightErrorCode]]

    enum TypeName: String, Codable {
      case setShareHighlightError = "SetShareHighlightError"
    }
  }
}

extension Objects.SetShareHighlightError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetShareHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetShareHighlightError {
  func errorCodes() throws -> [Enums.SetShareHighlightErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareHighlightError<T> = Selection<T, Objects.SetShareHighlightError>
}

extension Objects {
  struct SetShareHighlightSuccess {
    let __typename: TypeName = .setShareHighlightSuccess
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case setShareHighlightSuccess = "SetShareHighlightSuccess"
    }
  }
}

extension Objects.SetShareHighlightSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Objects.SetShareHighlightSuccess {
  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareHighlightSuccess<T> = Selection<T, Objects.SetShareHighlightSuccess>
}

extension Objects {
  struct SetUserPersonalizationError {
    let __typename: TypeName = .setUserPersonalizationError
    let errorCodes: [String: [Enums.SetUserPersonalizationErrorCode]]

    enum TypeName: String, Codable {
      case setUserPersonalizationError = "SetUserPersonalizationError"
    }
  }
}

extension Objects.SetUserPersonalizationError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetUserPersonalizationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetUserPersonalizationError {
  func errorCodes() throws -> [Enums.SetUserPersonalizationErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetUserPersonalizationError<T> = Selection<T, Objects.SetUserPersonalizationError>
}

extension Objects {
  struct SetUserPersonalizationSuccess {
    let __typename: TypeName = .setUserPersonalizationSuccess
    let updatedUserPersonalization: [String: Objects.UserPersonalization]

    enum TypeName: String, Codable {
      case setUserPersonalizationSuccess = "SetUserPersonalizationSuccess"
    }
  }
}

extension Objects.SetUserPersonalizationSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "updatedUserPersonalization":
        if let value = try container.decode(Objects.UserPersonalization?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    updatedUserPersonalization = map["updatedUserPersonalization"]
  }
}

extension Fields where TypeLock == Objects.SetUserPersonalizationSuccess {
  func updatedUserPersonalization<Type>(selection: Selection<Type, Objects.UserPersonalization>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedUserPersonalization",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatedUserPersonalization[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetUserPersonalizationSuccess<T> = Selection<T, Objects.SetUserPersonalizationSuccess>
}

extension Objects {
  struct SetWebhookError {
    let __typename: TypeName = .setWebhookError
    let errorCodes: [String: [Enums.SetWebhookErrorCode]]

    enum TypeName: String, Codable {
      case setWebhookError = "SetWebhookError"
    }
  }
}

extension Objects.SetWebhookError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetWebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SetWebhookError {
  func errorCodes() throws -> [Enums.SetWebhookErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetWebhookError<T> = Selection<T, Objects.SetWebhookError>
}

extension Objects {
  struct SetWebhookSuccess {
    let __typename: TypeName = .setWebhookSuccess
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case setWebhookSuccess = "SetWebhookSuccess"
    }
  }
}

extension Objects.SetWebhookSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Objects.SetWebhookSuccess {
  func webhook<Type>(selection: Selection<Type, Objects.Webhook>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhook",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetWebhookSuccess<T> = Selection<T, Objects.SetWebhookSuccess>
}

extension Objects {
  struct ShareStats {
    let __typename: TypeName = .shareStats
    let readDuration: [String: Int]
    let saveCount: [String: Int]
    let viewCount: [String: Int]

    enum TypeName: String, Codable {
      case shareStats = "ShareStats"
    }
  }
}

extension Objects.ShareStats: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "readDuration":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "saveCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "viewCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    readDuration = map["readDuration"]
    saveCount = map["saveCount"]
    viewCount = map["viewCount"]
  }
}

extension Fields where TypeLock == Objects.ShareStats {
  func readDuration() throws -> Int {
    let field = GraphQLField.leaf(
      name: "readDuration",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.readDuration[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func saveCount() throws -> Int {
    let field = GraphQLField.leaf(
      name: "saveCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.saveCount[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func viewCount() throws -> Int {
    let field = GraphQLField.leaf(
      name: "viewCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.viewCount[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ShareStats<T> = Selection<T, Objects.ShareStats>
}

extension Objects {
  struct SharedArticleError {
    let __typename: TypeName = .sharedArticleError
    let errorCodes: [String: [Enums.SharedArticleErrorCode]]

    enum TypeName: String, Codable {
      case sharedArticleError = "SharedArticleError"
    }
  }
}

extension Objects.SharedArticleError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SharedArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SharedArticleError {
  func errorCodes() throws -> [Enums.SharedArticleErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SharedArticleError<T> = Selection<T, Objects.SharedArticleError>
}

extension Objects {
  struct SharedArticleSuccess {
    let __typename: TypeName = .sharedArticleSuccess
    let article: [String: Objects.Article]

    enum TypeName: String, Codable {
      case sharedArticleSuccess = "SharedArticleSuccess"
    }
  }
}

extension Objects.SharedArticleSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    article = map["article"]
  }
}

extension Fields where TypeLock == Objects.SharedArticleSuccess {
  func article<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "article",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.article[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SharedArticleSuccess<T> = Selection<T, Objects.SharedArticleSuccess>
}

extension Objects {
  struct SubscribeError {
    let __typename: TypeName = .subscribeError
    let errorCodes: [String: [Enums.SubscribeErrorCode]]

    enum TypeName: String, Codable {
      case subscribeError = "SubscribeError"
    }
  }
}

extension Objects.SubscribeError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SubscribeErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SubscribeError {
  func errorCodes() throws -> [Enums.SubscribeErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscribeError<T> = Selection<T, Objects.SubscribeError>
}

extension Objects {
  struct SubscribeSuccess {
    let __typename: TypeName = .subscribeSuccess
    let subscriptions: [String: [Objects.Subscription]]

    enum TypeName: String, Codable {
      case subscribeSuccess = "SubscribeSuccess"
    }
  }
}

extension Objects.SubscribeSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "subscriptions":
        if let value = try container.decode([Objects.Subscription]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    subscriptions = map["subscriptions"]
  }
}

extension Fields where TypeLock == Objects.SubscribeSuccess {
  func subscriptions<Type>(selection: Selection<Type, [Objects.Subscription]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscriptions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscriptions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscribeSuccess<T> = Selection<T, Objects.SubscribeSuccess>
}

extension Objects {
  struct Subscription {
    let __typename: TypeName = .subscription
    let count: [String: Int]
    let createdAt: [String: DateTime]
    let description: [String: String]
    let icon: [String: String]
    let id: [String: String]
    let lastFetchedAt: [String: DateTime]
    let name: [String: String]
    let newsletterEmail: [String: String]
    let status: [String: Enums.SubscriptionStatus]
    let type: [String: Enums.SubscriptionType]
    let unsubscribeHttpUrl: [String: String]
    let unsubscribeMailTo: [String: String]
    let updatedAt: [String: DateTime]
    let url: [String: String]

    enum TypeName: String, Codable {
      case subscription = "Subscription"
    }
  }
}

extension Objects.Subscription: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "count":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "description":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "icon":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "lastFetchedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "newsletterEmail":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "status":
        if let value = try container.decode(Enums.SubscriptionStatus?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "type":
        if let value = try container.decode(Enums.SubscriptionType?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubscribeHttpUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "unsubscribeMailTo":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    count = map["count"]
    createdAt = map["createdAt"]
    description = map["description"]
    icon = map["icon"]
    id = map["id"]
    lastFetchedAt = map["lastFetchedAt"]
    name = map["name"]
    newsletterEmail = map["newsletterEmail"]
    status = map["status"]
    type = map["type"]
    unsubscribeHttpUrl = map["unsubscribeHttpUrl"]
    unsubscribeMailTo = map["unsubscribeMailTo"]
    updatedAt = map["updatedAt"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Objects.Subscription {
  func count() throws -> Int {
    let field = GraphQLField.leaf(
      name: "count",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.count[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Int.mockValue
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func description() throws -> String? {
    let field = GraphQLField.leaf(
      name: "description",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.description[field.alias!]
    case .mocking:
      return nil
    }
  }

  func icon() throws -> String? {
    let field = GraphQLField.leaf(
      name: "icon",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.icon[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func lastFetchedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "lastFetchedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.lastFetchedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func newsletterEmail() throws -> String? {
    let field = GraphQLField.leaf(
      name: "newsletterEmail",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.newsletterEmail[field.alias!]
    case .mocking:
      return nil
    }
  }

  func status() throws -> Enums.SubscriptionStatus {
    let field = GraphQLField.leaf(
      name: "status",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.status[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.SubscriptionStatus.allCases.first!
    }
  }

  func type() throws -> Enums.SubscriptionType {
    let field = GraphQLField.leaf(
      name: "type",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.type[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.SubscriptionType.allCases.first!
    }
  }

  func unsubscribeHttpUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubscribeHttpUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubscribeHttpUrl[field.alias!]
    case .mocking:
      return nil
    }
  }

  func unsubscribeMailTo() throws -> String? {
    let field = GraphQLField.leaf(
      name: "unsubscribeMailTo",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.unsubscribeMailTo[field.alias!]
    case .mocking:
      return nil
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String? {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.url[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Subscription<T> = Selection<T, Objects.Subscription>
}

extension Objects {
  struct SubscriptionsError {
    let __typename: TypeName = .subscriptionsError
    let errorCodes: [String: [Enums.SubscriptionsErrorCode]]

    enum TypeName: String, Codable {
      case subscriptionsError = "SubscriptionsError"
    }
  }
}

extension Objects.SubscriptionsError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SubscriptionsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.SubscriptionsError {
  func errorCodes() throws -> [Enums.SubscriptionsErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscriptionsError<T> = Selection<T, Objects.SubscriptionsError>
}

extension Objects {
  struct SubscriptionsSuccess {
    let __typename: TypeName = .subscriptionsSuccess
    let subscriptions: [String: [Objects.Subscription]]

    enum TypeName: String, Codable {
      case subscriptionsSuccess = "SubscriptionsSuccess"
    }
  }
}

extension Objects.SubscriptionsSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "subscriptions":
        if let value = try container.decode([Objects.Subscription]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    subscriptions = map["subscriptions"]
  }
}

extension Fields where TypeLock == Objects.SubscriptionsSuccess {
  func subscriptions<Type>(selection: Selection<Type, [Objects.Subscription]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscriptions",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscriptions[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscriptionsSuccess<T> = Selection<T, Objects.SubscriptionsSuccess>
}

extension Objects {
  struct SyncUpdatedItemEdge {
    let __typename: TypeName = .syncUpdatedItemEdge
    let cursor: [String: String]
    let itemId: [String: String]
    let node: [String: Objects.SearchItem]
    let updateReason: [String: Enums.UpdateReason]

    enum TypeName: String, Codable {
      case syncUpdatedItemEdge = "SyncUpdatedItemEdge"
    }
  }
}

extension Objects.SyncUpdatedItemEdge: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "cursor":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "itemId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "node":
        if let value = try container.decode(Objects.SearchItem?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updateReason":
        if let value = try container.decode(Enums.UpdateReason?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    cursor = map["cursor"]
    itemId = map["itemId"]
    node = map["node"]
    updateReason = map["updateReason"]
  }
}

extension Fields where TypeLock == Objects.SyncUpdatedItemEdge {
  func cursor() throws -> String {
    let field = GraphQLField.leaf(
      name: "cursor",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.cursor[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func itemId() throws -> String {
    let field = GraphQLField.leaf(
      name: "itemID",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.itemId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func node<Type>(selection: Selection<Type, Objects.SearchItem?>) throws -> Type {
    let field = GraphQLField.composite(
      name: "node",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      return try selection.decode(data: data.node[field.alias!])
    case .mocking:
      return selection.mock()
    }
  }

  func updateReason() throws -> Enums.UpdateReason {
    let field = GraphQLField.leaf(
      name: "updateReason",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updateReason[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.UpdateReason.allCases.first!
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SyncUpdatedItemEdge<T> = Selection<T, Objects.SyncUpdatedItemEdge>
}

extension Objects {
  struct TypeaheadSearchError {
    let __typename: TypeName = .typeaheadSearchError
    let errorCodes: [String: [Enums.TypeaheadSearchErrorCode]]

    enum TypeName: String, Codable {
      case typeaheadSearchError = "TypeaheadSearchError"
    }
  }
}

extension Objects.TypeaheadSearchError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.TypeaheadSearchErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.TypeaheadSearchError {
  func errorCodes() throws -> [Enums.TypeaheadSearchErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias TypeaheadSearchError<T> = Selection<T, Objects.TypeaheadSearchError>
}

extension Objects {
  struct TypeaheadSearchItem {
    let __typename: TypeName = .typeaheadSearchItem
    let contentReader: [String: Enums.ContentReader]
    let id: [String: String]
    let siteName: [String: String]
    let slug: [String: String]
    let title: [String: String]

    enum TypeName: String, Codable {
      case typeaheadSearchItem = "TypeaheadSearchItem"
    }
  }
}

extension Objects.TypeaheadSearchItem: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "contentReader":
        if let value = try container.decode(Enums.ContentReader?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "siteName":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "slug":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "title":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    contentReader = map["contentReader"]
    id = map["id"]
    siteName = map["siteName"]
    slug = map["slug"]
    title = map["title"]
  }
}

extension Fields where TypeLock == Objects.TypeaheadSearchItem {
  func contentReader() throws -> Enums.ContentReader {
    let field = GraphQLField.leaf(
      name: "contentReader",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.contentReader[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Enums.ContentReader.allCases.first!
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func siteName() throws -> String? {
    let field = GraphQLField.leaf(
      name: "siteName",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.siteName[field.alias!]
    case .mocking:
      return nil
    }
  }

  func slug() throws -> String {
    let field = GraphQLField.leaf(
      name: "slug",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.slug[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func title() throws -> String {
    let field = GraphQLField.leaf(
      name: "title",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.title[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias TypeaheadSearchItem<T> = Selection<T, Objects.TypeaheadSearchItem>
}

extension Objects {
  struct TypeaheadSearchSuccess {
    let __typename: TypeName = .typeaheadSearchSuccess
    let items: [String: [Objects.TypeaheadSearchItem]]

    enum TypeName: String, Codable {
      case typeaheadSearchSuccess = "TypeaheadSearchSuccess"
    }
  }
}

extension Objects.TypeaheadSearchSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "items":
        if let value = try container.decode([Objects.TypeaheadSearchItem]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    items = map["items"]
  }
}

extension Fields where TypeLock == Objects.TypeaheadSearchSuccess {
  func items<Type>(selection: Selection<Type, [Objects.TypeaheadSearchItem]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "items",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.items[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias TypeaheadSearchSuccess<T> = Selection<T, Objects.TypeaheadSearchSuccess>
}

extension Objects {
  struct UnsubscribeError {
    let __typename: TypeName = .unsubscribeError
    let errorCodes: [String: [Enums.UnsubscribeErrorCode]]

    enum TypeName: String, Codable {
      case unsubscribeError = "UnsubscribeError"
    }
  }
}

extension Objects.UnsubscribeError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UnsubscribeErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UnsubscribeError {
  func errorCodes() throws -> [Enums.UnsubscribeErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UnsubscribeError<T> = Selection<T, Objects.UnsubscribeError>
}

extension Objects {
  struct UnsubscribeSuccess {
    let __typename: TypeName = .unsubscribeSuccess
    let subscription: [String: Objects.Subscription]

    enum TypeName: String, Codable {
      case unsubscribeSuccess = "UnsubscribeSuccess"
    }
  }
}

extension Objects.UnsubscribeSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "subscription":
        if let value = try container.decode(Objects.Subscription?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    subscription = map["subscription"]
  }
}

extension Fields where TypeLock == Objects.UnsubscribeSuccess {
  func subscription<Type>(selection: Selection<Type, Objects.Subscription>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscription",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscription[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UnsubscribeSuccess<T> = Selection<T, Objects.UnsubscribeSuccess>
}

extension Objects {
  struct UpdateEmailError {
    let __typename: TypeName = .updateEmailError
    let errorCodes: [String: [Enums.UpdateEmailErrorCode]]

    enum TypeName: String, Codable {
      case updateEmailError = "UpdateEmailError"
    }
  }
}

extension Objects.UpdateEmailError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateEmailError {
  func errorCodes() throws -> [Enums.UpdateEmailErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateEmailError<T> = Selection<T, Objects.UpdateEmailError>
}

extension Objects {
  struct UpdateEmailSuccess {
    let __typename: TypeName = .updateEmailSuccess
    let email: [String: String]
    let verificationEmailSent: [String: Bool]

    enum TypeName: String, Codable {
      case updateEmailSuccess = "UpdateEmailSuccess"
    }
  }
}

extension Objects.UpdateEmailSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "email":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "verificationEmailSent":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    email = map["email"]
    verificationEmailSent = map["verificationEmailSent"]
  }
}

extension Fields where TypeLock == Objects.UpdateEmailSuccess {
  func email() throws -> String {
    let field = GraphQLField.leaf(
      name: "email",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.email[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func verificationEmailSent() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "verificationEmailSent",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.verificationEmailSent[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateEmailSuccess<T> = Selection<T, Objects.UpdateEmailSuccess>
}

extension Objects {
  struct UpdateFilterError {
    let __typename: TypeName = .updateFilterError
    let errorCodes: [String: [Enums.UpdateFilterErrorCode]]

    enum TypeName: String, Codable {
      case updateFilterError = "UpdateFilterError"
    }
  }
}

extension Objects.UpdateFilterError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateFilterError {
  func errorCodes() throws -> [Enums.UpdateFilterErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateFilterError<T> = Selection<T, Objects.UpdateFilterError>
}

extension Objects {
  struct UpdateFilterSuccess {
    let __typename: TypeName = .updateFilterSuccess
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case updateFilterSuccess = "UpdateFilterSuccess"
    }
  }
}

extension Objects.UpdateFilterSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    filter = map["filter"]
  }
}

extension Fields where TypeLock == Objects.UpdateFilterSuccess {
  func filter<Type>(selection: Selection<Type, Objects.Filter>) throws -> Type {
    let field = GraphQLField.composite(
      name: "filter",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.filter[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateFilterSuccess<T> = Selection<T, Objects.UpdateFilterSuccess>
}

extension Objects {
  struct UpdateHighlightError {
    let __typename: TypeName = .updateHighlightError
    let errorCodes: [String: [Enums.UpdateHighlightErrorCode]]

    enum TypeName: String, Codable {
      case updateHighlightError = "UpdateHighlightError"
    }
  }
}

extension Objects.UpdateHighlightError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateHighlightError {
  func errorCodes() throws -> [Enums.UpdateHighlightErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightError<T> = Selection<T, Objects.UpdateHighlightError>
}

extension Objects {
  struct UpdateHighlightReplyError {
    let __typename: TypeName = .updateHighlightReplyError
    let errorCodes: [String: [Enums.UpdateHighlightReplyErrorCode]]

    enum TypeName: String, Codable {
      case updateHighlightReplyError = "UpdateHighlightReplyError"
    }
  }
}

extension Objects.UpdateHighlightReplyError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateHighlightReplyError {
  func errorCodes() throws -> [Enums.UpdateHighlightReplyErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightReplyError<T> = Selection<T, Objects.UpdateHighlightReplyError>
}

extension Objects {
  struct UpdateHighlightReplySuccess {
    let __typename: TypeName = .updateHighlightReplySuccess
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case updateHighlightReplySuccess = "UpdateHighlightReplySuccess"
    }
  }
}

extension Objects.UpdateHighlightReplySuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Objects.UpdateHighlightReplySuccess {
  func highlightReply<Type>(selection: Selection<Type, Objects.HighlightReply>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlightReply",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlightReply[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightReplySuccess<T> = Selection<T, Objects.UpdateHighlightReplySuccess>
}

extension Objects {
  struct UpdateHighlightSuccess {
    let __typename: TypeName = .updateHighlightSuccess
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case updateHighlightSuccess = "UpdateHighlightSuccess"
    }
  }
}

extension Objects.UpdateHighlightSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Objects.UpdateHighlightSuccess {
  func highlight<Type>(selection: Selection<Type, Objects.Highlight>) throws -> Type {
    let field = GraphQLField.composite(
      name: "highlight",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.highlight[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightSuccess<T> = Selection<T, Objects.UpdateHighlightSuccess>
}

extension Objects {
  struct UpdateLabelError {
    let __typename: TypeName = .updateLabelError
    let errorCodes: [String: [Enums.UpdateLabelErrorCode]]

    enum TypeName: String, Codable {
      case updateLabelError = "UpdateLabelError"
    }
  }
}

extension Objects.UpdateLabelError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateLabelError {
  func errorCodes() throws -> [Enums.UpdateLabelErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLabelError<T> = Selection<T, Objects.UpdateLabelError>
}

extension Objects {
  struct UpdateLabelSuccess {
    let __typename: TypeName = .updateLabelSuccess
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case updateLabelSuccess = "UpdateLabelSuccess"
    }
  }
}

extension Objects.UpdateLabelSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    label = map["label"]
  }
}

extension Fields where TypeLock == Objects.UpdateLabelSuccess {
  func label<Type>(selection: Selection<Type, Objects.Label>) throws -> Type {
    let field = GraphQLField.composite(
      name: "label",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.label[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLabelSuccess<T> = Selection<T, Objects.UpdateLabelSuccess>
}

extension Objects {
  struct UpdateLinkShareInfoError {
    let __typename: TypeName = .updateLinkShareInfoError
    let errorCodes: [String: [Enums.UpdateLinkShareInfoErrorCode]]

    enum TypeName: String, Codable {
      case updateLinkShareInfoError = "UpdateLinkShareInfoError"
    }
  }
}

extension Objects.UpdateLinkShareInfoError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateLinkShareInfoErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateLinkShareInfoError {
  func errorCodes() throws -> [Enums.UpdateLinkShareInfoErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLinkShareInfoError<T> = Selection<T, Objects.UpdateLinkShareInfoError>
}

extension Objects {
  struct UpdateLinkShareInfoSuccess {
    let __typename: TypeName = .updateLinkShareInfoSuccess
    let message: [String: String]

    enum TypeName: String, Codable {
      case updateLinkShareInfoSuccess = "UpdateLinkShareInfoSuccess"
    }
  }
}

extension Objects.UpdateLinkShareInfoSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    message = map["message"]
  }
}

extension Fields where TypeLock == Objects.UpdateLinkShareInfoSuccess {
  func message() throws -> String {
    let field = GraphQLField.leaf(
      name: "message",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.message[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLinkShareInfoSuccess<T> = Selection<T, Objects.UpdateLinkShareInfoSuccess>
}

extension Objects {
  struct UpdatePageError {
    let __typename: TypeName = .updatePageError
    let errorCodes: [String: [Enums.UpdatePageErrorCode]]

    enum TypeName: String, Codable {
      case updatePageError = "UpdatePageError"
    }
  }
}

extension Objects.UpdatePageError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdatePageErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdatePageError {
  func errorCodes() throws -> [Enums.UpdatePageErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatePageError<T> = Selection<T, Objects.UpdatePageError>
}

extension Objects {
  struct UpdatePageSuccess {
    let __typename: TypeName = .updatePageSuccess
    let updatedPage: [String: Objects.Article]

    enum TypeName: String, Codable {
      case updatePageSuccess = "UpdatePageSuccess"
    }
  }
}

extension Objects.UpdatePageSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "updatedPage":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    updatedPage = map["updatedPage"]
  }
}

extension Fields where TypeLock == Objects.UpdatePageSuccess {
  func updatedPage<Type>(selection: Selection<Type, Objects.Article>) throws -> Type {
    let field = GraphQLField.composite(
      name: "updatedPage",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.updatedPage[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatePageSuccess<T> = Selection<T, Objects.UpdatePageSuccess>
}

extension Objects {
  struct UpdateReminderError {
    let __typename: TypeName = .updateReminderError
    let errorCodes: [String: [Enums.UpdateReminderErrorCode]]

    enum TypeName: String, Codable {
      case updateReminderError = "UpdateReminderError"
    }
  }
}

extension Objects.UpdateReminderError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateReminderError {
  func errorCodes() throws -> [Enums.UpdateReminderErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateReminderError<T> = Selection<T, Objects.UpdateReminderError>
}

extension Objects {
  struct UpdateReminderSuccess {
    let __typename: TypeName = .updateReminderSuccess
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case updateReminderSuccess = "UpdateReminderSuccess"
    }
  }
}

extension Objects.UpdateReminderSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Objects.UpdateReminderSuccess {
  func reminder<Type>(selection: Selection<Type, Objects.Reminder>) throws -> Type {
    let field = GraphQLField.composite(
      name: "reminder",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.reminder[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateReminderSuccess<T> = Selection<T, Objects.UpdateReminderSuccess>
}

extension Objects {
  struct UpdateSharedCommentError {
    let __typename: TypeName = .updateSharedCommentError
    let errorCodes: [String: [Enums.UpdateSharedCommentErrorCode]]

    enum TypeName: String, Codable {
      case updateSharedCommentError = "UpdateSharedCommentError"
    }
  }
}

extension Objects.UpdateSharedCommentError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateSharedCommentErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateSharedCommentError {
  func errorCodes() throws -> [Enums.UpdateSharedCommentErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSharedCommentError<T> = Selection<T, Objects.UpdateSharedCommentError>
}

extension Objects {
  struct UpdateSharedCommentSuccess {
    let __typename: TypeName = .updateSharedCommentSuccess
    let articleId: [String: String]
    let sharedComment: [String: String]

    enum TypeName: String, Codable {
      case updateSharedCommentSuccess = "UpdateSharedCommentSuccess"
    }
  }
}

extension Objects.UpdateSharedCommentSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedComment":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    articleId = map["articleId"]
    sharedComment = map["sharedComment"]
  }
}

extension Fields where TypeLock == Objects.UpdateSharedCommentSuccess {
  func articleId() throws -> String {
    let field = GraphQLField.leaf(
      name: "articleID",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.articleId[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func sharedComment() throws -> String {
    let field = GraphQLField.leaf(
      name: "sharedComment",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sharedComment[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSharedCommentSuccess<T> = Selection<T, Objects.UpdateSharedCommentSuccess>
}

extension Objects {
  struct UpdateSubscriptionError {
    let __typename: TypeName = .updateSubscriptionError
    let errorCodes: [String: [Enums.UpdateSubscriptionErrorCode]]

    enum TypeName: String, Codable {
      case updateSubscriptionError = "UpdateSubscriptionError"
    }
  }
}

extension Objects.UpdateSubscriptionError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateSubscriptionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateSubscriptionError {
  func errorCodes() throws -> [Enums.UpdateSubscriptionErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSubscriptionError<T> = Selection<T, Objects.UpdateSubscriptionError>
}

extension Objects {
  struct UpdateSubscriptionSuccess {
    let __typename: TypeName = .updateSubscriptionSuccess
    let subscription: [String: Objects.Subscription]

    enum TypeName: String, Codable {
      case updateSubscriptionSuccess = "UpdateSubscriptionSuccess"
    }
  }
}

extension Objects.UpdateSubscriptionSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "subscription":
        if let value = try container.decode(Objects.Subscription?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    subscription = map["subscription"]
  }
}

extension Fields where TypeLock == Objects.UpdateSubscriptionSuccess {
  func subscription<Type>(selection: Selection<Type, Objects.Subscription>) throws -> Type {
    let field = GraphQLField.composite(
      name: "subscription",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.subscription[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSubscriptionSuccess<T> = Selection<T, Objects.UpdateSubscriptionSuccess>
}

extension Objects {
  struct UpdateUserError {
    let __typename: TypeName = .updateUserError
    let errorCodes: [String: [Enums.UpdateUserErrorCode]]

    enum TypeName: String, Codable {
      case updateUserError = "UpdateUserError"
    }
  }
}

extension Objects.UpdateUserError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateUserErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateUserError {
  func errorCodes() throws -> [Enums.UpdateUserErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserError<T> = Selection<T, Objects.UpdateUserError>
}

extension Objects {
  struct UpdateUserProfileError {
    let __typename: TypeName = .updateUserProfileError
    let errorCodes: [String: [Enums.UpdateUserProfileErrorCode]]

    enum TypeName: String, Codable {
      case updateUserProfileError = "UpdateUserProfileError"
    }
  }
}

extension Objects.UpdateUserProfileError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateUserProfileErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdateUserProfileError {
  func errorCodes() throws -> [Enums.UpdateUserProfileErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserProfileError<T> = Selection<T, Objects.UpdateUserProfileError>
}

extension Objects {
  struct UpdateUserProfileSuccess {
    let __typename: TypeName = .updateUserProfileSuccess
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case updateUserProfileSuccess = "UpdateUserProfileSuccess"
    }
  }
}

extension Objects.UpdateUserProfileSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.UpdateUserProfileSuccess {
  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserProfileSuccess<T> = Selection<T, Objects.UpdateUserProfileSuccess>
}

extension Objects {
  struct UpdateUserSuccess {
    let __typename: TypeName = .updateUserSuccess
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case updateUserSuccess = "UpdateUserSuccess"
    }
  }
}

extension Objects.UpdateUserSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.UpdateUserSuccess {
  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserSuccess<T> = Selection<T, Objects.UpdateUserSuccess>
}

extension Objects {
  struct UpdatesSinceError {
    let __typename: TypeName = .updatesSinceError
    let errorCodes: [String: [Enums.UpdatesSinceErrorCode]]

    enum TypeName: String, Codable {
      case updatesSinceError = "UpdatesSinceError"
    }
  }
}

extension Objects.UpdatesSinceError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdatesSinceErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UpdatesSinceError {
  func errorCodes() throws -> [Enums.UpdatesSinceErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatesSinceError<T> = Selection<T, Objects.UpdatesSinceError>
}

extension Objects {
  struct UpdatesSinceSuccess {
    let __typename: TypeName = .updatesSinceSuccess
    let edges: [String: [Objects.SyncUpdatedItemEdge]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case updatesSinceSuccess = "UpdatesSinceSuccess"
    }
  }
}

extension Objects.UpdatesSinceSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.SyncUpdatedItemEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    edges = map["edges"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Objects.UpdatesSinceSuccess {
  func edges<Type>(selection: Selection<Type, [Objects.SyncUpdatedItemEdge]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "edges",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.edges[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func pageInfo<Type>(selection: Selection<Type, Objects.PageInfo>) throws -> Type {
    let field = GraphQLField.composite(
      name: "pageInfo",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.pageInfo[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatesSinceSuccess<T> = Selection<T, Objects.UpdatesSinceSuccess>
}

extension Objects {
  struct UploadFileRequestError {
    let __typename: TypeName = .uploadFileRequestError
    let errorCodes: [String: [Enums.UploadFileRequestErrorCode]]

    enum TypeName: String, Codable {
      case uploadFileRequestError = "UploadFileRequestError"
    }
  }
}

extension Objects.UploadFileRequestError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UploadFileRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UploadFileRequestError {
  func errorCodes() throws -> [Enums.UploadFileRequestErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadFileRequestError<T> = Selection<T, Objects.UploadFileRequestError>
}

extension Objects {
  struct UploadFileRequestSuccess {
    let __typename: TypeName = .uploadFileRequestSuccess
    let createdPageId: [String: String]
    let id: [String: String]
    let uploadFileId: [String: String]
    let uploadSignedUrl: [String: String]

    enum TypeName: String, Codable {
      case uploadFileRequestSuccess = "UploadFileRequestSuccess"
    }
  }
}

extension Objects.UploadFileRequestSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdPageId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadFileId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadSignedUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    createdPageId = map["createdPageId"]
    id = map["id"]
    uploadFileId = map["uploadFileId"]
    uploadSignedUrl = map["uploadSignedUrl"]
  }
}

extension Fields where TypeLock == Objects.UploadFileRequestSuccess {
  func createdPageId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "createdPageId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.createdPageId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func uploadFileId() throws -> String? {
    let field = GraphQLField.leaf(
      name: "uploadFileId",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.uploadFileId[field.alias!]
    case .mocking:
      return nil
    }
  }

  func uploadSignedUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "uploadSignedUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.uploadSignedUrl[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadFileRequestSuccess<T> = Selection<T, Objects.UploadFileRequestSuccess>
}

extension Objects {
  struct UploadImportFileError {
    let __typename: TypeName = .uploadImportFileError
    let errorCodes: [String: [Enums.UploadImportFileErrorCode]]

    enum TypeName: String, Codable {
      case uploadImportFileError = "UploadImportFileError"
    }
  }
}

extension Objects.UploadImportFileError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UploadImportFileErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UploadImportFileError {
  func errorCodes() throws -> [Enums.UploadImportFileErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadImportFileError<T> = Selection<T, Objects.UploadImportFileError>
}

extension Objects {
  struct UploadImportFileSuccess {
    let __typename: TypeName = .uploadImportFileSuccess
    let uploadSignedUrl: [String: String]

    enum TypeName: String, Codable {
      case uploadImportFileSuccess = "UploadImportFileSuccess"
    }
  }
}

extension Objects.UploadImportFileSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "uploadSignedUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    uploadSignedUrl = map["uploadSignedUrl"]
  }
}

extension Fields where TypeLock == Objects.UploadImportFileSuccess {
  func uploadSignedUrl() throws -> String? {
    let field = GraphQLField.leaf(
      name: "uploadSignedUrl",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.uploadSignedUrl[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadImportFileSuccess<T> = Selection<T, Objects.UploadImportFileSuccess>
}

extension Objects {
  struct User {
    let __typename: TypeName = .user
    let email: [String: String]
    let followersCount: [String: Int]
    let friendsCount: [String: Int]
    let id: [String: String]
    let isFriend: [String: Bool]
    let isFullUser: [String: Bool]
    let name: [String: String]
    let picture: [String: String]
    let profile: [String: Objects.Profile]
    let sharedArticles: [String: [Objects.FeedArticle]]
    let sharedArticlesCount: [String: Int]
    let sharedHighlightsCount: [String: Int]
    let sharedNotesCount: [String: Int]
    let source: [String: String]
    let viewerIsFollowing: [String: Bool]

    enum TypeName: String, Codable {
      case user = "User"
    }
  }
}

extension Objects.User: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "email":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "followersCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "friendsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "isFriend":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "isFullUser":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "name":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "picture":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "profile":
        if let value = try container.decode(Objects.Profile?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedArticles":
        if let value = try container.decode([Objects.FeedArticle]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedArticlesCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedHighlightsCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedNotesCount":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "source":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "viewerIsFollowing":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    email = map["email"]
    followersCount = map["followersCount"]
    friendsCount = map["friendsCount"]
    id = map["id"]
    isFriend = map["isFriend"]
    isFullUser = map["isFullUser"]
    name = map["name"]
    picture = map["picture"]
    profile = map["profile"]
    sharedArticles = map["sharedArticles"]
    sharedArticlesCount = map["sharedArticlesCount"]
    sharedHighlightsCount = map["sharedHighlightsCount"]
    sharedNotesCount = map["sharedNotesCount"]
    source = map["source"]
    viewerIsFollowing = map["viewerIsFollowing"]
  }
}

extension Fields where TypeLock == Objects.User {
  func email() throws -> String? {
    let field = GraphQLField.leaf(
      name: "email",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.email[field.alias!]
    case .mocking:
      return nil
    }
  }

  func followersCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "followersCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.followersCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func friendsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "friendsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.friendsCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  @available(*, deprecated, message: "isFriend has been replaced with viewerIsFollowing")
  func isFriend() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "isFriend",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.isFriend[field.alias!]
    case .mocking:
      return nil
    }
  }

  func isFullUser() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "isFullUser",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.isFullUser[field.alias!]
    case .mocking:
      return nil
    }
  }

  func name() throws -> String {
    let field = GraphQLField.leaf(
      name: "name",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.name[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func picture() throws -> String? {
    let field = GraphQLField.leaf(
      name: "picture",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.picture[field.alias!]
    case .mocking:
      return nil
    }
  }

  func profile<Type>(selection: Selection<Type, Objects.Profile>) throws -> Type {
    let field = GraphQLField.composite(
      name: "profile",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.profile[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sharedArticles<Type>(selection: Selection<Type, [Objects.FeedArticle]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "sharedArticles",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.sharedArticles[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }

  func sharedArticlesCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "sharedArticlesCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedArticlesCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func sharedHighlightsCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "sharedHighlightsCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedHighlightsCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func sharedNotesCount() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "sharedNotesCount",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.sharedNotesCount[field.alias!]
    case .mocking:
      return nil
    }
  }

  func source() throws -> String? {
    let field = GraphQLField.leaf(
      name: "source",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.source[field.alias!]
    case .mocking:
      return nil
    }
  }

  func viewerIsFollowing() throws -> Bool? {
    let field = GraphQLField.leaf(
      name: "viewerIsFollowing",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.viewerIsFollowing[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias User<T> = Selection<T, Objects.User>
}

extension Objects {
  struct UserError {
    let __typename: TypeName = .userError
    let errorCodes: [String: [Enums.UserErrorCode]]

    enum TypeName: String, Codable {
      case userError = "UserError"
    }
  }
}

extension Objects.UserError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UserErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UserError {
  func errorCodes() throws -> [Enums.UserErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UserError<T> = Selection<T, Objects.UserError>
}

extension Objects {
  struct UserPersonalization {
    let __typename: TypeName = .userPersonalization
    let fontFamily: [String: String]
    let fontSize: [String: Int]
    let id: [String: String]
    let libraryLayoutType: [String: String]
    let librarySortOrder: [String: Enums.SortOrder]
    let margin: [String: Int]
    let speechRate: [String: String]
    let speechSecondaryVoice: [String: String]
    let speechVoice: [String: String]
    let speechVolume: [String: String]
    let theme: [String: String]

    enum TypeName: String, Codable {
      case userPersonalization = "UserPersonalization"
    }
  }
}

extension Objects.UserPersonalization: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "fontFamily":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "fontSize":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "libraryLayoutType":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "librarySortOrder":
        if let value = try container.decode(Enums.SortOrder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "margin":
        if let value = try container.decode(Int?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "speechRate":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "speechSecondaryVoice":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "speechVoice":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "speechVolume":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "theme":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    fontFamily = map["fontFamily"]
    fontSize = map["fontSize"]
    id = map["id"]
    libraryLayoutType = map["libraryLayoutType"]
    librarySortOrder = map["librarySortOrder"]
    margin = map["margin"]
    speechRate = map["speechRate"]
    speechSecondaryVoice = map["speechSecondaryVoice"]
    speechVoice = map["speechVoice"]
    speechVolume = map["speechVolume"]
    theme = map["theme"]
  }
}

extension Fields where TypeLock == Objects.UserPersonalization {
  func fontFamily() throws -> String? {
    let field = GraphQLField.leaf(
      name: "fontFamily",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.fontFamily[field.alias!]
    case .mocking:
      return nil
    }
  }

  func fontSize() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "fontSize",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.fontSize[field.alias!]
    case .mocking:
      return nil
    }
  }

  func id() throws -> String? {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.id[field.alias!]
    case .mocking:
      return nil
    }
  }

  func libraryLayoutType() throws -> String? {
    let field = GraphQLField.leaf(
      name: "libraryLayoutType",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.libraryLayoutType[field.alias!]
    case .mocking:
      return nil
    }
  }

  func librarySortOrder() throws -> Enums.SortOrder? {
    let field = GraphQLField.leaf(
      name: "librarySortOrder",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.librarySortOrder[field.alias!]
    case .mocking:
      return nil
    }
  }

  func margin() throws -> Int? {
    let field = GraphQLField.leaf(
      name: "margin",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.margin[field.alias!]
    case .mocking:
      return nil
    }
  }

  func speechRate() throws -> String? {
    let field = GraphQLField.leaf(
      name: "speechRate",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.speechRate[field.alias!]
    case .mocking:
      return nil
    }
  }

  func speechSecondaryVoice() throws -> String? {
    let field = GraphQLField.leaf(
      name: "speechSecondaryVoice",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.speechSecondaryVoice[field.alias!]
    case .mocking:
      return nil
    }
  }

  func speechVoice() throws -> String? {
    let field = GraphQLField.leaf(
      name: "speechVoice",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.speechVoice[field.alias!]
    case .mocking:
      return nil
    }
  }

  func speechVolume() throws -> String? {
    let field = GraphQLField.leaf(
      name: "speechVolume",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.speechVolume[field.alias!]
    case .mocking:
      return nil
    }
  }

  func theme() throws -> String? {
    let field = GraphQLField.leaf(
      name: "theme",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.theme[field.alias!]
    case .mocking:
      return nil
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UserPersonalization<T> = Selection<T, Objects.UserPersonalization>
}

extension Objects {
  struct UserSuccess {
    let __typename: TypeName = .userSuccess
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case userSuccess = "UserSuccess"
    }
  }
}

extension Objects.UserSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    user = map["user"]
  }
}

extension Fields where TypeLock == Objects.UserSuccess {
  func user<Type>(selection: Selection<Type, Objects.User>) throws -> Type {
    let field = GraphQLField.composite(
      name: "user",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.user[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UserSuccess<T> = Selection<T, Objects.UserSuccess>
}

extension Objects {
  struct UsersError {
    let __typename: TypeName = .usersError
    let errorCodes: [String: [Enums.UsersErrorCode]]

    enum TypeName: String, Codable {
      case usersError = "UsersError"
    }
  }
}

extension Objects.UsersError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UsersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.UsersError {
  func errorCodes() throws -> [Enums.UsersErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UsersError<T> = Selection<T, Objects.UsersError>
}

extension Objects {
  struct UsersSuccess {
    let __typename: TypeName = .usersSuccess
    let users: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case usersSuccess = "UsersSuccess"
    }
  }
}

extension Objects.UsersSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "users":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    users = map["users"]
  }
}

extension Fields where TypeLock == Objects.UsersSuccess {
  func users<Type>(selection: Selection<Type, [Objects.User]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "users",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.users[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UsersSuccess<T> = Selection<T, Objects.UsersSuccess>
}

extension Objects {
  struct Webhook {
    let __typename: TypeName = .webhook
    let contentType: [String: String]
    let createdAt: [String: DateTime]
    let enabled: [String: Bool]
    let eventTypes: [String: [Enums.WebhookEvent]]
    let id: [String: String]
    let method: [String: String]
    let updatedAt: [String: DateTime]
    let url: [String: String]

    enum TypeName: String, Codable {
      case webhook = "Webhook"
    }
  }
}

extension Objects.Webhook: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "contentType":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "enabled":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "eventTypes":
        if let value = try container.decode([Enums.WebhookEvent]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "method":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedAt":
        if let value = try container.decode(DateTime?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    contentType = map["contentType"]
    createdAt = map["createdAt"]
    enabled = map["enabled"]
    eventTypes = map["eventTypes"]
    id = map["id"]
    method = map["method"]
    updatedAt = map["updatedAt"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Objects.Webhook {
  func contentType() throws -> String {
    let field = GraphQLField.leaf(
      name: "contentType",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.contentType[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func createdAt() throws -> DateTime {
    let field = GraphQLField.leaf(
      name: "createdAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.createdAt[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return DateTime.mockValue
    }
  }

  func enabled() throws -> Bool {
    let field = GraphQLField.leaf(
      name: "enabled",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.enabled[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return Bool.mockValue
    }
  }

  func eventTypes() throws -> [Enums.WebhookEvent] {
    let field = GraphQLField.leaf(
      name: "eventTypes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.eventTypes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }

  func id() throws -> String {
    let field = GraphQLField.leaf(
      name: "id",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.id[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func method() throws -> String {
    let field = GraphQLField.leaf(
      name: "method",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.method[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }

  func updatedAt() throws -> DateTime? {
    let field = GraphQLField.leaf(
      name: "updatedAt",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      return data.updatedAt[field.alias!]
    case .mocking:
      return nil
    }
  }

  func url() throws -> String {
    let field = GraphQLField.leaf(
      name: "url",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.url[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return String.mockValue
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias Webhook<T> = Selection<T, Objects.Webhook>
}

extension Objects {
  struct WebhookError {
    let __typename: TypeName = .webhookError
    let errorCodes: [String: [Enums.WebhookErrorCode]]

    enum TypeName: String, Codable {
      case webhookError = "WebhookError"
    }
  }
}

extension Objects.WebhookError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.WebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.WebhookError {
  func errorCodes() throws -> [Enums.WebhookErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhookError<T> = Selection<T, Objects.WebhookError>
}

extension Objects {
  struct WebhookSuccess {
    let __typename: TypeName = .webhookSuccess
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case webhookSuccess = "WebhookSuccess"
    }
  }
}

extension Objects.WebhookSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Objects.WebhookSuccess {
  func webhook<Type>(selection: Selection<Type, Objects.Webhook>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhook",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhook[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhookSuccess<T> = Selection<T, Objects.WebhookSuccess>
}

extension Objects {
  struct WebhooksError {
    let __typename: TypeName = .webhooksError
    let errorCodes: [String: [Enums.WebhooksErrorCode]]

    enum TypeName: String, Codable {
      case webhooksError = "WebhooksError"
    }
  }
}

extension Objects.WebhooksError: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.WebhooksErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Objects.WebhooksError {
  func errorCodes() throws -> [Enums.WebhooksErrorCode] {
    let field = GraphQLField.leaf(
      name: "errorCodes",
      arguments: []
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.errorCodes[field.alias!] {
        return data
      }
      throw HttpError.badpayload
    case .mocking:
      return []
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhooksError<T> = Selection<T, Objects.WebhooksError>
}

extension Objects {
  struct WebhooksSuccess {
    let __typename: TypeName = .webhooksSuccess
    let webhooks: [String: [Objects.Webhook]]

    enum TypeName: String, Codable {
      case webhooksSuccess = "WebhooksSuccess"
    }
  }
}

extension Objects.WebhooksSuccess: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "webhooks":
        if let value = try container.decode([Objects.Webhook]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    webhooks = map["webhooks"]
  }
}

extension Fields where TypeLock == Objects.WebhooksSuccess {
  func webhooks<Type>(selection: Selection<Type, [Objects.Webhook]>) throws -> Type {
    let field = GraphQLField.composite(
      name: "webhooks",
      arguments: [],
      selection: selection.selection
    )
    select(field)

    switch response {
    case let .decoding(data):
      if let data = data.webhooks[field.alias!] {
        return try selection.decode(data: data)
      }
      throw HttpError.badpayload
    case .mocking:
      return selection.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhooksSuccess<T> = Selection<T, Objects.WebhooksSuccess>
}

// MARK: - Interfaces

enum Interfaces {}

// MARK: - Unions

enum Unions {}
extension Unions {
  struct AddPopularReadResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.AddPopularReadErrorCode]]
    let pageId: [String: String]

    enum TypeName: String, Codable {
      case addPopularReadError = "AddPopularReadError"
      case addPopularReadSuccess = "AddPopularReadSuccess"
    }
  }
}

extension Unions.AddPopularReadResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.AddPopularReadErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    pageId = map["pageId"]
  }
}

extension Fields where TypeLock == Unions.AddPopularReadResult {
  func on<Type>(addPopularReadError: Selection<Type, Objects.AddPopularReadError>, addPopularReadSuccess: Selection<Type, Objects.AddPopularReadSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "AddPopularReadError", selection: addPopularReadError.selection), GraphQLField.fragment(type: "AddPopularReadSuccess", selection: addPopularReadSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .addPopularReadError:
        let data = Objects.AddPopularReadError(errorCodes: data.errorCodes)
        return try addPopularReadError.decode(data: data)
      case .addPopularReadSuccess:
        let data = Objects.AddPopularReadSuccess(pageId: data.pageId)
        return try addPopularReadSuccess.decode(data: data)
      }
    case .mocking:
      return addPopularReadError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias AddPopularReadResult<T> = Selection<T, Unions.AddPopularReadResult>
}

extension Unions {
  struct ApiKeysResult {
    let __typename: TypeName
    let apiKeys: [String: [Objects.ApiKey]]
    let errorCodes: [String: [Enums.ApiKeysErrorCode]]

    enum TypeName: String, Codable {
      case apiKeysError = "ApiKeysError"
      case apiKeysSuccess = "ApiKeysSuccess"
    }
  }
}

extension Unions.ApiKeysResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKeys":
        if let value = try container.decode([Objects.ApiKey]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.ApiKeysErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    apiKeys = map["apiKeys"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.ApiKeysResult {
  func on<Type>(apiKeysError: Selection<Type, Objects.ApiKeysError>, apiKeysSuccess: Selection<Type, Objects.ApiKeysSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ApiKeysError", selection: apiKeysError.selection), GraphQLField.fragment(type: "ApiKeysSuccess", selection: apiKeysSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .apiKeysError:
        let data = Objects.ApiKeysError(errorCodes: data.errorCodes)
        return try apiKeysError.decode(data: data)
      case .apiKeysSuccess:
        let data = Objects.ApiKeysSuccess(apiKeys: data.apiKeys)
        return try apiKeysSuccess.decode(data: data)
      }
    case .mocking:
      return apiKeysError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ApiKeysResult<T> = Selection<T, Unions.ApiKeysResult>
}

extension Unions {
  struct ArchiveLinkResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.ArchiveLinkErrorCode]]
    let linkId: [String: String]
    let message: [String: String]

    enum TypeName: String, Codable {
      case archiveLinkError = "ArchiveLinkError"
      case archiveLinkSuccess = "ArchiveLinkSuccess"
    }
  }
}

extension Unions.ArchiveLinkResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ArchiveLinkErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "linkId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    linkId = map["linkId"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Unions.ArchiveLinkResult {
  func on<Type>(archiveLinkError: Selection<Type, Objects.ArchiveLinkError>, archiveLinkSuccess: Selection<Type, Objects.ArchiveLinkSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ArchiveLinkError", selection: archiveLinkError.selection), GraphQLField.fragment(type: "ArchiveLinkSuccess", selection: archiveLinkSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .archiveLinkError:
        let data = Objects.ArchiveLinkError(errorCodes: data.errorCodes, message: data.message)
        return try archiveLinkError.decode(data: data)
      case .archiveLinkSuccess:
        let data = Objects.ArchiveLinkSuccess(linkId: data.linkId, message: data.message)
        return try archiveLinkSuccess.decode(data: data)
      }
    case .mocking:
      return archiveLinkError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArchiveLinkResult<T> = Selection<T, Unions.ArchiveLinkResult>
}

extension Unions {
  struct ArticleResult {
    let __typename: TypeName
    let article: [String: Objects.Article]
    let errorCodes: [String: [Enums.ArticleErrorCode]]

    enum TypeName: String, Codable {
      case articleError = "ArticleError"
      case articleSuccess = "ArticleSuccess"
    }
  }
}

extension Unions.ArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.ArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    article = map["article"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.ArticleResult {
  func on<Type>(articleError: Selection<Type, Objects.ArticleError>, articleSuccess: Selection<Type, Objects.ArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ArticleError", selection: articleError.selection), GraphQLField.fragment(type: "ArticleSuccess", selection: articleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .articleError:
        let data = Objects.ArticleError(errorCodes: data.errorCodes)
        return try articleError.decode(data: data)
      case .articleSuccess:
        let data = Objects.ArticleSuccess(article: data.article)
        return try articleSuccess.decode(data: data)
      }
    case .mocking:
      return articleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleResult<T> = Selection<T, Unions.ArticleResult>
}

extension Unions {
  struct ArticleSavingRequestResult {
    let __typename: TypeName
    let articleSavingRequest: [String: Objects.ArticleSavingRequest]
    let errorCodes: [String: [Enums.ArticleSavingRequestErrorCode]]

    enum TypeName: String, Codable {
      case articleSavingRequestError = "ArticleSavingRequestError"
      case articleSavingRequestSuccess = "ArticleSavingRequestSuccess"
    }
  }
}

extension Unions.ArticleSavingRequestResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleSavingRequest":
        if let value = try container.decode(Objects.ArticleSavingRequest?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.ArticleSavingRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    articleSavingRequest = map["articleSavingRequest"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.ArticleSavingRequestResult {
  func on<Type>(articleSavingRequestError: Selection<Type, Objects.ArticleSavingRequestError>, articleSavingRequestSuccess: Selection<Type, Objects.ArticleSavingRequestSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ArticleSavingRequestError", selection: articleSavingRequestError.selection), GraphQLField.fragment(type: "ArticleSavingRequestSuccess", selection: articleSavingRequestSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .articleSavingRequestError:
        let data = Objects.ArticleSavingRequestError(errorCodes: data.errorCodes)
        return try articleSavingRequestError.decode(data: data)
      case .articleSavingRequestSuccess:
        let data = Objects.ArticleSavingRequestSuccess(articleSavingRequest: data.articleSavingRequest)
        return try articleSavingRequestSuccess.decode(data: data)
      }
    case .mocking:
      return articleSavingRequestError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticleSavingRequestResult<T> = Selection<T, Unions.ArticleSavingRequestResult>
}

extension Unions {
  struct ArticlesResult {
    let __typename: TypeName
    let edges: [String: [Objects.ArticleEdge]]
    let errorCodes: [String: [Enums.ArticlesErrorCode]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case articlesError = "ArticlesError"
      case articlesSuccess = "ArticlesSuccess"
    }
  }
}

extension Unions.ArticlesResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.ArticleEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.ArticlesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    edges = map["edges"]
    errorCodes = map["errorCodes"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Unions.ArticlesResult {
  func on<Type>(articlesError: Selection<Type, Objects.ArticlesError>, articlesSuccess: Selection<Type, Objects.ArticlesSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ArticlesError", selection: articlesError.selection), GraphQLField.fragment(type: "ArticlesSuccess", selection: articlesSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .articlesError:
        let data = Objects.ArticlesError(errorCodes: data.errorCodes)
        return try articlesError.decode(data: data)
      case .articlesSuccess:
        let data = Objects.ArticlesSuccess(edges: data.edges, pageInfo: data.pageInfo)
        return try articlesSuccess.decode(data: data)
      }
    case .mocking:
      return articlesError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ArticlesResult<T> = Selection<T, Unions.ArticlesResult>
}

extension Unions {
  struct BulkActionResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.BulkActionErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case bulkActionError = "BulkActionError"
      case bulkActionSuccess = "BulkActionSuccess"
    }
  }
}

extension Unions.BulkActionResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.BulkActionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.BulkActionResult {
  func on<Type>(bulkActionError: Selection<Type, Objects.BulkActionError>, bulkActionSuccess: Selection<Type, Objects.BulkActionSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "BulkActionError", selection: bulkActionError.selection), GraphQLField.fragment(type: "BulkActionSuccess", selection: bulkActionSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .bulkActionError:
        let data = Objects.BulkActionError(errorCodes: data.errorCodes)
        return try bulkActionError.decode(data: data)
      case .bulkActionSuccess:
        let data = Objects.BulkActionSuccess(success: data.success)
        return try bulkActionSuccess.decode(data: data)
      }
    case .mocking:
      return bulkActionError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias BulkActionResult<T> = Selection<T, Unions.BulkActionResult>
}

extension Unions {
  struct CreateArticleResult {
    let __typename: TypeName
    let created: [String: Bool]
    let createdArticle: [String: Objects.Article]
    let errorCodes: [String: [Enums.CreateArticleErrorCode]]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case createArticleError = "CreateArticleError"
      case createArticleSuccess = "CreateArticleSuccess"
    }
  }
}

extension Unions.CreateArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "created":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "createdArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.CreateArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    created = map["created"]
    createdArticle = map["createdArticle"]
    errorCodes = map["errorCodes"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Unions.CreateArticleResult {
  func on<Type>(createArticleError: Selection<Type, Objects.CreateArticleError>, createArticleSuccess: Selection<Type, Objects.CreateArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateArticleError", selection: createArticleError.selection), GraphQLField.fragment(type: "CreateArticleSuccess", selection: createArticleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createArticleError:
        let data = Objects.CreateArticleError(errorCodes: data.errorCodes)
        return try createArticleError.decode(data: data)
      case .createArticleSuccess:
        let data = Objects.CreateArticleSuccess(created: data.created, createdArticle: data.createdArticle, user: data.user)
        return try createArticleSuccess.decode(data: data)
      }
    case .mocking:
      return createArticleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleResult<T> = Selection<T, Unions.CreateArticleResult>
}

extension Unions {
  struct CreateArticleSavingRequestResult {
    let __typename: TypeName
    let articleSavingRequest: [String: Objects.ArticleSavingRequest]
    let errorCodes: [String: [Enums.CreateArticleSavingRequestErrorCode]]

    enum TypeName: String, Codable {
      case createArticleSavingRequestError = "CreateArticleSavingRequestError"
      case createArticleSavingRequestSuccess = "CreateArticleSavingRequestSuccess"
    }
  }
}

extension Unions.CreateArticleSavingRequestResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleSavingRequest":
        if let value = try container.decode(Objects.ArticleSavingRequest?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.CreateArticleSavingRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    articleSavingRequest = map["articleSavingRequest"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.CreateArticleSavingRequestResult {
  func on<Type>(createArticleSavingRequestError: Selection<Type, Objects.CreateArticleSavingRequestError>, createArticleSavingRequestSuccess: Selection<Type, Objects.CreateArticleSavingRequestSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateArticleSavingRequestError", selection: createArticleSavingRequestError.selection), GraphQLField.fragment(type: "CreateArticleSavingRequestSuccess", selection: createArticleSavingRequestSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createArticleSavingRequestError:
        let data = Objects.CreateArticleSavingRequestError(errorCodes: data.errorCodes)
        return try createArticleSavingRequestError.decode(data: data)
      case .createArticleSavingRequestSuccess:
        let data = Objects.CreateArticleSavingRequestSuccess(articleSavingRequest: data.articleSavingRequest)
        return try createArticleSavingRequestSuccess.decode(data: data)
      }
    case .mocking:
      return createArticleSavingRequestError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateArticleSavingRequestResult<T> = Selection<T, Unions.CreateArticleSavingRequestResult>
}

extension Unions {
  struct CreateGroupResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateGroupErrorCode]]
    let group: [String: Objects.RecommendationGroup]

    enum TypeName: String, Codable {
      case createGroupError = "CreateGroupError"
      case createGroupSuccess = "CreateGroupSuccess"
    }
  }
}

extension Unions.CreateGroupResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "group":
        if let value = try container.decode(Objects.RecommendationGroup?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    group = map["group"]
  }
}

extension Fields where TypeLock == Unions.CreateGroupResult {
  func on<Type>(createGroupError: Selection<Type, Objects.CreateGroupError>, createGroupSuccess: Selection<Type, Objects.CreateGroupSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateGroupError", selection: createGroupError.selection), GraphQLField.fragment(type: "CreateGroupSuccess", selection: createGroupSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createGroupError:
        let data = Objects.CreateGroupError(errorCodes: data.errorCodes)
        return try createGroupError.decode(data: data)
      case .createGroupSuccess:
        let data = Objects.CreateGroupSuccess(group: data.group)
        return try createGroupSuccess.decode(data: data)
      }
    case .mocking:
      return createGroupError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateGroupResult<T> = Selection<T, Unions.CreateGroupResult>
}

extension Unions {
  struct CreateHighlightReplyResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateHighlightReplyErrorCode]]
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case createHighlightReplyError = "CreateHighlightReplyError"
      case createHighlightReplySuccess = "CreateHighlightReplySuccess"
    }
  }
}

extension Unions.CreateHighlightReplyResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Unions.CreateHighlightReplyResult {
  func on<Type>(createHighlightReplyError: Selection<Type, Objects.CreateHighlightReplyError>, createHighlightReplySuccess: Selection<Type, Objects.CreateHighlightReplySuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateHighlightReplyError", selection: createHighlightReplyError.selection), GraphQLField.fragment(type: "CreateHighlightReplySuccess", selection: createHighlightReplySuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createHighlightReplyError:
        let data = Objects.CreateHighlightReplyError(errorCodes: data.errorCodes)
        return try createHighlightReplyError.decode(data: data)
      case .createHighlightReplySuccess:
        let data = Objects.CreateHighlightReplySuccess(highlightReply: data.highlightReply)
        return try createHighlightReplySuccess.decode(data: data)
      }
    case .mocking:
      return createHighlightReplyError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightReplyResult<T> = Selection<T, Unions.CreateHighlightReplyResult>
}

extension Unions {
  struct CreateHighlightResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateHighlightErrorCode]]
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case createHighlightError = "CreateHighlightError"
      case createHighlightSuccess = "CreateHighlightSuccess"
    }
  }
}

extension Unions.CreateHighlightResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Unions.CreateHighlightResult {
  func on<Type>(createHighlightError: Selection<Type, Objects.CreateHighlightError>, createHighlightSuccess: Selection<Type, Objects.CreateHighlightSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateHighlightError", selection: createHighlightError.selection), GraphQLField.fragment(type: "CreateHighlightSuccess", selection: createHighlightSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createHighlightError:
        let data = Objects.CreateHighlightError(errorCodes: data.errorCodes)
        return try createHighlightError.decode(data: data)
      case .createHighlightSuccess:
        let data = Objects.CreateHighlightSuccess(highlight: data.highlight)
        return try createHighlightSuccess.decode(data: data)
      }
    case .mocking:
      return createHighlightError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateHighlightResult<T> = Selection<T, Unions.CreateHighlightResult>
}

extension Unions {
  struct CreateLabelResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateLabelErrorCode]]
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case createLabelError = "CreateLabelError"
      case createLabelSuccess = "CreateLabelSuccess"
    }
  }
}

extension Unions.CreateLabelResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    label = map["label"]
  }
}

extension Fields where TypeLock == Unions.CreateLabelResult {
  func on<Type>(createLabelError: Selection<Type, Objects.CreateLabelError>, createLabelSuccess: Selection<Type, Objects.CreateLabelSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateLabelError", selection: createLabelError.selection), GraphQLField.fragment(type: "CreateLabelSuccess", selection: createLabelSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createLabelError:
        let data = Objects.CreateLabelError(errorCodes: data.errorCodes)
        return try createLabelError.decode(data: data)
      case .createLabelSuccess:
        let data = Objects.CreateLabelSuccess(label: data.label)
        return try createLabelSuccess.decode(data: data)
      }
    case .mocking:
      return createLabelError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateLabelResult<T> = Selection<T, Unions.CreateLabelResult>
}

extension Unions {
  struct CreateNewsletterEmailResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateNewsletterEmailErrorCode]]
    let newsletterEmail: [String: Objects.NewsletterEmail]

    enum TypeName: String, Codable {
      case createNewsletterEmailError = "CreateNewsletterEmailError"
      case createNewsletterEmailSuccess = "CreateNewsletterEmailSuccess"
    }
  }
}

extension Unions.CreateNewsletterEmailResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateNewsletterEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "newsletterEmail":
        if let value = try container.decode(Objects.NewsletterEmail?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    newsletterEmail = map["newsletterEmail"]
  }
}

extension Fields where TypeLock == Unions.CreateNewsletterEmailResult {
  func on<Type>(createNewsletterEmailError: Selection<Type, Objects.CreateNewsletterEmailError>, createNewsletterEmailSuccess: Selection<Type, Objects.CreateNewsletterEmailSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateNewsletterEmailError", selection: createNewsletterEmailError.selection), GraphQLField.fragment(type: "CreateNewsletterEmailSuccess", selection: createNewsletterEmailSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createNewsletterEmailError:
        let data = Objects.CreateNewsletterEmailError(errorCodes: data.errorCodes)
        return try createNewsletterEmailError.decode(data: data)
      case .createNewsletterEmailSuccess:
        let data = Objects.CreateNewsletterEmailSuccess(newsletterEmail: data.newsletterEmail)
        return try createNewsletterEmailSuccess.decode(data: data)
      }
    case .mocking:
      return createNewsletterEmailError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateNewsletterEmailResult<T> = Selection<T, Unions.CreateNewsletterEmailResult>
}

extension Unions {
  struct CreateReactionResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateReactionErrorCode]]
    let reaction: [String: Objects.Reaction]

    enum TypeName: String, Codable {
      case createReactionError = "CreateReactionError"
      case createReactionSuccess = "CreateReactionSuccess"
    }
  }
}

extension Unions.CreateReactionResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateReactionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reaction":
        if let value = try container.decode(Objects.Reaction?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reaction = map["reaction"]
  }
}

extension Fields where TypeLock == Unions.CreateReactionResult {
  func on<Type>(createReactionError: Selection<Type, Objects.CreateReactionError>, createReactionSuccess: Selection<Type, Objects.CreateReactionSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateReactionError", selection: createReactionError.selection), GraphQLField.fragment(type: "CreateReactionSuccess", selection: createReactionSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createReactionError:
        let data = Objects.CreateReactionError(errorCodes: data.errorCodes)
        return try createReactionError.decode(data: data)
      case .createReactionSuccess:
        let data = Objects.CreateReactionSuccess(reaction: data.reaction)
        return try createReactionSuccess.decode(data: data)
      }
    case .mocking:
      return createReactionError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReactionResult<T> = Selection<T, Unions.CreateReactionResult>
}

extension Unions {
  struct CreateReminderResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.CreateReminderErrorCode]]
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case createReminderError = "CreateReminderError"
      case createReminderSuccess = "CreateReminderSuccess"
    }
  }
}

extension Unions.CreateReminderResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.CreateReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Unions.CreateReminderResult {
  func on<Type>(createReminderError: Selection<Type, Objects.CreateReminderError>, createReminderSuccess: Selection<Type, Objects.CreateReminderSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "CreateReminderError", selection: createReminderError.selection), GraphQLField.fragment(type: "CreateReminderSuccess", selection: createReminderSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .createReminderError:
        let data = Objects.CreateReminderError(errorCodes: data.errorCodes)
        return try createReminderError.decode(data: data)
      case .createReminderSuccess:
        let data = Objects.CreateReminderSuccess(reminder: data.reminder)
        return try createReminderSuccess.decode(data: data)
      }
    case .mocking:
      return createReminderError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias CreateReminderResult<T> = Selection<T, Unions.CreateReminderResult>
}

extension Unions {
  struct DeleteAccountResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteAccountErrorCode]]
    let userId: [String: String]

    enum TypeName: String, Codable {
      case deleteAccountError = "DeleteAccountError"
      case deleteAccountSuccess = "DeleteAccountSuccess"
    }
  }
}

extension Unions.DeleteAccountResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteAccountErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "userId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    userId = map["userId"]
  }
}

extension Fields where TypeLock == Unions.DeleteAccountResult {
  func on<Type>(deleteAccountError: Selection<Type, Objects.DeleteAccountError>, deleteAccountSuccess: Selection<Type, Objects.DeleteAccountSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteAccountError", selection: deleteAccountError.selection), GraphQLField.fragment(type: "DeleteAccountSuccess", selection: deleteAccountSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteAccountError:
        let data = Objects.DeleteAccountError(errorCodes: data.errorCodes)
        return try deleteAccountError.decode(data: data)
      case .deleteAccountSuccess:
        let data = Objects.DeleteAccountSuccess(userId: data.userId)
        return try deleteAccountSuccess.decode(data: data)
      }
    case .mocking:
      return deleteAccountError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteAccountResult<T> = Selection<T, Unions.DeleteAccountResult>
}

extension Unions {
  struct DeleteFilterResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteFilterErrorCode]]
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case deleteFilterError = "DeleteFilterError"
      case deleteFilterSuccess = "DeleteFilterSuccess"
    }
  }
}

extension Unions.DeleteFilterResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    filter = map["filter"]
  }
}

extension Fields where TypeLock == Unions.DeleteFilterResult {
  func on<Type>(deleteFilterError: Selection<Type, Objects.DeleteFilterError>, deleteFilterSuccess: Selection<Type, Objects.DeleteFilterSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteFilterError", selection: deleteFilterError.selection), GraphQLField.fragment(type: "DeleteFilterSuccess", selection: deleteFilterSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteFilterError:
        let data = Objects.DeleteFilterError(errorCodes: data.errorCodes)
        return try deleteFilterError.decode(data: data)
      case .deleteFilterSuccess:
        let data = Objects.DeleteFilterSuccess(filter: data.filter)
        return try deleteFilterSuccess.decode(data: data)
      }
    case .mocking:
      return deleteFilterError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteFilterResult<T> = Selection<T, Unions.DeleteFilterResult>
}

extension Unions {
  struct DeleteHighlightReplyResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteHighlightReplyErrorCode]]
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case deleteHighlightReplyError = "DeleteHighlightReplyError"
      case deleteHighlightReplySuccess = "DeleteHighlightReplySuccess"
    }
  }
}

extension Unions.DeleteHighlightReplyResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Unions.DeleteHighlightReplyResult {
  func on<Type>(deleteHighlightReplyError: Selection<Type, Objects.DeleteHighlightReplyError>, deleteHighlightReplySuccess: Selection<Type, Objects.DeleteHighlightReplySuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteHighlightReplyError", selection: deleteHighlightReplyError.selection), GraphQLField.fragment(type: "DeleteHighlightReplySuccess", selection: deleteHighlightReplySuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteHighlightReplyError:
        let data = Objects.DeleteHighlightReplyError(errorCodes: data.errorCodes)
        return try deleteHighlightReplyError.decode(data: data)
      case .deleteHighlightReplySuccess:
        let data = Objects.DeleteHighlightReplySuccess(highlightReply: data.highlightReply)
        return try deleteHighlightReplySuccess.decode(data: data)
      }
    case .mocking:
      return deleteHighlightReplyError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightReplyResult<T> = Selection<T, Unions.DeleteHighlightReplyResult>
}

extension Unions {
  struct DeleteHighlightResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteHighlightErrorCode]]
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case deleteHighlightError = "DeleteHighlightError"
      case deleteHighlightSuccess = "DeleteHighlightSuccess"
    }
  }
}

extension Unions.DeleteHighlightResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Unions.DeleteHighlightResult {
  func on<Type>(deleteHighlightError: Selection<Type, Objects.DeleteHighlightError>, deleteHighlightSuccess: Selection<Type, Objects.DeleteHighlightSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteHighlightError", selection: deleteHighlightError.selection), GraphQLField.fragment(type: "DeleteHighlightSuccess", selection: deleteHighlightSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteHighlightError:
        let data = Objects.DeleteHighlightError(errorCodes: data.errorCodes)
        return try deleteHighlightError.decode(data: data)
      case .deleteHighlightSuccess:
        let data = Objects.DeleteHighlightSuccess(highlight: data.highlight)
        return try deleteHighlightSuccess.decode(data: data)
      }
    case .mocking:
      return deleteHighlightError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteHighlightResult<T> = Selection<T, Unions.DeleteHighlightResult>
}

extension Unions {
  struct DeleteIntegrationResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteIntegrationErrorCode]]
    let integration: [String: Objects.Integration]

    enum TypeName: String, Codable {
      case deleteIntegrationError = "DeleteIntegrationError"
      case deleteIntegrationSuccess = "DeleteIntegrationSuccess"
    }
  }
}

extension Unions.DeleteIntegrationResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "integration":
        if let value = try container.decode(Objects.Integration?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    integration = map["integration"]
  }
}

extension Fields where TypeLock == Unions.DeleteIntegrationResult {
  func on<Type>(deleteIntegrationError: Selection<Type, Objects.DeleteIntegrationError>, deleteIntegrationSuccess: Selection<Type, Objects.DeleteIntegrationSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteIntegrationError", selection: deleteIntegrationError.selection), GraphQLField.fragment(type: "DeleteIntegrationSuccess", selection: deleteIntegrationSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteIntegrationError:
        let data = Objects.DeleteIntegrationError(errorCodes: data.errorCodes)
        return try deleteIntegrationError.decode(data: data)
      case .deleteIntegrationSuccess:
        let data = Objects.DeleteIntegrationSuccess(integration: data.integration)
        return try deleteIntegrationSuccess.decode(data: data)
      }
    case .mocking:
      return deleteIntegrationError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteIntegrationResult<T> = Selection<T, Unions.DeleteIntegrationResult>
}

extension Unions {
  struct DeleteLabelResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteLabelErrorCode]]
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case deleteLabelError = "DeleteLabelError"
      case deleteLabelSuccess = "DeleteLabelSuccess"
    }
  }
}

extension Unions.DeleteLabelResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    label = map["label"]
  }
}

extension Fields where TypeLock == Unions.DeleteLabelResult {
  func on<Type>(deleteLabelError: Selection<Type, Objects.DeleteLabelError>, deleteLabelSuccess: Selection<Type, Objects.DeleteLabelSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteLabelError", selection: deleteLabelError.selection), GraphQLField.fragment(type: "DeleteLabelSuccess", selection: deleteLabelSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteLabelError:
        let data = Objects.DeleteLabelError(errorCodes: data.errorCodes)
        return try deleteLabelError.decode(data: data)
      case .deleteLabelSuccess:
        let data = Objects.DeleteLabelSuccess(label: data.label)
        return try deleteLabelSuccess.decode(data: data)
      }
    case .mocking:
      return deleteLabelError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteLabelResult<T> = Selection<T, Unions.DeleteLabelResult>
}

extension Unions {
  struct DeleteNewsletterEmailResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteNewsletterEmailErrorCode]]
    let newsletterEmail: [String: Objects.NewsletterEmail]

    enum TypeName: String, Codable {
      case deleteNewsletterEmailError = "DeleteNewsletterEmailError"
      case deleteNewsletterEmailSuccess = "DeleteNewsletterEmailSuccess"
    }
  }
}

extension Unions.DeleteNewsletterEmailResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteNewsletterEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "newsletterEmail":
        if let value = try container.decode(Objects.NewsletterEmail?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    newsletterEmail = map["newsletterEmail"]
  }
}

extension Fields where TypeLock == Unions.DeleteNewsletterEmailResult {
  func on<Type>(deleteNewsletterEmailError: Selection<Type, Objects.DeleteNewsletterEmailError>, deleteNewsletterEmailSuccess: Selection<Type, Objects.DeleteNewsletterEmailSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteNewsletterEmailError", selection: deleteNewsletterEmailError.selection), GraphQLField.fragment(type: "DeleteNewsletterEmailSuccess", selection: deleteNewsletterEmailSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteNewsletterEmailError:
        let data = Objects.DeleteNewsletterEmailError(errorCodes: data.errorCodes)
        return try deleteNewsletterEmailError.decode(data: data)
      case .deleteNewsletterEmailSuccess:
        let data = Objects.DeleteNewsletterEmailSuccess(newsletterEmail: data.newsletterEmail)
        return try deleteNewsletterEmailSuccess.decode(data: data)
      }
    case .mocking:
      return deleteNewsletterEmailError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteNewsletterEmailResult<T> = Selection<T, Unions.DeleteNewsletterEmailResult>
}

extension Unions {
  struct DeleteReactionResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteReactionErrorCode]]
    let reaction: [String: Objects.Reaction]

    enum TypeName: String, Codable {
      case deleteReactionError = "DeleteReactionError"
      case deleteReactionSuccess = "DeleteReactionSuccess"
    }
  }
}

extension Unions.DeleteReactionResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteReactionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reaction":
        if let value = try container.decode(Objects.Reaction?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reaction = map["reaction"]
  }
}

extension Fields where TypeLock == Unions.DeleteReactionResult {
  func on<Type>(deleteReactionError: Selection<Type, Objects.DeleteReactionError>, deleteReactionSuccess: Selection<Type, Objects.DeleteReactionSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteReactionError", selection: deleteReactionError.selection), GraphQLField.fragment(type: "DeleteReactionSuccess", selection: deleteReactionSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteReactionError:
        let data = Objects.DeleteReactionError(errorCodes: data.errorCodes)
        return try deleteReactionError.decode(data: data)
      case .deleteReactionSuccess:
        let data = Objects.DeleteReactionSuccess(reaction: data.reaction)
        return try deleteReactionSuccess.decode(data: data)
      }
    case .mocking:
      return deleteReactionError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReactionResult<T> = Selection<T, Unions.DeleteReactionResult>
}

extension Unions {
  struct DeleteReminderResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteReminderErrorCode]]
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case deleteReminderError = "DeleteReminderError"
      case deleteReminderSuccess = "DeleteReminderSuccess"
    }
  }
}

extension Unions.DeleteReminderResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Unions.DeleteReminderResult {
  func on<Type>(deleteReminderError: Selection<Type, Objects.DeleteReminderError>, deleteReminderSuccess: Selection<Type, Objects.DeleteReminderSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteReminderError", selection: deleteReminderError.selection), GraphQLField.fragment(type: "DeleteReminderSuccess", selection: deleteReminderSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteReminderError:
        let data = Objects.DeleteReminderError(errorCodes: data.errorCodes)
        return try deleteReminderError.decode(data: data)
      case .deleteReminderSuccess:
        let data = Objects.DeleteReminderSuccess(reminder: data.reminder)
        return try deleteReminderSuccess.decode(data: data)
      }
    case .mocking:
      return deleteReminderError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteReminderResult<T> = Selection<T, Unions.DeleteReminderResult>
}

extension Unions {
  struct DeleteRuleResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteRuleErrorCode]]
    let rule: [String: Objects.Rule]

    enum TypeName: String, Codable {
      case deleteRuleError = "DeleteRuleError"
      case deleteRuleSuccess = "DeleteRuleSuccess"
    }
  }
}

extension Unions.DeleteRuleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteRuleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "rule":
        if let value = try container.decode(Objects.Rule?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    rule = map["rule"]
  }
}

extension Fields where TypeLock == Unions.DeleteRuleResult {
  func on<Type>(deleteRuleError: Selection<Type, Objects.DeleteRuleError>, deleteRuleSuccess: Selection<Type, Objects.DeleteRuleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteRuleError", selection: deleteRuleError.selection), GraphQLField.fragment(type: "DeleteRuleSuccess", selection: deleteRuleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteRuleError:
        let data = Objects.DeleteRuleError(errorCodes: data.errorCodes)
        return try deleteRuleError.decode(data: data)
      case .deleteRuleSuccess:
        let data = Objects.DeleteRuleSuccess(rule: data.rule)
        return try deleteRuleSuccess.decode(data: data)
      }
    case .mocking:
      return deleteRuleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteRuleResult<T> = Selection<T, Unions.DeleteRuleResult>
}

extension Unions {
  struct DeleteWebhookResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.DeleteWebhookErrorCode]]
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case deleteWebhookError = "DeleteWebhookError"
      case deleteWebhookSuccess = "DeleteWebhookSuccess"
    }
  }
}

extension Unions.DeleteWebhookResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.DeleteWebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Unions.DeleteWebhookResult {
  func on<Type>(deleteWebhookError: Selection<Type, Objects.DeleteWebhookError>, deleteWebhookSuccess: Selection<Type, Objects.DeleteWebhookSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeleteWebhookError", selection: deleteWebhookError.selection), GraphQLField.fragment(type: "DeleteWebhookSuccess", selection: deleteWebhookSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deleteWebhookError:
        let data = Objects.DeleteWebhookError(errorCodes: data.errorCodes)
        return try deleteWebhookError.decode(data: data)
      case .deleteWebhookSuccess:
        let data = Objects.DeleteWebhookSuccess(webhook: data.webhook)
        return try deleteWebhookSuccess.decode(data: data)
      }
    case .mocking:
      return deleteWebhookError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeleteWebhookResult<T> = Selection<T, Unions.DeleteWebhookResult>
}

extension Unions {
  struct DeviceTokensResult {
    let __typename: TypeName
    let deviceTokens: [String: [Objects.DeviceToken]]
    let errorCodes: [String: [Enums.DeviceTokensErrorCode]]

    enum TypeName: String, Codable {
      case deviceTokensError = "DeviceTokensError"
      case deviceTokensSuccess = "DeviceTokensSuccess"
    }
  }
}

extension Unions.DeviceTokensResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "deviceTokens":
        if let value = try container.decode([Objects.DeviceToken]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.DeviceTokensErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    deviceTokens = map["deviceTokens"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.DeviceTokensResult {
  func on<Type>(deviceTokensError: Selection<Type, Objects.DeviceTokensError>, deviceTokensSuccess: Selection<Type, Objects.DeviceTokensSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "DeviceTokensError", selection: deviceTokensError.selection), GraphQLField.fragment(type: "DeviceTokensSuccess", selection: deviceTokensSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .deviceTokensError:
        let data = Objects.DeviceTokensError(errorCodes: data.errorCodes)
        return try deviceTokensError.decode(data: data)
      case .deviceTokensSuccess:
        let data = Objects.DeviceTokensSuccess(deviceTokens: data.deviceTokens)
        return try deviceTokensSuccess.decode(data: data)
      }
    case .mocking:
      return deviceTokensError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias DeviceTokensResult<T> = Selection<T, Unions.DeviceTokensResult>
}

extension Unions {
  struct FeedArticlesResult {
    let __typename: TypeName
    let edges: [String: [Objects.FeedArticleEdge]]
    let errorCodes: [String: [Enums.FeedArticlesErrorCode]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case feedArticlesError = "FeedArticlesError"
      case feedArticlesSuccess = "FeedArticlesSuccess"
    }
  }
}

extension Unions.FeedArticlesResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.FeedArticleEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.FeedArticlesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    edges = map["edges"]
    errorCodes = map["errorCodes"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Unions.FeedArticlesResult {
  func on<Type>(feedArticlesError: Selection<Type, Objects.FeedArticlesError>, feedArticlesSuccess: Selection<Type, Objects.FeedArticlesSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "FeedArticlesError", selection: feedArticlesError.selection), GraphQLField.fragment(type: "FeedArticlesSuccess", selection: feedArticlesSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .feedArticlesError:
        let data = Objects.FeedArticlesError(errorCodes: data.errorCodes)
        return try feedArticlesError.decode(data: data)
      case .feedArticlesSuccess:
        let data = Objects.FeedArticlesSuccess(edges: data.edges, pageInfo: data.pageInfo)
        return try feedArticlesSuccess.decode(data: data)
      }
    case .mocking:
      return feedArticlesError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FeedArticlesResult<T> = Selection<T, Unions.FeedArticlesResult>
}

extension Unions {
  struct FiltersResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.FiltersErrorCode]]
    let filters: [String: [Objects.Filter]]

    enum TypeName: String, Codable {
      case filtersError = "FiltersError"
      case filtersSuccess = "FiltersSuccess"
    }
  }
}

extension Unions.FiltersResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.FiltersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filters":
        if let value = try container.decode([Objects.Filter]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    filters = map["filters"]
  }
}

extension Fields where TypeLock == Unions.FiltersResult {
  func on<Type>(filtersError: Selection<Type, Objects.FiltersError>, filtersSuccess: Selection<Type, Objects.FiltersSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "FiltersError", selection: filtersError.selection), GraphQLField.fragment(type: "FiltersSuccess", selection: filtersSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .filtersError:
        let data = Objects.FiltersError(errorCodes: data.errorCodes)
        return try filtersError.decode(data: data)
      case .filtersSuccess:
        let data = Objects.FiltersSuccess(filters: data.filters)
        return try filtersSuccess.decode(data: data)
      }
    case .mocking:
      return filtersError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias FiltersResult<T> = Selection<T, Unions.FiltersResult>
}

extension Unions {
  struct GenerateApiKeyResult {
    let __typename: TypeName
    let apiKey: [String: Objects.ApiKey]
    let errorCodes: [String: [Enums.GenerateApiKeyErrorCode]]

    enum TypeName: String, Codable {
      case generateApiKeyError = "GenerateApiKeyError"
      case generateApiKeySuccess = "GenerateApiKeySuccess"
    }
  }
}

extension Unions.GenerateApiKeyResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKey":
        if let value = try container.decode(Objects.ApiKey?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.GenerateApiKeyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    apiKey = map["apiKey"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.GenerateApiKeyResult {
  func on<Type>(generateApiKeyError: Selection<Type, Objects.GenerateApiKeyError>, generateApiKeySuccess: Selection<Type, Objects.GenerateApiKeySuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GenerateApiKeyError", selection: generateApiKeyError.selection), GraphQLField.fragment(type: "GenerateApiKeySuccess", selection: generateApiKeySuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .generateApiKeyError:
        let data = Objects.GenerateApiKeyError(errorCodes: data.errorCodes)
        return try generateApiKeyError.decode(data: data)
      case .generateApiKeySuccess:
        let data = Objects.GenerateApiKeySuccess(apiKey: data.apiKey)
        return try generateApiKeySuccess.decode(data: data)
      }
    case .mocking:
      return generateApiKeyError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GenerateApiKeyResult<T> = Selection<T, Unions.GenerateApiKeyResult>
}

extension Unions {
  struct GetFollowersResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.GetFollowersErrorCode]]
    let followers: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case getFollowersError = "GetFollowersError"
      case getFollowersSuccess = "GetFollowersSuccess"
    }
  }
}

extension Unions.GetFollowersResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetFollowersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "followers":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    followers = map["followers"]
  }
}

extension Fields where TypeLock == Unions.GetFollowersResult {
  func on<Type>(getFollowersError: Selection<Type, Objects.GetFollowersError>, getFollowersSuccess: Selection<Type, Objects.GetFollowersSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GetFollowersError", selection: getFollowersError.selection), GraphQLField.fragment(type: "GetFollowersSuccess", selection: getFollowersSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .getFollowersError:
        let data = Objects.GetFollowersError(errorCodes: data.errorCodes)
        return try getFollowersError.decode(data: data)
      case .getFollowersSuccess:
        let data = Objects.GetFollowersSuccess(followers: data.followers)
        return try getFollowersSuccess.decode(data: data)
      }
    case .mocking:
      return getFollowersError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowersResult<T> = Selection<T, Unions.GetFollowersResult>
}

extension Unions {
  struct GetFollowingResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.GetFollowingErrorCode]]
    let following: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case getFollowingError = "GetFollowingError"
      case getFollowingSuccess = "GetFollowingSuccess"
    }
  }
}

extension Unions.GetFollowingResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetFollowingErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "following":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    following = map["following"]
  }
}

extension Fields where TypeLock == Unions.GetFollowingResult {
  func on<Type>(getFollowingError: Selection<Type, Objects.GetFollowingError>, getFollowingSuccess: Selection<Type, Objects.GetFollowingSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GetFollowingError", selection: getFollowingError.selection), GraphQLField.fragment(type: "GetFollowingSuccess", selection: getFollowingSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .getFollowingError:
        let data = Objects.GetFollowingError(errorCodes: data.errorCodes)
        return try getFollowingError.decode(data: data)
      case .getFollowingSuccess:
        let data = Objects.GetFollowingSuccess(following: data.following)
        return try getFollowingSuccess.decode(data: data)
      }
    case .mocking:
      return getFollowingError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetFollowingResult<T> = Selection<T, Unions.GetFollowingResult>
}

extension Unions {
  struct GetUserPersonalizationResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.GetUserPersonalizationErrorCode]]
    let userPersonalization: [String: Objects.UserPersonalization]

    enum TypeName: String, Codable {
      case getUserPersonalizationError = "GetUserPersonalizationError"
      case getUserPersonalizationSuccess = "GetUserPersonalizationSuccess"
    }
  }
}

extension Unions.GetUserPersonalizationResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GetUserPersonalizationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "userPersonalization":
        if let value = try container.decode(Objects.UserPersonalization?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    userPersonalization = map["userPersonalization"]
  }
}

extension Fields where TypeLock == Unions.GetUserPersonalizationResult {
  func on<Type>(getUserPersonalizationError: Selection<Type, Objects.GetUserPersonalizationError>, getUserPersonalizationSuccess: Selection<Type, Objects.GetUserPersonalizationSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GetUserPersonalizationError", selection: getUserPersonalizationError.selection), GraphQLField.fragment(type: "GetUserPersonalizationSuccess", selection: getUserPersonalizationSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .getUserPersonalizationError:
        let data = Objects.GetUserPersonalizationError(errorCodes: data.errorCodes)
        return try getUserPersonalizationError.decode(data: data)
      case .getUserPersonalizationSuccess:
        let data = Objects.GetUserPersonalizationSuccess(userPersonalization: data.userPersonalization)
        return try getUserPersonalizationSuccess.decode(data: data)
      }
    case .mocking:
      return getUserPersonalizationError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GetUserPersonalizationResult<T> = Selection<T, Unions.GetUserPersonalizationResult>
}

extension Unions {
  struct GoogleSignupResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SignupErrorCode?]]
    let me: [String: Objects.User]

    enum TypeName: String, Codable {
      case googleSignupError = "GoogleSignupError"
      case googleSignupSuccess = "GoogleSignupSuccess"
    }
  }
}

extension Unions.GoogleSignupResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SignupErrorCode?]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "me":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    me = map["me"]
  }
}

extension Fields where TypeLock == Unions.GoogleSignupResult {
  func on<Type>(googleSignupError: Selection<Type, Objects.GoogleSignupError>, googleSignupSuccess: Selection<Type, Objects.GoogleSignupSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GoogleSignupError", selection: googleSignupError.selection), GraphQLField.fragment(type: "GoogleSignupSuccess", selection: googleSignupSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .googleSignupError:
        let data = Objects.GoogleSignupError(errorCodes: data.errorCodes)
        return try googleSignupError.decode(data: data)
      case .googleSignupSuccess:
        let data = Objects.GoogleSignupSuccess(me: data.me)
        return try googleSignupSuccess.decode(data: data)
      }
    case .mocking:
      return googleSignupError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GoogleSignupResult<T> = Selection<T, Unions.GoogleSignupResult>
}

extension Unions {
  struct GroupsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.GroupsErrorCode]]
    let groups: [String: [Objects.RecommendationGroup]]

    enum TypeName: String, Codable {
      case groupsError = "GroupsError"
      case groupsSuccess = "GroupsSuccess"
    }
  }
}

extension Unions.GroupsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.GroupsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "groups":
        if let value = try container.decode([Objects.RecommendationGroup]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    groups = map["groups"]
  }
}

extension Fields where TypeLock == Unions.GroupsResult {
  func on<Type>(groupsError: Selection<Type, Objects.GroupsError>, groupsSuccess: Selection<Type, Objects.GroupsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "GroupsError", selection: groupsError.selection), GraphQLField.fragment(type: "GroupsSuccess", selection: groupsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .groupsError:
        let data = Objects.GroupsError(errorCodes: data.errorCodes)
        return try groupsError.decode(data: data)
      case .groupsSuccess:
        let data = Objects.GroupsSuccess(groups: data.groups)
        return try groupsSuccess.decode(data: data)
      }
    case .mocking:
      return groupsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias GroupsResult<T> = Selection<T, Unions.GroupsResult>
}

extension Unions {
  struct ImportFromIntegrationResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.ImportFromIntegrationErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case importFromIntegrationError = "ImportFromIntegrationError"
      case importFromIntegrationSuccess = "ImportFromIntegrationSuccess"
    }
  }
}

extension Unions.ImportFromIntegrationResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ImportFromIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.ImportFromIntegrationResult {
  func on<Type>(importFromIntegrationError: Selection<Type, Objects.ImportFromIntegrationError>, importFromIntegrationSuccess: Selection<Type, Objects.ImportFromIntegrationSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ImportFromIntegrationError", selection: importFromIntegrationError.selection), GraphQLField.fragment(type: "ImportFromIntegrationSuccess", selection: importFromIntegrationSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .importFromIntegrationError:
        let data = Objects.ImportFromIntegrationError(errorCodes: data.errorCodes)
        return try importFromIntegrationError.decode(data: data)
      case .importFromIntegrationSuccess:
        let data = Objects.ImportFromIntegrationSuccess(success: data.success)
        return try importFromIntegrationSuccess.decode(data: data)
      }
    case .mocking:
      return importFromIntegrationError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ImportFromIntegrationResult<T> = Selection<T, Unions.ImportFromIntegrationResult>
}

extension Unions {
  struct IntegrationsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.IntegrationsErrorCode]]
    let integrations: [String: [Objects.Integration]]

    enum TypeName: String, Codable {
      case integrationsError = "IntegrationsError"
      case integrationsSuccess = "IntegrationsSuccess"
    }
  }
}

extension Unions.IntegrationsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.IntegrationsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "integrations":
        if let value = try container.decode([Objects.Integration]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    integrations = map["integrations"]
  }
}

extension Fields where TypeLock == Unions.IntegrationsResult {
  func on<Type>(integrationsError: Selection<Type, Objects.IntegrationsError>, integrationsSuccess: Selection<Type, Objects.IntegrationsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "IntegrationsError", selection: integrationsError.selection), GraphQLField.fragment(type: "IntegrationsSuccess", selection: integrationsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .integrationsError:
        let data = Objects.IntegrationsError(errorCodes: data.errorCodes)
        return try integrationsError.decode(data: data)
      case .integrationsSuccess:
        let data = Objects.IntegrationsSuccess(integrations: data.integrations)
        return try integrationsSuccess.decode(data: data)
      }
    case .mocking:
      return integrationsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias IntegrationsResult<T> = Selection<T, Unions.IntegrationsResult>
}

extension Unions {
  struct JoinGroupResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.JoinGroupErrorCode]]
    let group: [String: Objects.RecommendationGroup]

    enum TypeName: String, Codable {
      case joinGroupError = "JoinGroupError"
      case joinGroupSuccess = "JoinGroupSuccess"
    }
  }
}

extension Unions.JoinGroupResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.JoinGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "group":
        if let value = try container.decode(Objects.RecommendationGroup?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    group = map["group"]
  }
}

extension Fields where TypeLock == Unions.JoinGroupResult {
  func on<Type>(joinGroupError: Selection<Type, Objects.JoinGroupError>, joinGroupSuccess: Selection<Type, Objects.JoinGroupSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "JoinGroupError", selection: joinGroupError.selection), GraphQLField.fragment(type: "JoinGroupSuccess", selection: joinGroupSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .joinGroupError:
        let data = Objects.JoinGroupError(errorCodes: data.errorCodes)
        return try joinGroupError.decode(data: data)
      case .joinGroupSuccess:
        let data = Objects.JoinGroupSuccess(group: data.group)
        return try joinGroupSuccess.decode(data: data)
      }
    case .mocking:
      return joinGroupError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias JoinGroupResult<T> = Selection<T, Unions.JoinGroupResult>
}

extension Unions {
  struct LabelsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.LabelsErrorCode]]
    let labels: [String: [Objects.Label]]

    enum TypeName: String, Codable {
      case labelsError = "LabelsError"
      case labelsSuccess = "LabelsSuccess"
    }
  }
}

extension Unions.LabelsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LabelsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    labels = map["labels"]
  }
}

extension Fields where TypeLock == Unions.LabelsResult {
  func on<Type>(labelsError: Selection<Type, Objects.LabelsError>, labelsSuccess: Selection<Type, Objects.LabelsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "LabelsError", selection: labelsError.selection), GraphQLField.fragment(type: "LabelsSuccess", selection: labelsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .labelsError:
        let data = Objects.LabelsError(errorCodes: data.errorCodes)
        return try labelsError.decode(data: data)
      case .labelsSuccess:
        let data = Objects.LabelsSuccess(labels: data.labels)
        return try labelsSuccess.decode(data: data)
      }
    case .mocking:
      return labelsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LabelsResult<T> = Selection<T, Unions.LabelsResult>
}

extension Unions {
  struct LeaveGroupResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.LeaveGroupErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case leaveGroupError = "LeaveGroupError"
      case leaveGroupSuccess = "LeaveGroupSuccess"
    }
  }
}

extension Unions.LeaveGroupResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LeaveGroupErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.LeaveGroupResult {
  func on<Type>(leaveGroupError: Selection<Type, Objects.LeaveGroupError>, leaveGroupSuccess: Selection<Type, Objects.LeaveGroupSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "LeaveGroupError", selection: leaveGroupError.selection), GraphQLField.fragment(type: "LeaveGroupSuccess", selection: leaveGroupSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .leaveGroupError:
        let data = Objects.LeaveGroupError(errorCodes: data.errorCodes)
        return try leaveGroupError.decode(data: data)
      case .leaveGroupSuccess:
        let data = Objects.LeaveGroupSuccess(success: data.success)
        return try leaveGroupSuccess.decode(data: data)
      }
    case .mocking:
      return leaveGroupError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LeaveGroupResult<T> = Selection<T, Unions.LeaveGroupResult>
}

extension Unions {
  struct LogOutResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.LogOutErrorCode]]
    let message: [String: String]

    enum TypeName: String, Codable {
      case logOutError = "LogOutError"
      case logOutSuccess = "LogOutSuccess"
    }
  }
}

extension Unions.LogOutResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LogOutErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Unions.LogOutResult {
  func on<Type>(logOutError: Selection<Type, Objects.LogOutError>, logOutSuccess: Selection<Type, Objects.LogOutSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "LogOutError", selection: logOutError.selection), GraphQLField.fragment(type: "LogOutSuccess", selection: logOutSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .logOutError:
        let data = Objects.LogOutError(errorCodes: data.errorCodes)
        return try logOutError.decode(data: data)
      case .logOutSuccess:
        let data = Objects.LogOutSuccess(message: data.message)
        return try logOutSuccess.decode(data: data)
      }
    case .mocking:
      return logOutError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LogOutResult<T> = Selection<T, Unions.LogOutResult>
}

extension Unions {
  struct LoginResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.LoginErrorCode]]
    let me: [String: Objects.User]

    enum TypeName: String, Codable {
      case loginError = "LoginError"
      case loginSuccess = "LoginSuccess"
    }
  }
}

extension Unions.LoginResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.LoginErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "me":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    me = map["me"]
  }
}

extension Fields where TypeLock == Unions.LoginResult {
  func on<Type>(loginError: Selection<Type, Objects.LoginError>, loginSuccess: Selection<Type, Objects.LoginSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "LoginError", selection: loginError.selection), GraphQLField.fragment(type: "LoginSuccess", selection: loginSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .loginError:
        let data = Objects.LoginError(errorCodes: data.errorCodes)
        return try loginError.decode(data: data)
      case .loginSuccess:
        let data = Objects.LoginSuccess(me: data.me)
        return try loginSuccess.decode(data: data)
      }
    case .mocking:
      return loginError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias LoginResult<T> = Selection<T, Unions.LoginResult>
}

extension Unions {
  struct MarkEmailAsItemResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.MarkEmailAsItemErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case markEmailAsItemError = "MarkEmailAsItemError"
      case markEmailAsItemSuccess = "MarkEmailAsItemSuccess"
    }
  }
}

extension Unions.MarkEmailAsItemResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MarkEmailAsItemErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.MarkEmailAsItemResult {
  func on<Type>(markEmailAsItemError: Selection<Type, Objects.MarkEmailAsItemError>, markEmailAsItemSuccess: Selection<Type, Objects.MarkEmailAsItemSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "MarkEmailAsItemError", selection: markEmailAsItemError.selection), GraphQLField.fragment(type: "MarkEmailAsItemSuccess", selection: markEmailAsItemSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .markEmailAsItemError:
        let data = Objects.MarkEmailAsItemError(errorCodes: data.errorCodes)
        return try markEmailAsItemError.decode(data: data)
      case .markEmailAsItemSuccess:
        let data = Objects.MarkEmailAsItemSuccess(success: data.success)
        return try markEmailAsItemSuccess.decode(data: data)
      }
    case .mocking:
      return markEmailAsItemError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MarkEmailAsItemResult<T> = Selection<T, Unions.MarkEmailAsItemResult>
}

extension Unions {
  struct MergeHighlightResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.MergeHighlightErrorCode]]
    let highlight: [String: Objects.Highlight]
    let overlapHighlightIdList: [String: [String]]

    enum TypeName: String, Codable {
      case mergeHighlightError = "MergeHighlightError"
      case mergeHighlightSuccess = "MergeHighlightSuccess"
    }
  }
}

extension Unions.MergeHighlightResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MergeHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "overlapHighlightIdList":
        if let value = try container.decode([String]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlight = map["highlight"]
    overlapHighlightIdList = map["overlapHighlightIdList"]
  }
}

extension Fields where TypeLock == Unions.MergeHighlightResult {
  func on<Type>(mergeHighlightError: Selection<Type, Objects.MergeHighlightError>, mergeHighlightSuccess: Selection<Type, Objects.MergeHighlightSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "MergeHighlightError", selection: mergeHighlightError.selection), GraphQLField.fragment(type: "MergeHighlightSuccess", selection: mergeHighlightSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .mergeHighlightError:
        let data = Objects.MergeHighlightError(errorCodes: data.errorCodes)
        return try mergeHighlightError.decode(data: data)
      case .mergeHighlightSuccess:
        let data = Objects.MergeHighlightSuccess(highlight: data.highlight, overlapHighlightIdList: data.overlapHighlightIdList)
        return try mergeHighlightSuccess.decode(data: data)
      }
    case .mocking:
      return mergeHighlightError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MergeHighlightResult<T> = Selection<T, Unions.MergeHighlightResult>
}

extension Unions {
  struct MoveFilterResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.MoveFilterErrorCode]]
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case moveFilterError = "MoveFilterError"
      case moveFilterSuccess = "MoveFilterSuccess"
    }
  }
}

extension Unions.MoveFilterResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MoveFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    filter = map["filter"]
  }
}

extension Fields where TypeLock == Unions.MoveFilterResult {
  func on<Type>(moveFilterError: Selection<Type, Objects.MoveFilterError>, moveFilterSuccess: Selection<Type, Objects.MoveFilterSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "MoveFilterError", selection: moveFilterError.selection), GraphQLField.fragment(type: "MoveFilterSuccess", selection: moveFilterSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .moveFilterError:
        let data = Objects.MoveFilterError(errorCodes: data.errorCodes)
        return try moveFilterError.decode(data: data)
      case .moveFilterSuccess:
        let data = Objects.MoveFilterSuccess(filter: data.filter)
        return try moveFilterSuccess.decode(data: data)
      }
    case .mocking:
      return moveFilterError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveFilterResult<T> = Selection<T, Unions.MoveFilterResult>
}

extension Unions {
  struct MoveLabelResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.MoveLabelErrorCode]]
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case moveLabelError = "MoveLabelError"
      case moveLabelSuccess = "MoveLabelSuccess"
    }
  }
}

extension Unions.MoveLabelResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.MoveLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    label = map["label"]
  }
}

extension Fields where TypeLock == Unions.MoveLabelResult {
  func on<Type>(moveLabelError: Selection<Type, Objects.MoveLabelError>, moveLabelSuccess: Selection<Type, Objects.MoveLabelSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "MoveLabelError", selection: moveLabelError.selection), GraphQLField.fragment(type: "MoveLabelSuccess", selection: moveLabelSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .moveLabelError:
        let data = Objects.MoveLabelError(errorCodes: data.errorCodes)
        return try moveLabelError.decode(data: data)
      case .moveLabelSuccess:
        let data = Objects.MoveLabelSuccess(label: data.label)
        return try moveLabelSuccess.decode(data: data)
      }
    case .mocking:
      return moveLabelError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias MoveLabelResult<T> = Selection<T, Unions.MoveLabelResult>
}

extension Unions {
  struct NewsletterEmailsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.NewsletterEmailsErrorCode]]
    let newsletterEmails: [String: [Objects.NewsletterEmail]]

    enum TypeName: String, Codable {
      case newsletterEmailsError = "NewsletterEmailsError"
      case newsletterEmailsSuccess = "NewsletterEmailsSuccess"
    }
  }
}

extension Unions.NewsletterEmailsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.NewsletterEmailsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "newsletterEmails":
        if let value = try container.decode([Objects.NewsletterEmail]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    newsletterEmails = map["newsletterEmails"]
  }
}

extension Fields where TypeLock == Unions.NewsletterEmailsResult {
  func on<Type>(newsletterEmailsError: Selection<Type, Objects.NewsletterEmailsError>, newsletterEmailsSuccess: Selection<Type, Objects.NewsletterEmailsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "NewsletterEmailsError", selection: newsletterEmailsError.selection), GraphQLField.fragment(type: "NewsletterEmailsSuccess", selection: newsletterEmailsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .newsletterEmailsError:
        let data = Objects.NewsletterEmailsError(errorCodes: data.errorCodes)
        return try newsletterEmailsError.decode(data: data)
      case .newsletterEmailsSuccess:
        let data = Objects.NewsletterEmailsSuccess(newsletterEmails: data.newsletterEmails)
        return try newsletterEmailsSuccess.decode(data: data)
      }
    case .mocking:
      return newsletterEmailsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias NewsletterEmailsResult<T> = Selection<T, Unions.NewsletterEmailsResult>
}

extension Unions {
  struct OptInFeatureResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.OptInFeatureErrorCode]]
    let feature: [String: Objects.Feature]

    enum TypeName: String, Codable {
      case optInFeatureError = "OptInFeatureError"
      case optInFeatureSuccess = "OptInFeatureSuccess"
    }
  }
}

extension Unions.OptInFeatureResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.OptInFeatureErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "feature":
        if let value = try container.decode(Objects.Feature?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    feature = map["feature"]
  }
}

extension Fields where TypeLock == Unions.OptInFeatureResult {
  func on<Type>(optInFeatureError: Selection<Type, Objects.OptInFeatureError>, optInFeatureSuccess: Selection<Type, Objects.OptInFeatureSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "OptInFeatureError", selection: optInFeatureError.selection), GraphQLField.fragment(type: "OptInFeatureSuccess", selection: optInFeatureSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .optInFeatureError:
        let data = Objects.OptInFeatureError(errorCodes: data.errorCodes)
        return try optInFeatureError.decode(data: data)
      case .optInFeatureSuccess:
        let data = Objects.OptInFeatureSuccess(feature: data.feature)
        return try optInFeatureSuccess.decode(data: data)
      }
    case .mocking:
      return optInFeatureError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias OptInFeatureResult<T> = Selection<T, Unions.OptInFeatureResult>
}

extension Unions {
  struct RecentEmailsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.RecentEmailsErrorCode]]
    let recentEmails: [String: [Objects.RecentEmail]]

    enum TypeName: String, Codable {
      case recentEmailsError = "RecentEmailsError"
      case recentEmailsSuccess = "RecentEmailsSuccess"
    }
  }
}

extension Unions.RecentEmailsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecentEmailsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "recentEmails":
        if let value = try container.decode([Objects.RecentEmail]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    recentEmails = map["recentEmails"]
  }
}

extension Fields where TypeLock == Unions.RecentEmailsResult {
  func on<Type>(recentEmailsError: Selection<Type, Objects.RecentEmailsError>, recentEmailsSuccess: Selection<Type, Objects.RecentEmailsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RecentEmailsError", selection: recentEmailsError.selection), GraphQLField.fragment(type: "RecentEmailsSuccess", selection: recentEmailsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .recentEmailsError:
        let data = Objects.RecentEmailsError(errorCodes: data.errorCodes)
        return try recentEmailsError.decode(data: data)
      case .recentEmailsSuccess:
        let data = Objects.RecentEmailsSuccess(recentEmails: data.recentEmails)
        return try recentEmailsSuccess.decode(data: data)
      }
    case .mocking:
      return recentEmailsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentEmailsResult<T> = Selection<T, Unions.RecentEmailsResult>
}

extension Unions {
  struct RecentSearchesResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.RecentSearchesErrorCode]]
    let searches: [String: [Objects.RecentSearch]]

    enum TypeName: String, Codable {
      case recentSearchesError = "RecentSearchesError"
      case recentSearchesSuccess = "RecentSearchesSuccess"
    }
  }
}

extension Unions.RecentSearchesResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecentSearchesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "searches":
        if let value = try container.decode([Objects.RecentSearch]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    searches = map["searches"]
  }
}

extension Fields where TypeLock == Unions.RecentSearchesResult {
  func on<Type>(recentSearchesError: Selection<Type, Objects.RecentSearchesError>, recentSearchesSuccess: Selection<Type, Objects.RecentSearchesSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RecentSearchesError", selection: recentSearchesError.selection), GraphQLField.fragment(type: "RecentSearchesSuccess", selection: recentSearchesSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .recentSearchesError:
        let data = Objects.RecentSearchesError(errorCodes: data.errorCodes)
        return try recentSearchesError.decode(data: data)
      case .recentSearchesSuccess:
        let data = Objects.RecentSearchesSuccess(searches: data.searches)
        return try recentSearchesSuccess.decode(data: data)
      }
    case .mocking:
      return recentSearchesError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecentSearchesResult<T> = Selection<T, Unions.RecentSearchesResult>
}

extension Unions {
  struct RecommendHighlightsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.RecommendHighlightsErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case recommendHighlightsError = "RecommendHighlightsError"
      case recommendHighlightsSuccess = "RecommendHighlightsSuccess"
    }
  }
}

extension Unions.RecommendHighlightsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecommendHighlightsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.RecommendHighlightsResult {
  func on<Type>(recommendHighlightsError: Selection<Type, Objects.RecommendHighlightsError>, recommendHighlightsSuccess: Selection<Type, Objects.RecommendHighlightsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RecommendHighlightsError", selection: recommendHighlightsError.selection), GraphQLField.fragment(type: "RecommendHighlightsSuccess", selection: recommendHighlightsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .recommendHighlightsError:
        let data = Objects.RecommendHighlightsError(errorCodes: data.errorCodes)
        return try recommendHighlightsError.decode(data: data)
      case .recommendHighlightsSuccess:
        let data = Objects.RecommendHighlightsSuccess(success: data.success)
        return try recommendHighlightsSuccess.decode(data: data)
      }
    case .mocking:
      return recommendHighlightsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendHighlightsResult<T> = Selection<T, Unions.RecommendHighlightsResult>
}

extension Unions {
  struct RecommendResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.RecommendErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case recommendError = "RecommendError"
      case recommendSuccess = "RecommendSuccess"
    }
  }
}

extension Unions.RecommendResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RecommendErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.RecommendResult {
  func on<Type>(recommendError: Selection<Type, Objects.RecommendError>, recommendSuccess: Selection<Type, Objects.RecommendSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RecommendError", selection: recommendError.selection), GraphQLField.fragment(type: "RecommendSuccess", selection: recommendSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .recommendError:
        let data = Objects.RecommendError(errorCodes: data.errorCodes)
        return try recommendError.decode(data: data)
      case .recommendSuccess:
        let data = Objects.RecommendSuccess(success: data.success)
        return try recommendSuccess.decode(data: data)
      }
    case .mocking:
      return recommendError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RecommendResult<T> = Selection<T, Unions.RecommendResult>
}

extension Unions {
  struct ReminderResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.ReminderErrorCode]]
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case reminderError = "ReminderError"
      case reminderSuccess = "ReminderSuccess"
    }
  }
}

extension Unions.ReminderResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.ReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Unions.ReminderResult {
  func on<Type>(reminderError: Selection<Type, Objects.ReminderError>, reminderSuccess: Selection<Type, Objects.ReminderSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "ReminderError", selection: reminderError.selection), GraphQLField.fragment(type: "ReminderSuccess", selection: reminderSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .reminderError:
        let data = Objects.ReminderError(errorCodes: data.errorCodes)
        return try reminderError.decode(data: data)
      case .reminderSuccess:
        let data = Objects.ReminderSuccess(reminder: data.reminder)
        return try reminderSuccess.decode(data: data)
      }
    case .mocking:
      return reminderError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias ReminderResult<T> = Selection<T, Unions.ReminderResult>
}

extension Unions {
  struct RevokeApiKeyResult {
    let __typename: TypeName
    let apiKey: [String: Objects.ApiKey]
    let errorCodes: [String: [Enums.RevokeApiKeyErrorCode]]

    enum TypeName: String, Codable {
      case revokeApiKeyError = "RevokeApiKeyError"
      case revokeApiKeySuccess = "RevokeApiKeySuccess"
    }
  }
}

extension Unions.RevokeApiKeyResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "apiKey":
        if let value = try container.decode(Objects.ApiKey?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.RevokeApiKeyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    apiKey = map["apiKey"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.RevokeApiKeyResult {
  func on<Type>(revokeApiKeyError: Selection<Type, Objects.RevokeApiKeyError>, revokeApiKeySuccess: Selection<Type, Objects.RevokeApiKeySuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RevokeApiKeyError", selection: revokeApiKeyError.selection), GraphQLField.fragment(type: "RevokeApiKeySuccess", selection: revokeApiKeySuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .revokeApiKeyError:
        let data = Objects.RevokeApiKeyError(errorCodes: data.errorCodes)
        return try revokeApiKeyError.decode(data: data)
      case .revokeApiKeySuccess:
        let data = Objects.RevokeApiKeySuccess(apiKey: data.apiKey)
        return try revokeApiKeySuccess.decode(data: data)
      }
    case .mocking:
      return revokeApiKeyError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RevokeApiKeyResult<T> = Selection<T, Unions.RevokeApiKeyResult>
}

extension Unions {
  struct RulesResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.RulesErrorCode]]
    let rules: [String: [Objects.Rule]]

    enum TypeName: String, Codable {
      case rulesError = "RulesError"
      case rulesSuccess = "RulesSuccess"
    }
  }
}

extension Unions.RulesResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.RulesErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "rules":
        if let value = try container.decode([Objects.Rule]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    rules = map["rules"]
  }
}

extension Fields where TypeLock == Unions.RulesResult {
  func on<Type>(rulesError: Selection<Type, Objects.RulesError>, rulesSuccess: Selection<Type, Objects.RulesSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "RulesError", selection: rulesError.selection), GraphQLField.fragment(type: "RulesSuccess", selection: rulesSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .rulesError:
        let data = Objects.RulesError(errorCodes: data.errorCodes)
        return try rulesError.decode(data: data)
      case .rulesSuccess:
        let data = Objects.RulesSuccess(rules: data.rules)
        return try rulesSuccess.decode(data: data)
      }
    case .mocking:
      return rulesError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias RulesResult<T> = Selection<T, Unions.RulesResult>
}

extension Unions {
  struct SaveArticleReadingProgressResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SaveArticleReadingProgressErrorCode]]
    let updatedArticle: [String: Objects.Article]

    enum TypeName: String, Codable {
      case saveArticleReadingProgressError = "SaveArticleReadingProgressError"
      case saveArticleReadingProgressSuccess = "SaveArticleReadingProgressSuccess"
    }
  }
}

extension Unions.SaveArticleReadingProgressResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SaveArticleReadingProgressErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    updatedArticle = map["updatedArticle"]
  }
}

extension Fields where TypeLock == Unions.SaveArticleReadingProgressResult {
  func on<Type>(saveArticleReadingProgressError: Selection<Type, Objects.SaveArticleReadingProgressError>, saveArticleReadingProgressSuccess: Selection<Type, Objects.SaveArticleReadingProgressSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SaveArticleReadingProgressError", selection: saveArticleReadingProgressError.selection), GraphQLField.fragment(type: "SaveArticleReadingProgressSuccess", selection: saveArticleReadingProgressSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .saveArticleReadingProgressError:
        let data = Objects.SaveArticleReadingProgressError(errorCodes: data.errorCodes)
        return try saveArticleReadingProgressError.decode(data: data)
      case .saveArticleReadingProgressSuccess:
        let data = Objects.SaveArticleReadingProgressSuccess(updatedArticle: data.updatedArticle)
        return try saveArticleReadingProgressSuccess.decode(data: data)
      }
    case .mocking:
      return saveArticleReadingProgressError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveArticleReadingProgressResult<T> = Selection<T, Unions.SaveArticleReadingProgressResult>
}

extension Unions {
  struct SaveFilterResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SaveFilterErrorCode]]
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case saveFilterError = "SaveFilterError"
      case saveFilterSuccess = "SaveFilterSuccess"
    }
  }
}

extension Unions.SaveFilterResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SaveFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    filter = map["filter"]
  }
}

extension Fields where TypeLock == Unions.SaveFilterResult {
  func on<Type>(saveFilterError: Selection<Type, Objects.SaveFilterError>, saveFilterSuccess: Selection<Type, Objects.SaveFilterSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SaveFilterError", selection: saveFilterError.selection), GraphQLField.fragment(type: "SaveFilterSuccess", selection: saveFilterSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .saveFilterError:
        let data = Objects.SaveFilterError(errorCodes: data.errorCodes)
        return try saveFilterError.decode(data: data)
      case .saveFilterSuccess:
        let data = Objects.SaveFilterSuccess(filter: data.filter)
        return try saveFilterSuccess.decode(data: data)
      }
    case .mocking:
      return saveFilterError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveFilterResult<T> = Selection<T, Unions.SaveFilterResult>
}

extension Unions {
  struct SaveResult {
    let __typename: TypeName
    let clientRequestId: [String: String]
    let errorCodes: [String: [Enums.SaveErrorCode]]
    let message: [String: String]
    let url: [String: String]

    enum TypeName: String, Codable {
      case saveError = "SaveError"
      case saveSuccess = "SaveSuccess"
    }
  }
}

extension Unions.SaveResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "clientRequestId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.SaveErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "url":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    clientRequestId = map["clientRequestId"]
    errorCodes = map["errorCodes"]
    message = map["message"]
    url = map["url"]
  }
}

extension Fields where TypeLock == Unions.SaveResult {
  func on<Type>(saveError: Selection<Type, Objects.SaveError>, saveSuccess: Selection<Type, Objects.SaveSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SaveError", selection: saveError.selection), GraphQLField.fragment(type: "SaveSuccess", selection: saveSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .saveError:
        let data = Objects.SaveError(errorCodes: data.errorCodes, message: data.message)
        return try saveError.decode(data: data)
      case .saveSuccess:
        let data = Objects.SaveSuccess(clientRequestId: data.clientRequestId, url: data.url)
        return try saveSuccess.decode(data: data)
      }
    case .mocking:
      return saveError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SaveResult<T> = Selection<T, Unions.SaveResult>
}

extension Unions {
  struct SearchResult {
    let __typename: TypeName
    let edges: [String: [Objects.SearchItemEdge]]
    let errorCodes: [String: [Enums.SearchErrorCode]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case searchError = "SearchError"
      case searchSuccess = "SearchSuccess"
    }
  }
}

extension Unions.SearchResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.SearchItemEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.SearchErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    edges = map["edges"]
    errorCodes = map["errorCodes"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Unions.SearchResult {
  func on<Type>(searchError: Selection<Type, Objects.SearchError>, searchSuccess: Selection<Type, Objects.SearchSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SearchError", selection: searchError.selection), GraphQLField.fragment(type: "SearchSuccess", selection: searchSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .searchError:
        let data = Objects.SearchError(errorCodes: data.errorCodes)
        return try searchError.decode(data: data)
      case .searchSuccess:
        let data = Objects.SearchSuccess(edges: data.edges, pageInfo: data.pageInfo)
        return try searchSuccess.decode(data: data)
      }
    case .mocking:
      return searchError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SearchResult<T> = Selection<T, Unions.SearchResult>
}

extension Unions {
  struct SendInstallInstructionsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SendInstallInstructionsErrorCode]]
    let sent: [String: Bool]

    enum TypeName: String, Codable {
      case sendInstallInstructionsError = "SendInstallInstructionsError"
      case sendInstallInstructionsSuccess = "SendInstallInstructionsSuccess"
    }
  }
}

extension Unions.SendInstallInstructionsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SendInstallInstructionsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sent":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    sent = map["sent"]
  }
}

extension Fields where TypeLock == Unions.SendInstallInstructionsResult {
  func on<Type>(sendInstallInstructionsError: Selection<Type, Objects.SendInstallInstructionsError>, sendInstallInstructionsSuccess: Selection<Type, Objects.SendInstallInstructionsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SendInstallInstructionsError", selection: sendInstallInstructionsError.selection), GraphQLField.fragment(type: "SendInstallInstructionsSuccess", selection: sendInstallInstructionsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .sendInstallInstructionsError:
        let data = Objects.SendInstallInstructionsError(errorCodes: data.errorCodes)
        return try sendInstallInstructionsError.decode(data: data)
      case .sendInstallInstructionsSuccess:
        let data = Objects.SendInstallInstructionsSuccess(sent: data.sent)
        return try sendInstallInstructionsSuccess.decode(data: data)
      }
    case .mocking:
      return sendInstallInstructionsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SendInstallInstructionsResult<T> = Selection<T, Unions.SendInstallInstructionsResult>
}

extension Unions {
  struct SetBookmarkArticleResult {
    let __typename: TypeName
    let bookmarkedArticle: [String: Objects.Article]
    let errorCodes: [String: [Enums.SetBookmarkArticleErrorCode]]

    enum TypeName: String, Codable {
      case setBookmarkArticleError = "SetBookmarkArticleError"
      case setBookmarkArticleSuccess = "SetBookmarkArticleSuccess"
    }
  }
}

extension Unions.SetBookmarkArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "bookmarkedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.SetBookmarkArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    bookmarkedArticle = map["bookmarkedArticle"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.SetBookmarkArticleResult {
  func on<Type>(setBookmarkArticleError: Selection<Type, Objects.SetBookmarkArticleError>, setBookmarkArticleSuccess: Selection<Type, Objects.SetBookmarkArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetBookmarkArticleError", selection: setBookmarkArticleError.selection), GraphQLField.fragment(type: "SetBookmarkArticleSuccess", selection: setBookmarkArticleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setBookmarkArticleError:
        let data = Objects.SetBookmarkArticleError(errorCodes: data.errorCodes)
        return try setBookmarkArticleError.decode(data: data)
      case .setBookmarkArticleSuccess:
        let data = Objects.SetBookmarkArticleSuccess(bookmarkedArticle: data.bookmarkedArticle)
        return try setBookmarkArticleSuccess.decode(data: data)
      }
    case .mocking:
      return setBookmarkArticleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetBookmarkArticleResult<T> = Selection<T, Unions.SetBookmarkArticleResult>
}

extension Unions {
  struct SetDeviceTokenResult {
    let __typename: TypeName
    let deviceToken: [String: Objects.DeviceToken]
    let errorCodes: [String: [Enums.SetDeviceTokenErrorCode]]

    enum TypeName: String, Codable {
      case setDeviceTokenError = "SetDeviceTokenError"
      case setDeviceTokenSuccess = "SetDeviceTokenSuccess"
    }
  }
}

extension Unions.SetDeviceTokenResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "deviceToken":
        if let value = try container.decode(Objects.DeviceToken?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.SetDeviceTokenErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    deviceToken = map["deviceToken"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.SetDeviceTokenResult {
  func on<Type>(setDeviceTokenError: Selection<Type, Objects.SetDeviceTokenError>, setDeviceTokenSuccess: Selection<Type, Objects.SetDeviceTokenSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetDeviceTokenError", selection: setDeviceTokenError.selection), GraphQLField.fragment(type: "SetDeviceTokenSuccess", selection: setDeviceTokenSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setDeviceTokenError:
        let data = Objects.SetDeviceTokenError(errorCodes: data.errorCodes)
        return try setDeviceTokenError.decode(data: data)
      case .setDeviceTokenSuccess:
        let data = Objects.SetDeviceTokenSuccess(deviceToken: data.deviceToken)
        return try setDeviceTokenSuccess.decode(data: data)
      }
    case .mocking:
      return setDeviceTokenError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetDeviceTokenResult<T> = Selection<T, Unions.SetDeviceTokenResult>
}

extension Unions {
  struct SetFavoriteArticleResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetFavoriteArticleErrorCode]]
    let success: [String: Bool]

    enum TypeName: String, Codable {
      case setFavoriteArticleError = "SetFavoriteArticleError"
      case setFavoriteArticleSuccess = "SetFavoriteArticleSuccess"
    }
  }
}

extension Unions.SetFavoriteArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetFavoriteArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "success":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    success = map["success"]
  }
}

extension Fields where TypeLock == Unions.SetFavoriteArticleResult {
  func on<Type>(setFavoriteArticleError: Selection<Type, Objects.SetFavoriteArticleError>, setFavoriteArticleSuccess: Selection<Type, Objects.SetFavoriteArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetFavoriteArticleError", selection: setFavoriteArticleError.selection), GraphQLField.fragment(type: "SetFavoriteArticleSuccess", selection: setFavoriteArticleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setFavoriteArticleError:
        let data = Objects.SetFavoriteArticleError(errorCodes: data.errorCodes)
        return try setFavoriteArticleError.decode(data: data)
      case .setFavoriteArticleSuccess:
        let data = Objects.SetFavoriteArticleSuccess(success: data.success)
        return try setFavoriteArticleSuccess.decode(data: data)
      }
    case .mocking:
      return setFavoriteArticleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFavoriteArticleResult<T> = Selection<T, Unions.SetFavoriteArticleResult>
}

extension Unions {
  struct SetFollowResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetFollowErrorCode]]
    let updatedUser: [String: Objects.User]

    enum TypeName: String, Codable {
      case setFollowError = "SetFollowError"
      case setFollowSuccess = "SetFollowSuccess"
    }
  }
}

extension Unions.SetFollowResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetFollowErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedUser":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    updatedUser = map["updatedUser"]
  }
}

extension Fields where TypeLock == Unions.SetFollowResult {
  func on<Type>(setFollowError: Selection<Type, Objects.SetFollowError>, setFollowSuccess: Selection<Type, Objects.SetFollowSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetFollowError", selection: setFollowError.selection), GraphQLField.fragment(type: "SetFollowSuccess", selection: setFollowSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setFollowError:
        let data = Objects.SetFollowError(errorCodes: data.errorCodes)
        return try setFollowError.decode(data: data)
      case .setFollowSuccess:
        let data = Objects.SetFollowSuccess(updatedUser: data.updatedUser)
        return try setFollowSuccess.decode(data: data)
      }
    case .mocking:
      return setFollowError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetFollowResult<T> = Selection<T, Unions.SetFollowResult>
}

extension Unions {
  struct SetIntegrationResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetIntegrationErrorCode]]
    let integration: [String: Objects.Integration]

    enum TypeName: String, Codable {
      case setIntegrationError = "SetIntegrationError"
      case setIntegrationSuccess = "SetIntegrationSuccess"
    }
  }
}

extension Unions.SetIntegrationResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetIntegrationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "integration":
        if let value = try container.decode(Objects.Integration?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    integration = map["integration"]
  }
}

extension Fields where TypeLock == Unions.SetIntegrationResult {
  func on<Type>(setIntegrationError: Selection<Type, Objects.SetIntegrationError>, setIntegrationSuccess: Selection<Type, Objects.SetIntegrationSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetIntegrationError", selection: setIntegrationError.selection), GraphQLField.fragment(type: "SetIntegrationSuccess", selection: setIntegrationSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setIntegrationError:
        let data = Objects.SetIntegrationError(errorCodes: data.errorCodes)
        return try setIntegrationError.decode(data: data)
      case .setIntegrationSuccess:
        let data = Objects.SetIntegrationSuccess(integration: data.integration)
        return try setIntegrationSuccess.decode(data: data)
      }
    case .mocking:
      return setIntegrationError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetIntegrationResult<T> = Selection<T, Unions.SetIntegrationResult>
}

extension Unions {
  struct SetLabelsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetLabelsErrorCode]]
    let labels: [String: [Objects.Label]]

    enum TypeName: String, Codable {
      case setLabelsError = "SetLabelsError"
      case setLabelsSuccess = "SetLabelsSuccess"
    }
  }
}

extension Unions.SetLabelsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetLabelsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "labels":
        if let value = try container.decode([Objects.Label]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    labels = map["labels"]
  }
}

extension Fields where TypeLock == Unions.SetLabelsResult {
  func on<Type>(setLabelsError: Selection<Type, Objects.SetLabelsError>, setLabelsSuccess: Selection<Type, Objects.SetLabelsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetLabelsError", selection: setLabelsError.selection), GraphQLField.fragment(type: "SetLabelsSuccess", selection: setLabelsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setLabelsError:
        let data = Objects.SetLabelsError(errorCodes: data.errorCodes)
        return try setLabelsError.decode(data: data)
      case .setLabelsSuccess:
        let data = Objects.SetLabelsSuccess(labels: data.labels)
        return try setLabelsSuccess.decode(data: data)
      }
    case .mocking:
      return setLabelsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetLabelsResult<T> = Selection<T, Unions.SetLabelsResult>
}

extension Unions {
  struct SetRuleResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetRuleErrorCode]]
    let rule: [String: Objects.Rule]

    enum TypeName: String, Codable {
      case setRuleError = "SetRuleError"
      case setRuleSuccess = "SetRuleSuccess"
    }
  }
}

extension Unions.SetRuleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetRuleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "rule":
        if let value = try container.decode(Objects.Rule?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    rule = map["rule"]
  }
}

extension Fields where TypeLock == Unions.SetRuleResult {
  func on<Type>(setRuleError: Selection<Type, Objects.SetRuleError>, setRuleSuccess: Selection<Type, Objects.SetRuleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetRuleError", selection: setRuleError.selection), GraphQLField.fragment(type: "SetRuleSuccess", selection: setRuleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setRuleError:
        let data = Objects.SetRuleError(errorCodes: data.errorCodes)
        return try setRuleError.decode(data: data)
      case .setRuleSuccess:
        let data = Objects.SetRuleSuccess(rule: data.rule)
        return try setRuleSuccess.decode(data: data)
      }
    case .mocking:
      return setRuleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetRuleResult<T> = Selection<T, Unions.SetRuleResult>
}

extension Unions {
  struct SetShareArticleResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetShareArticleErrorCode]]
    let updatedArticle: [String: Objects.Article]
    let updatedFeedArticle: [String: Objects.FeedArticle]
    let updatedFeedArticleId: [String: String]

    enum TypeName: String, Codable {
      case setShareArticleError = "SetShareArticleError"
      case setShareArticleSuccess = "SetShareArticleSuccess"
    }
  }
}

extension Unions.SetShareArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetShareArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedArticle":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedFeedArticle":
        if let value = try container.decode(Objects.FeedArticle?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedFeedArticleId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    updatedArticle = map["updatedArticle"]
    updatedFeedArticle = map["updatedFeedArticle"]
    updatedFeedArticleId = map["updatedFeedArticleId"]
  }
}

extension Fields where TypeLock == Unions.SetShareArticleResult {
  func on<Type>(setShareArticleError: Selection<Type, Objects.SetShareArticleError>, setShareArticleSuccess: Selection<Type, Objects.SetShareArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetShareArticleError", selection: setShareArticleError.selection), GraphQLField.fragment(type: "SetShareArticleSuccess", selection: setShareArticleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setShareArticleError:
        let data = Objects.SetShareArticleError(errorCodes: data.errorCodes)
        return try setShareArticleError.decode(data: data)
      case .setShareArticleSuccess:
        let data = Objects.SetShareArticleSuccess(updatedArticle: data.updatedArticle, updatedFeedArticle: data.updatedFeedArticle, updatedFeedArticleId: data.updatedFeedArticleId)
        return try setShareArticleSuccess.decode(data: data)
      }
    case .mocking:
      return setShareArticleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareArticleResult<T> = Selection<T, Unions.SetShareArticleResult>
}

extension Unions {
  struct SetShareHighlightResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetShareHighlightErrorCode]]
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case setShareHighlightError = "SetShareHighlightError"
      case setShareHighlightSuccess = "SetShareHighlightSuccess"
    }
  }
}

extension Unions.SetShareHighlightResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetShareHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Unions.SetShareHighlightResult {
  func on<Type>(setShareHighlightError: Selection<Type, Objects.SetShareHighlightError>, setShareHighlightSuccess: Selection<Type, Objects.SetShareHighlightSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetShareHighlightError", selection: setShareHighlightError.selection), GraphQLField.fragment(type: "SetShareHighlightSuccess", selection: setShareHighlightSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setShareHighlightError:
        let data = Objects.SetShareHighlightError(errorCodes: data.errorCodes)
        return try setShareHighlightError.decode(data: data)
      case .setShareHighlightSuccess:
        let data = Objects.SetShareHighlightSuccess(highlight: data.highlight)
        return try setShareHighlightSuccess.decode(data: data)
      }
    case .mocking:
      return setShareHighlightError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetShareHighlightResult<T> = Selection<T, Unions.SetShareHighlightResult>
}

extension Unions {
  struct SetUserPersonalizationResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetUserPersonalizationErrorCode]]
    let updatedUserPersonalization: [String: Objects.UserPersonalization]

    enum TypeName: String, Codable {
      case setUserPersonalizationError = "SetUserPersonalizationError"
      case setUserPersonalizationSuccess = "SetUserPersonalizationSuccess"
    }
  }
}

extension Unions.SetUserPersonalizationResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetUserPersonalizationErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedUserPersonalization":
        if let value = try container.decode(Objects.UserPersonalization?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    updatedUserPersonalization = map["updatedUserPersonalization"]
  }
}

extension Fields where TypeLock == Unions.SetUserPersonalizationResult {
  func on<Type>(setUserPersonalizationError: Selection<Type, Objects.SetUserPersonalizationError>, setUserPersonalizationSuccess: Selection<Type, Objects.SetUserPersonalizationSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetUserPersonalizationError", selection: setUserPersonalizationError.selection), GraphQLField.fragment(type: "SetUserPersonalizationSuccess", selection: setUserPersonalizationSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setUserPersonalizationError:
        let data = Objects.SetUserPersonalizationError(errorCodes: data.errorCodes)
        return try setUserPersonalizationError.decode(data: data)
      case .setUserPersonalizationSuccess:
        let data = Objects.SetUserPersonalizationSuccess(updatedUserPersonalization: data.updatedUserPersonalization)
        return try setUserPersonalizationSuccess.decode(data: data)
      }
    case .mocking:
      return setUserPersonalizationError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetUserPersonalizationResult<T> = Selection<T, Unions.SetUserPersonalizationResult>
}

extension Unions {
  struct SetWebhookResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SetWebhookErrorCode]]
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case setWebhookError = "SetWebhookError"
      case setWebhookSuccess = "SetWebhookSuccess"
    }
  }
}

extension Unions.SetWebhookResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SetWebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Unions.SetWebhookResult {
  func on<Type>(setWebhookError: Selection<Type, Objects.SetWebhookError>, setWebhookSuccess: Selection<Type, Objects.SetWebhookSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SetWebhookError", selection: setWebhookError.selection), GraphQLField.fragment(type: "SetWebhookSuccess", selection: setWebhookSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .setWebhookError:
        let data = Objects.SetWebhookError(errorCodes: data.errorCodes)
        return try setWebhookError.decode(data: data)
      case .setWebhookSuccess:
        let data = Objects.SetWebhookSuccess(webhook: data.webhook)
        return try setWebhookSuccess.decode(data: data)
      }
    case .mocking:
      return setWebhookError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SetWebhookResult<T> = Selection<T, Unions.SetWebhookResult>
}

extension Unions {
  struct SharedArticleResult {
    let __typename: TypeName
    let article: [String: Objects.Article]
    let errorCodes: [String: [Enums.SharedArticleErrorCode]]

    enum TypeName: String, Codable {
      case sharedArticleError = "SharedArticleError"
      case sharedArticleSuccess = "SharedArticleSuccess"
    }
  }
}

extension Unions.SharedArticleResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "article":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.SharedArticleErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    article = map["article"]
    errorCodes = map["errorCodes"]
  }
}

extension Fields where TypeLock == Unions.SharedArticleResult {
  func on<Type>(sharedArticleError: Selection<Type, Objects.SharedArticleError>, sharedArticleSuccess: Selection<Type, Objects.SharedArticleSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SharedArticleError", selection: sharedArticleError.selection), GraphQLField.fragment(type: "SharedArticleSuccess", selection: sharedArticleSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .sharedArticleError:
        let data = Objects.SharedArticleError(errorCodes: data.errorCodes)
        return try sharedArticleError.decode(data: data)
      case .sharedArticleSuccess:
        let data = Objects.SharedArticleSuccess(article: data.article)
        return try sharedArticleSuccess.decode(data: data)
      }
    case .mocking:
      return sharedArticleError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SharedArticleResult<T> = Selection<T, Unions.SharedArticleResult>
}

extension Unions {
  struct SubscribeResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SubscribeErrorCode]]
    let subscriptions: [String: [Objects.Subscription]]

    enum TypeName: String, Codable {
      case subscribeError = "SubscribeError"
      case subscribeSuccess = "SubscribeSuccess"
    }
  }
}

extension Unions.SubscribeResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SubscribeErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscriptions":
        if let value = try container.decode([Objects.Subscription]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    subscriptions = map["subscriptions"]
  }
}

extension Fields where TypeLock == Unions.SubscribeResult {
  func on<Type>(subscribeError: Selection<Type, Objects.SubscribeError>, subscribeSuccess: Selection<Type, Objects.SubscribeSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SubscribeError", selection: subscribeError.selection), GraphQLField.fragment(type: "SubscribeSuccess", selection: subscribeSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .subscribeError:
        let data = Objects.SubscribeError(errorCodes: data.errorCodes)
        return try subscribeError.decode(data: data)
      case .subscribeSuccess:
        let data = Objects.SubscribeSuccess(subscriptions: data.subscriptions)
        return try subscribeSuccess.decode(data: data)
      }
    case .mocking:
      return subscribeError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscribeResult<T> = Selection<T, Unions.SubscribeResult>
}

extension Unions {
  struct SubscriptionsResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.SubscriptionsErrorCode]]
    let subscriptions: [String: [Objects.Subscription]]

    enum TypeName: String, Codable {
      case subscriptionsError = "SubscriptionsError"
      case subscriptionsSuccess = "SubscriptionsSuccess"
    }
  }
}

extension Unions.SubscriptionsResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.SubscriptionsErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscriptions":
        if let value = try container.decode([Objects.Subscription]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    subscriptions = map["subscriptions"]
  }
}

extension Fields where TypeLock == Unions.SubscriptionsResult {
  func on<Type>(subscriptionsError: Selection<Type, Objects.SubscriptionsError>, subscriptionsSuccess: Selection<Type, Objects.SubscriptionsSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "SubscriptionsError", selection: subscriptionsError.selection), GraphQLField.fragment(type: "SubscriptionsSuccess", selection: subscriptionsSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .subscriptionsError:
        let data = Objects.SubscriptionsError(errorCodes: data.errorCodes)
        return try subscriptionsError.decode(data: data)
      case .subscriptionsSuccess:
        let data = Objects.SubscriptionsSuccess(subscriptions: data.subscriptions)
        return try subscriptionsSuccess.decode(data: data)
      }
    case .mocking:
      return subscriptionsError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias SubscriptionsResult<T> = Selection<T, Unions.SubscriptionsResult>
}

extension Unions {
  struct TypeaheadSearchResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.TypeaheadSearchErrorCode]]
    let items: [String: [Objects.TypeaheadSearchItem]]

    enum TypeName: String, Codable {
      case typeaheadSearchError = "TypeaheadSearchError"
      case typeaheadSearchSuccess = "TypeaheadSearchSuccess"
    }
  }
}

extension Unions.TypeaheadSearchResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.TypeaheadSearchErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "items":
        if let value = try container.decode([Objects.TypeaheadSearchItem]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    items = map["items"]
  }
}

extension Fields where TypeLock == Unions.TypeaheadSearchResult {
  func on<Type>(typeaheadSearchError: Selection<Type, Objects.TypeaheadSearchError>, typeaheadSearchSuccess: Selection<Type, Objects.TypeaheadSearchSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "TypeaheadSearchError", selection: typeaheadSearchError.selection), GraphQLField.fragment(type: "TypeaheadSearchSuccess", selection: typeaheadSearchSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .typeaheadSearchError:
        let data = Objects.TypeaheadSearchError(errorCodes: data.errorCodes)
        return try typeaheadSearchError.decode(data: data)
      case .typeaheadSearchSuccess:
        let data = Objects.TypeaheadSearchSuccess(items: data.items)
        return try typeaheadSearchSuccess.decode(data: data)
      }
    case .mocking:
      return typeaheadSearchError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias TypeaheadSearchResult<T> = Selection<T, Unions.TypeaheadSearchResult>
}

extension Unions {
  struct UnsubscribeResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UnsubscribeErrorCode]]
    let subscription: [String: Objects.Subscription]

    enum TypeName: String, Codable {
      case unsubscribeError = "UnsubscribeError"
      case unsubscribeSuccess = "UnsubscribeSuccess"
    }
  }
}

extension Unions.UnsubscribeResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UnsubscribeErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscription":
        if let value = try container.decode(Objects.Subscription?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    subscription = map["subscription"]
  }
}

extension Fields where TypeLock == Unions.UnsubscribeResult {
  func on<Type>(unsubscribeError: Selection<Type, Objects.UnsubscribeError>, unsubscribeSuccess: Selection<Type, Objects.UnsubscribeSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UnsubscribeError", selection: unsubscribeError.selection), GraphQLField.fragment(type: "UnsubscribeSuccess", selection: unsubscribeSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .unsubscribeError:
        let data = Objects.UnsubscribeError(errorCodes: data.errorCodes)
        return try unsubscribeError.decode(data: data)
      case .unsubscribeSuccess:
        let data = Objects.UnsubscribeSuccess(subscription: data.subscription)
        return try unsubscribeSuccess.decode(data: data)
      }
    case .mocking:
      return unsubscribeError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UnsubscribeResult<T> = Selection<T, Unions.UnsubscribeResult>
}

extension Unions {
  struct UpdateEmailResult {
    let __typename: TypeName
    let email: [String: String]
    let errorCodes: [String: [Enums.UpdateEmailErrorCode]]
    let verificationEmailSent: [String: Bool]

    enum TypeName: String, Codable {
      case updateEmailError = "UpdateEmailError"
      case updateEmailSuccess = "UpdateEmailSuccess"
    }
  }
}

extension Unions.UpdateEmailResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "email":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateEmailErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "verificationEmailSent":
        if let value = try container.decode(Bool?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    email = map["email"]
    errorCodes = map["errorCodes"]
    verificationEmailSent = map["verificationEmailSent"]
  }
}

extension Fields where TypeLock == Unions.UpdateEmailResult {
  func on<Type>(updateEmailError: Selection<Type, Objects.UpdateEmailError>, updateEmailSuccess: Selection<Type, Objects.UpdateEmailSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateEmailError", selection: updateEmailError.selection), GraphQLField.fragment(type: "UpdateEmailSuccess", selection: updateEmailSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateEmailError:
        let data = Objects.UpdateEmailError(errorCodes: data.errorCodes)
        return try updateEmailError.decode(data: data)
      case .updateEmailSuccess:
        let data = Objects.UpdateEmailSuccess(email: data.email, verificationEmailSent: data.verificationEmailSent)
        return try updateEmailSuccess.decode(data: data)
      }
    case .mocking:
      return updateEmailError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateEmailResult<T> = Selection<T, Unions.UpdateEmailResult>
}

extension Unions {
  struct UpdateFilterResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateFilterErrorCode]]
    let filter: [String: Objects.Filter]

    enum TypeName: String, Codable {
      case updateFilterError = "UpdateFilterError"
      case updateFilterSuccess = "UpdateFilterSuccess"
    }
  }
}

extension Unions.UpdateFilterResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateFilterErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "filter":
        if let value = try container.decode(Objects.Filter?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    filter = map["filter"]
  }
}

extension Fields where TypeLock == Unions.UpdateFilterResult {
  func on<Type>(updateFilterError: Selection<Type, Objects.UpdateFilterError>, updateFilterSuccess: Selection<Type, Objects.UpdateFilterSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateFilterError", selection: updateFilterError.selection), GraphQLField.fragment(type: "UpdateFilterSuccess", selection: updateFilterSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateFilterError:
        let data = Objects.UpdateFilterError(errorCodes: data.errorCodes)
        return try updateFilterError.decode(data: data)
      case .updateFilterSuccess:
        let data = Objects.UpdateFilterSuccess(filter: data.filter)
        return try updateFilterSuccess.decode(data: data)
      }
    case .mocking:
      return updateFilterError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateFilterResult<T> = Selection<T, Unions.UpdateFilterResult>
}

extension Unions {
  struct UpdateHighlightReplyResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateHighlightReplyErrorCode]]
    let highlightReply: [String: Objects.HighlightReply]

    enum TypeName: String, Codable {
      case updateHighlightReplyError = "UpdateHighlightReplyError"
      case updateHighlightReplySuccess = "UpdateHighlightReplySuccess"
    }
  }
}

extension Unions.UpdateHighlightReplyResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateHighlightReplyErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlightReply":
        if let value = try container.decode(Objects.HighlightReply?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlightReply = map["highlightReply"]
  }
}

extension Fields where TypeLock == Unions.UpdateHighlightReplyResult {
  func on<Type>(updateHighlightReplyError: Selection<Type, Objects.UpdateHighlightReplyError>, updateHighlightReplySuccess: Selection<Type, Objects.UpdateHighlightReplySuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateHighlightReplyError", selection: updateHighlightReplyError.selection), GraphQLField.fragment(type: "UpdateHighlightReplySuccess", selection: updateHighlightReplySuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateHighlightReplyError:
        let data = Objects.UpdateHighlightReplyError(errorCodes: data.errorCodes)
        return try updateHighlightReplyError.decode(data: data)
      case .updateHighlightReplySuccess:
        let data = Objects.UpdateHighlightReplySuccess(highlightReply: data.highlightReply)
        return try updateHighlightReplySuccess.decode(data: data)
      }
    case .mocking:
      return updateHighlightReplyError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightReplyResult<T> = Selection<T, Unions.UpdateHighlightReplyResult>
}

extension Unions {
  struct UpdateHighlightResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateHighlightErrorCode]]
    let highlight: [String: Objects.Highlight]

    enum TypeName: String, Codable {
      case updateHighlightError = "UpdateHighlightError"
      case updateHighlightSuccess = "UpdateHighlightSuccess"
    }
  }
}

extension Unions.UpdateHighlightResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateHighlightErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "highlight":
        if let value = try container.decode(Objects.Highlight?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    highlight = map["highlight"]
  }
}

extension Fields where TypeLock == Unions.UpdateHighlightResult {
  func on<Type>(updateHighlightError: Selection<Type, Objects.UpdateHighlightError>, updateHighlightSuccess: Selection<Type, Objects.UpdateHighlightSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateHighlightError", selection: updateHighlightError.selection), GraphQLField.fragment(type: "UpdateHighlightSuccess", selection: updateHighlightSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateHighlightError:
        let data = Objects.UpdateHighlightError(errorCodes: data.errorCodes)
        return try updateHighlightError.decode(data: data)
      case .updateHighlightSuccess:
        let data = Objects.UpdateHighlightSuccess(highlight: data.highlight)
        return try updateHighlightSuccess.decode(data: data)
      }
    case .mocking:
      return updateHighlightError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateHighlightResult<T> = Selection<T, Unions.UpdateHighlightResult>
}

extension Unions {
  struct UpdateLabelResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateLabelErrorCode]]
    let label: [String: Objects.Label]

    enum TypeName: String, Codable {
      case updateLabelError = "UpdateLabelError"
      case updateLabelSuccess = "UpdateLabelSuccess"
    }
  }
}

extension Unions.UpdateLabelResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateLabelErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "label":
        if let value = try container.decode(Objects.Label?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    label = map["label"]
  }
}

extension Fields where TypeLock == Unions.UpdateLabelResult {
  func on<Type>(updateLabelError: Selection<Type, Objects.UpdateLabelError>, updateLabelSuccess: Selection<Type, Objects.UpdateLabelSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateLabelError", selection: updateLabelError.selection), GraphQLField.fragment(type: "UpdateLabelSuccess", selection: updateLabelSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateLabelError:
        let data = Objects.UpdateLabelError(errorCodes: data.errorCodes)
        return try updateLabelError.decode(data: data)
      case .updateLabelSuccess:
        let data = Objects.UpdateLabelSuccess(label: data.label)
        return try updateLabelSuccess.decode(data: data)
      }
    case .mocking:
      return updateLabelError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLabelResult<T> = Selection<T, Unions.UpdateLabelResult>
}

extension Unions {
  struct UpdateLinkShareInfoResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateLinkShareInfoErrorCode]]
    let message: [String: String]

    enum TypeName: String, Codable {
      case updateLinkShareInfoError = "UpdateLinkShareInfoError"
      case updateLinkShareInfoSuccess = "UpdateLinkShareInfoSuccess"
    }
  }
}

extension Unions.UpdateLinkShareInfoResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateLinkShareInfoErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "message":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    message = map["message"]
  }
}

extension Fields where TypeLock == Unions.UpdateLinkShareInfoResult {
  func on<Type>(updateLinkShareInfoError: Selection<Type, Objects.UpdateLinkShareInfoError>, updateLinkShareInfoSuccess: Selection<Type, Objects.UpdateLinkShareInfoSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateLinkShareInfoError", selection: updateLinkShareInfoError.selection), GraphQLField.fragment(type: "UpdateLinkShareInfoSuccess", selection: updateLinkShareInfoSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateLinkShareInfoError:
        let data = Objects.UpdateLinkShareInfoError(errorCodes: data.errorCodes)
        return try updateLinkShareInfoError.decode(data: data)
      case .updateLinkShareInfoSuccess:
        let data = Objects.UpdateLinkShareInfoSuccess(message: data.message)
        return try updateLinkShareInfoSuccess.decode(data: data)
      }
    case .mocking:
      return updateLinkShareInfoError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateLinkShareInfoResult<T> = Selection<T, Unions.UpdateLinkShareInfoResult>
}

extension Unions {
  struct UpdatePageResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdatePageErrorCode]]
    let updatedPage: [String: Objects.Article]

    enum TypeName: String, Codable {
      case updatePageError = "UpdatePageError"
      case updatePageSuccess = "UpdatePageSuccess"
    }
  }
}

extension Unions.UpdatePageResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdatePageErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "updatedPage":
        if let value = try container.decode(Objects.Article?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    updatedPage = map["updatedPage"]
  }
}

extension Fields where TypeLock == Unions.UpdatePageResult {
  func on<Type>(updatePageError: Selection<Type, Objects.UpdatePageError>, updatePageSuccess: Selection<Type, Objects.UpdatePageSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdatePageError", selection: updatePageError.selection), GraphQLField.fragment(type: "UpdatePageSuccess", selection: updatePageSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updatePageError:
        let data = Objects.UpdatePageError(errorCodes: data.errorCodes)
        return try updatePageError.decode(data: data)
      case .updatePageSuccess:
        let data = Objects.UpdatePageSuccess(updatedPage: data.updatedPage)
        return try updatePageSuccess.decode(data: data)
      }
    case .mocking:
      return updatePageError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatePageResult<T> = Selection<T, Unions.UpdatePageResult>
}

extension Unions {
  struct UpdateReminderResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateReminderErrorCode]]
    let reminder: [String: Objects.Reminder]

    enum TypeName: String, Codable {
      case updateReminderError = "UpdateReminderError"
      case updateReminderSuccess = "UpdateReminderSuccess"
    }
  }
}

extension Unions.UpdateReminderResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateReminderErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "reminder":
        if let value = try container.decode(Objects.Reminder?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    reminder = map["reminder"]
  }
}

extension Fields where TypeLock == Unions.UpdateReminderResult {
  func on<Type>(updateReminderError: Selection<Type, Objects.UpdateReminderError>, updateReminderSuccess: Selection<Type, Objects.UpdateReminderSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateReminderError", selection: updateReminderError.selection), GraphQLField.fragment(type: "UpdateReminderSuccess", selection: updateReminderSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateReminderError:
        let data = Objects.UpdateReminderError(errorCodes: data.errorCodes)
        return try updateReminderError.decode(data: data)
      case .updateReminderSuccess:
        let data = Objects.UpdateReminderSuccess(reminder: data.reminder)
        return try updateReminderSuccess.decode(data: data)
      }
    case .mocking:
      return updateReminderError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateReminderResult<T> = Selection<T, Unions.UpdateReminderResult>
}

extension Unions {
  struct UpdateSharedCommentResult {
    let __typename: TypeName
    let articleId: [String: String]
    let errorCodes: [String: [Enums.UpdateSharedCommentErrorCode]]
    let sharedComment: [String: String]

    enum TypeName: String, Codable {
      case updateSharedCommentError = "UpdateSharedCommentError"
      case updateSharedCommentSuccess = "UpdateSharedCommentSuccess"
    }
  }
}

extension Unions.UpdateSharedCommentResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "articleId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateSharedCommentErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "sharedComment":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    articleId = map["articleId"]
    errorCodes = map["errorCodes"]
    sharedComment = map["sharedComment"]
  }
}

extension Fields where TypeLock == Unions.UpdateSharedCommentResult {
  func on<Type>(updateSharedCommentError: Selection<Type, Objects.UpdateSharedCommentError>, updateSharedCommentSuccess: Selection<Type, Objects.UpdateSharedCommentSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateSharedCommentError", selection: updateSharedCommentError.selection), GraphQLField.fragment(type: "UpdateSharedCommentSuccess", selection: updateSharedCommentSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateSharedCommentError:
        let data = Objects.UpdateSharedCommentError(errorCodes: data.errorCodes)
        return try updateSharedCommentError.decode(data: data)
      case .updateSharedCommentSuccess:
        let data = Objects.UpdateSharedCommentSuccess(articleId: data.articleId, sharedComment: data.sharedComment)
        return try updateSharedCommentSuccess.decode(data: data)
      }
    case .mocking:
      return updateSharedCommentError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSharedCommentResult<T> = Selection<T, Unions.UpdateSharedCommentResult>
}

extension Unions {
  struct UpdateSubscriptionResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateSubscriptionErrorCode]]
    let subscription: [String: Objects.Subscription]

    enum TypeName: String, Codable {
      case updateSubscriptionError = "UpdateSubscriptionError"
      case updateSubscriptionSuccess = "UpdateSubscriptionSuccess"
    }
  }
}

extension Unions.UpdateSubscriptionResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateSubscriptionErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "subscription":
        if let value = try container.decode(Objects.Subscription?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    subscription = map["subscription"]
  }
}

extension Fields where TypeLock == Unions.UpdateSubscriptionResult {
  func on<Type>(updateSubscriptionError: Selection<Type, Objects.UpdateSubscriptionError>, updateSubscriptionSuccess: Selection<Type, Objects.UpdateSubscriptionSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateSubscriptionError", selection: updateSubscriptionError.selection), GraphQLField.fragment(type: "UpdateSubscriptionSuccess", selection: updateSubscriptionSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateSubscriptionError:
        let data = Objects.UpdateSubscriptionError(errorCodes: data.errorCodes)
        return try updateSubscriptionError.decode(data: data)
      case .updateSubscriptionSuccess:
        let data = Objects.UpdateSubscriptionSuccess(subscription: data.subscription)
        return try updateSubscriptionSuccess.decode(data: data)
      }
    case .mocking:
      return updateSubscriptionError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateSubscriptionResult<T> = Selection<T, Unions.UpdateSubscriptionResult>
}

extension Unions {
  struct UpdateUserProfileResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateUserProfileErrorCode]]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case updateUserProfileError = "UpdateUserProfileError"
      case updateUserProfileSuccess = "UpdateUserProfileSuccess"
    }
  }
}

extension Unions.UpdateUserProfileResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateUserProfileErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Unions.UpdateUserProfileResult {
  func on<Type>(updateUserProfileError: Selection<Type, Objects.UpdateUserProfileError>, updateUserProfileSuccess: Selection<Type, Objects.UpdateUserProfileSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateUserProfileError", selection: updateUserProfileError.selection), GraphQLField.fragment(type: "UpdateUserProfileSuccess", selection: updateUserProfileSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateUserProfileError:
        let data = Objects.UpdateUserProfileError(errorCodes: data.errorCodes)
        return try updateUserProfileError.decode(data: data)
      case .updateUserProfileSuccess:
        let data = Objects.UpdateUserProfileSuccess(user: data.user)
        return try updateUserProfileSuccess.decode(data: data)
      }
    case .mocking:
      return updateUserProfileError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserProfileResult<T> = Selection<T, Unions.UpdateUserProfileResult>
}

extension Unions {
  struct UpdateUserResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UpdateUserErrorCode]]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case updateUserError = "UpdateUserError"
      case updateUserSuccess = "UpdateUserSuccess"
    }
  }
}

extension Unions.UpdateUserResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UpdateUserErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Unions.UpdateUserResult {
  func on<Type>(updateUserError: Selection<Type, Objects.UpdateUserError>, updateUserSuccess: Selection<Type, Objects.UpdateUserSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdateUserError", selection: updateUserError.selection), GraphQLField.fragment(type: "UpdateUserSuccess", selection: updateUserSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updateUserError:
        let data = Objects.UpdateUserError(errorCodes: data.errorCodes)
        return try updateUserError.decode(data: data)
      case .updateUserSuccess:
        let data = Objects.UpdateUserSuccess(user: data.user)
        return try updateUserSuccess.decode(data: data)
      }
    case .mocking:
      return updateUserError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdateUserResult<T> = Selection<T, Unions.UpdateUserResult>
}

extension Unions {
  struct UpdatesSinceResult {
    let __typename: TypeName
    let edges: [String: [Objects.SyncUpdatedItemEdge]]
    let errorCodes: [String: [Enums.UpdatesSinceErrorCode]]
    let pageInfo: [String: Objects.PageInfo]

    enum TypeName: String, Codable {
      case updatesSinceError = "UpdatesSinceError"
      case updatesSinceSuccess = "UpdatesSinceSuccess"
    }
  }
}

extension Unions.UpdatesSinceResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "edges":
        if let value = try container.decode([Objects.SyncUpdatedItemEdge]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.UpdatesSinceErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "pageInfo":
        if let value = try container.decode(Objects.PageInfo?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    edges = map["edges"]
    errorCodes = map["errorCodes"]
    pageInfo = map["pageInfo"]
  }
}

extension Fields where TypeLock == Unions.UpdatesSinceResult {
  func on<Type>(updatesSinceError: Selection<Type, Objects.UpdatesSinceError>, updatesSinceSuccess: Selection<Type, Objects.UpdatesSinceSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UpdatesSinceError", selection: updatesSinceError.selection), GraphQLField.fragment(type: "UpdatesSinceSuccess", selection: updatesSinceSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .updatesSinceError:
        let data = Objects.UpdatesSinceError(errorCodes: data.errorCodes)
        return try updatesSinceError.decode(data: data)
      case .updatesSinceSuccess:
        let data = Objects.UpdatesSinceSuccess(edges: data.edges, pageInfo: data.pageInfo)
        return try updatesSinceSuccess.decode(data: data)
      }
    case .mocking:
      return updatesSinceError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UpdatesSinceResult<T> = Selection<T, Unions.UpdatesSinceResult>
}

extension Unions {
  struct UploadFileRequestResult {
    let __typename: TypeName
    let createdPageId: [String: String]
    let errorCodes: [String: [Enums.UploadFileRequestErrorCode]]
    let id: [String: String]
    let uploadFileId: [String: String]
    let uploadSignedUrl: [String: String]

    enum TypeName: String, Codable {
      case uploadFileRequestError = "UploadFileRequestError"
      case uploadFileRequestSuccess = "UploadFileRequestSuccess"
    }
  }
}

extension Unions.UploadFileRequestResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "createdPageId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "errorCodes":
        if let value = try container.decode([Enums.UploadFileRequestErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "id":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadFileId":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadSignedUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    createdPageId = map["createdPageId"]
    errorCodes = map["errorCodes"]
    id = map["id"]
    uploadFileId = map["uploadFileId"]
    uploadSignedUrl = map["uploadSignedUrl"]
  }
}

extension Fields where TypeLock == Unions.UploadFileRequestResult {
  func on<Type>(uploadFileRequestError: Selection<Type, Objects.UploadFileRequestError>, uploadFileRequestSuccess: Selection<Type, Objects.UploadFileRequestSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UploadFileRequestError", selection: uploadFileRequestError.selection), GraphQLField.fragment(type: "UploadFileRequestSuccess", selection: uploadFileRequestSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .uploadFileRequestError:
        let data = Objects.UploadFileRequestError(errorCodes: data.errorCodes)
        return try uploadFileRequestError.decode(data: data)
      case .uploadFileRequestSuccess:
        let data = Objects.UploadFileRequestSuccess(createdPageId: data.createdPageId, id: data.id, uploadFileId: data.uploadFileId, uploadSignedUrl: data.uploadSignedUrl)
        return try uploadFileRequestSuccess.decode(data: data)
      }
    case .mocking:
      return uploadFileRequestError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadFileRequestResult<T> = Selection<T, Unions.UploadFileRequestResult>
}

extension Unions {
  struct UploadImportFileResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UploadImportFileErrorCode]]
    let uploadSignedUrl: [String: String]

    enum TypeName: String, Codable {
      case uploadImportFileError = "UploadImportFileError"
      case uploadImportFileSuccess = "UploadImportFileSuccess"
    }
  }
}

extension Unions.UploadImportFileResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UploadImportFileErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "uploadSignedUrl":
        if let value = try container.decode(String?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    uploadSignedUrl = map["uploadSignedUrl"]
  }
}

extension Fields where TypeLock == Unions.UploadImportFileResult {
  func on<Type>(uploadImportFileError: Selection<Type, Objects.UploadImportFileError>, uploadImportFileSuccess: Selection<Type, Objects.UploadImportFileSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UploadImportFileError", selection: uploadImportFileError.selection), GraphQLField.fragment(type: "UploadImportFileSuccess", selection: uploadImportFileSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .uploadImportFileError:
        let data = Objects.UploadImportFileError(errorCodes: data.errorCodes)
        return try uploadImportFileError.decode(data: data)
      case .uploadImportFileSuccess:
        let data = Objects.UploadImportFileSuccess(uploadSignedUrl: data.uploadSignedUrl)
        return try uploadImportFileSuccess.decode(data: data)
      }
    case .mocking:
      return uploadImportFileError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UploadImportFileResult<T> = Selection<T, Unions.UploadImportFileResult>
}

extension Unions {
  struct UserResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UserErrorCode]]
    let user: [String: Objects.User]

    enum TypeName: String, Codable {
      case userError = "UserError"
      case userSuccess = "UserSuccess"
    }
  }
}

extension Unions.UserResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UserErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "user":
        if let value = try container.decode(Objects.User?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    user = map["user"]
  }
}

extension Fields where TypeLock == Unions.UserResult {
  func on<Type>(userError: Selection<Type, Objects.UserError>, userSuccess: Selection<Type, Objects.UserSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UserError", selection: userError.selection), GraphQLField.fragment(type: "UserSuccess", selection: userSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .userError:
        let data = Objects.UserError(errorCodes: data.errorCodes)
        return try userError.decode(data: data)
      case .userSuccess:
        let data = Objects.UserSuccess(user: data.user)
        return try userSuccess.decode(data: data)
      }
    case .mocking:
      return userError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UserResult<T> = Selection<T, Unions.UserResult>
}

extension Unions {
  struct UsersResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.UsersErrorCode]]
    let users: [String: [Objects.User]]

    enum TypeName: String, Codable {
      case usersError = "UsersError"
      case usersSuccess = "UsersSuccess"
    }
  }
}

extension Unions.UsersResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.UsersErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "users":
        if let value = try container.decode([Objects.User]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    users = map["users"]
  }
}

extension Fields where TypeLock == Unions.UsersResult {
  func on<Type>(usersError: Selection<Type, Objects.UsersError>, usersSuccess: Selection<Type, Objects.UsersSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "UsersError", selection: usersError.selection), GraphQLField.fragment(type: "UsersSuccess", selection: usersSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .usersError:
        let data = Objects.UsersError(errorCodes: data.errorCodes)
        return try usersError.decode(data: data)
      case .usersSuccess:
        let data = Objects.UsersSuccess(users: data.users)
        return try usersSuccess.decode(data: data)
      }
    case .mocking:
      return usersError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias UsersResult<T> = Selection<T, Unions.UsersResult>
}

extension Unions {
  struct WebhookResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.WebhookErrorCode]]
    let webhook: [String: Objects.Webhook]

    enum TypeName: String, Codable {
      case webhookError = "WebhookError"
      case webhookSuccess = "WebhookSuccess"
    }
  }
}

extension Unions.WebhookResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.WebhookErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhook":
        if let value = try container.decode(Objects.Webhook?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    webhook = map["webhook"]
  }
}

extension Fields where TypeLock == Unions.WebhookResult {
  func on<Type>(webhookError: Selection<Type, Objects.WebhookError>, webhookSuccess: Selection<Type, Objects.WebhookSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "WebhookError", selection: webhookError.selection), GraphQLField.fragment(type: "WebhookSuccess", selection: webhookSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .webhookError:
        let data = Objects.WebhookError(errorCodes: data.errorCodes)
        return try webhookError.decode(data: data)
      case .webhookSuccess:
        let data = Objects.WebhookSuccess(webhook: data.webhook)
        return try webhookSuccess.decode(data: data)
      }
    case .mocking:
      return webhookError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhookResult<T> = Selection<T, Unions.WebhookResult>
}

extension Unions {
  struct WebhooksResult {
    let __typename: TypeName
    let errorCodes: [String: [Enums.WebhooksErrorCode]]
    let webhooks: [String: [Objects.Webhook]]

    enum TypeName: String, Codable {
      case webhooksError = "WebhooksError"
      case webhooksSuccess = "WebhooksSuccess"
    }
  }
}

extension Unions.WebhooksResult: Decodable {
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: DynamicCodingKeys.self)

    var map = HashMap()
    for codingKey in container.allKeys {
      if codingKey.isTypenameKey { continue }

      let alias = codingKey.stringValue
      let field = GraphQLField.getFieldNameFromAlias(alias)

      switch field {
      case "errorCodes":
        if let value = try container.decode([Enums.WebhooksErrorCode]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      case "webhooks":
        if let value = try container.decode([Objects.Webhook]?.self, forKey: codingKey) {
          map.set(key: field, hash: alias, value: value as Any)
        }
      default:
        throw DecodingError.dataCorrupted(
          DecodingError.Context(
            codingPath: decoder.codingPath,
            debugDescription: "Unknown key \(field)."
          )
        )
      }
    }

    __typename = try container.decode(TypeName.self, forKey: DynamicCodingKeys(stringValue: "__typename")!)

    errorCodes = map["errorCodes"]
    webhooks = map["webhooks"]
  }
}

extension Fields where TypeLock == Unions.WebhooksResult {
  func on<Type>(webhooksError: Selection<Type, Objects.WebhooksError>, webhooksSuccess: Selection<Type, Objects.WebhooksSuccess>) throws -> Type {
    select([GraphQLField.fragment(type: "WebhooksError", selection: webhooksError.selection), GraphQLField.fragment(type: "WebhooksSuccess", selection: webhooksSuccess.selection)])

    switch response {
    case let .decoding(data):
      switch data.__typename {
      case .webhooksError:
        let data = Objects.WebhooksError(errorCodes: data.errorCodes)
        return try webhooksError.decode(data: data)
      case .webhooksSuccess:
        let data = Objects.WebhooksSuccess(webhooks: data.webhooks)
        return try webhooksSuccess.decode(data: data)
      }
    case .mocking:
      return webhooksError.mock()
    }
  }
}

extension Selection where TypeLock == Never, Type == Never {
  typealias WebhooksResult<T> = Selection<T, Unions.WebhooksResult>
}

// MARK: - Enums

enum Enums {}
extension Enums {
  /// AddPopularReadErrorCode
  enum AddPopularReadErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ApiKeysErrorCode
  enum ApiKeysErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ArchiveLinkErrorCode
  enum ArchiveLinkErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ArticleErrorCode
  enum ArticleErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ArticleSavingRequestErrorCode
  enum ArticleSavingRequestErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ArticleSavingRequestStatus
  enum ArticleSavingRequestStatus: String, CaseIterable, Codable {
    case archived = "ARCHIVED"

    case deleted = "DELETED"

    case failed = "FAILED"

    case processing = "PROCESSING"

    case succeeded = "SUCCEEDED"
  }
}

extension Enums {
  /// ArticlesErrorCode
  enum ArticlesErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// BulkActionErrorCode
  enum BulkActionErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// BulkActionType
  enum BulkActionType: String, CaseIterable, Codable {
    case addLabels = "ADD_LABELS"

    case archive = "ARCHIVE"

    case delete = "DELETE"

    case markAsRead = "MARK_AS_READ"
  }
}

extension Enums {
  /// ContentReader
  enum ContentReader: String, CaseIterable, Codable {
    case epub = "EPUB"

    case pdf = "PDF"

    case web = "WEB"
  }
}

extension Enums {
  /// CreateArticleErrorCode
  enum CreateArticleErrorCode: String, CaseIterable, Codable {
    case elasticError = "ELASTIC_ERROR"

    case notAllowedToParse = "NOT_ALLOWED_TO_PARSE"

    case payloadTooLarge = "PAYLOAD_TOO_LARGE"

    case unableToFetch = "UNABLE_TO_FETCH"

    case unableToParse = "UNABLE_TO_PARSE"

    case unauthorized = "UNAUTHORIZED"

    case uploadFileMissing = "UPLOAD_FILE_MISSING"
  }
}

extension Enums {
  /// CreateArticleSavingRequestErrorCode
  enum CreateArticleSavingRequestErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateGroupErrorCode
  enum CreateGroupErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateHighlightErrorCode
  enum CreateHighlightErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badData = "BAD_DATA"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateHighlightReplyErrorCode
  enum CreateHighlightReplyErrorCode: String, CaseIterable, Codable {
    case emptyAnnotation = "EMPTY_ANNOTATION"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateLabelErrorCode
  enum CreateLabelErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case labelAlreadyExists = "LABEL_ALREADY_EXISTS"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateNewsletterEmailErrorCode
  enum CreateNewsletterEmailErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateReactionErrorCode
  enum CreateReactionErrorCode: String, CaseIterable, Codable {
    case badCode = "BAD_CODE"

    case badTarget = "BAD_TARGET"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// CreateReminderErrorCode
  enum CreateReminderErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteAccountErrorCode
  enum DeleteAccountErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case unauthorized = "UNAUTHORIZED"

    case userNotFound = "USER_NOT_FOUND"
  }
}

extension Enums {
  /// DeleteFilterErrorCode
  enum DeleteFilterErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteHighlightErrorCode
  enum DeleteHighlightErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteHighlightReplyErrorCode
  enum DeleteHighlightReplyErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteIntegrationErrorCode
  enum DeleteIntegrationErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteLabelErrorCode
  enum DeleteLabelErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteNewsletterEmailErrorCode
  enum DeleteNewsletterEmailErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteReactionErrorCode
  enum DeleteReactionErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteReminderErrorCode
  enum DeleteReminderErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteRuleErrorCode
  enum DeleteRuleErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeleteWebhookErrorCode
  enum DeleteWebhookErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// DeviceTokensErrorCode
  enum DeviceTokensErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// FeedArticlesErrorCode
  enum FeedArticlesErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// FiltersErrorCode
  enum FiltersErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// GenerateApiKeyErrorCode
  enum GenerateApiKeyErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// GetFollowersErrorCode
  enum GetFollowersErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// GetFollowingErrorCode
  enum GetFollowingErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// GetUserPersonalizationErrorCode
  enum GetUserPersonalizationErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// GroupsErrorCode
  enum GroupsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// HighlightType
  enum HighlightType: String, CaseIterable, Codable {
    case highlight = "HIGHLIGHT"

    case note = "NOTE"

    case redaction = "REDACTION"
  }
}

extension Enums {
  /// ImportFromIntegrationErrorCode
  enum ImportFromIntegrationErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// IntegrationType
  enum IntegrationType: String, CaseIterable, Codable {
    case export = "EXPORT"

    case `import` = "IMPORT"
  }
}

extension Enums {
  /// IntegrationsErrorCode
  enum IntegrationsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// JoinGroupErrorCode
  enum JoinGroupErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// LabelsErrorCode
  enum LabelsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// LeaveGroupErrorCode
  enum LeaveGroupErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// LogOutErrorCode
  enum LogOutErrorCode: String, CaseIterable, Codable {
    case logOutFailed = "LOG_OUT_FAILED"
  }
}

extension Enums {
  /// LoginErrorCode
  enum LoginErrorCode: String, CaseIterable, Codable {
    case accessDenied = "ACCESS_DENIED"

    case authFailed = "AUTH_FAILED"

    case invalidCredentials = "INVALID_CREDENTIALS"

    case userAlreadyExists = "USER_ALREADY_EXISTS"

    case userNotFound = "USER_NOT_FOUND"

    case wrongSource = "WRONG_SOURCE"
  }
}

extension Enums {
  /// MarkEmailAsItemErrorCode
  enum MarkEmailAsItemErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// MergeHighlightErrorCode
  enum MergeHighlightErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badData = "BAD_DATA"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// MoveFilterErrorCode
  enum MoveFilterErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// MoveLabelErrorCode
  enum MoveLabelErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// NewsletterEmailsErrorCode
  enum NewsletterEmailsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// OptInFeatureErrorCode
  enum OptInFeatureErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"
  }
}

extension Enums {
  /// PageType
  enum PageType: String, CaseIterable, Codable {
    case article = "ARTICLE"

    case book = "BOOK"

    case file = "FILE"

    case highlights = "HIGHLIGHTS"

    case image = "IMAGE"

    case profile = "PROFILE"

    case tweet = "TWEET"

    case unknown = "UNKNOWN"

    case video = "VIDEO"

    case website = "WEBSITE"
  }
}

extension Enums {
  /// ReactionType
  enum ReactionType: String, CaseIterable, Codable {
    case crying = "CRYING"

    case heart = "HEART"

    case hushed = "HUSHED"

    case like = "LIKE"

    case pout = "POUT"

    case smile = "SMILE"
  }
}

extension Enums {
  /// RecentEmailsErrorCode
  enum RecentEmailsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// RecentSearchesErrorCode
  enum RecentSearchesErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// RecommendErrorCode
  enum RecommendErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// RecommendHighlightsErrorCode
  enum RecommendHighlightsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ReminderErrorCode
  enum ReminderErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// ReportType
  enum ReportType: String, CaseIterable, Codable {
    case abusive = "ABUSIVE"

    case contentDisplay = "CONTENT_DISPLAY"

    case contentViolation = "CONTENT_VIOLATION"

    case spam = "SPAM"
  }
}

extension Enums {
  /// RevokeApiKeyErrorCode
  enum RevokeApiKeyErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// RuleActionType
  enum RuleActionType: String, CaseIterable, Codable {
    case addLabel = "ADD_LABEL"

    case archive = "ARCHIVE"

    case markAsRead = "MARK_AS_READ"

    case sendNotification = "SEND_NOTIFICATION"
  }
}

extension Enums {
  /// RuleEventType
  enum RuleEventType: String, CaseIterable, Codable {
    case pageCreated = "PAGE_CREATED"

    case pageUpdated = "PAGE_UPDATED"
  }
}

extension Enums {
  /// RulesErrorCode
  enum RulesErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SaveArticleReadingProgressErrorCode
  enum SaveArticleReadingProgressErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SaveErrorCode
  enum SaveErrorCode: String, CaseIterable, Codable {
    case embeddedHighlightFailed = "EMBEDDED_HIGHLIGHT_FAILED"

    case unauthorized = "UNAUTHORIZED"

    case unknown = "UNKNOWN"
  }
}

extension Enums {
  /// SaveFilterErrorCode
  enum SaveFilterErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SearchErrorCode
  enum SearchErrorCode: String, CaseIterable, Codable {
    case queryTooLong = "QUERY_TOO_LONG"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SendInstallInstructionsErrorCode
  enum SendInstallInstructionsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetBookmarkArticleErrorCode
  enum SetBookmarkArticleErrorCode: String, CaseIterable, Codable {
    case bookmarkExists = "BOOKMARK_EXISTS"

    case notFound = "NOT_FOUND"
  }
}

extension Enums {
  /// SetDeviceTokenErrorCode
  enum SetDeviceTokenErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetFavoriteArticleErrorCode
  enum SetFavoriteArticleErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetFollowErrorCode
  enum SetFollowErrorCode: String, CaseIterable, Codable {
    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetIntegrationErrorCode
  enum SetIntegrationErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badRequest = "BAD_REQUEST"

    case invalidToken = "INVALID_TOKEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetLabelsErrorCode
  enum SetLabelsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetRuleErrorCode
  enum SetRuleErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetShareArticleErrorCode
  enum SetShareArticleErrorCode: String, CaseIterable, Codable {
    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetShareHighlightErrorCode
  enum SetShareHighlightErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetUserPersonalizationErrorCode
  enum SetUserPersonalizationErrorCode: String, CaseIterable, Codable {
    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SetWebhookErrorCode
  enum SetWebhookErrorCode: String, CaseIterable, Codable {
    case alreadyExists = "ALREADY_EXISTS"

    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SharedArticleErrorCode
  enum SharedArticleErrorCode: String, CaseIterable, Codable {
    case notFound = "NOT_FOUND"
  }
}

extension Enums {
  /// SignupErrorCode
  enum SignupErrorCode: String, CaseIterable, Codable {
    case accessDenied = "ACCESS_DENIED"

    case expiredToken = "EXPIRED_TOKEN"

    case googleAuthError = "GOOGLE_AUTH_ERROR"

    case invalidEmail = "INVALID_EMAIL"

    case invalidPassword = "INVALID_PASSWORD"

    case invalidUsername = "INVALID_USERNAME"

    case unknown = "UNKNOWN"

    case userExists = "USER_EXISTS"
  }
}

extension Enums {
  /// SortBy
  enum SortBy: String, CaseIterable, Codable {
    case publishedAt = "PUBLISHED_AT"

    case savedAt = "SAVED_AT"

    case score = "SCORE"

    case updatedTime = "UPDATED_TIME"
  }
}

extension Enums {
  /// SortOrder
  enum SortOrder: String, CaseIterable, Codable {
    case ascending = "ASCENDING"

    case descending = "DESCENDING"
  }
}

extension Enums {
  /// SubscribeErrorCode
  enum SubscribeErrorCode: String, CaseIterable, Codable {
    case alreadySubscribed = "ALREADY_SUBSCRIBED"

    case badRequest = "BAD_REQUEST"

    case exceededMaxSubscriptions = "EXCEEDED_MAX_SUBSCRIPTIONS"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// SubscriptionStatus
  enum SubscriptionStatus: String, CaseIterable, Codable {
    case active = "ACTIVE"

    case deleted = "DELETED"

    case unsubscribed = "UNSUBSCRIBED"
  }
}

extension Enums {
  /// SubscriptionType
  enum SubscriptionType: String, CaseIterable, Codable {
    case newsletter = "NEWSLETTER"

    case rss = "RSS"
  }
}

extension Enums {
  /// SubscriptionsErrorCode
  enum SubscriptionsErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// TypeaheadSearchErrorCode
  enum TypeaheadSearchErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UnsubscribeErrorCode
  enum UnsubscribeErrorCode: String, CaseIterable, Codable {
    case alreadyUnsubscribed = "ALREADY_UNSUBSCRIBED"

    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"

    case unsubscribeMethodNotFound = "UNSUBSCRIBE_METHOD_NOT_FOUND"
  }
}

extension Enums {
  /// UpdateEmailErrorCode
  enum UpdateEmailErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case emailAlreadyExists = "EMAIL_ALREADY_EXISTS"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateFilterErrorCode
  enum UpdateFilterErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateHighlightErrorCode
  enum UpdateHighlightErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateHighlightReplyErrorCode
  enum UpdateHighlightReplyErrorCode: String, CaseIterable, Codable {
    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateLabelErrorCode
  enum UpdateLabelErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateLinkShareInfoErrorCode
  enum UpdateLinkShareInfoErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdatePageErrorCode
  enum UpdatePageErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case forbidden = "FORBIDDEN"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"

    case updateFailed = "UPDATE_FAILED"
  }
}

extension Enums {
  /// UpdateReason
  enum UpdateReason: String, CaseIterable, Codable {
    case created = "CREATED"

    case deleted = "DELETED"

    case updated = "UPDATED"
  }
}

extension Enums {
  /// UpdateReminderErrorCode
  enum UpdateReminderErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateSharedCommentErrorCode
  enum UpdateSharedCommentErrorCode: String, CaseIterable, Codable {
    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateSubscriptionErrorCode
  enum UpdateSubscriptionErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UpdateUserErrorCode
  enum UpdateUserErrorCode: String, CaseIterable, Codable {
    case bioTooLong = "BIO_TOO_LONG"

    case emptyName = "EMPTY_NAME"

    case unauthorized = "UNAUTHORIZED"

    case userNotFound = "USER_NOT_FOUND"
  }
}

extension Enums {
  /// UpdateUserProfileErrorCode
  enum UpdateUserProfileErrorCode: String, CaseIterable, Codable {
    case badData = "BAD_DATA"

    case badUsername = "BAD_USERNAME"

    case forbidden = "FORBIDDEN"

    case unauthorized = "UNAUTHORIZED"

    case usernameExists = "USERNAME_EXISTS"
  }
}

extension Enums {
  /// UpdatesSinceErrorCode
  enum UpdatesSinceErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UploadFileRequestErrorCode
  enum UploadFileRequestErrorCode: String, CaseIterable, Codable {
    case badInput = "BAD_INPUT"

    case failedCreate = "FAILED_CREATE"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// UploadFileStatus
  enum UploadFileStatus: String, CaseIterable, Codable {
    case completed = "COMPLETED"

    case initialized = "INITIALIZED"
  }
}

extension Enums {
  /// UploadImportFileErrorCode
  enum UploadImportFileErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"

    case uploadDailyLimitExceeded = "UPLOAD_DAILY_LIMIT_EXCEEDED"
  }
}

extension Enums {
  /// UploadImportFileType
  enum UploadImportFileType: String, CaseIterable, Codable {
    case matter = "MATTER"

    case pocket = "POCKET"

    case urlList = "URL_LIST"
  }
}

extension Enums {
  /// UserErrorCode
  enum UserErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"

    case userNotFound = "USER_NOT_FOUND"
  }
}

extension Enums {
  /// UsersErrorCode
  enum UsersErrorCode: String, CaseIterable, Codable {
    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// WebhookErrorCode
  enum WebhookErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case notFound = "NOT_FOUND"

    case unauthorized = "UNAUTHORIZED"
  }
}

extension Enums {
  /// WebhookEvent
  enum WebhookEvent: String, CaseIterable, Codable {
    case highlightCreated = "HIGHLIGHT_CREATED"

    case highlightDeleted = "HIGHLIGHT_DELETED"

    case highlightUpdated = "HIGHLIGHT_UPDATED"

    case labelCreated = "LABEL_CREATED"

    case labelDeleted = "LABEL_DELETED"

    case labelUpdated = "LABEL_UPDATED"

    case pageCreated = "PAGE_CREATED"

    case pageDeleted = "PAGE_DELETED"

    case pageUpdated = "PAGE_UPDATED"
  }
}

extension Enums {
  /// WebhooksErrorCode
  enum WebhooksErrorCode: String, CaseIterable, Codable {
    case badRequest = "BAD_REQUEST"

    case unauthorized = "UNAUTHORIZED"
  }
}

// MARK: - Input Objects

enum InputObjects {}
extension InputObjects {
  struct ArchiveLinkInput: Encodable, Hashable {
    var archived: Bool

    var linkId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(archived, forKey: .archived)
      try container.encode(linkId, forKey: .linkId)
    }

    enum CodingKeys: String, CodingKey {
      case archived
      case linkId
    }
  }
}

extension InputObjects {
  struct ArticleHighlightsInput: Encodable, Hashable {
    var includeFriends: OptionalArgument<Bool> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if includeFriends.hasValue { try container.encode(includeFriends, forKey: .includeFriends) }
    }

    enum CodingKeys: String, CodingKey {
      case includeFriends
    }
  }
}

extension InputObjects {
  struct CreateArticleInput: Encodable, Hashable {
    var articleSavingRequestId: OptionalArgument<String> = .absent()

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    var preparedDocument: OptionalArgument<InputObjects.PreparedDocumentInput> = .absent()

    var skipParsing: OptionalArgument<Bool> = .absent()

    var source: OptionalArgument<String> = .absent()

    var state: OptionalArgument<Enums.ArticleSavingRequestStatus> = .absent()

    var uploadFileId: OptionalArgument<String> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if articleSavingRequestId.hasValue { try container.encode(articleSavingRequestId, forKey: .articleSavingRequestId) }
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
      if preparedDocument.hasValue { try container.encode(preparedDocument, forKey: .preparedDocument) }
      if skipParsing.hasValue { try container.encode(skipParsing, forKey: .skipParsing) }
      if source.hasValue { try container.encode(source, forKey: .source) }
      if state.hasValue { try container.encode(state, forKey: .state) }
      if uploadFileId.hasValue { try container.encode(uploadFileId, forKey: .uploadFileId) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case articleSavingRequestId
      case labels
      case preparedDocument
      case skipParsing
      case source
      case state
      case uploadFileId
      case url
    }
  }
}

extension InputObjects {
  struct CreateArticleSavingRequestInput: Encodable, Hashable {
    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case url
    }
  }
}

extension InputObjects {
  struct CreateGroupInput: Encodable, Hashable {
    var description: OptionalArgument<String> = .absent()

    var expiresInDays: OptionalArgument<Int> = .absent()

    var maxMembers: OptionalArgument<Int> = .absent()

    var name: String

    var onlyAdminCanPost: OptionalArgument<Bool> = .absent()

    var onlyAdminCanSeeMembers: OptionalArgument<Bool> = .absent()

    var topics: OptionalArgument<[String]> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if description.hasValue { try container.encode(description, forKey: .description) }
      if expiresInDays.hasValue { try container.encode(expiresInDays, forKey: .expiresInDays) }
      if maxMembers.hasValue { try container.encode(maxMembers, forKey: .maxMembers) }
      try container.encode(name, forKey: .name)
      if onlyAdminCanPost.hasValue { try container.encode(onlyAdminCanPost, forKey: .onlyAdminCanPost) }
      if onlyAdminCanSeeMembers.hasValue { try container.encode(onlyAdminCanSeeMembers, forKey: .onlyAdminCanSeeMembers) }
      if topics.hasValue { try container.encode(topics, forKey: .topics) }
    }

    enum CodingKeys: String, CodingKey {
      case description
      case expiresInDays
      case maxMembers
      case name
      case onlyAdminCanPost
      case onlyAdminCanSeeMembers
      case topics
    }
  }
}

extension InputObjects {
  struct CreateHighlightInput: Encodable, Hashable {
    var annotation: OptionalArgument<String> = .absent()

    var articleId: String

    var color: OptionalArgument<String> = .absent()

    var highlightPositionAnchorIndex: OptionalArgument<Int> = .absent()

    var highlightPositionPercent: OptionalArgument<Double> = .absent()

    var html: OptionalArgument<String> = .absent()

    var id: String

    var patch: OptionalArgument<String> = .absent()

    var prefix: OptionalArgument<String> = .absent()

    var quote: OptionalArgument<String> = .absent()

    var sharedAt: OptionalArgument<DateTime> = .absent()

    var shortId: String

    var suffix: OptionalArgument<String> = .absent()

    var type: OptionalArgument<Enums.HighlightType> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if annotation.hasValue { try container.encode(annotation, forKey: .annotation) }
      try container.encode(articleId, forKey: .articleId)
      if color.hasValue { try container.encode(color, forKey: .color) }
      if highlightPositionAnchorIndex.hasValue { try container.encode(highlightPositionAnchorIndex, forKey: .highlightPositionAnchorIndex) }
      if highlightPositionPercent.hasValue { try container.encode(highlightPositionPercent, forKey: .highlightPositionPercent) }
      if html.hasValue { try container.encode(html, forKey: .html) }
      try container.encode(id, forKey: .id)
      if patch.hasValue { try container.encode(patch, forKey: .patch) }
      if prefix.hasValue { try container.encode(prefix, forKey: .prefix) }
      if quote.hasValue { try container.encode(quote, forKey: .quote) }
      if sharedAt.hasValue { try container.encode(sharedAt, forKey: .sharedAt) }
      try container.encode(shortId, forKey: .shortId)
      if suffix.hasValue { try container.encode(suffix, forKey: .suffix) }
      if type.hasValue { try container.encode(type, forKey: .type) }
    }

    enum CodingKeys: String, CodingKey {
      case annotation
      case articleId
      case color
      case highlightPositionAnchorIndex
      case highlightPositionPercent
      case html
      case id
      case patch
      case prefix
      case quote
      case sharedAt
      case shortId
      case suffix
      case type
    }
  }
}

extension InputObjects {
  struct CreateHighlightReplyInput: Encodable, Hashable {
    var highlightId: String

    var text: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(highlightId, forKey: .highlightId)
      try container.encode(text, forKey: .text)
    }

    enum CodingKeys: String, CodingKey {
      case highlightId
      case text
    }
  }
}

extension InputObjects {
  struct CreateLabelInput: Encodable, Hashable {
    var color: OptionalArgument<String> = .absent()

    var description: OptionalArgument<String> = .absent()

    var name: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if color.hasValue { try container.encode(color, forKey: .color) }
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(name, forKey: .name)
    }

    enum CodingKeys: String, CodingKey {
      case color
      case description
      case name
    }
  }
}

extension InputObjects {
  struct CreateReactionInput: Encodable, Hashable {
    var code: Enums.ReactionType

    var highlightId: OptionalArgument<String> = .absent()

    var userArticleId: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(code, forKey: .code)
      if highlightId.hasValue { try container.encode(highlightId, forKey: .highlightId) }
      if userArticleId.hasValue { try container.encode(userArticleId, forKey: .userArticleId) }
    }

    enum CodingKeys: String, CodingKey {
      case code
      case highlightId
      case userArticleId
    }
  }
}

extension InputObjects {
  struct CreateReminderInput: Encodable, Hashable {
    var archiveUntil: Bool

    var clientRequestId: OptionalArgument<String> = .absent()

    var linkId: OptionalArgument<String> = .absent()

    var remindAt: DateTime

    var sendNotification: Bool

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(archiveUntil, forKey: .archiveUntil)
      if clientRequestId.hasValue { try container.encode(clientRequestId, forKey: .clientRequestId) }
      if linkId.hasValue { try container.encode(linkId, forKey: .linkId) }
      try container.encode(remindAt, forKey: .remindAt)
      try container.encode(sendNotification, forKey: .sendNotification)
    }

    enum CodingKeys: String, CodingKey {
      case archiveUntil
      case clientRequestId
      case linkId
      case remindAt
      case sendNotification
    }
  }
}

extension InputObjects {
  struct GenerateApiKeyInput: Encodable, Hashable {
    var expiresAt: DateTime

    var name: String

    var scopes: OptionalArgument<[String]> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(expiresAt, forKey: .expiresAt)
      try container.encode(name, forKey: .name)
      if scopes.hasValue { try container.encode(scopes, forKey: .scopes) }
    }

    enum CodingKeys: String, CodingKey {
      case expiresAt
      case name
      case scopes
    }
  }
}

extension InputObjects {
  struct GoogleLoginInput: Encodable, Hashable {
    var email: String

    var secret: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(email, forKey: .email)
      try container.encode(secret, forKey: .secret)
    }

    enum CodingKeys: String, CodingKey {
      case email
      case secret
    }
  }
}

extension InputObjects {
  struct GoogleSignupInput: Encodable, Hashable {
    var bio: OptionalArgument<String> = .absent()

    var email: String

    var name: String

    var pictureUrl: String

    var secret: String

    var sourceUserId: String

    var username: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if bio.hasValue { try container.encode(bio, forKey: .bio) }
      try container.encode(email, forKey: .email)
      try container.encode(name, forKey: .name)
      try container.encode(pictureUrl, forKey: .pictureUrl)
      try container.encode(secret, forKey: .secret)
      try container.encode(sourceUserId, forKey: .sourceUserId)
      try container.encode(username, forKey: .username)
    }

    enum CodingKeys: String, CodingKey {
      case bio
      case email
      case name
      case pictureUrl
      case secret
      case sourceUserId
      case username
    }
  }
}

extension InputObjects {
  struct MergeHighlightInput: Encodable, Hashable {
    var annotation: OptionalArgument<String> = .absent()

    var articleId: String

    var color: OptionalArgument<String> = .absent()

    var highlightPositionAnchorIndex: OptionalArgument<Int> = .absent()

    var highlightPositionPercent: OptionalArgument<Double> = .absent()

    var html: OptionalArgument<String> = .absent()

    var id: String

    var overlapHighlightIdList: [String]

    var patch: String

    var prefix: OptionalArgument<String> = .absent()

    var quote: String

    var shortId: String

    var suffix: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if annotation.hasValue { try container.encode(annotation, forKey: .annotation) }
      try container.encode(articleId, forKey: .articleId)
      if color.hasValue { try container.encode(color, forKey: .color) }
      if highlightPositionAnchorIndex.hasValue { try container.encode(highlightPositionAnchorIndex, forKey: .highlightPositionAnchorIndex) }
      if highlightPositionPercent.hasValue { try container.encode(highlightPositionPercent, forKey: .highlightPositionPercent) }
      if html.hasValue { try container.encode(html, forKey: .html) }
      try container.encode(id, forKey: .id)
      try container.encode(overlapHighlightIdList, forKey: .overlapHighlightIdList)
      try container.encode(patch, forKey: .patch)
      if prefix.hasValue { try container.encode(prefix, forKey: .prefix) }
      try container.encode(quote, forKey: .quote)
      try container.encode(shortId, forKey: .shortId)
      if suffix.hasValue { try container.encode(suffix, forKey: .suffix) }
    }

    enum CodingKeys: String, CodingKey {
      case annotation
      case articleId
      case color
      case highlightPositionAnchorIndex
      case highlightPositionPercent
      case html
      case id
      case overlapHighlightIdList
      case patch
      case prefix
      case quote
      case shortId
      case suffix
    }
  }
}

extension InputObjects {
  struct MoveFilterInput: Encodable, Hashable {
    var afterFilterId: OptionalArgument<String> = .absent()

    var filterId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if afterFilterId.hasValue { try container.encode(afterFilterId, forKey: .afterFilterId) }
      try container.encode(filterId, forKey: .filterId)
    }

    enum CodingKeys: String, CodingKey {
      case afterFilterId
      case filterId
    }
  }
}

extension InputObjects {
  struct MoveLabelInput: Encodable, Hashable {
    var afterLabelId: OptionalArgument<String> = .absent()

    var labelId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if afterLabelId.hasValue { try container.encode(afterLabelId, forKey: .afterLabelId) }
      try container.encode(labelId, forKey: .labelId)
    }

    enum CodingKeys: String, CodingKey {
      case afterLabelId
      case labelId
    }
  }
}

extension InputObjects {
  struct OptInFeatureInput: Encodable, Hashable {
    var name: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(name, forKey: .name)
    }

    enum CodingKeys: String, CodingKey {
      case name
    }
  }
}

extension InputObjects {
  struct PageInfoInput: Encodable, Hashable {
    var author: OptionalArgument<String> = .absent()

    var canonicalUrl: OptionalArgument<String> = .absent()

    var contentType: OptionalArgument<String> = .absent()

    var description: OptionalArgument<String> = .absent()

    var previewImage: OptionalArgument<String> = .absent()

    var publishedAt: OptionalArgument<DateTime> = .absent()

    var title: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if author.hasValue { try container.encode(author, forKey: .author) }
      if canonicalUrl.hasValue { try container.encode(canonicalUrl, forKey: .canonicalUrl) }
      if contentType.hasValue { try container.encode(contentType, forKey: .contentType) }
      if description.hasValue { try container.encode(description, forKey: .description) }
      if previewImage.hasValue { try container.encode(previewImage, forKey: .previewImage) }
      if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
      if title.hasValue { try container.encode(title, forKey: .title) }
    }

    enum CodingKeys: String, CodingKey {
      case author
      case canonicalUrl
      case contentType
      case description
      case previewImage
      case publishedAt
      case title
    }
  }
}

extension InputObjects {
  struct ParseResult: Encodable, Hashable {
    var byline: OptionalArgument<String> = .absent()

    var content: String

    var dir: OptionalArgument<String> = .absent()

    var excerpt: String

    var language: OptionalArgument<String> = .absent()

    var length: Int

    var previewImage: OptionalArgument<String> = .absent()

    var publishedDate: OptionalArgument<DateTime> = .absent()

    var siteIcon: OptionalArgument<String> = .absent()

    var siteName: OptionalArgument<String> = .absent()

    var textContent: String

    var title: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if byline.hasValue { try container.encode(byline, forKey: .byline) }
      try container.encode(content, forKey: .content)
      if dir.hasValue { try container.encode(dir, forKey: .dir) }
      try container.encode(excerpt, forKey: .excerpt)
      if language.hasValue { try container.encode(language, forKey: .language) }
      try container.encode(length, forKey: .length)
      if previewImage.hasValue { try container.encode(previewImage, forKey: .previewImage) }
      if publishedDate.hasValue { try container.encode(publishedDate, forKey: .publishedDate) }
      if siteIcon.hasValue { try container.encode(siteIcon, forKey: .siteIcon) }
      if siteName.hasValue { try container.encode(siteName, forKey: .siteName) }
      try container.encode(textContent, forKey: .textContent)
      try container.encode(title, forKey: .title)
    }

    enum CodingKeys: String, CodingKey {
      case byline
      case content
      case dir
      case excerpt
      case language
      case length
      case previewImage
      case publishedDate
      case siteIcon
      case siteName
      case textContent
      case title
    }
  }
}

extension InputObjects {
  struct PreparedDocumentInput: Encodable, Hashable {
    var document: String

    var pageInfo: InputObjects.PageInfoInput

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(document, forKey: .document)
      try container.encode(pageInfo, forKey: .pageInfo)
    }

    enum CodingKeys: String, CodingKey {
      case document
      case pageInfo
    }
  }
}

extension InputObjects {
  struct RecommendHighlightsInput: Encodable, Hashable {
    var groupIds: [String]

    var highlightIds: [String]

    var note: OptionalArgument<String> = .absent()

    var pageId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(groupIds, forKey: .groupIds)
      try container.encode(highlightIds, forKey: .highlightIds)
      if note.hasValue { try container.encode(note, forKey: .note) }
      try container.encode(pageId, forKey: .pageId)
    }

    enum CodingKeys: String, CodingKey {
      case groupIds
      case highlightIds
      case note
      case pageId
    }
  }
}

extension InputObjects {
  struct RecommendInput: Encodable, Hashable {
    var groupIds: [String]

    var note: OptionalArgument<String> = .absent()

    var pageId: String

    var recommendedWithHighlights: OptionalArgument<Bool> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(groupIds, forKey: .groupIds)
      if note.hasValue { try container.encode(note, forKey: .note) }
      try container.encode(pageId, forKey: .pageId)
      if recommendedWithHighlights.hasValue { try container.encode(recommendedWithHighlights, forKey: .recommendedWithHighlights) }
    }

    enum CodingKeys: String, CodingKey {
      case groupIds
      case note
      case pageId
      case recommendedWithHighlights
    }
  }
}

extension InputObjects {
  struct ReportItemInput: Encodable, Hashable {
    var itemUrl: String

    var pageId: String

    var reportComment: String

    var reportTypes: [Enums.ReportType]

    var sharedBy: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(itemUrl, forKey: .itemUrl)
      try container.encode(pageId, forKey: .pageId)
      try container.encode(reportComment, forKey: .reportComment)
      try container.encode(reportTypes, forKey: .reportTypes)
      if sharedBy.hasValue { try container.encode(sharedBy, forKey: .sharedBy) }
    }

    enum CodingKeys: String, CodingKey {
      case itemUrl
      case pageId
      case reportComment
      case reportTypes
      case sharedBy
    }
  }
}

extension InputObjects {
  struct RuleActionInput: Encodable, Hashable {
    var params: [String]

    var type: Enums.RuleActionType

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(params, forKey: .params)
      try container.encode(type, forKey: .type)
    }

    enum CodingKeys: String, CodingKey {
      case params
      case type
    }
  }
}

extension InputObjects {
  struct SaveArticleReadingProgressInput: Encodable, Hashable {
    var force: OptionalArgument<Bool> = .absent()

    var id: String

    var readingProgressAnchorIndex: OptionalArgument<Int> = .absent()

    var readingProgressPercent: Double

    var readingProgressTopPercent: OptionalArgument<Double> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if force.hasValue { try container.encode(force, forKey: .force) }
      try container.encode(id, forKey: .id)
      if readingProgressAnchorIndex.hasValue { try container.encode(readingProgressAnchorIndex, forKey: .readingProgressAnchorIndex) }
      try container.encode(readingProgressPercent, forKey: .readingProgressPercent)
      if readingProgressTopPercent.hasValue { try container.encode(readingProgressTopPercent, forKey: .readingProgressTopPercent) }
    }

    enum CodingKeys: String, CodingKey {
      case force
      case id
      case readingProgressAnchorIndex
      case readingProgressPercent
      case readingProgressTopPercent
    }
  }
}

extension InputObjects {
  struct SaveFileInput: Encodable, Hashable {
    var clientRequestId: String

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    var source: String

    var state: OptionalArgument<Enums.ArticleSavingRequestStatus> = .absent()

    var uploadFileId: String

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(clientRequestId, forKey: .clientRequestId)
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
      try container.encode(source, forKey: .source)
      if state.hasValue { try container.encode(state, forKey: .state) }
      try container.encode(uploadFileId, forKey: .uploadFileId)
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case clientRequestId
      case labels
      case source
      case state
      case uploadFileId
      case url
    }
  }
}

extension InputObjects {
  struct SaveFilterInput: Encodable, Hashable {
    var category: OptionalArgument<String> = .absent()

    var description: OptionalArgument<String> = .absent()

    var filter: String

    var name: String

    var position: OptionalArgument<Int> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if category.hasValue { try container.encode(category, forKey: .category) }
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(filter, forKey: .filter)
      try container.encode(name, forKey: .name)
      if position.hasValue { try container.encode(position, forKey: .position) }
    }

    enum CodingKeys: String, CodingKey {
      case category
      case description
      case filter
      case name
      case position
    }
  }
}

extension InputObjects {
  struct SavePageInput: Encodable, Hashable {
    var clientRequestId: String

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    var originalContent: String

    var parseResult: OptionalArgument<InputObjects.ParseResult> = .absent()

    var publishedAt: OptionalArgument<DateTime> = .absent()

    var rssFeedUrl: OptionalArgument<String> = .absent()

    var savedAt: OptionalArgument<DateTime> = .absent()

    var source: String

    var state: OptionalArgument<Enums.ArticleSavingRequestStatus> = .absent()

    var title: OptionalArgument<String> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(clientRequestId, forKey: .clientRequestId)
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
      try container.encode(originalContent, forKey: .originalContent)
      if parseResult.hasValue { try container.encode(parseResult, forKey: .parseResult) }
      if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
      if rssFeedUrl.hasValue { try container.encode(rssFeedUrl, forKey: .rssFeedUrl) }
      if savedAt.hasValue { try container.encode(savedAt, forKey: .savedAt) }
      try container.encode(source, forKey: .source)
      if state.hasValue { try container.encode(state, forKey: .state) }
      if title.hasValue { try container.encode(title, forKey: .title) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case clientRequestId
      case labels
      case originalContent
      case parseResult
      case publishedAt
      case rssFeedUrl
      case savedAt
      case source
      case state
      case title
      case url
    }
  }
}

extension InputObjects {
  struct SaveUrlInput: Encodable, Hashable {
    var clientRequestId: String

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    var locale: OptionalArgument<String> = .absent()

    var publishedAt: OptionalArgument<DateTime> = .absent()

    var savedAt: OptionalArgument<DateTime> = .absent()

    var source: String

    var state: OptionalArgument<Enums.ArticleSavingRequestStatus> = .absent()

    var timezone: OptionalArgument<String> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(clientRequestId, forKey: .clientRequestId)
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
      if locale.hasValue { try container.encode(locale, forKey: .locale) }
      if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
      if savedAt.hasValue { try container.encode(savedAt, forKey: .savedAt) }
      try container.encode(source, forKey: .source)
      if state.hasValue { try container.encode(state, forKey: .state) }
      if timezone.hasValue { try container.encode(timezone, forKey: .timezone) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case clientRequestId
      case labels
      case locale
      case publishedAt
      case savedAt
      case source
      case state
      case timezone
      case url
    }
  }
}

extension InputObjects {
  struct SetBookmarkArticleInput: Encodable, Hashable {
    var articleId: String

    var bookmark: Bool

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(articleId, forKey: .articleId)
      try container.encode(bookmark, forKey: .bookmark)
    }

    enum CodingKeys: String, CodingKey {
      case articleId = "articleID"
      case bookmark
    }
  }
}

extension InputObjects {
  struct SetDeviceTokenInput: Encodable, Hashable {
    var id: OptionalArgument<String> = .absent()

    var token: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if id.hasValue { try container.encode(id, forKey: .id) }
      if token.hasValue { try container.encode(token, forKey: .token) }
    }

    enum CodingKeys: String, CodingKey {
      case id
      case token
    }
  }
}

extension InputObjects {
  struct SetFollowInput: Encodable, Hashable {
    var follow: Bool

    var userId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(follow, forKey: .follow)
      try container.encode(userId, forKey: .userId)
    }

    enum CodingKeys: String, CodingKey {
      case follow
      case userId
    }
  }
}

extension InputObjects {
  struct SetIntegrationInput: Encodable, Hashable {
    var enabled: Bool

    var id: OptionalArgument<String> = .absent()

    var name: String

    var token: String

    var type: OptionalArgument<Enums.IntegrationType> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(enabled, forKey: .enabled)
      if id.hasValue { try container.encode(id, forKey: .id) }
      try container.encode(name, forKey: .name)
      try container.encode(token, forKey: .token)
      if type.hasValue { try container.encode(type, forKey: .type) }
    }

    enum CodingKeys: String, CodingKey {
      case enabled
      case id
      case name
      case token
      case type
    }
  }
}

extension InputObjects {
  struct SetLabelsForHighlightInput: Encodable, Hashable {
    var highlightId: String

    var labelIds: OptionalArgument<[String]> = .absent()

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(highlightId, forKey: .highlightId)
      if labelIds.hasValue { try container.encode(labelIds, forKey: .labelIds) }
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
    }

    enum CodingKeys: String, CodingKey {
      case highlightId
      case labelIds
      case labels
    }
  }
}

extension InputObjects {
  struct SetLabelsInput: Encodable, Hashable {
    var labelIds: OptionalArgument<[String]> = .absent()

    var labels: OptionalArgument<[InputObjects.CreateLabelInput]> = .absent()

    var pageId: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if labelIds.hasValue { try container.encode(labelIds, forKey: .labelIds) }
      if labels.hasValue { try container.encode(labels, forKey: .labels) }
      try container.encode(pageId, forKey: .pageId)
    }

    enum CodingKeys: String, CodingKey {
      case labelIds
      case labels
      case pageId
    }
  }
}

extension InputObjects {
  struct SetRuleInput: Encodable, Hashable {
    var actions: [InputObjects.RuleActionInput]

    var description: OptionalArgument<String> = .absent()

    var enabled: Bool

    var eventTypes: [Enums.RuleEventType]

    var filter: String

    var id: OptionalArgument<String> = .absent()

    var name: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(actions, forKey: .actions)
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(enabled, forKey: .enabled)
      try container.encode(eventTypes, forKey: .eventTypes)
      try container.encode(filter, forKey: .filter)
      if id.hasValue { try container.encode(id, forKey: .id) }
      try container.encode(name, forKey: .name)
    }

    enum CodingKeys: String, CodingKey {
      case actions
      case description
      case enabled
      case eventTypes
      case filter
      case id
      case name
    }
  }
}

extension InputObjects {
  struct SetShareArticleInput: Encodable, Hashable {
    var articleId: String

    var share: Bool

    var sharedComment: OptionalArgument<String> = .absent()

    var sharedWithHighlights: OptionalArgument<Bool> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(articleId, forKey: .articleId)
      try container.encode(share, forKey: .share)
      if sharedComment.hasValue { try container.encode(sharedComment, forKey: .sharedComment) }
      if sharedWithHighlights.hasValue { try container.encode(sharedWithHighlights, forKey: .sharedWithHighlights) }
    }

    enum CodingKeys: String, CodingKey {
      case articleId = "articleID"
      case share
      case sharedComment
      case sharedWithHighlights
    }
  }
}

extension InputObjects {
  struct SetShareHighlightInput: Encodable, Hashable {
    var id: String

    var share: Bool

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(share, forKey: .share)
    }

    enum CodingKeys: String, CodingKey {
      case id
      case share
    }
  }
}

extension InputObjects {
  struct SetUserPersonalizationInput: Encodable, Hashable {
    var fontFamily: OptionalArgument<String> = .absent()

    var fontSize: OptionalArgument<Int> = .absent()

    var libraryLayoutType: OptionalArgument<String> = .absent()

    var librarySortOrder: OptionalArgument<Enums.SortOrder> = .absent()

    var margin: OptionalArgument<Int> = .absent()

    var speechRate: OptionalArgument<String> = .absent()

    var speechSecondaryVoice: OptionalArgument<String> = .absent()

    var speechVoice: OptionalArgument<String> = .absent()

    var speechVolume: OptionalArgument<String> = .absent()

    var theme: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if fontFamily.hasValue { try container.encode(fontFamily, forKey: .fontFamily) }
      if fontSize.hasValue { try container.encode(fontSize, forKey: .fontSize) }
      if libraryLayoutType.hasValue { try container.encode(libraryLayoutType, forKey: .libraryLayoutType) }
      if librarySortOrder.hasValue { try container.encode(librarySortOrder, forKey: .librarySortOrder) }
      if margin.hasValue { try container.encode(margin, forKey: .margin) }
      if speechRate.hasValue { try container.encode(speechRate, forKey: .speechRate) }
      if speechSecondaryVoice.hasValue { try container.encode(speechSecondaryVoice, forKey: .speechSecondaryVoice) }
      if speechVoice.hasValue { try container.encode(speechVoice, forKey: .speechVoice) }
      if speechVolume.hasValue { try container.encode(speechVolume, forKey: .speechVolume) }
      if theme.hasValue { try container.encode(theme, forKey: .theme) }
    }

    enum CodingKeys: String, CodingKey {
      case fontFamily
      case fontSize
      case libraryLayoutType
      case librarySortOrder
      case margin
      case speechRate
      case speechSecondaryVoice
      case speechVoice
      case speechVolume
      case theme
    }
  }
}

extension InputObjects {
  struct SetWebhookInput: Encodable, Hashable {
    var contentType: OptionalArgument<String> = .absent()

    var enabled: OptionalArgument<Bool> = .absent()

    var eventTypes: [Enums.WebhookEvent]

    var id: OptionalArgument<String> = .absent()

    var method: OptionalArgument<String> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if contentType.hasValue { try container.encode(contentType, forKey: .contentType) }
      if enabled.hasValue { try container.encode(enabled, forKey: .enabled) }
      try container.encode(eventTypes, forKey: .eventTypes)
      if id.hasValue { try container.encode(id, forKey: .id) }
      if method.hasValue { try container.encode(method, forKey: .method) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case contentType
      case enabled
      case eventTypes
      case id
      case method
      case url
    }
  }
}

extension InputObjects {
  struct SortParams: Encodable, Hashable {
    var by: Enums.SortBy

    var order: OptionalArgument<Enums.SortOrder> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(by, forKey: .by)
      if order.hasValue { try container.encode(order, forKey: .order) }
    }

    enum CodingKeys: String, CodingKey {
      case by
      case order
    }
  }
}

extension InputObjects {
  struct SubscribeInput: Encodable, Hashable {
    var subscriptionType: OptionalArgument<Enums.SubscriptionType> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if subscriptionType.hasValue { try container.encode(subscriptionType, forKey: .subscriptionType) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case subscriptionType
      case url
    }
  }
}

extension InputObjects {
  struct UpdateEmailInput: Encodable, Hashable {
    var email: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(email, forKey: .email)
    }

    enum CodingKeys: String, CodingKey {
      case email
    }
  }
}

extension InputObjects {
  struct UpdateFilterInput: Encodable, Hashable {
    var category: OptionalArgument<String> = .absent()

    var description: OptionalArgument<String> = .absent()

    var filter: OptionalArgument<String> = .absent()

    var id: String

    var name: OptionalArgument<String> = .absent()

    var position: OptionalArgument<Int> = .absent()

    var visible: OptionalArgument<Bool> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if category.hasValue { try container.encode(category, forKey: .category) }
      if description.hasValue { try container.encode(description, forKey: .description) }
      if filter.hasValue { try container.encode(filter, forKey: .filter) }
      try container.encode(id, forKey: .id)
      if name.hasValue { try container.encode(name, forKey: .name) }
      if position.hasValue { try container.encode(position, forKey: .position) }
      if visible.hasValue { try container.encode(visible, forKey: .visible) }
    }

    enum CodingKeys: String, CodingKey {
      case category
      case description
      case filter
      case id
      case name
      case position
      case visible
    }
  }
}

extension InputObjects {
  struct UpdateHighlightInput: Encodable, Hashable {
    var annotation: OptionalArgument<String> = .absent()

    var color: OptionalArgument<String> = .absent()

    var highlightId: String

    var html: OptionalArgument<String> = .absent()

    var quote: OptionalArgument<String> = .absent()

    var sharedAt: OptionalArgument<DateTime> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if annotation.hasValue { try container.encode(annotation, forKey: .annotation) }
      if color.hasValue { try container.encode(color, forKey: .color) }
      try container.encode(highlightId, forKey: .highlightId)
      if html.hasValue { try container.encode(html, forKey: .html) }
      if quote.hasValue { try container.encode(quote, forKey: .quote) }
      if sharedAt.hasValue { try container.encode(sharedAt, forKey: .sharedAt) }
    }

    enum CodingKeys: String, CodingKey {
      case annotation
      case color
      case highlightId
      case html
      case quote
      case sharedAt
    }
  }
}

extension InputObjects {
  struct UpdateHighlightReplyInput: Encodable, Hashable {
    var highlightReplyId: String

    var text: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(highlightReplyId, forKey: .highlightReplyId)
      try container.encode(text, forKey: .text)
    }

    enum CodingKeys: String, CodingKey {
      case highlightReplyId
      case text
    }
  }
}

extension InputObjects {
  struct UpdateLabelInput: Encodable, Hashable {
    var color: String

    var description: OptionalArgument<String> = .absent()

    var labelId: String

    var name: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(color, forKey: .color)
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(labelId, forKey: .labelId)
      try container.encode(name, forKey: .name)
    }

    enum CodingKeys: String, CodingKey {
      case color
      case description
      case labelId
      case name
    }
  }
}

extension InputObjects {
  struct UpdateLinkShareInfoInput: Encodable, Hashable {
    var description: String

    var linkId: String

    var title: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(description, forKey: .description)
      try container.encode(linkId, forKey: .linkId)
      try container.encode(title, forKey: .title)
    }

    enum CodingKeys: String, CodingKey {
      case description
      case linkId
      case title
    }
  }
}

extension InputObjects {
  struct UpdatePageInput: Encodable, Hashable {
    var byline: OptionalArgument<String> = .absent()

    var description: OptionalArgument<String> = .absent()

    var pageId: String

    var previewImage: OptionalArgument<String> = .absent()

    var publishedAt: OptionalArgument<DateTime> = .absent()

    var savedAt: OptionalArgument<DateTime> = .absent()

    var state: OptionalArgument<Enums.ArticleSavingRequestStatus> = .absent()

    var title: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if byline.hasValue { try container.encode(byline, forKey: .byline) }
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(pageId, forKey: .pageId)
      if previewImage.hasValue { try container.encode(previewImage, forKey: .previewImage) }
      if publishedAt.hasValue { try container.encode(publishedAt, forKey: .publishedAt) }
      if savedAt.hasValue { try container.encode(savedAt, forKey: .savedAt) }
      if state.hasValue { try container.encode(state, forKey: .state) }
      if title.hasValue { try container.encode(title, forKey: .title) }
    }

    enum CodingKeys: String, CodingKey {
      case byline
      case description
      case pageId
      case previewImage
      case publishedAt
      case savedAt
      case state
      case title
    }
  }
}

extension InputObjects {
  struct UpdateReminderInput: Encodable, Hashable {
    var archiveUntil: Bool

    var id: String

    var remindAt: DateTime

    var sendNotification: Bool

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(archiveUntil, forKey: .archiveUntil)
      try container.encode(id, forKey: .id)
      try container.encode(remindAt, forKey: .remindAt)
      try container.encode(sendNotification, forKey: .sendNotification)
    }

    enum CodingKeys: String, CodingKey {
      case archiveUntil
      case id
      case remindAt
      case sendNotification
    }
  }
}

extension InputObjects {
  struct UpdateSharedCommentInput: Encodable, Hashable {
    var articleId: String

    var sharedComment: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(articleId, forKey: .articleId)
      try container.encode(sharedComment, forKey: .sharedComment)
    }

    enum CodingKeys: String, CodingKey {
      case articleId = "articleID"
      case sharedComment
    }
  }
}

extension InputObjects {
  struct UpdateSubscriptionInput: Encodable, Hashable {
    var description: OptionalArgument<String> = .absent()

    var id: String

    var lastFetchedAt: OptionalArgument<DateTime> = .absent()

    var lastFetchedChecksum: OptionalArgument<String> = .absent()

    var name: OptionalArgument<String> = .absent()

    var scheduledAt: OptionalArgument<DateTime> = .absent()

    var status: OptionalArgument<Enums.SubscriptionStatus> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if description.hasValue { try container.encode(description, forKey: .description) }
      try container.encode(id, forKey: .id)
      if lastFetchedAt.hasValue { try container.encode(lastFetchedAt, forKey: .lastFetchedAt) }
      if lastFetchedChecksum.hasValue { try container.encode(lastFetchedChecksum, forKey: .lastFetchedChecksum) }
      if name.hasValue { try container.encode(name, forKey: .name) }
      if scheduledAt.hasValue { try container.encode(scheduledAt, forKey: .scheduledAt) }
      if status.hasValue { try container.encode(status, forKey: .status) }
    }

    enum CodingKeys: String, CodingKey {
      case description
      case id
      case lastFetchedAt
      case lastFetchedChecksum
      case name
      case scheduledAt
      case status
    }
  }
}

extension InputObjects {
  struct UpdateUserInput: Encodable, Hashable {
    var bio: OptionalArgument<String> = .absent()

    var name: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if bio.hasValue { try container.encode(bio, forKey: .bio) }
      try container.encode(name, forKey: .name)
    }

    enum CodingKeys: String, CodingKey {
      case bio
      case name
    }
  }
}

extension InputObjects {
  struct UpdateUserProfileInput: Encodable, Hashable {
    var bio: OptionalArgument<String> = .absent()

    var pictureUrl: OptionalArgument<String> = .absent()

    var userId: String

    var username: OptionalArgument<String> = .absent()

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if bio.hasValue { try container.encode(bio, forKey: .bio) }
      if pictureUrl.hasValue { try container.encode(pictureUrl, forKey: .pictureUrl) }
      try container.encode(userId, forKey: .userId)
      if username.hasValue { try container.encode(username, forKey: .username) }
    }

    enum CodingKeys: String, CodingKey {
      case bio
      case pictureUrl
      case userId
      case username
    }
  }
}

extension InputObjects {
  struct UploadFileRequestInput: Encodable, Hashable {
    var clientRequestId: OptionalArgument<String> = .absent()

    var contentType: String

    var createPageEntry: OptionalArgument<Bool> = .absent()

    var url: String

    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if clientRequestId.hasValue { try container.encode(clientRequestId, forKey: .clientRequestId) }
      try container.encode(contentType, forKey: .contentType)
      if createPageEntry.hasValue { try container.encode(createPageEntry, forKey: .createPageEntry) }
      try container.encode(url, forKey: .url)
    }

    enum CodingKeys: String, CodingKey {
      case clientRequestId
      case contentType
      case createPageEntry
      case url
    }
  }
}
