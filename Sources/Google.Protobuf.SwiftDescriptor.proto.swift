// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "swift-descriptor.proto"
// Syntax "Proto2"

import Foundation

public extension Google.Protobuf{}

public func == (lhs: Google.Protobuf.SwiftFileOptions, rhs: Google.Protobuf.SwiftFileOptions) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasClassPrefix == rhs.hasClassPrefix) && (!lhs.hasClassPrefix || lhs.classPrefix == rhs.classPrefix)
  fieldCheck = fieldCheck && (lhs.hasEntitiesAccessControl == rhs.hasEntitiesAccessControl) && (!lhs.hasEntitiesAccessControl || lhs.entitiesAccessControl == rhs.entitiesAccessControl)
  fieldCheck = fieldCheck && (lhs.hasCompileForFramework == rhs.hasCompileForFramework) && (!lhs.hasCompileForFramework || lhs.compileForFramework == rhs.compileForFramework)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public var SwiftDescriptorRootswiftFileOptions:ConcreateExtensionField {
   get {
       return Google.Protobuf.SwiftDescriptorRoot.sharedInstance.SwiftDescriptorRootswiftFileOptionsStatic
   }
}
public extension Google.Protobuf {
  public struct SwiftDescriptorRoot {
    public static var sharedInstance : SwiftDescriptorRoot {
     struct Static {
         static let instance : SwiftDescriptorRoot = SwiftDescriptorRoot()
     }
     return Static.instance
    }
    var SwiftDescriptorRootswiftFileOptionsStatic:ConcreateExtensionField
    public var extensionRegistry:ExtensionRegistry

    init() {
      SwiftDescriptorRootswiftFileOptionsStatic = ConcreateExtensionField(type:ExtensionType.extensionTypeMessage, extendedClass:Google.Protobuf.FileOptions.self, fieldNumber: 5092014, defaultValue:Google.Protobuf.SwiftFileOptions(), messageOrGroupClass:Google.Protobuf.SwiftFileOptions.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      Google.Protobuf.DescriptorRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
      registry.addExtension(extensions: SwiftDescriptorRootswiftFileOptionsStatic)
    }
    public static func swiftFileOptions() -> ConcreateExtensionField {
         return SwiftDescriptorRoot.sharedInstance.SwiftDescriptorRootswiftFileOptionsStatic
    }
  }



  //Enum type declaration start 

  public enum AccessControl:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case internalEntities = 0
    case publicEntities = 1
    public func toString() -> String {
      switch self {
      case .internalEntities: return "InternalEntities"
      case .publicEntities: return "PublicEntities"
      }
    }
    public static func fromString(str:String) throws -> Google.Protobuf.AccessControl {
      switch str {
      case "InternalEntities":  return .internalEntities
      case "PublicEntities":  return .publicEntities
      default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .internalEntities: return ".internalEntities"
            case .publicEntities: return ".publicEntities"
        }
    }
  }

  //Enum type declaration end 

  final public class SwiftFileOptions : GeneratedMessage {
    public private(set) var classPrefix:String = ""
    public private(set) var hasClassPrefix:Bool = false

    public private(set) var entitiesAccessControl:Google.Protobuf.AccessControl = Google.Protobuf.AccessControl.publicEntities
    public private(set) var hasEntitiesAccessControl:Bool = false
    public private(set) var compileForFramework:Bool = true
    public private(set) var hasCompileForFramework:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasClassPrefix {
        try codedOutputStream.writeString(fieldNumber: 1, value:classPrefix)
      }
      if hasEntitiesAccessControl {
        try codedOutputStream.writeEnum(fieldNumber: 2, value:entitiesAccessControl.rawValue)
      }
      if hasCompileForFramework {
        try codedOutputStream.writeBool(fieldNumber: 3, value:compileForFramework)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasClassPrefix {
        serialize_size += classPrefix.computeStringSize(fieldNumber: 1)
      }
      if (hasEntitiesAccessControl) {
        serialize_size += entitiesAccessControl.rawValue.computeEnumSize(fieldNumber: 2)
      }
      if hasCompileForFramework {
        serialize_size += compileForFramework.computeBoolSize(fieldNumber: 3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Google.Protobuf.SwiftFileOptions.Builder {
      return Google.Protobuf.SwiftFileOptions.classBuilder() as! Google.Protobuf.SwiftFileOptions.Builder
    }
    public func getBuilder() -> Google.Protobuf.SwiftFileOptions.Builder {
      return classBuilder() as! Google.Protobuf.SwiftFileOptions.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Google.Protobuf.SwiftFileOptions.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Google.Protobuf.SwiftFileOptions.Builder()
    }
    public func toBuilder() throws -> Google.Protobuf.SwiftFileOptions.Builder {
      return try Google.Protobuf.SwiftFileOptions.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Google.Protobuf.SwiftFileOptions) throws -> Google.Protobuf.SwiftFileOptions.Builder {
      return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasClassPrefix {
        jsonMap["classPrefix"] = classPrefix
      }
      if hasEntitiesAccessControl {
        jsonMap["entitiesAccessControl"] = entitiesAccessControl.toString()
      }
      if hasCompileForFramework {
        jsonMap["compileForFramework"] = compileForFramework
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.SwiftFileOptions {
      return try Google.Protobuf.SwiftFileOptions.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Google.Protobuf.SwiftFileOptions {
      return try Google.Protobuf.SwiftFileOptions.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasClassPrefix {
        output += "\(indent) classPrefix: \(classPrefix) \n"
      }
      if (hasEntitiesAccessControl) {
        output += "\(indent) entitiesAccessControl: \(entitiesAccessControl.description)\n"
      }
      if hasCompileForFramework {
        output += "\(indent) compileForFramework: \(compileForFramework) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasClassPrefix {
               hashCode = (hashCode &* 31) &+ classPrefix.hashValue
            }
            if hasEntitiesAccessControl {
               hashCode = (hashCode &* 31) &+ Int(entitiesAccessControl.rawValue)
            }
            if hasCompileForFramework {
               hashCode = (hashCode &* 31) &+ compileForFramework.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Google.Protobuf.SwiftFileOptions"
    }
    override public func className() -> String {
        return "Google.Protobuf.SwiftFileOptions"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Google.Protobuf.SwiftFileOptions = Google.Protobuf.SwiftFileOptions()
      public func getMessage() -> Google.Protobuf.SwiftFileOptions {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasClassPrefix:Bool {
           get {
                return builderResult.hasClassPrefix
           }
      }
      public var classPrefix:String {
           get {
                return builderResult.classPrefix
           }
           set (value) {
               builderResult.hasClassPrefix = true
               builderResult.classPrefix = value
           }
      }
      public func setClassPrefix(_ value:String) -> Google.Protobuf.SwiftFileOptions.Builder {
        self.classPrefix = value
        return self
      }
      public func clearClassPrefix() -> Google.Protobuf.SwiftFileOptions.Builder{
           builderResult.hasClassPrefix = false
           builderResult.classPrefix = ""
           return self
      }
        public var hasEntitiesAccessControl:Bool{
            get {
                return builderResult.hasEntitiesAccessControl
            }
        }
        public var entitiesAccessControl:Google.Protobuf.AccessControl {
            get {
                return builderResult.entitiesAccessControl
            }
            set (value) {
                builderResult.hasEntitiesAccessControl = true
                builderResult.entitiesAccessControl = value
            }
        }
        public func setEntitiesAccessControl(_ value:Google.Protobuf.AccessControl) -> Google.Protobuf.SwiftFileOptions.Builder {
          self.entitiesAccessControl = value
          return self
        }
        public func clearEntitiesAccessControl() -> Google.Protobuf.SwiftFileOptions.Builder {
           builderResult.hasEntitiesAccessControl = false
           builderResult.entitiesAccessControl = .publicEntities
           return self
        }
      public var hasCompileForFramework:Bool {
           get {
                return builderResult.hasCompileForFramework
           }
      }
      public var compileForFramework:Bool {
           get {
                return builderResult.compileForFramework
           }
           set (value) {
               builderResult.hasCompileForFramework = true
               builderResult.compileForFramework = value
           }
      }
      public func setCompileForFramework(_ value:Bool) -> Google.Protobuf.SwiftFileOptions.Builder {
        self.compileForFramework = value
        return self
      }
      public func clearCompileForFramework() -> Google.Protobuf.SwiftFileOptions.Builder{
           builderResult.hasCompileForFramework = false
           builderResult.compileForFramework = true
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Google.Protobuf.SwiftFileOptions.Builder {
        builderResult = Google.Protobuf.SwiftFileOptions()
        return self
      }
      override public func clone() throws -> Google.Protobuf.SwiftFileOptions.Builder {
        return try Google.Protobuf.SwiftFileOptions.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> Google.Protobuf.SwiftFileOptions {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Google.Protobuf.SwiftFileOptions {
        let returnMe:Google.Protobuf.SwiftFileOptions = builderResult
        return returnMe
      }
      public func mergeFrom(other:Google.Protobuf.SwiftFileOptions) throws -> Google.Protobuf.SwiftFileOptions.Builder {
        if other == Google.Protobuf.SwiftFileOptions() {
         return self
        }
        if other.hasClassPrefix {
             classPrefix = other.classPrefix
        }
        if other.hasEntitiesAccessControl {
             entitiesAccessControl = other.entitiesAccessControl
        }
        if other.hasCompileForFramework {
             compileForFramework = other.compileForFramework
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.SwiftFileOptions.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.SwiftFileOptions.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            classPrefix = try codedInputStream.readString()

          case 16:
            let valueIntentitiesAccessControl = try codedInputStream.readEnum()
            if let enumsentitiesAccessControl = Google.Protobuf.AccessControl(rawValue:valueIntentitiesAccessControl){
                 entitiesAccessControl = enumsentitiesAccessControl
            } else {
                 _ = try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntentitiesAccessControl))
            }

          case 24:
            compileForFramework = try codedInputStream.readBool()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.SwiftFileOptions.Builder {
        let resultDecodedBuilder = Google.Protobuf.SwiftFileOptions.Builder()
        if let jsonValueClassPrefix = jsonMap["classPrefix"] as? String {
          resultDecodedBuilder.classPrefix = jsonValueClassPrefix
        }
        if let jsonValueEntitiesAccessControl = jsonMap["entitiesAccessControl"] as? String {
          resultDecodedBuilder.entitiesAccessControl = try Google.Protobuf.AccessControl.fromString(str: jsonValueEntitiesAccessControl)
        }
        if let jsonValueCompileForFramework = jsonMap["compileForFramework"] as? Bool {
          resultDecodedBuilder.compileForFramework = jsonValueCompileForFramework
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> Google.Protobuf.SwiftFileOptions.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try Google.Protobuf.SwiftFileOptions.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension Google.Protobuf.SwiftFileOptions: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Google.Protobuf.SwiftFileOptions> {
    var mergedArray = Array<Google.Protobuf.SwiftFileOptions>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> Google.Protobuf.SwiftFileOptions? {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(data: data, extensionRegistry:Google.Protobuf.SwiftDescriptorRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.SwiftFileOptions {
    return try Google.Protobuf.SwiftFileOptions.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
