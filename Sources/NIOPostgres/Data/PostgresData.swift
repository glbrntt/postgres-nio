public struct PostgresData {
    public static var null: PostgresData {
        return .init(type: .null)
    }
    
    /// The object ID of the field's data type.
    public var type: PostgresDataType
    
    /// The type modifier (see pg_attribute.atttypmod). The meaning of the modifier is type-specific.
    public var typeModifier: Int32?
    
    /// The format code being used for the field.
    /// Currently will be zero (text) or one (binary).
    /// In a RowDescription returned from the statement variant of Describe,
    /// the format code is not yet known and will always be zero.
    public var formatCode: PostgresFormatCode
    
    public var value: [UInt8]?
    
    public init(type: PostgresDataType, typeModifier: Int32? = nil, formatCode: PostgresFormatCode = .binary, value: [UInt8]? = nil) {
        self.type = type
        self.typeModifier = typeModifier
        self.formatCode = formatCode
        self.value = value
    }
}
