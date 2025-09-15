Room.delete_all
Guest.delete_all
Reservation.delete_all
Service.delete_all
ServiceUsage.delete_all
Invoice.delete_all

Room.create!(number: "101", room_type: 0, price: 50000, status: 0)
Room.create!(number: "102", room_type: 1, price: 75000, status: 0)
Room.create!(number: "201", room_type: 2, price: 120000, status: 0)

Guest.create!(first_name: "Sofía", last_name: "Jara", email: "sofiaj@gmail.com", phone: "926052004", document_id: "21527113-7")
Guest.create!(first_name: "Christian", last_name: "Montecinos", email: "chrism@gmail.com", phone: "922102004", document_id: "98765432-1")

Reservation.create!(code: "R00001", guest_id: 1, room_id: 1, check_in: Date.today, check_out: Date.today + 3, status: 0, adults: 2, children: 1)
Reservation.create!(code: "R00002", guest_id: 2, room_id: 2, check_in: Date.today + 1, check_out: Date.today + 4, status: 0, adults: 1, children: 0)

Service.create!(name: "Minibar", price: 5000, is_active: true)
Service.create!(name: "Laundry", price: 8000, is_active: true)
Service.create!(name: "Massage", price: 20000, is_active: true)

ServiceUsage.create!(reservation_id: 1, service_id: 1, quantity: 2, used_at: DateTime.now, note: "2 drinks")
ServiceUsage.create!(reservation_id: 1, service_id: 2, quantity: 1, used_at: DateTime.now, note: "Laundry service")

Invoice.create!(reservation_id: 1, nights_subtotal: 150000, services_subtotal: 13000, tax: 31000, total: 194000, issued_at: DateTime.now, status: "paid")
Invoice.create!(reservation_id: 2, nights_subtotal: 225000, services_subtotal: 0, tax: 42750, total: 267750, issued_at: DateTime.now, status: "pending")
