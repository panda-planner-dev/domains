( define 
  ( tasks satellite-tasks )

  ( :task GET_IMAGE
    :parameters
    ( ?dir ?mode )
    :precondition
    ( and
      ( direction ?dir )
      ( mode ?mode )
    )
    :effect
    ( and
      ( have_image ?dir ?mode )
    )
  )

)
