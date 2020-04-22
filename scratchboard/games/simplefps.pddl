; SimpleFPS PDDL domain v1
;
; DATE   : 20 July 2011
; FILE   : SimpleFPS_PDDL_Domain.txt
; AUTHOR : Michail Papakonstantinou, Stavros Vassos
; EMAIL  : sdi0600151@di.uoa.gr, stavrosv@di.uoa.gr
; WWW    : stavros.lostre.org/sFPS
;

(define (domain SimpleFPS_PDDL)
(:requirements :strips)

(:predicates 
	(npc-at ?area)
	(npc-close-to ?point)
    	(npc-covered)
	(npc-uncovered)
        (npc-holding ?o)
	(npc-injured)
	(npc-full-health)
	(npc-aware)
	(npc-unaware)
	(npc-not-close-to-point)

	(player ?player)
        (player-wounded)

	(lighted ?area)
	(dark ?area)

	(point-of-interest ?point ?area)

	(control-box ?point)

	(cover-point ?point)

	(item ?item)
	
	(keycard ?item ?waypoint)

	(medikit ?item)

	(knife ?item)
	
	(gun ?item)
	(has-nightvision ?item)
	(ammo ?item ?gun)
	(loaded ?gun)
	(unloaded ?gun)
	

	(connected ?area1 ?area2 ?waypoint)
		
	(waypoint ?waypoint)
	(open ?waypoint)
	(closed ?waypoint)
)

(:action moving-to-patrol
:parameters (?fromarea ?toarea ?waypoint)
:precondition (and 
		(connected ?fromarea ?toarea ?waypoint)
               	(npc-at ?fromarea)
		(waypoint ?waypoint)
		(open ?waypoint)
		(npc-uncovered)
		(npc-unaware)
		(npc-close-to ?waypoint)
		)
:effect (and 
		(npc-at ?toarea)
		(npc-not-close-to-point)
             	(not (npc-at ?fromarea))
		(not (npc-close-to ?waypoint))
	)
)

(:action moving-to-take-position
:parameters (?fromarea ?toarea ?waypoint)
:precondition (and 
		(connected ?fromarea ?toarea ?waypoint)
               	(npc-at ?fromarea)
		(waypoint ?waypoint)
		(open ?waypoint)
		(npc-aware)
		(npc-uncovered)
		(npc-close-to ?waypoint)
		)
:effect (and 
		(npc-at ?toarea)
		(npc-not-close-to-point)
             	(not (npc-at ?fromarea))
		(not (npc-close-to ?waypoint))
	)
)

(:action move-away-from-point
:parameters (?area ?point)
:precondition (and
		(npc-at ?area)
		(point-of-interest ?point ?area)
		(npc-close-to ?point)
		)
:effect (and
		(not (npc-close-to ?point))
		(npc-not-close-to-point)
	)
)

(:action move-to-point
:parameters (?area ?point)
:precondition (and
		(npc-at ?area)
		(point-of-interest ?point ?area)
		(npc-not-close-to-point)
		)
:effect (and
		(npc-close-to ?point)
		(not (npc-not-close-to-point))
	)
)

(:action move-to-point-from-point
:parameters (?area ?point ?previouspoint)
:precondition (and
		(npc-at ?area)
		(point-of-interest ?point ?area)
		(point-of-interest ?previouspoint ?area)
		(npc-close-to ?previouspoint)
		)
:effect (and
		(npc-close-to ?point)
		(not (npc-close-to ?previouspoint))
		(not (npc-not-close-to-point))
	)
)

(:action make-accessible
:parameters (?area1 ?area2 ?waypoint ?item)
:precondition (and
		(npc-holding ?item)
		(keycard ?item ?waypoint)
		(npc-at ?area1)
		(connected ?area1 ?area2 ?waypoint)
		(waypoint ?waypoint)
		(closed ?waypoint)
		(npc-close-to ?waypoint)
		)
:effect (and
		(not (closed ?waypoint))
		(open ?waypoint)
		(not (npc-holding ?item))
	)
)

(:action take-cover
:parameters (?area ?point)
:precondition (and
		(npc-at ?area)
		(point-of-interest ?point ?area)
		(cover-point ?point)
		(npc-close-to ?point)
		(npc-uncovered)
		)
:effect (and
		(npc-covered)
		(not (npc-uncovered))
	)
)

(:action uncover
:parameters (?point)
:precondition (and
		(npc-covered)
		(npc-close-to ?point)
		)
:effect (and
		(not (npc-covered))
		(npc-uncovered)
		(not (npc-close-to ?point)
		(npc-not-close-to-point))
	)
)

(:action place-in-inventory
:parameters (?area ?item)
:precondition (and 
		(npc-at ?area)
               	(point-of-interest ?item ?area)
		(npc-close-to ?item)
		(item ?item)
		(npc-uncovered)
		(lighted ?area)
		)
:effect (and 
		(not (point-of-interest ?item ?area))
             	(npc-holding ?item)
		(not (npc-close-to ?item))
		(npc-not-close-to-point)
	)
)

(:action reload
:parameters (?gun ?item)
:precondition (and
		(npc-holding ?gun)
		(npc-holding ?item)
		(gun ?gun)
		(unloaded ?gun)
		(ammo ?item ?gun)
		)
:effect	(and
		(not (unloaded ?gun))
		(loaded ?gun)
		(not (npc-holding ?item))
	)
)

(:action attack-melee
:parameters  (?area ?knife ?player)
:precondition (and
		(npc-aware) 
		(npc-at ?area)
		(point-of-interest ?player ?area)
		(lighted ?area)
		(npc-holding ?knife)
                (knife ?knife)
		(npc-close-to ?player)
		(player ?player)
		(npc-uncovered)
		)
:effect (player-wounded)
)

(:action attack-ranged
:parameters  (?npcarea ?gun ?player)
:precondition (and
		(lighted ?npcarea)
		(npc-aware) 
		(npc-at ?npcarea)
		(point-of-interest ?player ?npcarea)
               	(player ?player)
		(gun ?gun)
		(loaded ?gun)
                (npc-holding ?gun)
		)
:effect (and
		(player-wounded)
		(not (loaded ?gun))
		(unloaded ?gun)
	)
		
)

(:action use-medikit
:parameters (?item)
:precondition (and
		(item ?item)
		(npc-holding ?item)
		(medikit ?item)
		(npc-injured)
		)
:effect (and
		(not (npc-injured))
		(not (npc-holding ?item))
		(npc-full-health)
	)
)

(:action make-contact
:parameters (?npcarea ?player)
:precondition (and
		(lighted ?npcarea)
		(npc-at ?npcarea)
		(point-of-interest ?player ?npcarea)
		(player ?player)
		(npc-unaware)
		)
:effect (and
		(npc-aware)
		(not (npc-unaware))
	)
)

(:action sneak-kill
:parameters (?npcarea ?gun ?player)
:precondition (and
		(npc-at ?npcarea)
		(point-of-interest ?player ?npcarea)
		(player ?player)
		(npc-holding ?gun)
		(has-nightvision ?gun)
		(loaded ?gun)
		(dark ?npcarea)
		)
:effect (and
		(npc-aware)
		(not (npc-unaware))
		(player-wounded)
		(not (loaded ?gun))
		(unloaded ?gun)
	)
)

(:action turn-on-lights
:parameters (?area ?point)
:precondition (and
		(npc-uncovered)
		(npc-at ?area)
		(dark ?area)
		(point-of-interest ?point ?area)
		(npc-close-to ?point)
		(control-box ?point)
		)
:effect (and
		(not (dark ?area))
		(lighted ?area)
	)
)


(:action turn-off-lights
:parameters (?area ?point)
:precondition (and
		(npc-uncovered)
		(npc-at ?area)
		(lighted ?area)
		(npc-close-to ?point)
		(control-box ?point)
		)
:effect (and
		(not (lighted ?area))
		(dark ?area)
		(not (npc-close-to ?point))
	)
)

)
