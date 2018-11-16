function bookings() {

const btn_next_booking = document.getElementById("btn-next-booking");
const btn_past_booking = document.getElementById("btn-past-booking");

const next_bookings = document.getElementById("next_bookings");
const past_bookings = document.getElementById("past_bookings");

  btn_past_booking.addEventListener("click", (event) => {
    past_bookings.classList.remove("hidden");
    next_bookings.classList.add("hidden");
    btn_past_booking.classList.add("active");
    btn_next_booking.classList.remove("active");
  });


  btn_next_booking.addEventListener("click", (event) => {
    past_bookings.classList.add("hidden");
    next_bookings.classList.remove("hidden");
    btn_past_booking.classList.remove("active");
    btn_next_booking.classList.add("active");
  });

}

export { bookings };
