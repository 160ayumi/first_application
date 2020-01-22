$(document).ready(function(){
  $('#calendar').fullCalendar({

    header:{
      left:'prev,next,today',
      center:'title,eventListButton',
      right:'month agendaWeek agendaDay'
  },
    buttonText: {
      month:'月',
      week: '週',
      day:'日'
  },
    customButtons:{
      eventListButton:{
          text: 'イベントリスト',
          click:function(){
              alert('イベントリスト!');
          }
      }
    }

  });
});