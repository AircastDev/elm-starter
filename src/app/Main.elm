module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)


type alias Flags =
    ()


type alias Model =
    {}


initialModel : Flags -> Model
initialModel flags =
    {}


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( initialModel flags, Cmd.none )


main : Program Flags Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


view : Model -> Document Msg
view model =
    Document "Elm Starter"
        [ div [ class "p-16" ]
            [ h1 [ class "text-center text-6xl font-bold" ] [ text "It works!" ]
            , p [ class "text-center mt-2 text-3xl" ]
                [ text "You're all set up! Edit this file in src/app/Main.elm to get started."
                ]
            ]
        ]


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
