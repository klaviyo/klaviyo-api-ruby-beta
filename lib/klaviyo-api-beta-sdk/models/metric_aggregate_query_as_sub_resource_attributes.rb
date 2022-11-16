=begin
#Klaviyo API (Beta)

#The Klaviyo REST API. Please visit https://developers.klaviyo.com for more details.

The version of the OpenAPI document: 2022-11-14.pre
Contact: developers@klaviyo.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module KlaviyoBetaAPI
  class MetricAggregateQueryAsSubResourceAttributes
    attr_accessor :metric_id

    attr_accessor :measurements

    # Supported intervals for bucketing query results by time
    attr_accessor :interval

    attr_accessor :page_size

    attr_accessor :by

    attr_accessor :return_fields

    attr_accessor :filter

    attr_accessor :timezone

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'metric_id' => :'metric_id',
        :'measurements' => :'measurements',
        :'interval' => :'interval',
        :'page_size' => :'page_size',
        :'by' => :'by',
        :'return_fields' => :'return_fields',
        :'filter' => :'filter',
        :'timezone' => :'timezone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'metric_id' => :'String',
        :'measurements' => :'Array<String>',
        :'interval' => :'String',
        :'page_size' => :'Integer',
        :'by' => :'Array<String>',
        :'return_fields' => :'Array<String>',
        :'filter' => :'Array<String>',
        :'timezone' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KlaviyoBetaAPI::MetricAggregateQueryAsSubResourceAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KlaviyoBetaAPI::MetricAggregateQueryAsSubResourceAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'metric_id')
        self.metric_id = attributes[:'metric_id']
      end

      if attributes.key?(:'measurements')
        if (value = attributes[:'measurements']).is_a?(Array)
          self.measurements = value
        end
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'page_size')
        self.page_size = attributes[:'page_size']
      end

      if attributes.key?(:'by')
        if (value = attributes[:'by']).is_a?(Array)
          self.by = value
        end
      end

      if attributes.key?(:'return_fields')
        if (value = attributes[:'return_fields']).is_a?(Array)
          self.return_fields = value
        end
      end

      if attributes.key?(:'filter')
        if (value = attributes[:'filter']).is_a?(Array)
          self.filter = value
        end
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @metric_id.nil?
        invalid_properties.push('invalid value for "metric_id", metric_id cannot be nil.')
      end

      if @measurements.nil?
        invalid_properties.push('invalid value for "measurements", measurements cannot be nil.')
      end

      if @interval.nil?
        invalid_properties.push('invalid value for "interval", interval cannot be nil.')
      end

      if @filter.nil?
        invalid_properties.push('invalid value for "filter", filter cannot be nil.')
      end

      if @timezone.nil?
        invalid_properties.push('invalid value for "timezone", timezone cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @metric_id.nil?
      return false if @measurements.nil?
      return false if @interval.nil?
      interval_validator = EnumAttributeValidator.new('String', ["day", "hour", "month", "week"])
      return false unless interval_validator.valid?(@interval)
      return false if @filter.nil?
      return false if @timezone.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval)
      validator = EnumAttributeValidator.new('String', ["day", "hour", "month", "week"])
      unless validator.valid?(interval)
        fail ArgumentError, "invalid value for \"interval\", must be one of #{validator.allowable_values}."
      end
      @interval = interval
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          metric_id == o.metric_id &&
          measurements == o.measurements &&
          interval == o.interval &&
          page_size == o.page_size &&
          by == o.by &&
          return_fields == o.return_fields &&
          filter == o.filter &&
          timezone == o.timezone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [metric_id, measurements, interval, page_size, by, return_fields, filter, timezone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = KlaviyoBetaAPI.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
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
