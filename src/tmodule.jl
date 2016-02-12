module Example
    using Debug
    # exports
    export hello, domath, Jaguar, Pussycat, do_your_thing

    # types
    abstract Feline
    type Jaguar <: Feline
        weight::Float64
        sound::AbstractString
    end
    type Pussycat <: Feline
        weight::Float64
        sound::AbstractString
    end

    # methods
    hello(who::AbstractString) = "Hello, $who"
    domath(x::Number) = (x + 5)
    
    @debug function do_your_thing(j::Jaguar)
        println(j.sound)
        @bp
        println("I am going to throw my entire $(j.weight) kg at you, I'll catch, kill and eat you!")
        println("I am a $(typeof(j))!!!!")
    end

    function do_your_thing(c::Pussycat)
        println(c.sound)
        println("I should watch my weight, $(c.weight) is enough for a $(typeof(c))")
        println(c.sound)
    end
end