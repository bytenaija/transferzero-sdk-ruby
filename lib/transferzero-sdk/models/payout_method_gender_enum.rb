=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
  class PayoutMethodGenderEnum
    M = "M".freeze
    F = "F".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PayoutMethodGenderEnum.constants.select { |c| PayoutMethodGenderEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PayoutMethodGenderEnum" if constantValues.empty?
      value
    end
  end
end