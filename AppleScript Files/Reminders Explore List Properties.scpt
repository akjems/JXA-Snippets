JsOsaDAS1.001.00bplist00�Vscript_�
// Extracting Reminder list properties

var Reminders = Application("Reminders");

// Return name of emblem used
Reminders.lists.byName("New List").emblem()

// Check if list exists
//Reminders.lists.byName("Master List").exists()                            � jscr  ��ޭ