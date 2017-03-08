(* To learn by debugging *)

let f p = let (x,y) = p in x y in
let inc x = x + 1 in
let dec x = x - 1 in
let pair x = (x, x) in
List.map f [(inc,1) ; (dec,2) ; (inc,3)]

