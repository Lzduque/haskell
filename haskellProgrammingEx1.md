1. 𝜆𝑥𝑦.𝑥𝑧
a) 𝜆𝑥𝑧.𝑥𝑧
->b) 𝜆𝑚𝑛.𝑚𝑧
c) 𝜆𝑧.(𝜆𝑥.𝑥𝑧)

2. 𝜆𝑥𝑦.𝑥𝑥𝑦
a) 𝜆𝑚𝑛.𝑚𝑛𝑝
b) 𝜆𝑥.(𝜆𝑦.𝑥𝑦)
->c) 𝜆𝑎.(𝜆𝑏.𝑎𝑎𝑏)

3. 𝜆𝑥𝑦𝑧.𝑧𝑥
a) 𝜆𝑥.(𝜆𝑦.(𝜆𝑧.𝑧))
->b) 𝜆𝑡𝑜𝑠.𝑠𝑡
c) 𝜆𝑚𝑛𝑝.𝑚𝑛

Combinators Determine if each of the following are combinators or not.
->1. 𝜆𝑥.𝑥𝑥𝑥
2. 𝜆𝑥𝑦.𝑧𝑥
->3. 𝜆𝑥𝑦𝑧.𝑥𝑦(𝑧𝑥)
->4. 𝜆𝑥𝑦𝑧.𝑥𝑦(𝑧𝑥𝑦)
5. 𝜆𝑥𝑦.𝑥𝑦(𝑧𝑥𝑦)

Determine if each of the following can be reduced to a normal form or if they diverge.
1. 𝜆𝑥.𝑥𝑥𝑥 - normal
2. (𝜆𝑧.𝑧𝑧)(𝜆𝑦.𝑦𝑦) - diverge
3. (𝜆𝑥.𝑥𝑥𝑥)𝑧 - normal

Beta reduce Evaluate (that is, beta reduce) each of the following expressions to normal form. We strongly recommend writing out the steps on paper with a pencil or pen.
1. (𝜆𝑎𝑏𝑐.𝑐𝑏𝑎)𝑧𝑧(𝜆𝑤𝑣.𝑤)
  (𝜆𝑤𝑣.𝑤)zz
  z

2. (𝜆𝑥.𝜆𝑦.𝑥𝑦𝑦)(𝜆𝑎.𝑎)𝑏
  (𝜆𝑎.𝑎)𝑏b
  bb

3. (𝜆𝑦.𝑦)(𝜆𝑥.𝑥𝑥)(𝜆𝑧.𝑧𝑞)
  (𝜆𝑧.𝑧𝑞)(𝜆𝑧.𝑧𝑞)
  (𝜆𝑧.𝑧𝑞)q
  qq

Normal form or diverge?
4. (𝜆𝑧.𝑧)(𝜆𝑧.𝑧𝑧)(𝜆𝑧.𝑧𝑦)
Hint: alpha equivalence.
  (𝜆𝑧.𝑧𝑧)(𝜆𝑧.𝑧𝑦)
  (𝜆𝑧.𝑧𝑦)(𝜆𝑧.𝑧𝑦)
  (𝜆𝑧.𝑧𝑦)y
  yy

5. (𝜆𝑥.𝜆𝑦.𝑥𝑦𝑦)(𝜆𝑦.𝑦)𝑦
  (𝜆𝑥𝑦.𝑥𝑦𝑦)(𝜆𝑦.𝑦)𝑦
  (𝜆𝑦.𝑦)𝑦y
  yy

6. (𝜆𝑎.𝑎𝑎)(𝜆𝑏.𝑏𝑎)𝑐
  (𝜆𝑏.𝑏𝑎)(𝜆𝑏.𝑏𝑎)𝑐
  (𝜆𝑏.𝑏𝑎)a𝑐
  𝑎a𝑐

7. (𝜆𝑥𝑦𝑧.𝑥𝑧(𝑦𝑧))(𝜆𝑥.w)(𝜆𝑥.𝑎)
  𝜆𝑧.(𝜆𝑥.w)𝑧((𝜆𝑥.𝑎)𝑧)
  𝜆𝑧.(𝜆𝑥.w)𝑧𝑎
  𝜆𝑧.w𝑎