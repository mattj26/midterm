

type 'a tree = Leaf | Node of ('a tree) * 'a * ('a tree)

(*2a
  ('b -> 'a tree -> 'b) -> 'b -> 'a tree -> 'b
*)

let rec collapse f u t =
match t with
| Leaf -> u
| Node(left,v,right) ->
f (collapse f u left) v (collapse f u right);;

(*
2
1-3

f (collapse f u 1) 2 (collpase f u 3)
f (collpase f u []) 1 (collpase f u [])     f (collpase f u []) 3 (collpase f u [])
    "hi"                    "hi"                      "hi"                "hi"

    (f "hi" 1) "hi" (f "hi" 3) "hi"
*)
let tree1 = Node(Node(Leaf, 3, Leaf), 5, Node(Node(Leaf, 1, Leaf), 2, Leaf))
let tree2 = Node(Leaf, 5, Leaf)
let tree3 = Leaf
let tree4 = Node(Node(Leaf, 3, Leaf), 5, Node(Node(Node (Leaf, -5, Leaf), 1, Leaf), 2, Leaf))


let height =
  collapse (fun l _n r -> 1 + max l r) 0;;

let hasneg =
  collapse (fun l n r -> n < 0 || l || r) false;;
