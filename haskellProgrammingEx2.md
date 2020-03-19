1. Given the following lines of code as they might appear in a source file, how would you change them to use them directly in the REPL?
half x = x / 2
square x = x * x

2. Write one function that has one parameter and works for all the following expressions. Be sure to name the function.
3.14 * (5 * 5)
3.14 * (10 * 10)
3.14 * (2 * 2)
3.14 * (4 * 4)

multiplPi x = x * 3.14

3. There is a value in Prelude called pi. Rewrite your function to use pi instead of 3.14.

multiplPy x = x * pi

Below are some pairs of functions that are alike except for parenthe- sization. Read them carefully and decide if the parentheses change the results of the function. Check your work in GHCi.
1. a)8+7*9
  b) (8 + 7) * 9
different

2. a)perimeter x y = (x*2) + (y*2)
  b) perimeter x y = x * 2 + y * 2
iqual

3. a)f x = x / 2 + 9
  b) f x = x / (2 + 9)
  different

The following code samples are broken and won’t compile. The first two are as you might enter into the REPL; the third is from a source file. Find the mistakes and fix them so that they will.
1. let area x = 3. 14 * (x * x)
let area x = 3.14 * (x * x)

2. let double x = b * 2
let double x = x * 2

3. x = 7
  y = 10
  f = x + y

Now for some exercises. First, determine in your head what the following expressions will return, then validate in the REPL:

1. let x = 5 in x
5

2. let x = 5 in x * x
25

3. let x = 5; y = 6 in x * y
30

4. let x = 3; y = 1000 in x + 3
6

Rewrite with where clauses:
1. let x = 3; y = 1000 in x * 3 + y
  func1 = x * 3 + y
    where
      x = 3
      y = 1000

2. let y = 10; x = 10 * 5 + y in x * 5
  func2 = x * 5
    where
      y = 10
      x = 10 * 5 + y

3. let x = 7
      y = negate x
      z = y * 10
    in z / x + y

  func3 = z / x + y
    where
      x = 7
      y = negate x
      z = y * 10

Attempt the above on the following expressions:
1. 2 + 2 * 3 - 1
2 + (2 * 3) - 1

2. (^) 10 $ 1 + 1
(10^) $ 1 + 1

3. 2 ^ 2 * 4 ^ 5 + 1
((2 ^ 2) * (4 ^ 5)) + 1

Which of the following pairs of expressions will return the same result when evaluated? Try to reason them out by reading the code and then enter them into the REPL to check your work:
-> 1. 1 + 1
2

-> 2. 10 ^ 2
10 + 9 * 10

3. 400 - 37
(-) 37 400

4. 100 `div` 3
100 / 3

5. 2 * 5 + 18
2 * (5 + 18)

z=7
y=z+8
x=y^2
waxOn = x * 5

1. Now you have a value called waxOn in your REPL. What do you
think will happen if you enter:
10 + waxOn -- or
(+10) waxOn -- or
(-) 15 waxOn -- or
(-) waxOn 15

2. Earlier we looked at a function called triple. While your REPL has waxOn in session, re-enter the triple function at the prompt:
let triple x = x * 3

3. Now, what will happen if we enter this at our GHCi prompt? What do you think will happen first, considering what role waxOn is playing in this function call? Then enter it, see what does happen, and check your understanding:
triple waxOn

4. Rewrite waxOn as an expression with a where clause in your source file. Load it into your REPL and make sure it still works as expected.

5. To the same source file where you have waxOn, add the triple function. Remember: You don’t need let and the function name should be at the left margin (that is, not nested as one of the waxOn expressions). Make sure it works by loading it into your REPL and then entering triple waxOn again at the REPL prompt. You should have the same answer as you did above.

6. Now, without changing what you’ve done so far in that file, add
a new function called waxOff that looks like this:
waxOff x = triple x

7. Load the source file into your REPL and enter waxOff waxOn at
the prompt.
You now have a function, waxOff that can be applied to a variety of arguments — not just waxOn but any (numeric) value you want to put in for 𝑥. Play with that a bit. What is the result of waxOff 10 or waxOff (-50)? Try modifying your waxOff function to do something new — perhaps you want to first triple the 𝑥 value and then square it or divide it by 10. Spend some time getting comfortable with modifying the source file code, reloading it, and checking your modification in the REPL.