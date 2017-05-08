# Multiplication table
Print out multiplication table of given sequence of numbers.

You can choose sequence generator for the table, so it can be a sequence of prime or fibonachi numbers -- just give the table right generator.

### Installation
Follow instructions bellow to download and test it:

```
git clone https://github.com/misha-slyusarev/multiplication_table
cd multiplication_table
bundle install
rspec
bundle exec bin/multiplication_table
```

This will print out a multiplication table of prime numbers. If you want a table of different size then pass the size as a parameter:

```
bundle exec bin/multiplication_table 12
```

You can also play around with the gem in IRB using `bin/console`:

```
> g = MultiplicationTable::PrimeGenerator.new
> t = MultiplicationTable::Table.new(g)
> t.print_out(5)
      2   3   5   7  11
  2   4   6  10  14  22
  3   6   9  15  21  33
  5  10  15  25  35  55
  7  14  21  35  49  77
 11  22  33  55  77 121
=> nil
```

Or run it against fibonachi generator:
```
> q = MultiplicationTable::FibonachiGenerator.new
> f = MultiplicationTable::Table.new(q)
> f.print_out(5)
     1  1  2  3  5
  1  1  1  2  3  5
  1  1  1  2  3  5
  2  2  2  4  6 10
  3  3  3  6  9 15
  5  5  5 10 15 25
=> nil
```
