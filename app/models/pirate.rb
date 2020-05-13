class Pirate
    attr_accessor :name, :weight, :height
    @@all= []

    def initialize(params_hash)
        @name = params_hash[:name]
        @weight = params_hash[:weight]
        @height = params_hash[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end