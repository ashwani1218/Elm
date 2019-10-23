module First exposing (..)

import Browser exposing (sandbox)
import Html exposing (Html, button, div , input, text)
import Html.Attributes exposing (class, type_ ,value )
import Html.Events exposing (onClick, onInput)


main = Browser.sandbox{init = initmodel
                        , view = view 
                        ,update = update}

type alias Model= 
    Int 


initmodel = 
    0

type Msg
    = Increment  | Decrement 
    --   Explicit String 

update : Msg -> Model -> model
update msg model =
    case msg of 
        Increment ->
            model + 1
        
        Decrement ->
            model - 1
        
        -- Explicit newval ->
        --     case String.toInt newval of 
        --         Ok newval ->
        --             newval
        --         Err value ->
        --             0
        

view : Model -> Html Msg
view model = 
    div[][
        div[class "input-group"]
            [
                div[class "input-group-prepend"]
                [
                    button [onClick Decrement, class "btn btn-warning btn-lg"][text "-"]
                ]
                input
                [
                    
                    class "form-control form-control-lg"
                    value (String.fromInt model)
                    -- type_ "text"
                    -- onInput Explicit
                ]
                []
                div[class "input-group-append"]
                [
                    button [onClick Increment, class "btn btn-warning btn-lg"][text "+"]
                ]
            ]
        ]

































