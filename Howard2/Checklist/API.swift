//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateConversationsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
    graphQLMap = ["ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate]
  }

  public var conversationId: Int {
    get {
      return graphQLMap["ConversationID"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ConversationID")
    }
  }

  public var caseManagerId: GraphQLID {
    get {
      return graphQLMap["CaseManagerID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CaseManagerID")
    }
  }

  public var clientId: GraphQLID {
    get {
      return graphQLMap["ClientID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ClientID")
    }
  }

  public var messages: String {
    get {
      return graphQLMap["Messages"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Messages")
    }
  }

  public var nickname: String {
    get {
      return graphQLMap["Nickname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Nickname")
    }
  }

  public var lastUpdate: String {
    get {
      return graphQLMap["LastUpdate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastUpdate")
    }
  }
}

public struct UpdateConversationsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(conversationId: Int, caseManagerId: GraphQLID? = nil, clientId: GraphQLID? = nil, messages: String? = nil, nickname: String? = nil, lastUpdate: String? = nil) {
    graphQLMap = ["ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate]
  }

  public var conversationId: Int {
    get {
      return graphQLMap["ConversationID"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ConversationID")
    }
  }

  public var caseManagerId: GraphQLID? {
    get {
      return graphQLMap["CaseManagerID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CaseManagerID")
    }
  }

  public var clientId: GraphQLID? {
    get {
      return graphQLMap["ClientID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ClientID")
    }
  }

  public var messages: String? {
    get {
      return graphQLMap["Messages"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Messages")
    }
  }

  public var nickname: String? {
    get {
      return graphQLMap["Nickname"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Nickname")
    }
  }

  public var lastUpdate: String? {
    get {
      return graphQLMap["LastUpdate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastUpdate")
    }
  }
}

public struct DeleteConversationsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(conversationId: Int) {
    graphQLMap = ["ConversationID": conversationId]
  }

  public var conversationId: Int {
    get {
      return graphQLMap["ConversationID"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ConversationID")
    }
  }
}

public struct TableConversationsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(conversationId: TableIntFilterInput? = nil, caseManagerId: TableIDFilterInput? = nil, clientId: TableIDFilterInput? = nil, nickname: TableStringFilterInput? = nil, lastUpdate: TableStringFilterInput? = nil) {
    graphQLMap = ["ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Nickname": nickname, "LastUpdate": lastUpdate]
  }

  public var conversationId: TableIntFilterInput? {
    get {
      return graphQLMap["ConversationID"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ConversationID")
    }
  }

  public var caseManagerId: TableIDFilterInput? {
    get {
      return graphQLMap["CaseManagerID"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CaseManagerID")
    }
  }

  public var clientId: TableIDFilterInput? {
    get {
      return graphQLMap["ClientID"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ClientID")
    }
  }

  public var nickname: TableStringFilterInput? {
    get {
      return graphQLMap["Nickname"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Nickname")
    }
  }

  public var lastUpdate: TableStringFilterInput? {
    get {
      return graphQLMap["LastUpdate"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastUpdate")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreateConversationsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateConversations($input: CreateConversationsInput!) {\n  createConversations(input: $input) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var input: CreateConversationsInput

  public init(input: CreateConversationsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createConversations", arguments: ["input": GraphQLVariable("input")], type: .object(CreateConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createConversations: CreateConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createConversations": createConversations.flatMap { $0.snapshot }])
    }

    public var createConversations: CreateConversation? {
      get {
        return (snapshot["createConversations"] as? Snapshot).flatMap { CreateConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createConversations")
      }
    }

    public struct CreateConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class UpdateConversationsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateConversations($input: UpdateConversationsInput!) {\n  updateConversations(input: $input) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var input: UpdateConversationsInput

  public init(input: UpdateConversationsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateConversations", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateConversations: UpdateConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateConversations": updateConversations.flatMap { $0.snapshot }])
    }

    public var updateConversations: UpdateConversation? {
      get {
        return (snapshot["updateConversations"] as? Snapshot).flatMap { UpdateConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateConversations")
      }
    }

    public struct UpdateConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class DeleteConversationsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteConversations($input: DeleteConversationsInput!) {\n  deleteConversations(input: $input) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var input: DeleteConversationsInput

  public init(input: DeleteConversationsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteConversations", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteConversations: DeleteConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteConversations": deleteConversations.flatMap { $0.snapshot }])
    }

    public var deleteConversations: DeleteConversation? {
      get {
        return (snapshot["deleteConversations"] as? Snapshot).flatMap { DeleteConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteConversations")
      }
    }

    public struct DeleteConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class GetConversationsQuery: GraphQLQuery {
  public static let operationString =
    "query GetConversations($ConversationID: Int!) {\n  getConversations(ConversationID: $ConversationID) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var ConversationID: Int

  public init(ConversationID: Int) {
    self.ConversationID = ConversationID
  }

  public var variables: GraphQLMap? {
    return ["ConversationID": ConversationID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getConversations", arguments: ["ConversationID": GraphQLVariable("ConversationID")], type: .object(GetConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getConversations: GetConversation? = nil) {
      self.init(snapshot: ["__typename": "Query", "getConversations": getConversations.flatMap { $0.snapshot }])
    }

    public var getConversations: GetConversation? {
      get {
        return (snapshot["getConversations"] as? Snapshot).flatMap { GetConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getConversations")
      }
    }

    public struct GetConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class ListConversationsQuery: GraphQLQuery {
  public static let operationString =
    "query ListConversations($filter: TableConversationsFilterInput, $limit: Int, $nextToken: String) {\n  listConversations(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ConversationID\n      CaseManagerID\n      ClientID\n      Messages\n      Nickname\n      LastUpdate\n    }\n    nextToken\n  }\n}"

  public var filter: TableConversationsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableConversationsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listConversations", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listConversations: ListConversation? = nil) {
      self.init(snapshot: ["__typename": "Query", "listConversations": listConversations.flatMap { $0.snapshot }])
    }

    public var listConversations: ListConversation? {
      get {
        return (snapshot["listConversations"] as? Snapshot).flatMap { ListConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listConversations")
      }
    }

    public struct ListConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["ConversationsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ConversationsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversations"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
          GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
          GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
          GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
          self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var conversationId: Int {
          get {
            return snapshot["ConversationID"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "ConversationID")
          }
        }

        public var caseManagerId: GraphQLID {
          get {
            return snapshot["CaseManagerID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "CaseManagerID")
          }
        }

        public var clientId: GraphQLID {
          get {
            return snapshot["ClientID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "ClientID")
          }
        }

        public var messages: String {
          get {
            return snapshot["Messages"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Messages")
          }
        }

        public var nickname: String {
          get {
            return snapshot["Nickname"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Nickname")
          }
        }

        public var lastUpdate: String {
          get {
            return snapshot["LastUpdate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastUpdate")
          }
        }
      }
    }
  }
}

public final class OnCreateConversationsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateConversations($ConversationID: Int, $CaseManagerID: ID, $ClientID: ID, $Messages: AWSJSON, $Nickname: String) {\n  onCreateConversations(ConversationID: $ConversationID, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Messages: $Messages, Nickname: $Nickname) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var ConversationID: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Messages: String?
  public var Nickname: String?

  public init(ConversationID: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Messages: String? = nil, Nickname: String? = nil) {
    self.ConversationID = ConversationID
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Messages = Messages
    self.Nickname = Nickname
  }

  public var variables: GraphQLMap? {
    return ["ConversationID": ConversationID, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Messages": Messages, "Nickname": Nickname]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateConversations", arguments: ["ConversationID": GraphQLVariable("ConversationID"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Messages": GraphQLVariable("Messages"), "Nickname": GraphQLVariable("Nickname")], type: .object(OnCreateConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateConversations: OnCreateConversation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateConversations": onCreateConversations.flatMap { $0.snapshot }])
    }

    public var onCreateConversations: OnCreateConversation? {
      get {
        return (snapshot["onCreateConversations"] as? Snapshot).flatMap { OnCreateConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateConversations")
      }
    }

    public struct OnCreateConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class OnUpdateConversationsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateConversations($ConversationID: Int, $CaseManagerID: ID, $ClientID: ID, $Messages: AWSJSON, $Nickname: String) {\n  onUpdateConversations(ConversationID: $ConversationID, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Messages: $Messages, Nickname: $Nickname) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var ConversationID: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Messages: String?
  public var Nickname: String?

  public init(ConversationID: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Messages: String? = nil, Nickname: String? = nil) {
    self.ConversationID = ConversationID
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Messages = Messages
    self.Nickname = Nickname
  }

  public var variables: GraphQLMap? {
    return ["ConversationID": ConversationID, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Messages": Messages, "Nickname": Nickname]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateConversations", arguments: ["ConversationID": GraphQLVariable("ConversationID"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Messages": GraphQLVariable("Messages"), "Nickname": GraphQLVariable("Nickname")], type: .object(OnUpdateConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateConversations: OnUpdateConversation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateConversations": onUpdateConversations.flatMap { $0.snapshot }])
    }

    public var onUpdateConversations: OnUpdateConversation? {
      get {
        return (snapshot["onUpdateConversations"] as? Snapshot).flatMap { OnUpdateConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateConversations")
      }
    }

    public struct OnUpdateConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}

public final class OnDeleteConversationsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteConversations($ConversationID: Int, $CaseManagerID: ID, $ClientID: ID, $Messages: AWSJSON, $Nickname: String) {\n  onDeleteConversations(ConversationID: $ConversationID, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Messages: $Messages, Nickname: $Nickname) {\n    __typename\n    ConversationID\n    CaseManagerID\n    ClientID\n    Messages\n    Nickname\n    LastUpdate\n  }\n}"

  public var ConversationID: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Messages: String?
  public var Nickname: String?

  public init(ConversationID: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Messages: String? = nil, Nickname: String? = nil) {
    self.ConversationID = ConversationID
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Messages = Messages
    self.Nickname = Nickname
  }

  public var variables: GraphQLMap? {
    return ["ConversationID": ConversationID, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Messages": Messages, "Nickname": Nickname]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteConversations", arguments: ["ConversationID": GraphQLVariable("ConversationID"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Messages": GraphQLVariable("Messages"), "Nickname": GraphQLVariable("Nickname")], type: .object(OnDeleteConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteConversations: OnDeleteConversation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteConversations": onDeleteConversations.flatMap { $0.snapshot }])
    }

    public var onDeleteConversations: OnDeleteConversation? {
      get {
        return (snapshot["onDeleteConversations"] as? Snapshot).flatMap { OnDeleteConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteConversations")
      }
    }

    public struct OnDeleteConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ConversationID", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Messages", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        GraphQLField("LastUpdate", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, caseManagerId: GraphQLID, clientId: GraphQLID, messages: String, nickname: String, lastUpdate: String) {
        self.init(snapshot: ["__typename": "Conversations", "ConversationID": conversationId, "CaseManagerID": caseManagerId, "ClientID": clientId, "Messages": messages, "Nickname": nickname, "LastUpdate": lastUpdate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["ConversationID"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ConversationID")
        }
      }

      public var caseManagerId: GraphQLID {
        get {
          return snapshot["CaseManagerID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "CaseManagerID")
        }
      }

      public var clientId: GraphQLID {
        get {
          return snapshot["ClientID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "ClientID")
        }
      }

      public var messages: String {
        get {
          return snapshot["Messages"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Messages")
        }
      }

      public var nickname: String {
        get {
          return snapshot["Nickname"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Nickname")
        }
      }

      public var lastUpdate: String {
        get {
          return snapshot["LastUpdate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastUpdate")
        }
      }
    }
  }
}