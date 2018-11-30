import "bootstrap";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(
  ".datepicker", {
   altInput: true,
   "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    },
    disable: [
        function(date) {
            // return true to enable
            return (date.getDay() === 0);

        }
    ]
 })

  // flatpickr(".timepicker", {
  // altInput: true,
  // enableTime: true,
  // noCalendar: true,
  // // mode: "range",
  // minTime: "08:00",
  // maxTime: "18:00",
  // plugins: [new rangePlugin({ input: "#end_time"})]
  // enable: [
  //       {
  //           from: "08:00",
  //           to: "10:00"
  //       },
  //       {
  //           from: "10:00",
  //           to: "12:00"
  //       }
  //   ]

// } )
