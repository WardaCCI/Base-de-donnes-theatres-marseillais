-- example jointure right
select * from halo_representation
RIGHT JOIN halo_reservation ON halo_reservation.idReservation = halo_representation.fk_idReservation;

-- example jointure left 
select * from halo_reservation
LEFT JOIN halo_representation ON halo_reservation.idReservation = halo_representation.fk_idReservation;

--INNER JOINT

select * from halo_reservation
INNER JOIN halo_representation ON halo_reservation.idReservation = halo_representation.fk_idReservation;

-- where reservation =2;
SELECT 
    *
FROM
    halo_reservation
        INNER JOIN
    halo_representation ON halo_reservation.idReservation = halo_representation.fk_idReservation
WHERE
    halo_reservation.idReservation = 2;

-- une seule reservation pour 2 representations
    SELECT 
    *
FROM
    halo_reservation AS rs
INNER JOIN halo_representation AS rep ON rs.idReservation = rep.fk_idReservation
WHERE rs.idReservation = 2;

-- double jointure;;;;


SELECT 
    *
FROM
    halo_reservation AS rs
INNER JOIN halo_representation AS rep ON rs.idReservation = rep.fk_idReservation
LEFT JOIN halo_representation_periode AS reper ON rep.idRepresentation =reper.fk_idRepresentation1 
WHERE rs.idReservation = 2;


-- example  de Selection
SELECT 
    rs.idReservation,rep.heureDebut,rep.idRepresentation,per.libelePeriode
FROM
    halo_reservation AS rs
INNER JOIN halo_representation AS rep ON rs.idReservation = rep.fk_idReservation
LEFT JOIN halo_representation_periode AS reper ON rep.idRepresentation =reper.fk_idRepresentation1 
INNER join halo_periode as per ON reper.fk_idPeriode=per.idPeriode

WHERE rs.idReservation = 2;


-- example 
SELECT 
    rs.idReservation,rep.heureDebut,rep.idRepresentation,per.libelePeriode
FROM
    halo_reservation AS rs
INNER JOIN halo_representation AS rep ON rs.idReservation = rep.fk_idReservation
LEFT JOIN halo_representation_periode AS reper ON rep.idRepresentation =reper.fk_idRepresentation1 
LEFT join halo_periode as per ON reper.fk_idPeriode=per.idPeriode

WHERE rs.idReservation = 2;
