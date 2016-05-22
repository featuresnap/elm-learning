import Math exposing (..)
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.App as App

main = App.beginnerProgram {model = model, update = update, view = view}
   
type alias Model = Int
type Msg = ChangeState

model: Model
model = 0

update: Msg -> Model -> Model
update msg model = add 1 model

view: Model -> Html.Html Msg
view model = 
    div [] 
    [
        div [] [text (toString model)],
        button [onClick ChangeState] [text "$$$$"]
    ]
