JsOsaDAS1.001.00bplist00�Vscript_S
//Set Calendar to be the Application Calendarvar Calendar = Application('Calendar') //Set name of Calendar you are usingvar calendarUsed = "Demo"//use Demo as the used Calendar by searching for it.var projectCalendars = Calendar.calendars.whose({name: calendarUsed})//Use the first result that matches name searchvar projectCalendar = projectCalendars[0]

events = projectCalendar.events()

// This sorts all events so it may take a while
events.sort(function (a,b){
	if (a.startDate() > b.startDate()) return -1;
	if (a.startDate() < b.startDate()) return 1;
	return 0
	});


// Script Editor only outputs one value, so an array to show that start dates are in order
var holderArray= []

for (let i=0; i < events.length; i++){
	holderArray.push(events[i]);
	}

// Most Recent event is now first as sort is decending

events[0].startDate()                              i jscr  ��ޭ