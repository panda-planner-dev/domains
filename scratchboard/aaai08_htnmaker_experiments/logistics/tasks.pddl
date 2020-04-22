(define (tasks logistics-tasks)

  ( :task DELIVER-PKG
    :parameters
    ( ?obj ?dst )
    :precondition
    ( and
      ( OBJ ?obj )
      ( LOCATION ?dst )
    )
    :effect
    ( and
      ( at ?obj ?dst )
    )
  )

)
