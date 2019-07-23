=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
  # Debits are used to fund transactions from your internal TransferZero balance.
  class Debit
    # The amount to be debited from your account.  The \"amount\" parameter is optional - - if included, it must equal the amount required to fund the transaction. - if omitted, it will default to the amount required to fund the transaction. 
    attr_accessor :amount

    # The currency of the amount in 3-character alpha ISO 4217 currency format.  The \"currency\" parameter is optional - if omitted, it will default to the payin currency of the transaction. - it can be added in as an additional check to ensure that the expected currency is used. (an error will be given back if it does not match up with the payin currency of the transaction) 
    attr_accessor :currency

    # Describes what the debit is funding
    attr_accessor :to_type

    # The ID of the resource the debit is funding
    attr_accessor :to_id

    # Metadata of account debit
    attr_accessor :metadata

    attr_accessor :id

    # Date and time that the debit was created
    attr_accessor :created_at

    # The amount to be debited from your account converted to USD 
    attr_accessor :usd_amount

    # The total amount remaining in your account after the debit call 
    attr_accessor :running_balance

    # The fields that have some problems and don't pass validation
    attr_accessor :errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'to_type' => :'to_type',
        :'to_id' => :'to_id',
        :'metadata' => :'metadata',
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'usd_amount' => :'usd_amount',
        :'running_balance' => :'running_balance',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Float',
        :'currency' => :'String',
        :'to_type' => :'String',
        :'to_id' => :'String',
        :'metadata' => :'Object',
        :'id' => :'String',
        :'created_at' => :'DateTime',
        :'usd_amount' => :'Float',
        :'running_balance' => :'Float',
        :'errors' => :'Hash<String, Array<ValidationErrorDescription>>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::Debit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::Debit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'to_type')
        self.to_type = attributes[:'to_type']
      end

      if attributes.key?(:'to_id')
        self.to_id = attributes[:'to_id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'usd_amount')
        self.usd_amount = attributes[:'usd_amount']
      end

      if attributes.key?(:'running_balance')
        self.running_balance = attributes[:'running_balance']
      end

      if attributes.key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Hash)
          self.errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @to_type.nil?
        invalid_properties.push('invalid value for "to_type", to_type cannot be nil.')
      end

      if @to_id.nil?
        invalid_properties.push('invalid value for "to_id", to_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @to_type.nil?
      return false if @to_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          currency == o.currency &&
          to_type == o.to_type &&
          to_id == o.to_id &&
          metadata == o.metadata &&
          id == o.id &&
          created_at == o.created_at &&
          usd_amount == o.usd_amount &&
          running_balance == o.running_balance &&
          errors == o.errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, currency, to_type, to_id, metadata, id, created_at, usd_amount, running_balance, errors].hash
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
