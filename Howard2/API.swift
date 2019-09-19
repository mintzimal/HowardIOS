//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMessagesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
    graphQLMap = ["MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname]
  }

  public var messageNum: Int {
    get {
      return graphQLMap["MessageNum"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MessageNum")
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

  public var contents: String {
    get {
      return graphQLMap["Contents"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Contents")
    }
  }

  public var sent: String {
    get {
      return graphQLMap["Sent"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Sent")
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
}

public struct UpdateMessagesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(messageNum: Int, caseManagerId: GraphQLID? = nil, clientId: GraphQLID? = nil, contents: String? = nil, sent: String? = nil, nickname: String? = nil) {
    graphQLMap = ["MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname]
  }

  public var messageNum: Int {
    get {
      return graphQLMap["MessageNum"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MessageNum")
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

  public var contents: String? {
    get {
      return graphQLMap["Contents"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Contents")
    }
  }

  public var sent: String? {
    get {
      return graphQLMap["Sent"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Sent")
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
}

public struct DeleteMessagesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(messageNum: Int) {
    graphQLMap = ["MessageNum": messageNum]
  }

  public var messageNum: Int {
    get {
      return graphQLMap["MessageNum"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MessageNum")
    }
  }
}

public struct TableMessagesFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(messageNum: TableIntFilterInput? = nil, caseManagerId: TableIDFilterInput? = nil, clientId: TableIDFilterInput? = nil, contents: TableStringFilterInput? = nil, sent: TableStringFilterInput? = nil, nickname: TableStringFilterInput? = nil) {
    graphQLMap = ["MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname]
  }

  public var messageNum: TableIntFilterInput? {
    get {
      return graphQLMap["MessageNum"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MessageNum")
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

  public var contents: TableStringFilterInput? {
    get {
      return graphQLMap["Contents"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Contents")
    }
  }

  public var sent: TableStringFilterInput? {
    get {
      return graphQLMap["Sent"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Sent")
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

public final class CreateMessagesMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessages($input: CreateMessagesInput!) {\n  createMessages(input: $input) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var input: CreateMessagesInput

  public init(input: CreateMessagesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessages", arguments: ["input": GraphQLVariable("input")], type: .object(CreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessages: CreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessages": createMessages.flatMap { $0.snapshot }])
    }

    public var createMessages: CreateMessage? {
      get {
        return (snapshot["createMessages"] as? Snapshot).flatMap { CreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessages")
      }
    }

    public struct CreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class UpdateMessagesMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessages($input: UpdateMessagesInput!) {\n  updateMessages(input: $input) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var input: UpdateMessagesInput

  public init(input: UpdateMessagesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessages", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessages: UpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessages": updateMessages.flatMap { $0.snapshot }])
    }

    public var updateMessages: UpdateMessage? {
      get {
        return (snapshot["updateMessages"] as? Snapshot).flatMap { UpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessages")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class DeleteMessagesMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessages($input: DeleteMessagesInput!) {\n  deleteMessages(input: $input) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var input: DeleteMessagesInput

  public init(input: DeleteMessagesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessages", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessages: DeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessages": deleteMessages.flatMap { $0.snapshot }])
    }

    public var deleteMessages: DeleteMessage? {
      get {
        return (snapshot["deleteMessages"] as? Snapshot).flatMap { DeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessages")
      }
    }

    public struct DeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class GetMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessages($MessageNum: Int!) {\n  getMessages(MessageNum: $MessageNum) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var MessageNum: Int

  public init(MessageNum: Int) {
    self.MessageNum = MessageNum
  }

  public var variables: GraphQLMap? {
    return ["MessageNum": MessageNum]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessages", arguments: ["MessageNum": GraphQLVariable("MessageNum")], type: .object(GetMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessages: GetMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessages": getMessages.flatMap { $0.snapshot }])
    }

    public var getMessages: GetMessage? {
      get {
        return (snapshot["getMessages"] as? Snapshot).flatMap { GetMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessages")
      }
    }

    public struct GetMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class GetMessagesByIdQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessagesById($ClientID: ID!) {\n  getMessagesByID(ClientID: $ClientID) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var ClientID: GraphQLID

  public init(ClientID: GraphQLID) {
    self.ClientID = ClientID
  }

  public var variables: GraphQLMap? {
    return ["ClientID": ClientID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessagesByID", arguments: ["ClientID": GraphQLVariable("ClientID")], type: .object(GetMessagesById.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessagesById: GetMessagesById? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessagesByID": getMessagesById.flatMap { $0.snapshot }])
    }

    public var getMessagesById: GetMessagesById? {
      get {
        return (snapshot["getMessagesByID"] as? Snapshot).flatMap { GetMessagesById(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessagesByID")
      }
    }

    public struct GetMessagesById: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class ListMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMessages($filter: TableMessagesFilterInput, $limit: Int, $nextToken: String) {\n  listMessages(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      MessageNum\n      CaseManagerID\n      ClientID\n      Contents\n      Sent\n      Nickname\n    }\n    nextToken\n  }\n}"

  public var filter: TableMessagesFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableMessagesFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listMessages", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMessages: ListMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMessages": listMessages.flatMap { $0.snapshot }])
    }

    public var listMessages: ListMessage? {
      get {
        return (snapshot["listMessages"] as? Snapshot).flatMap { ListMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMessages")
      }
    }

    public struct ListMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["MessagesConnection"]

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
        self.init(snapshot: ["__typename": "MessagesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["Messages"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
          GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
          GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
          GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
          self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var messageNum: Int {
          get {
            return snapshot["MessageNum"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "MessageNum")
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

        public var contents: String {
          get {
            return snapshot["Contents"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Contents")
          }
        }

        public var sent: String {
          get {
            return snapshot["Sent"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Sent")
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
      }
    }
  }
}

public final class OnCreateMessagesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMessages($MessageNum: Int, $CaseManagerID: ID, $ClientID: ID, $Contents: String, $Sent: AWSDateTime) {\n  onCreateMessages(MessageNum: $MessageNum, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Contents: $Contents, Sent: $Sent) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var MessageNum: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Contents: String?
  public var Sent: String?

  public init(MessageNum: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Contents: String? = nil, Sent: String? = nil) {
    self.MessageNum = MessageNum
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Contents = Contents
    self.Sent = Sent
  }

  public var variables: GraphQLMap? {
    return ["MessageNum": MessageNum, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Contents": Contents, "Sent": Sent]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMessages", arguments: ["MessageNum": GraphQLVariable("MessageNum"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Contents": GraphQLVariable("Contents"), "Sent": GraphQLVariable("Sent")], type: .object(OnCreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMessages: OnCreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMessages": onCreateMessages.flatMap { $0.snapshot }])
    }

    public var onCreateMessages: OnCreateMessage? {
      get {
        return (snapshot["onCreateMessages"] as? Snapshot).flatMap { OnCreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMessages")
      }
    }

    public struct OnCreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class OnUpdateMessagesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMessages($MessageNum: Int, $CaseManagerID: ID, $ClientID: ID, $Contents: String, $Sent: AWSDateTime) {\n  onUpdateMessages(MessageNum: $MessageNum, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Contents: $Contents, Sent: $Sent) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var MessageNum: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Contents: String?
  public var Sent: String?

  public init(MessageNum: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Contents: String? = nil, Sent: String? = nil) {
    self.MessageNum = MessageNum
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Contents = Contents
    self.Sent = Sent
  }

  public var variables: GraphQLMap? {
    return ["MessageNum": MessageNum, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Contents": Contents, "Sent": Sent]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMessages", arguments: ["MessageNum": GraphQLVariable("MessageNum"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Contents": GraphQLVariable("Contents"), "Sent": GraphQLVariable("Sent")], type: .object(OnUpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMessages: OnUpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMessages": onUpdateMessages.flatMap { $0.snapshot }])
    }

    public var onUpdateMessages: OnUpdateMessage? {
      get {
        return (snapshot["onUpdateMessages"] as? Snapshot).flatMap { OnUpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMessages")
      }
    }

    public struct OnUpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}

public final class OnDeleteMessagesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMessages($MessageNum: Int, $CaseManagerID: ID, $ClientID: ID, $Contents: String, $Sent: AWSDateTime) {\n  onDeleteMessages(MessageNum: $MessageNum, CaseManagerID: $CaseManagerID, ClientID: $ClientID, Contents: $Contents, Sent: $Sent) {\n    __typename\n    MessageNum\n    CaseManagerID\n    ClientID\n    Contents\n    Sent\n    Nickname\n  }\n}"

  public var MessageNum: Int?
  public var CaseManagerID: GraphQLID?
  public var ClientID: GraphQLID?
  public var Contents: String?
  public var Sent: String?

  public init(MessageNum: Int? = nil, CaseManagerID: GraphQLID? = nil, ClientID: GraphQLID? = nil, Contents: String? = nil, Sent: String? = nil) {
    self.MessageNum = MessageNum
    self.CaseManagerID = CaseManagerID
    self.ClientID = ClientID
    self.Contents = Contents
    self.Sent = Sent
  }

  public var variables: GraphQLMap? {
    return ["MessageNum": MessageNum, "CaseManagerID": CaseManagerID, "ClientID": ClientID, "Contents": Contents, "Sent": Sent]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMessages", arguments: ["MessageNum": GraphQLVariable("MessageNum"), "CaseManagerID": GraphQLVariable("CaseManagerID"), "ClientID": GraphQLVariable("ClientID"), "Contents": GraphQLVariable("Contents"), "Sent": GraphQLVariable("Sent")], type: .object(OnDeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMessages: OnDeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMessages": onDeleteMessages.flatMap { $0.snapshot }])
    }

    public var onDeleteMessages: OnDeleteMessage? {
      get {
        return (snapshot["onDeleteMessages"] as? Snapshot).flatMap { OnDeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMessages")
      }
    }

    public struct OnDeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Messages"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("MessageNum", type: .nonNull(.scalar(Int.self))),
        GraphQLField("CaseManagerID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ClientID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("Contents", type: .nonNull(.scalar(String.self))),
        GraphQLField("Sent", type: .nonNull(.scalar(String.self))),
        GraphQLField("Nickname", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageNum: Int, caseManagerId: GraphQLID, clientId: GraphQLID, contents: String, sent: String, nickname: String) {
        self.init(snapshot: ["__typename": "Messages", "MessageNum": messageNum, "CaseManagerID": caseManagerId, "ClientID": clientId, "Contents": contents, "Sent": sent, "Nickname": nickname])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messageNum: Int {
        get {
          return snapshot["MessageNum"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "MessageNum")
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

      public var contents: String {
        get {
          return snapshot["Contents"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Contents")
        }
      }

      public var sent: String {
        get {
          return snapshot["Sent"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sent")
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
    }
  }
}