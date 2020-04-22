(define (tasks bw-tasks)

  ( :task MAKE-5PILE
    :parameters
    ( ?b1 ?b2 ?b3 ?b4 ?b5 )
    :precondition
    ( and
    )
    :effect
    ( and
      ( on-table ?b5 )
      ( on ?b1 ?b2 )
      ( on ?b2 ?b3 )
      ( on ?b3 ?b4 )
      ( on ?b4 ?b5 )
      ( clear ?b1 )
    )
  )

)
