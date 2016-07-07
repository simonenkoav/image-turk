module Dirs.Update exposing (..)

import Dirs.Messages exposing (Msg(..))
import Dirs.Models exposing (Dir)
import Navigation


update : Msg -> List Dir -> ( List Dir, Cmd Msg )
update message dirs =
  case message of
    FetchAllDone newDirs ->
      ( newDirs, Cmd.none )

    FetchAllFail error ->
      ( dirs, Cmd.none )

    GoDir id ->
      (dirs, Navigation.modifyUrl ("#/" ++ (toString id)))  
