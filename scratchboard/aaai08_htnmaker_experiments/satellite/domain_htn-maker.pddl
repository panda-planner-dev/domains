( define 
  ( domain satellite )

  ( :action !TURN_TO
    :parameters ( ?s ?d_new ?d_prev )
    :precondition
    ( and 
      ( satellite ?s )
      ( direction ?d_new )
      ( direction ?d_prev )
      ( pointing ?s ?d_prev )
      ( different ?d_new ?d_prev ) 
    )
    :effect
    ( and 
      ( pointing ?s ?d_new )
      ( not 
        ( pointing ?s ?d_prev )
      )
    )
  )

  ( :action !SWITCH_ON
    :parameters ( ?i ?s )
    :precondition
    ( and 
      ( instrument ?i )
      ( satellite ?s )
      ( on_board ?i ?s )
      ( power_avail ?s )
    )
    :effect
    ( and 
      ( power_on ?i )
      ( not 
        ( calibrated ?i )
      )
      ( not 
        ( power_avail ?s )
      )
    )
  )

  ( :action !SWITCH_OFF
    :parameters ( ?i ?s )
    :precondition
    ( and 
      ( instrument ?i )
      ( satellite ?s )
      ( on_board ?i ?s )
      ( power_on ?i )
    )
    :effect
    ( and 
      ( power_avail ?s )
      ( not 
        ( power_on ?i )
      )
    )
  )

  ( :action !CALIBRATE
    :parameters ( ?s ?i ?d )
    :precondition
    ( and 
      ( satellite ?s )
      ( instrument ?i )
      ( direction ?d )
      ( on_board ?i ?s )
      ( calibration_target ?i ?d )
      ( pointing ?s ?d )
      ( power_on ?i )
      ( not_calibrated ?i )
    )
    :effect
    ( and
      ( calibrated ?i )
      ( not
        ( not_calibrated ?i )
      )
    )
  )

  ( :action !TAKE_IMAGE
    :parameters ( ?s ?d ?i ?m )
    :precondition
    ( and 
      ( satellite ?s )
      ( direction ?d )
      ( instrument ?i )
      ( mode ?m )
      ( calibrated ?i )
      ( on_board ?i ?s )
      ( supports ?i ?m )
      ( power_on ?i )
      ( pointing ?s ?d )
      ( power_on ?i )
    )
    :effect
    ( and
      ( have_image ?d ?m )
    )
  )

)