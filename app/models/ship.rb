class Ship
    attr_accessor :name, :type, :booty
    @@all= []

    def initialize(params_hash)
        @name =params_hash[:name]
        @type = params_hash[:type]
        @booty = params_hash[:booty]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        self.destroy_all
    end
end