JsOsaDAS1.001.00bplist00�Vscript_:
var app = Application.currentApplication();
app.includeStandardAdditions = true;

var Finder = Application("Finder");
var SystemEvents = Application("System Events");

// Ask a folder to process

var sourcePathStr = "~/Demo/sampleDir"

//Expands ~ to be full user path
var expandedSourcePathStr = $(sourcePathStr).stringByStandardizingPath.js

// Allows for running the script multiple times
var duplicateAvoider = Date.now().toString()


// function sourceFolder
var sourceFolder = SystemEvents.aliases.byName(expandedSourcePathStr);
//Result: Application("System Events").aliases.byName("/Users/adkj/Demo/sampleDir")

// Create the destination folder

//function container
var container = sourceFolder.container();
//Result: Application("System Events").folders.byName("Macintosh HD:Users:adkj:Demo")

// String containerPath
var containerPath = container.path();
//Result: "Macintosh HD:Users:adkj:Demo"

// .make is function/method from Standard Suite
var destinationFolder = Finder.make(
	{
 		new: "folder", 
		at: containerPath,
		withProperties: 
		{ 
			name: sourceFolder.name() + " - New"
 
		}
	}
);

// Create an array of items functions to be processed
var items = SystemEvents.aliases.byName(sourcePathStr).diskItems;
items[0]()
//Result: Path("/Users/adkj/Demo/sampleDir/samplefile.rtf")

items[0].class()
//Result: "file"

items[0].name()
//Result: "samplefile.rtf"

items[1].path()
//Result: "Macintosh HD:Users:adkj:Demo:sampleDir:.DS_Store"


//Finder.move("Macintosh HD:Users:adkj:Demo:sampleDir:samplefile.rtf", { to: "Macintosh HD:Users:adkj:Demo:sampleDir - New" });


                              Pjscr  ��ޭ