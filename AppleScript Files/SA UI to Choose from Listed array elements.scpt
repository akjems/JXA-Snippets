JsOsaDAS1.001.00bplist00�Vscript_�
// To use UI elements
var app = Application.currentApplication()
app.includeStandardAdditions = true

// Array of things to choose from 
var choices = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"]
var chooseItem = app.chooseFromList(choices, {
defaultAnswer: "Red", 
    withPrompt: "Choose a color"
}
)

// Returns array of choices
chooseItem

//Stringify the choice
choosenItem = chooseItem[0]

                              � jscr  ��ޭ