module TestExample
    using Example
    using FactCheck

    facts("testing constructors") do
        @fact typeof(Pussycat(9.8,"miauuu")) --> Pussycat
        @fact typeof(Jaguar(9.8,"miauuu")) --> Jaguar
    end

    facts("testing domath") do
        @fact domath(10) --> 15.0
        @fact domath(-5) == 0.0 --> true
    end
end