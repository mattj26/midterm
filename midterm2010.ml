(* Questions from 2010 CS51 Midterm *)

let rec reduce f u xs =
match xs with
| [] -> u
| h::t -> f h (reduce f u t);;

(* 2a *)

let gar xs =
  reduce (fun (a, b) y -> (a b) + y) 0 xs;;

let rec gac xs =
match xs with
| [] -> 0
| (h1,h2)::t -> (h1 h2) + (gac t)

(* let tests2a () =
  let lst = [((fun x -> x + 2), 5); ((fun x -> x + 5), 9)] in
  print_int (gar lst);
  print_newline ();
  print_int (gac lst);;
 *)
let gbr xs =
  reduce (fun x y -> match y with
                     | None -> Some x
                     | Some x -> Some x) None xs;;


let rec gbc xs =
match xs with
| [] -> None
| h::t -> (match gbc t with
            | None -> Some h
            | Some x -> Some x);;

let test2b () =


