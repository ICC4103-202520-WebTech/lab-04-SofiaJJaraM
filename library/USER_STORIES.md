EXAMPLE As a [type of user], I want [some feature] so that [some reason]

**ROOM MANAGEMENT**
- As a *hotel staff member in charge of managment*, I want *to manage rooms with their type, status, and nightly rate* so that *I can maintain an up-to-date room list*.
- As a *hotel staff member in charge of management*, I want *to define different room types* so that *the hotel can offer varied accommodation options to guests*.
- As a *hotel staff member in charge of managment*, I want *to manage rooms availability (status)* so that *I can prevent overlapping*.
- As a *hotel staff member in charge of management*, I want *to set nightly rates for each room type* so that *pricing is consistent*.
- As a *hotel staff member in charge of managment*, I want *to ensure that rooms are in optimal condition* so that *I can determine whether they need maintenance or not*.
- As a *hotel staff member in charge of managment*, I want *to mark rooms´ status as under maintenance* so that *they are not assigned to guests during that period*.
- As a *potential guest*, I want *to know the specifications of the rooms* so that *I can see if they fit what I am looking for*.
- As a *potential guest*, I want *to have the nightly rates of a room available* so that *I can check if they are within my budget*.
- As a *potential guest*, I want *to know the availability of rooms* so that *I can plan ahead and reserve the one I want*.

**GUEST REGISTRATION**
- As a *hotel staff member in charge of reception*, I want *to register guests* so that *I have their information in case of an emergency during their stay*.
- As a *hotel staff member in charge of reception*, I want *to register guests* so that *I can keep a record of their stays*.
- As a *hotel staff member in charge of reception*, I want *to register guests* so that *I have the information of the person responsible for payment once they do a reservation*.
- As a *potential guest*, I want *to register* so that *my contact details are saved and I don’t have to re-enter them each time*.
- As a *potential guest*, I want *to register* so that *I can have a history of my stays*.
- As a *potential guest*, I want *to register* so that *I can receive confirmations and notifications of my reservations*.

**RESERVATION CREATION AND ROOM ASIGNMENT**
- As a *hotel staff member in charge of reception*, I want *to provide a room reservation system to future guests* so that *overlapping bookings are avoided*.
- As a *hotel staff member in charge of reception*, I want *to provide a room reservation system to future guests* so that *I can maintain organization and know the availability of each room for certain dates*.
- As a *hotel staff member in charge of reception*, I want *to provide a room reservation system to future guests* so that *the cleaning staff can ensure the room is in optimal condition before the guest arrives*.
- As a *registered guest*, I want *to reserve a room* so that *I can plan my trip in advance and avoid inconveniences*.
- As a *registered guest*, I want *to reserve a room* so that *I can ensure availability on the dates I need*.
- As a *registered guest*, I want *to reserve a room* so that *I can choose the type of room that best fits my needs*.

**SERVICE CONSUMPTION TRACKING**
- As a *hotel staff member in charge of administration*, I want *to track and record additional services consumed by the guest* so that *I can calculate and charge extra fees in the final invoice*.
- As a *hotel staff member in charge of administration*, I want *to track and record additional services consumed by the guest* so that *I know which ones are most requested and expand the offer*.
- As a *hotel staff member in charge of administration*, I want *to monitor the availability of certain services* so that *overbooking or duplicate reservations are avoided*.
- As a *guest*, I want *to see the available additional services* so that *I can choose the ones I am most interested in*.
- As a *guest*, I want *to know the cost of additional services* so that *I can decide whether to use them or not*.
- As a *guest*, I want *to keep a record of the additional services I consumed* so that *I know how much I will have to pay in total*.

**CHECK-IN AND CHECK-OUT**
- As a *hotel staff member in charge of reception*, I want *to perform check-in* so that *I can confirm the attendance of the guest who made the reservation*.
- As a *hotel staff member in charge of reception*, I want *to perform check-in and check-out* so that *I know whether a room is available or occupied*.
- As a *hotel staff member in charge of reception*, I want *to perform check-out* so that *I can ensure the guest does not exceed their stay period*.
- As a *hotel staff member in charge of reception*, I want *to perform check-out* so that *I can charge the guest’s final invoice*.
- As a *guest*, I want *to check-in* so that *I can confirm my attendance and ensure my room is not given to someone else*.
- As a *guest*, I want *to check-in and check out* so that *I have a record of my stay and am billed accordingly*.
- As a *guest*, I want *to check out* so that *I can pay the final invoice after finishing my stay*.

**INVOICE GENERATION**
- As a *hotel staff member in charge of reception*, I want *to generate an invoice at check-out* so that *I can charge the guest for their stay and services consumed*.
- As a *hotel staff member in charge of reception*, I want *the invoice to be generated automatically with the calculation of nights × room rate + additional services + VAT* so that *the amount is accurate*.
- As a *hotel staff member in charge of administration*, I want *to keep a record of all invoices* so that *I can maintain financial and accounting control*.
- As a *guest*, I want *to receive a clear and detailed invoice of my stay* so that *I understand the charges made*.
- As a *guest*, I want *the invoice to show a breakdown between room nights, services consumed, VAT, and total* so that *I can verify everything is correct*.
- As a *guest*, I want *to be able to pay the total invoice with different methods* so that *I can choose the one that is most convenient for me*.


//RELATIONAL MODEL
Room(**number**, room_type, price, status)
Guest(first_name, last_name, email, phone, **document_id**)
Reservation(**code**, *guest_id*, *room_id*, check_in, check_out, status, adults, children)
Service(**name**, price, is_active)
ServiceUsage(***reservation_id***, ***service_id***, quantity, used_at)
Invoice(*reservation_id*, nights_subtotal, services_subtotal, tax, total, issued_at, status)