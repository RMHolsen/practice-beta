class StaticController < ApplicationController

    def index
    end 

    def about
    end 

    def d4
        d4 = Random.new
        d4.rand(1..4)
    end 

    def d6
        d6 = Random.new
        d6.rand(1..6)
    end 

    def d8
        d8 = Random.new
        d8.rand(1..8)
    end 

    def d10
        d10 = Random.new
        d10.rand(1..10)
    end 

    def d12
        d12 = Random.new
        d12.rand(1..12)
    end 

    def d20
        d20 = Random.new
        d20.rand(1..20)
    end 
end 