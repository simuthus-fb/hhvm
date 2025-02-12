(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the "hack" directory of this source tree.
 *
 *)

val apply_patches : ServerRefactorTypes.patch list -> unit

val patches_to_json_string : ServerRefactorTypes.patch list -> string

val print_patches_json : ServerRefactorTypes.patch list -> unit

val go :
  (unit -> ClientConnect.conn Lwt.t) ->
  desc:string ->
  ClientEnv.client_check_env ->
  ClientEnv.refactor_mode ->
  string ->
  string ->
  unit Lwt.t

val go_ide :
  (unit -> ClientConnect.conn Lwt.t) ->
  desc:string ->
  ClientEnv.client_check_env ->
  string ->
  int ->
  int ->
  string ->
  unit Lwt.t

val go_sound_dynamic :
  (unit -> ClientConnect.conn Lwt.t) ->
  ClientEnv.client_check_env ->
  ClientEnv.refactor_mode ->
  string ->
  string Lwt.t
