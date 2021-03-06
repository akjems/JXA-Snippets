JsOsaDAS1.001.00bplist00�Vscript_
// Unlike elements which can be added, properties cannot be changed, but new events must be created with new property and the previous event deleted. 
// is this correct? https://stackoverflow.com/questions/9454863/updating-javascript-object-property/48209957
// This script creates an example event and then based on that event creates a new event with a new description property. 

// Add standard library for dialog boxes
var app = Application.currentApplication();
app.includeStandardAdditions = true;

//Set Calendar to be the Application Calendar
var Calendar = Application('Calendar');

//Set name of Calendar you are using
var calendarUsed = "Demo";

//use Demo as the used Calendar by searching for it.
var projectCalendars = Calendar.calendars.whose({name: calendarUsed});
//Use the first result that matches name search
var projectCalendar = projectCalendars[0];

//You need the time now as an object
var timeNow = new Date();

//inAnHour as well
var inAnHour = new Date();

//Create Date object one hour ago for search criteria 
inAnHour.setHours(timeNow.getHours()+1);


//Create new event with values from pervious event and end time of timeNow
newEvent=Calendar.Event({summary: "Demo Event", startDate: timeNow, endDate: inAnHour});

// Push the event to the calendar
projectCalendar.events.push(newEvent);

// Get ID of last created event to be used to delete the event without description
var eventWithoutDescriptionId = projectCalendar.events.last.id()


var descriptionText = "This event was created with a description";

//Create new event with same valuses as it replaces and new descritption
eventWithDescription=Calendar.Event({summary: "Demo Event" , startDate: timeNow, endDate: inAnHour, description: descriptionText})

// push the event to the calendar
projectCalendar.events.push(eventWithDescription)

//Delete the event without description.
try {
Calendar.delete(projectCalendar.events.byId(eventWithoutDescriptionId))
}
catch(err){
	var errorMsg = app.displayDialog("Error", {
	buttons: ["Cancel", "Continue"],
	defaultButton: "Continue"
	})
}                              1 jscr  ��ޭ