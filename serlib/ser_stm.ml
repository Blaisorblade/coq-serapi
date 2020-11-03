(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016 MINES ParisTech                                       *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Conv
open Ppx_python_runtime_serapi

module Stateid = Ser_stateid
module Names   = Ser_names

type interactive_top =
 [%import: Stm.interactive_top]
 [@@deriving sexp,python]

type focus =
 [%import: Stm.focus]
 [@@deriving sexp,python]

 (* { start : Stateid.t; stop : Stateid.t; tip : Stateid.t } *)

