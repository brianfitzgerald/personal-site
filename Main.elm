module Main exposing (main)

import Html.Styled exposing (..)
import View.App exposing (app)


main : Program Never String msg
main =
    Html.Styled.beginnerProgram
        { model = "Hello World"
        , update = \msg model -> model
        , view = app
        }
