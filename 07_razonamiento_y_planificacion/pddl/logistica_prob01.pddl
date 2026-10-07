(define (problem logistics-easy)
  (:domain logistics)
  (:objects 
    city1 - city
    loc1 loc2 - location
    truck1 - truck
    pkg1 - package
  )
  (:init 
    (in-city loc1 city1) (in-city loc2 city1)
    (at truck1 loc1)
    (at pkg1 loc1)
  )
  (:goal (at pkg1 loc2))
)
