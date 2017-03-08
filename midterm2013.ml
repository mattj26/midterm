(*Part 1*)
let f = fun x y -> x + y in
let g = f 10 in
g 32

let f = fun x y -> x + y in
f 42

let rec reduce f u xs =
match xs with
| [] -> u
| h::t -> f h (reduce f u t) in
let a = [1 ; 2 ; 3 ; 4] in
reduce (fun a b -> a + 1) 0 a

let f g = fun f -> fun x -> f (g x) in
let f = f (fun f -> 1+f) in
let f = f (fun f -> 42) in
f 3

let rec f x y =
match y with
| [] -> x
| (a,b)::t -> (b,a) :: (f y t)
in
f [1;2;3] [4;5;6]

let rec reduce f u xs =
match xs with
| [] -> u
| h::t -> f h (reduce f u t) in
let g = reduce (fun a b -> a::b) in
g [1;2;3] [4;5;6]

let x = 0 in
let f = (fun _ -> x) in
let x = 42 in
f 42

let fst p = let (x,_) = p in x in
let snd p = let (_,y) = p in y in
let vs = [(1,2) ; (3,4); (5,6)] in
(List.map snd vs, List.map fst vs)

(*Part 2*)
let rec reduce f u xs =
match xs with
| [] -> u
| h::t -> f h (reduce f u t)

let lst1 = []
let lst2 = [1; 3; 5]

let rec sum xs =
match xs with
| [] -> 0
| h::t -> h + (sum t)

let sumr xs =
  reduce (fun a b -> a + b) 0 xs
