module Hello exposing (..)

-- import Html.App exposing (beginnerProgram)
import Browser exposing (sandbox)
import Html exposing (Html,button,div,text) 
import Html.Events exposing (onClick) 

initModel = 0

type Msg = Increment | Decrement 

update msg model = 
    case msg of 
        Increment ->
            model+1

        Decrement ->
            model-1
            
view model = 
    div[]
    [
        button [onClick Decrement] [text "-"]
        , div [] [text (String.fromInt model)]
        ,button [onClick Increment ] [text "+"]
    ]

main = Browser.sandbox{init = initModel
                        , view = view 
                        ,update = update}