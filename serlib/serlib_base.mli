(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016-2018 MINES ParisTech                                  *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib

(** Controls when an opaque type produces and error vs an "abstract"
   constructor *)
val exn_on_opaque : bool ref

val sexp_of_opaque : typ:string -> 'a -> Sexp.t
val opaque_of_sexp : typ:string -> Sexp.t -> 'a

val python_of_opaque : typ:string -> 'a -> Py.Object.t
val opaque_of_python : typ:string -> Py.Object.t -> 'a
