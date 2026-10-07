(define (domain logistics)
  (:requirements :strips :typing)
  (:types 
    city location thing - object
    package vehicle - thing
    truck airplane - vehicle
    airport - location
  )
  
  (:predicates 
    (in-city ?l - location ?c - city)
    (at ?obj - thing ?l - location)
    (in ?pkg - package ?veh - vehicle)
  )

  (:action drive
    :parameters (?t - truck ?from - location ?to - location ?c - city)
    :precondition (and (at ?t ?from) (in-city ?from ?c) (in-city ?to ?c))
    :effect (and (not (at ?t ?from)) (at ?t ?to))
  )

  (:action fly
    :parameters (?p - airplane ?from - airport ?to - airport)
    :precondition (at ?p ?from)
    :effect (and (not (at ?p ?from)) (at ?p ?to))
  )

  (:action load
    :parameters (?pkg - package ?veh - vehicle ?loc - location)
    :precondition (and (at ?pkg ?loc) (at ?veh ?loc))
    :effect (and (not (at ?pkg ?loc)) (in ?pkg ?veh))
  )

  (:action unload
    :parameters (?pkg - package ?veh - vehicle ?loc - location)
    :precondition (and (in ?pkg ?veh) (at ?veh ?loc))
    :effect (and (not (in ?pkg ?veh)) (at ?pkg ?loc))
  )
)
