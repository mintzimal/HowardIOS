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

public struct CreateDataEnvInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Int, newscount: String, appcount: String, roadmap: String) {
    graphQLMap = ["id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap]
  }

  public var id: Int {
    get {
      return graphQLMap["id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var newscount: String {
    get {
      return graphQLMap["newscount"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "newscount")
    }
  }

  public var appcount: String {
    get {
      return graphQLMap["appcount"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appcount")
    }
  }

  public var roadmap: String {
    get {
      return graphQLMap["roadmap"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roadmap")
    }
  }
}

public struct UpdateDataEnvInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Int, newscount: String? = nil, appcount: String? = nil, roadmap: String? = nil) {
    graphQLMap = ["id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap]
  }

  public var id: Int {
    get {
      return graphQLMap["id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var newscount: String? {
    get {
      return graphQLMap["newscount"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "newscount")
    }
  }

  public var appcount: String? {
    get {
      return graphQLMap["appcount"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appcount")
    }
  }

  public var roadmap: String? {
    get {
      return graphQLMap["roadmap"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roadmap")
    }
  }
}

public struct DeleteDataEnvInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Int) {
    graphQLMap = ["id": id]
  }

  public var id: Int {
    get {
      return graphQLMap["id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
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

public struct TableDataEnvFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIntFilterInput? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: TableIntFilterInput? {
    get {
      return graphQLMap["id"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
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

public final class CreateDataEnvMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateDataEnv($input: CreateDataEnvInput!) {\n  createDataEnv(input: $input) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var input: CreateDataEnvInput

  public init(input: CreateDataEnvInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createDataEnv", arguments: ["input": GraphQLVariable("input")], type: .object(CreateDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createDataEnv: CreateDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createDataEnv": createDataEnv.flatMap { $0.snapshot }])
    }

    public var createDataEnv: CreateDataEnv? {
      get {
        return (snapshot["createDataEnv"] as? Snapshot).flatMap { CreateDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createDataEnv")
      }
    }

    public struct CreateDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}

public final class UpdateDataEnvMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateDataEnv($input: UpdateDataEnvInput!) {\n  updateDataEnv(input: $input) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var input: UpdateDataEnvInput

  public init(input: UpdateDataEnvInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateDataEnv", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateDataEnv: UpdateDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateDataEnv": updateDataEnv.flatMap { $0.snapshot }])
    }

    public var updateDataEnv: UpdateDataEnv? {
      get {
        return (snapshot["updateDataEnv"] as? Snapshot).flatMap { UpdateDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateDataEnv")
      }
    }

    public struct UpdateDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}

public final class DeleteDataEnvMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteDataEnv($input: DeleteDataEnvInput!) {\n  deleteDataEnv(input: $input) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var input: DeleteDataEnvInput

  public init(input: DeleteDataEnvInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteDataEnv", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteDataEnv: DeleteDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteDataEnv": deleteDataEnv.flatMap { $0.snapshot }])
    }

    public var deleteDataEnv: DeleteDataEnv? {
      get {
        return (snapshot["deleteDataEnv"] as? Snapshot).flatMap { DeleteDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteDataEnv")
      }
    }

    public struct DeleteDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
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

public final class GetDataEnvQuery: GraphQLQuery {
  public static let operationString =
    "query GetDataEnv($id: Int!) {\n  getDataEnv(id: $id) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getDataEnv", arguments: ["id": GraphQLVariable("id")], type: .object(GetDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getDataEnv: GetDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Query", "getDataEnv": getDataEnv.flatMap { $0.snapshot }])
    }

    public var getDataEnv: GetDataEnv? {
      get {
        return (snapshot["getDataEnv"] as? Snapshot).flatMap { GetDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getDataEnv")
      }
    }

    public struct GetDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}

public final class ListDataEnvsQuery: GraphQLQuery {
  public static let operationString =
    "query ListDataEnvs($filter: TableDataEnvFilterInput, $limit: Int, $nextToken: String) {\n  listDataEnvs(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      newscount\n      appcount\n      roadmap\n    }\n    nextToken\n  }\n}"

  public var filter: TableDataEnvFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableDataEnvFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listDataEnvs", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listDataEnvs: ListDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Query", "listDataEnvs": listDataEnvs.flatMap { $0.snapshot }])
    }

    public var listDataEnvs: ListDataEnv? {
      get {
        return (snapshot["listDataEnvs"] as? Snapshot).flatMap { ListDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listDataEnvs")
      }
    }

    public struct ListDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnvConnection"]

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
        self.init(snapshot: ["__typename": "DataEnvConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["DataEnv"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
          GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
          GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: Int, newscount: String, appcount: String, roadmap: String) {
          self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return snapshot["id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var newscount: String {
          get {
            return snapshot["newscount"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "newscount")
          }
        }

        public var appcount: String {
          get {
            return snapshot["appcount"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "appcount")
          }
        }

        public var roadmap: String {
          get {
            return snapshot["roadmap"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "roadmap")
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

public final class OnCreateDataEnvSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateDataEnv($id: Int, $newscount: AWSJSON, $appcount: AWSJSON, $roadmap: AWSJSON) {\n  onCreateDataEnv(id: $id, newscount: $newscount, appcount: $appcount, roadmap: $roadmap) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var id: Int?
  public var newscount: String?
  public var appcount: String?
  public var roadmap: String?

  public init(id: Int? = nil, newscount: String? = nil, appcount: String? = nil, roadmap: String? = nil) {
    self.id = id
    self.newscount = newscount
    self.appcount = appcount
    self.roadmap = roadmap
  }

  public var variables: GraphQLMap? {
    return ["id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateDataEnv", arguments: ["id": GraphQLVariable("id"), "newscount": GraphQLVariable("newscount"), "appcount": GraphQLVariable("appcount"), "roadmap": GraphQLVariable("roadmap")], type: .object(OnCreateDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateDataEnv: OnCreateDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateDataEnv": onCreateDataEnv.flatMap { $0.snapshot }])
    }

    public var onCreateDataEnv: OnCreateDataEnv? {
      get {
        return (snapshot["onCreateDataEnv"] as? Snapshot).flatMap { OnCreateDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateDataEnv")
      }
    }

    public struct OnCreateDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}

public final class OnUpdateDataEnvSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateDataEnv($id: Int, $newscount: AWSJSON, $appcount: AWSJSON, $roadmap: AWSJSON) {\n  onUpdateDataEnv(id: $id, newscount: $newscount, appcount: $appcount, roadmap: $roadmap) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var id: Int?
  public var newscount: String?
  public var appcount: String?
  public var roadmap: String?

  public init(id: Int? = nil, newscount: String? = nil, appcount: String? = nil, roadmap: String? = nil) {
    self.id = id
    self.newscount = newscount
    self.appcount = appcount
    self.roadmap = roadmap
  }

  public var variables: GraphQLMap? {
    return ["id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateDataEnv", arguments: ["id": GraphQLVariable("id"), "newscount": GraphQLVariable("newscount"), "appcount": GraphQLVariable("appcount"), "roadmap": GraphQLVariable("roadmap")], type: .object(OnUpdateDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateDataEnv: OnUpdateDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateDataEnv": onUpdateDataEnv.flatMap { $0.snapshot }])
    }

    public var onUpdateDataEnv: OnUpdateDataEnv? {
      get {
        return (snapshot["onUpdateDataEnv"] as? Snapshot).flatMap { OnUpdateDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateDataEnv")
      }
    }

    public struct OnUpdateDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}

public final class OnDeleteDataEnvSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteDataEnv($id: Int, $newscount: AWSJSON, $appcount: AWSJSON, $roadmap: AWSJSON) {\n  onDeleteDataEnv(id: $id, newscount: $newscount, appcount: $appcount, roadmap: $roadmap) {\n    __typename\n    id\n    newscount\n    appcount\n    roadmap\n  }\n}"

  public var id: Int?
  public var newscount: String?
  public var appcount: String?
  public var roadmap: String?

  public init(id: Int? = nil, newscount: String? = nil, appcount: String? = nil, roadmap: String? = nil) {
    self.id = id
    self.newscount = newscount
    self.appcount = appcount
    self.roadmap = roadmap
  }

  public var variables: GraphQLMap? {
    return ["id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteDataEnv", arguments: ["id": GraphQLVariable("id"), "newscount": GraphQLVariable("newscount"), "appcount": GraphQLVariable("appcount"), "roadmap": GraphQLVariable("roadmap")], type: .object(OnDeleteDataEnv.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteDataEnv: OnDeleteDataEnv? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteDataEnv": onDeleteDataEnv.flatMap { $0.snapshot }])
    }

    public var onDeleteDataEnv: OnDeleteDataEnv? {
      get {
        return (snapshot["onDeleteDataEnv"] as? Snapshot).flatMap { OnDeleteDataEnv(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteDataEnv")
      }
    }

    public struct OnDeleteDataEnv: GraphQLSelectionSet {
      public static let possibleTypes = ["DataEnv"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("newscount", type: .nonNull(.scalar(String.self))),
        GraphQLField("appcount", type: .nonNull(.scalar(String.self))),
        GraphQLField("roadmap", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int, newscount: String, appcount: String, roadmap: String) {
        self.init(snapshot: ["__typename": "DataEnv", "id": id, "newscount": newscount, "appcount": appcount, "roadmap": roadmap])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return snapshot["id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var newscount: String {
        get {
          return snapshot["newscount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "newscount")
        }
      }

      public var appcount: String {
        get {
          return snapshot["appcount"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "appcount")
        }
      }

      public var roadmap: String {
        get {
          return snapshot["roadmap"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roadmap")
        }
      }
    }
  }
}