require 'httparty'

module Yakeen
  class Vehicle < YakeenBase
    def self.getInfo
      puts "Vehicle Get #{@headers}"
    end
  end

  class OTP < YakeenBase
    def self.send(id, dateOfBirth)
      puts "SMS OTP, #{id}, #{dateOfBirth}"
    end
  end

  class Person < YakeenBase
    # 2359546161, 1972-05-06
    def self.getInfo(person_id:, birthDate:)
      puts "Basic Info"
      response = get("#{base_uri}/person-info/#{person_id}?birthDate=#{birthDate}", format: :plain, :headers => Yakeen.headers)
      JSON.parse response, symbolize_names: true
      puts JSON.parse response
    end
  end

  class License < YakeenBase
    def self.getLicense
      puts "License Get"
    end
  end

  class Passport < YakeenBase
    def self.getPassport
      puts "Passport Details"
    end
  end
end