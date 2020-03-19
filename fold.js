const mapExplicit = (g, xs) => {
  const [head, ...tail] = xs;
  if (head === undefined) return [];
  return [g(head)].concat(mapExplicit(g, tail));
};

console.log(mapExplicit((x) => x + 1, [1,2,3,4]));

// Reduce definition (1)
// [].reduceRight(f, z) = z
// [head, ...tail].reduceRight(f, z) = f(tail.reduceRight(f, z), head)

// Map definition (2)
// mapExplicit(g, []) = []
// mapExplicit(g, [head, ...tail]) = [g(head)].concat(mapExplicit(g, tail))

// Template (3)
// map(g, xs) = xs.reduceRight((more, head) => [g(head)].concat(more), [])

// map(g, [head, ...tail]) = [head, ...tail].reduceRight(f, [])
// (1)
// map(g, [head, ...tail]) = f(tail.reduceRight(f, []), head)
// (2)
// [g(head)].concat(map(g, tail)) = f(tail.reduceRight(f, []), head)
// f(tail.reduceRight(f, []), head) = [g(head)].concat(map(g, tail))
// (3)
// f(map(g, tail), head) = [g(head)].concat(map(g, tail))
// let more = map(g, tail)
// f(more, head) = [g(head)].concat(more)
// f = (more, head) => [g(head)].concat(more)

const map = (g, xs) => xs.reduceRight((more, head) => [g(head)].concat(more), []);

// const reverse = (xs) => xs.reduceRight((rev, head) => rev.concat([head]), [])

console.log(map((x) => x + 1, [1,2,3,4]));