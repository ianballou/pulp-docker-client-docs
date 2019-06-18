=begin
#Pulp 3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'date'

module PulpDockerClient
  class Manifest
    attr_accessor :_href

    # Timestamp of creation.
    attr_accessor :_created

    attr_accessor :_type

    # Artifact file representing the physical content
    attr_accessor :_artifact

    # Path where the artifact is located relative to distributions base_path
    attr_accessor :_relative_path

    # sha256 of the Manifest file
    attr_accessor :digest

    # Docker schema version
    attr_accessor :schema_version

    # Docker media type of the file
    attr_accessor :media_type

    # Blobs that are referenced by this Manifest
    attr_accessor :blobs

    # Blob that contains configuration for this Manifest
    attr_accessor :config_blob

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_href' => :'_href',
        :'_created' => :'_created',
        :'_type' => :'_type',
        :'_artifact' => :'_artifact',
        :'_relative_path' => :'_relative_path',
        :'digest' => :'digest',
        :'schema_version' => :'schema_version',
        :'media_type' => :'media_type',
        :'blobs' => :'blobs',
        :'config_blob' => :'config_blob'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_href' => :'String',
        :'_created' => :'DateTime',
        :'_type' => :'String',
        :'_artifact' => :'String',
        :'_relative_path' => :'String',
        :'digest' => :'String',
        :'schema_version' => :'Integer',
        :'media_type' => :'String',
        :'blobs' => :'Array<String>',
        :'config_blob' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PulpDockerClient::Manifest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PulpDockerClient::Manifest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_href')
        self._href = attributes[:'_href']
      end

      if attributes.key?(:'_created')
        self._created = attributes[:'_created']
      end

      if attributes.key?(:'_type')
        self._type = attributes[:'_type']
      end

      if attributes.key?(:'_artifact')
        self._artifact = attributes[:'_artifact']
      end

      if attributes.key?(:'_relative_path')
        self._relative_path = attributes[:'_relative_path']
      end

      if attributes.key?(:'digest')
        self.digest = attributes[:'digest']
      end

      if attributes.key?(:'schema_version')
        self.schema_version = attributes[:'schema_version']
      end

      if attributes.key?(:'media_type')
        self.media_type = attributes[:'media_type']
      end

      if attributes.key?(:'blobs')
        if (value = attributes[:'blobs']).is_a?(Array)
          self.blobs = value
        end
      end

      if attributes.key?(:'config_blob')
        self.config_blob = attributes[:'config_blob']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@_type.nil? && @_type.to_s.length < 1
        invalid_properties.push('invalid value for "_type", the character length must be great than or equal to 1.')
      end

      if @_artifact.nil?
        invalid_properties.push('invalid value for "_artifact", _artifact cannot be nil.')
      end

      if @_relative_path.nil?
        invalid_properties.push('invalid value for "_relative_path", _relative_path cannot be nil.')
      end

      if @_relative_path.to_s.length < 1
        invalid_properties.push('invalid value for "_relative_path", the character length must be great than or equal to 1.')
      end

      if @digest.nil?
        invalid_properties.push('invalid value for "digest", digest cannot be nil.')
      end

      if @digest.to_s.length < 1
        invalid_properties.push('invalid value for "digest", the character length must be great than or equal to 1.')
      end

      if @schema_version.nil?
        invalid_properties.push('invalid value for "schema_version", schema_version cannot be nil.')
      end

      if @media_type.nil?
        invalid_properties.push('invalid value for "media_type", media_type cannot be nil.')
      end

      if @media_type.to_s.length < 1
        invalid_properties.push('invalid value for "media_type", the character length must be great than or equal to 1.')
      end

      if @blobs.nil?
        invalid_properties.push('invalid value for "blobs", blobs cannot be nil.')
      end

      if @config_blob.nil?
        invalid_properties.push('invalid value for "config_blob", config_blob cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@_type.nil? && @_type.to_s.length < 1
      return false if @_artifact.nil?
      return false if @_relative_path.nil?
      return false if @_relative_path.to_s.length < 1
      return false if @digest.nil?
      return false if @digest.to_s.length < 1
      return false if @schema_version.nil?
      return false if @media_type.nil?
      return false if @media_type.to_s.length < 1
      return false if @blobs.nil?
      return false if @config_blob.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _type Value to be assigned
    def _type=(_type)
      if !_type.nil? && _type.to_s.length < 1
        fail ArgumentError, 'invalid value for "_type", the character length must be great than or equal to 1.'
      end

      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] _relative_path Value to be assigned
    def _relative_path=(_relative_path)
      if _relative_path.nil?
        fail ArgumentError, '_relative_path cannot be nil'
      end

      if _relative_path.to_s.length < 1
        fail ArgumentError, 'invalid value for "_relative_path", the character length must be great than or equal to 1.'
      end

      @_relative_path = _relative_path
    end

    # Custom attribute writer method with validation
    # @param [Object] digest Value to be assigned
    def digest=(digest)
      if digest.nil?
        fail ArgumentError, 'digest cannot be nil'
      end

      if digest.to_s.length < 1
        fail ArgumentError, 'invalid value for "digest", the character length must be great than or equal to 1.'
      end

      @digest = digest
    end

    # Custom attribute writer method with validation
    # @param [Object] media_type Value to be assigned
    def media_type=(media_type)
      if media_type.nil?
        fail ArgumentError, 'media_type cannot be nil'
      end

      if media_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "media_type", the character length must be great than or equal to 1.'
      end

      @media_type = media_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _href == o._href &&
          _created == o._created &&
          _type == o._type &&
          _artifact == o._artifact &&
          _relative_path == o._relative_path &&
          digest == o.digest &&
          schema_version == o.schema_version &&
          media_type == o.media_type &&
          blobs == o.blobs &&
          config_blob == o.config_blob
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_href, _created, _type, _artifact, _relative_path, digest, schema_version, media_type, blobs, config_blob].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        PulpDockerClient.const_get(type).build_from_hash(value)
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
