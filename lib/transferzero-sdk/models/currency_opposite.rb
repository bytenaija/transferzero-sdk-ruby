=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
  class CurrencyOpposite
    # The currency code in 3-character alpha ISO 4217 currency format
    attr_accessor :code

    # Name of currency
    attr_accessor :name

    # Symbol of currency
    attr_accessor :symbol

    # Number of decimal points
    attr_accessor :decimals

    # Subunits in Unit (eg. there are 100 cents in 1 US Dollar)
    attr_accessor :subunit_to_unit

    # Is this a primary currency?
    attr_accessor :primary

    # The minimum amount allowed in a transaction
    attr_accessor :min

    # The maximum amount allowed in a transaction
    attr_accessor :max

    # The margin set for transactions in this currency
    attr_accessor :margin

    # The equivalent of the currency to 1 USD
    attr_accessor :usd_equivalent

    # The rate of this particular currency with the base one
    attr_accessor :rate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'code' => :'code',
        :'name' => :'name',
        :'symbol' => :'symbol',
        :'decimals' => :'decimals',
        :'subunit_to_unit' => :'subunit_to_unit',
        :'primary' => :'primary',
        :'min' => :'min',
        :'max' => :'max',
        :'margin' => :'margin',
        :'usd_equivalent' => :'usd_equivalent',
        :'rate' => :'rate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'code' => :'String',
        :'name' => :'String',
        :'symbol' => :'String',
        :'decimals' => :'Float',
        :'subunit_to_unit' => :'String',
        :'primary' => :'Boolean',
        :'min' => :'String',
        :'max' => :'String',
        :'margin' => :'String',
        :'usd_equivalent' => :'String',
        :'rate' => :'Float'
      }
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Currency',
      :'CurrencyOppositeAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::CurrencyOpposite` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::CurrencyOpposite`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'decimals')
        self.decimals = attributes[:'decimals']
      end

      if attributes.key?(:'subunit_to_unit')
        self.subunit_to_unit = attributes[:'subunit_to_unit']
      end

      if attributes.key?(:'primary')
        self.primary = attributes[:'primary']
      end

      if attributes.key?(:'min')
        self.min = attributes[:'min']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.key?(:'usd_equivalent')
        self.usd_equivalent = attributes[:'usd_equivalent']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          name == o.name &&
          symbol == o.symbol &&
          decimals == o.decimals &&
          subunit_to_unit == o.subunit_to_unit &&
          primary == o.primary &&
          min == o.min &&
          max == o.max &&
          margin == o.margin &&
          usd_equivalent == o.usd_equivalent &&
          rate == o.rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, name, symbol, decimals, subunit_to_unit, primary, min, max, margin, usd_equivalent, rate].hash
    end

require 'active_support/core_ext/hash'
require 'active_support/hash_with_indifferent_access.rb'
# Builds the object from hash
# @param [Hash] attributes Model attributes in the form of hash
# @return [Object] Returns the model itself
def build_from_hash(attributes)
  return nil unless attributes.is_a?(Hash)
  self.class.openapi_types.each_pair do |key, type|
    if type =~ /\AArray<(.*)>/i
      # check to ensure the input is an array given that the the attribute
      # is documented as an array but the input is not
      if attributes[self.class.attribute_map[key]].is_a?(Array)
        self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
      end
    elsif !attributes[self.class.attribute_map[key]].nil?
      self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
    end # or else data not found in attributes(hash), not an issue as the data can be optional
  end

  self
end

# Deserializes the data based on type
# @param string type Data type
# @param string value Value to be deserialized
# @return [Object] Deserialized data
def _deserialize(type, value)
  case type.to_sym
  when :DateTime
    DateTime.parse(value)
  when :Date
    Date.parse(value)
  when :String
    value.to_s
  when :Integer
    value.to_i
  when :Float
    value.to_f
  when :Boolean
    if value.to_s =~ /\A(true|t|yes|y|1)\z/i
      true
    else
      false
    end
  when :Object
    # generic object (usually a Hash), return directly
    value
  when /\AArray<(?<inner_type>.+)>\z/
    inner_type = Regexp.last_match[:inner_type]
    value.map { |v| _deserialize(inner_type, v) }
  when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
    k_type = Regexp.last_match[:k_type]
    v_type = Regexp.last_match[:v_type]
    {}.tap do |hash|
      value.each do |k, v|
        hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
      end
    end
  else # model
    temp_model = TransferZero.const_get(type).new
    temp_model.build_from_hash(value)
  end
end

# Returns the string representation of the object
# @return [String] String presentation of the object
def to_s
  to_hash.to_s
end

# to_body is an alias to to_hash (backward compatibility)
# @return [Hash] Returns the object in the form of hash
def to_body
  to_hash
end

# Returns the object in the form of hash
# @return [Hash] Returns the object in the form of hash
def to_hash
  hash = {}
  self.class.attribute_map.each_pair do |attr, param|
    value = self.send(attr)
    next if value.nil?
    hash[param] = _to_hash(value)
  end
  ::ActiveSupport::HashWithIndifferentAccess.new(hash)
end

def [](key)
  to_hash[key]
end

def dig(*args)
  to_hash.dig(*args)
end

# Outputs non-array value in the form of hash
# For object, use to_hash. Otherwise, just return the value
# @param [Object] value Any valid value
# @return [Hash] Returns the value in the form of hash
def _to_hash(value)
  if value.is_a?(Array)
    value.compact.map { |v| _to_hash(v) }
  elsif value.is_a?(Hash)
    {}.tap do |hash|
      value.each { |k, v| hash[k] = _to_hash(v) }
    end
  elsif value.respond_to? :to_hash
    value.to_hash
  else
    value
  end
end

  end
end
