create view user as select Ti.Ticket_id, Ti.Flight_id, Ti.Passenger_id, Ps.Name, Ps.Contact_no, fl.From_City, fl.To_City, fl.Arrival_time, fl.Departure_time from Ticket Ti, Passenger Ps ,Flight fl where Ps.Passenger_id = Ti.Passenger_id and Ti.Flight_id=fl.Flight_id;
  select * from user;
//example:
  select * from user where Name="jake" and Passenger_id="PS010";

 create view pilot as select fl.Flight_id, p.Pilot_id, fl.From_City, fl.To_City, fl.Arrival_time,fl.Departure_time ,s.Staff_id , s.name, s.Contact_no from Pilot p, Staff s ,Flight fl where fl.Flight_id = p.Flight_id and s.Flight_id=fl.Flight_id;
 select * from pilot;
//example:
 select * from pilot where Pilot_id="PL007"

create view staff as select fl.Flight_id, p.Pilot_id, fl.From_City, s.Staff_id, fl.To_City, fl.Arrival_time, fl.Departure_time , p.Name, ti.Passenger_id  from Pilot p,Ticket ti ,Flight fl ,Staff s where fl.Flight_id = p.Flight_id and s.Flight_id=fl.Flight_id and ti.Flight_id=fl.Flight_id;
 select * from staff;
//example:
 select * from staff where Staff_id="ST002"
