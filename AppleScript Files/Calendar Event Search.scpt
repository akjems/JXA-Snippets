JsOsaDAS1.001.00bplist00�Vscript_&
////Requires "Demo" calendar with events


var Calendar = Application('Calendar') 
// Create demoDays object, which is an array of events where summaries start with Blog  
var demoDays = Application('Calendar').calendars[12].events.whose({ summary: { _beginsWith: 'Demo' } })()
//Result: [Application("Calendar").calendars.byId("3E7ADB20-0113-4FD7-B04B-2AA470B83380").events.byId("5D241B42-D0EF-4312-B99F-E1E38A2E09A0"), Application("Calendar").calendars.byId("3E7ADB20-0113-4FD7-B04B-2AA470B83380").events.byId("C6E3B842-AAB3-4E95-8106-918E1FCB1C4C")]


//Number of events starting with Blog in the Demo Calendar
demoDays.length
//Result: 2

// Summary of first event returned
demoDays[0].summary()
// Result: "Blog Apple launchd"

// Date event started
demoDays[0].startDate()
// Result: Fri Jul 19 2019 08:50:00 GMT+0200 (CEST)
// it is an "object"


//Date in milliseconds
Date.now()
//Result: 1584451353422

var timeNow = new Date()
//new keyword makes Date object

var oneHour = 60 * 60 * 1000;
//Create Date object that is one hour ago timeNow.
var anHourAgo = new Date(new Date() - oneHour);



//https://stackoverflow.com/questions/38023712/comparisons-rich-queries-in-javascript-for-automation-jxa-whose
var recentDemoEvents = Application('Calendar').calendars[12].events.whose({
	_and: [
		{ startDate: { _greaterThan: anHourAgo }}, 
		{ startDate: { _lessThan: timeNow}}
	]
});




//Array of events that started in the past hour.
recentDemoEvents();

//Single event's summary that started in past hour from the Demo Calendar
recentDemoEvents[0]().summary();


                              <jscr  ��ޭ