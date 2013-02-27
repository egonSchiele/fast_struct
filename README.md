# FastStruct : A very fast implementation of OpenStruct

## Usage

    require 'fast_struct'
    s = FastStruct.new(:foo => 1)
    s[:bar] = 2

    p s.foo, s[:foo], s.to_hash

## Features

1. Speed
2. Deep wrapping
3. Hash-type access (`s[:bar]` as well as `s.bar`)
4. Mutability (`s[:baz] = "x"`)

## Benchmark

Measuring time taken to create a struct and then get 100 keys, repeated 100,000 times:

                               user     system      total        real
    FastStruct             2.900000   0.000000   2.900000 (  2.913289)
    OpenStruct             4.940000   0.000000   4.940000 (  4.947935)
    Struct                 2.260000   0.020000   2.280000 (  2.290289)    
    Structure              5.660000   0.010000   5.670000 (  5.662594)
    RecursiveOpenStruct    7.520000   0.010000   7.530000 (  7.533433)
    DeepStruct             8.830000   0.010000   8.840000 (  8.846537)
    ClassyStruct           6.910000   0.000000   6.910000 (  6.926956)
    DeepOpenStruct         5.380000   0.010000   5.390000 (  5.385370)
    Plain ol Hash          1.330000   0.010000   1.340000 (  1.327402)


Made by Aditya Bhargava, MIT licensed.
