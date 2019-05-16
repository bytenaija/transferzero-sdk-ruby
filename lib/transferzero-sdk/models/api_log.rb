=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
  # The response object returned with requests to access individual API logs 
  class ApiLog
    # ID of the API log
    attr_accessor :id

    # Initial HTTP request method
    attr_accessor :request_method

    # URL to which initial request was sent
    attr_accessor :request_url

    # Body sent with initial request returned as a string
    attr_accessor :request_body

    # Authorization and access information sent with initial request
    attr_accessor :request_headers

    # Status of response
    attr_accessor :response_status

    # Full response body returned as a string
    attr_accessor :response_body

    # Headers returned with response
    attr_accessor :response_headers

    # Date and time of response
    attr_accessor :created_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'request_method' => :'request_method',
        :'request_url' => :'request_url',
        :'request_body' => :'request_body',
        :'request_headers' => :'request_headers',
        :'response_status' => :'response_status',
        :'response_body' => :'response_body',
        :'response_headers' => :'response_headers',
        :'created_at' => :'created_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'request_method' => :'String',
        :'request_url' => :'String',
        :'request_body' => :'String',
        :'request_headers' => :'Hash<String, String>',
        :'response_status' => :'String',
        :'response_body' => :'String',
        :'response_headers' => :'Hash<String, String>',
        :'created_at' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::ApiLog` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::ApiLog`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'request_method')
        self.request_method = attributes[:'request_method']
      end

      if attributes.key?(:'request_url')
        self.request_url = attributes[:'request_url']
      end

      if attributes.key?(:'request_body')
        self.request_body = attributes[:'request_body']
      end

      if attributes.key?(:'request_headers')
        if (value = attributes[:'request_headers']).is_a?(Hash)
          self.request_headers = value
        end
      end

      if attributes.key?(:'response_status')
        self.response_status = attributes[:'response_status']
      end

      if attributes.key?(:'response_body')
        self.response_body = attributes[:'response_body']
      end

      if attributes.key?(:'response_headers')
        if (value = attributes[:'response_headers']).is_a?(Hash)
          self.response_headers = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
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
          id == o.id &&
          request_method == o.request_method &&
          request_url == o.request_url &&
          request_body == o.request_body &&
          request_headers == o.request_headers &&
          response_status == o.response_status &&
          response_body == o.response_body &&
          response_headers == o.response_headers &&
          created_at == o.created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, request_method, request_url, request_body, request_headers, response_status, response_body, response_headers, created_at].hash
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
