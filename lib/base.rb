require 'httparty'

class YakeenBase
  include HTTParty
  base_uri 'https://yakeen-lite-qa-api-beta.dev-apps.elm.sa:443/api/v1/rowad/inquiry'

  @@app_key = nil
  @@app_id = nil
  @@operator_id = nil
  @@language = 'en'
  @@client_uuid = nil

  def self.app_key=(new_app_key)
    @@app_key = new_app_key
  end

  def self.app_key
    @@api_key
  end

  def self.app_id=(new_app_id)
    @@app_id = new_app_id
  end

  def self.app_id
    @@app_id
  end

  def self.operator_id=(new_operator_id)
    @@operator_id = new_operator_id
  end

  def self.operator_id
    @@operator_id
  end

  def self.language=(new_language)
    @@language = new_language
  end

  def self.language
    @@language
  end

  def self.client_uuid=(new_client_uuid)
    @@client_uuid = new_client_uuid
  end

  def self.client_uuid
    @@client_uuid
  end

  def self.headers
    return {"app_key" => @@app_key,
            "app_id" => @@app_id,
            "operator_id" => @@operator_id,
            "accept-language" => @@language,
            "client_uuid" => @@client_uuid}
  end
end

