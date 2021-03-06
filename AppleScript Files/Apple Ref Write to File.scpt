JsOsaDAS1.001.00bplist00�Vscript_c//Example of creating a writing a simple text file

var app = Application.currentApplication()
app.includeStandardAdditions = true

function writeTextToFile(text, file, overwriteExistingContent) {
    try {

        // Convert the file to a string
        var fileString = file.toString()

        // Open the file for writing
        var openedFile = app.openForAccess(Path(fileString), { writePermission: true })

        // Clear the file if content should be overwritten
        if (overwriteExistingContent) {
            app.setEof(openedFile, { to: 0 })
        }

        // Write the new content to the file
        app.write(text, { to: openedFile, startingAt: app.getEof(openedFile) })

        // Close the file
        app.closeAccess(openedFile)

        // Return a boolean indicating that writing was successful
        return true
    }
  catch(error){

        try {
            // Close the file
            app.closeAccess(file)
        }
        catch(error) {
            // Report the error is closing failed
            console.log(`Couldn't close file: ${error}`)
        }

        // Return a boolean indicating that writing was successful
        return false
    }
}

var story = "Once upon a time in Silicon Valley..."
var desktopString = app.pathTo("desktop").toString()
var file = `${desktopString}/MY STORY.txt`
writeTextToFile(story, file, true)                              y jscr  ��ޭ