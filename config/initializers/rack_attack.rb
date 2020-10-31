class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new 

<<<<<<< HEAD
  Rack::Attack.throttle("requests by ip", limit: 3, period: 2) do |request|
=======
  Rack::Attack.throttle("requests by ip", limit: 5, period: 2) do |request|
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e
    request.ip
  end

  class Request < ::Rack::Request
    def subdomain
      host.split('.').first
    end
  end
end