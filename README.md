# Luhn algorithm in Elixir

[![hex.pm version](https://img.shields.io/hexpm/v/luhnatex.svg)](https://hex.pm/packages/luhnatex)
[![hex.pm daily downloads](https://img.shields.io/hexpm/dd/luhnatex.svg)](https://hex.pm/packages/luhnatex)
[![hex.pm weekly downloads](https://img.shields.io/hexpm/dw/luhnatex.svg)](https://hex.pm/packages/luhnatex) 
[![hex.pm downloads](https://img.shields.io/hexpm/dt/luhnatex.svg)](https://hex.pm/packages/luhnatex)
[![Build Status](https://travis-ci.org/my-flow/luhnatex.svg?branch=master)](https://travis-ci.org/my-flow/luhnatex)

Validate Luhn number.

## Installation

```
# mix.exs
defp deps do
  [
    {:luhn, "~> 0.5.1"}
  ]
end

# and fetch
$ mix deps.get
```

## How to use

```
# validate number
Luhn.valid? "378282246310005"
# => true

# Integer type number
Luhn.valid? 378282246310005
# => true

# Luhn base 16 mod 10
Luhn.valid? "0F04871513130338972614312C30307", 16, 10
# => true
```

## Benchmarking

```
$ MIX_ENV=bench mix deps.get
$ MIX_ENV=bench mix compile
$ mix bench
```

## LICENSE

MIT
