(defdomain domain (
  (:operator (!set_Task_Name ?newObj_variable19)
    ;; preconditions
    (
      (type_Task ?newObj_variable19)
      (inMode_Tasks) (not (inMode_Menu)) (selected ?newObj_variable19)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Task_Name ?newObj_variable19))
  )
  (:operator (!set_Task_Name_Light ?newObj_variable47)
    ;; preconditions
    (
      (type_Task ?newObj_variable47)
      (inMode_Tasks) (not (inMode_Menu)) (not (inUse ?newObj_variable47)) (selected ?newObj_variable47)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Task_Name ?newObj_variable47) (inUse ?newObj_variable47) (created ?newObj_variable47))
  )
  (:operator (!press_Tasks_Menu_NewTask ?press_Tasks_Menu_NewTask_variable2)
    ;; preconditions
    (
      (type_Task ?press_Tasks_Menu_NewTask_variable2)
      (inMode_Tasks) (inMode_Menu) (not (inUse ?press_Tasks_Menu_NewTask_variable2))
    )
    ;; delete effects
    ((inMode_Menu))
    ;; add effects
    ((inMode_Tasks_ConfigureTask) (inUse ?press_Tasks_Menu_NewTask_variable2) (selected ?press_Tasks_Menu_NewTask_variable2))
  )
  (:operator (!press_Tasks_Menu)
    ;; preconditions
    (
      
      (inMode_Tasks) (not (inMode_Tasks_ConfigureTask)) (not (inMode_Menu))
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_Menu))
  )
  (:operator (!select_AccountSelection_Account ?newObj_variable140)
    ;; preconditions
    (
      (type_EMailAccount ?newObj_variable140)
      (inMode_AccountSelection)
    )
    ;; delete effects
    ((inMode_AccountSelection))
    ;; add effects
    ((selected ?newObj_variable140) (inMode_EMail_NewEMail) (inMode_EMail))
  )
  (:operator (!press_Calendar_Menu)
    ;; preconditions
    (
      
      (inMode_Calendar) (not (inMode_Calendar_ConfigureAppointment)) (not (inMode_Menu))
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_Menu))
  )
  (:operator (!set_Appointment_Time ?newObj_variable2 ?set_Appointment_Time_variable1)
    ;; preconditions
    (
      (type_Appointment ?newObj_variable2) (type_Date ?set_Appointment_Time_variable1)
      (inMode_Calendar) (inMode_Calendar_ConfigureAppointment) (selected ?newObj_variable2) (haveInformation_Regular ?set_Appointment_Time_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Appointment_Time ?newObj_variable2 ?set_Appointment_Time_variable1))
  )
  (:operator (!set_Appointment_Name ?newObj_variable8)
    ;; preconditions
    (
      (type_Appointment ?newObj_variable8)
      (inMode_Calendar) (inMode_Calendar_ConfigureAppointment) (selected ?newObj_variable8)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Appointment_Name ?newObj_variable8))
  )
  (:operator (!set_Appointment_Reminder ?newObj_variable10)
    ;; preconditions
    (
      (type_Appointment ?newObj_variable10)
      (inMode_Calendar) (inMode_Calendar_ConfigureAppointment) (selected ?newObj_variable10)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Appointment_Reminder ?newObj_variable10))
  )
  (:operator (!set_Appointment_Location ?newObj_variable9 ?set_Appointment_Location_variable1)
    ;; preconditions
    (
      (type_Appointment ?newObj_variable9) (type_Location ?set_Appointment_Location_variable1)
      (inMode_Calendar) (inMode_Calendar_ConfigureAppointment) (selected ?newObj_variable9) (haveInformation_Regular ?set_Appointment_Location_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Appointment_Location ?newObj_variable9 ?set_Appointment_Location_variable1))
  )
  (:operator (!set_Alarm_Time ?setAlarm_Time_variable1 ?set_Alarm_Time_variable1)
    ;; preconditions
    (
      (type_Alarm ?setAlarm_Time_variable1) (type_Date ?set_Alarm_Time_variable1)
      (inMode_Clock) (inMode_Clock_Alarm) (haveInformation_Regular ?set_Alarm_Time_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Alarm_Time ?setAlarm_Time_variable1 ?set_Alarm_Time_variable1))
  )
  (:operator (!set_Alarm_Description ?newObj_variable6)
    ;; preconditions
    (
      (type_Alarm ?newObj_variable6)
      (inMode_Clock) (inMode_Clock_Alarm)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Alarm_Description ?newObj_variable6))
  )
  (:operator (!activate_Alarm ?selectAlarm_variable1)
    ;; preconditions
    (
      (type_Alarm ?selectAlarm_variable1)
      (inMode_Clock) (inMode_Clock_Alarm)
    )
    ;; delete effects
    ()
    ;; add effects
    ((active_Alarm ?selectAlarm_variable1))
  )
  (:operator (!set_Alarm_Days ?setAlarm_Days_variable1 ?set_Alarm_Days_variable1)
    ;; preconditions
    (
      (type_Alarm ?setAlarm_Days_variable1) (type_Date ?set_Alarm_Days_variable1)
      (inMode_Clock) (inMode_Clock_Alarm) (haveInformation_Regular ?set_Alarm_Days_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Alarm_Days ?setAlarm_Days_variable1 ?set_Alarm_Days_variable1))
  )
  (:operator (!press_Home_Clock)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_Clock))
  )
  (:operator (!press_Clock_Alarm)
    ;; preconditions
    (
      
      (inMode_Clock)
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_Clock_Alarm))
  )
  (:operator (!set_Contact_NumberMobile ?newObj_variable37 ?set_Contact_Mobile_variable1 ?set_Contact_Mobile_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable37) (type_Contactable ?set_Contact_Mobile_variable1) (type_NumberMobile ?set_Contact_Mobile_variable2)
      (inMode_Contacts_ConfigureContact) (inMode_Contacts) (not (inMode_PictureSelection)) (haveInformation_Contactable ?set_Contact_Mobile_variable1 ?set_Contact_Mobile_variable2) (associated_Contact ?newObj_variable37 ?set_Contact_Mobile_variable1) (selected ?newObj_variable37)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Contact_NumberMobile ?newObj_variable37))
  )
  (:operator (!set_Contact_NumberOffice ?newObj_variable38 ?set_Contact_Office_variable1 ?set_Contact_Office_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable38) (type_Contactable ?set_Contact_Office_variable1) (type_NumberOffice ?set_Contact_Office_variable2)
      (inMode_Contacts_ConfigureContact) (inMode_Contacts) (not (inMode_PictureSelection)) (associated_Contact ?newObj_variable38 ?set_Contact_Office_variable1) (haveInformation_Contactable ?set_Contact_Office_variable1 ?set_Contact_Office_variable2) (selected ?newObj_variable38)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Contact_NumberOffice ?newObj_variable38))
  )
  (:operator (!set_Contact_Email ?newObj_variable39 ?set_Contact_Email_variable1 ?set_Contact_Email_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable39) (type_Contactable ?set_Contact_Email_variable1) (type_EMailAddress ?set_Contact_Email_variable2)
      (inMode_Contacts_ConfigureContact) (inMode_Contacts) (not (inMode_PictureSelection)) (haveInformation_Contactable ?set_Contact_Email_variable1 ?set_Contact_Email_variable2) (associated_Contact ?newObj_variable39 ?set_Contact_Email_variable1) (selected ?newObj_variable39)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Contact_EmailAddress ?newObj_variable39))
  )
  (:operator (!press_Home_Calendar)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_Calendar))
  )
  (:operator (!press_Home_Telephone)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_Telephone))
  )
  (:operator (!press_Telephone_Contacts)
    ;; preconditions
    (
      
      (inMode_Telephone)
    )
    ;; delete effects
    ((inMode_Telephone))
    ;; add effects
    ((inMode_Contacts))
  )
  (:operator (!press_Programs_Tasks)
    ;; preconditions
    (
      
      (inMode_Programs)
    )
    ;; delete effects
    ((inMode_Programs))
    ;; add effects
    ((inMode_Tasks))
  )
  (:operator (!press_Home_Programs)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_Programs))
  )
  (:operator (!press_Calendar_Menu_NewAppointment ?press_Calendar_Menu_NewAppointment_variable1)
    ;; preconditions
    (
      (type_Appointment ?press_Calendar_Menu_NewAppointment_variable1)
      (inMode_Calendar) (inMode_Menu) (not (inUse ?press_Calendar_Menu_NewAppointment_variable1))
    )
    ;; delete effects
    ((inMode_Menu))
    ;; add effects
    ((inMode_Calendar_ConfigureAppointment) (inUse ?press_Calendar_Menu_NewAppointment_variable1) (selected ?press_Calendar_Menu_NewAppointment_variable1))
  )
  (:operator (!press_Home_Default)
    ;; preconditions
    (
      
      (not (inMode_People_AddFavourite)) (not (entered_AnyNumber)) (not (inMode_Contacts_Details))
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (inMode_EMail) (inMode_EMail_NewEMail) (inMode_EMail_Inbox) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Home_From_Add_Favourite ?newObj_variable69)
    ;; preconditions
    (
      (type_Contact ?newObj_variable69)
      (inMode_People_AddFavourite)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_People_AddFavourite) (selected_AddAsFavourite ?newObj_variable69) (selected_FavouriteNumber) (inMode_Messages) (inMode_NewMessage) (inMode_EMail) (inMode_EMail_Inbox) (inMode_EMail_NewEMail) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_EMail_NewEMail ?press_EMail_NewEMail_variable1)
    ;; preconditions
    (
      (type_EMailAccount ?press_EMail_NewEMail_variable1)
      (inMode_EMail) (not (inMode_EMail_NewEMail)) (not (inMode_EMail_Inbox)) (selected ?press_EMail_NewEMail_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_EMail_NewEMail))
  )
  (:operator (!select_EMail_EMailAccount_NoOp ?newObj_variable137)
    ;; preconditions
    (
      (type_EMailAccount ?newObj_variable137)
      (inMode_EMail) (not (inMode_EMail_NewEMail)) (not (inMode_EMail_Inbox)) (selected ?newObj_variable137)
    )
    ;; delete effects
    ()
    ;; add effects
    ((selected ?newObj_variable137))
  )
  (:operator (!select_EMail_EMailAccount_WithPreviousSelection ?newObj_variable114 ?select_EMail_EMailAccount_variable1)
    ;; preconditions
    (
      (type_EMailAccount ?newObj_variable114) (type_EMailAccount ?select_EMail_EMailAccount_variable1)
      (inMode_EMail) (selected ?newObj_variable114) (not (inMode_EMail_NewEMail)) (not (inMode_EMail_Inbox)) (not (selected ?select_EMail_EMailAccount_variable1))
    )
    ;; delete effects
    ((selected ?newObj_variable114))
    ;; add effects
    ((selected ?select_EMail_EMailAccount_variable1))
  )
  (:operator (!press_Home_From_SMS_Mobile ?newObj_variable15)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable15)
      (inMode_NewMessage) (entered_NumberMobile ?newObj_variable15) (entered_AnyNumber)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (inMode_EMail) (inMode_EMail_Inbox) (inMode_EMail_NewEMail) (entered_NumberMobile ?newObj_variable15) (entered_AnyNumber) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Home_From_Telephone_Office ?newObj_variable98)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable98)
      (inMode_Telephone) (entered_NumberOffice ?newObj_variable98) (entered_AnyNumber)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (entered_NumberOffice ?newObj_variable98) (inMode_EMail) (inMode_EMail_Inbox) (inMode_EMail_NewEMail) (entered_AnyNumber) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Home_From_SMS_Office ?newObj_variable105)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable105)
      (inMode_NewMessage) (entered_NumberOffice ?newObj_variable105) (entered_AnyNumber)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (entered_NumberOffice ?newObj_variable105) (inMode_EMail) (inMode_EMail_Inbox) (inMode_EMail_NewEMail) (entered_AnyNumber) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Home_From_Telephone_Mobile ?newObj_variable97)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable97)
      (inMode_Telephone) (entered_NumberMobile ?newObj_variable97) (entered_AnyNumber)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (inMode_EMail) (inMode_EMail_Inbox) (inMode_EMail_NewEMail) (entered_NumberMobile ?newObj_variable97) (entered_AnyNumber) (inMode_People) (inMode_Contacts_Details))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Home_From_Contacts_Details ?newObj_variable12)
    ;; preconditions
    (
      (type_Contact ?newObj_variable12)
      (inMode_Contacts_Details) (selected ?newObj_variable12)
    )
    ;; delete effects
    ((inMode_Calendar) (inMode_Clock) (inMode_Menu) (inMode_Programs) (inMode_Tasks) (inMode_Telephone) (inMode_Contacts) (inMode_People_ReadyToAddFavourite) (inMode_Messages) (inMode_NewMessage) (inMode_EMail) (inMode_EMail_NewEMail) (inMode_EMail_Inbox) (inMode_People) (inMode_Contacts_Details) (selected ?newObj_variable12))
    ;; add effects
    ((inMode_Home))
  )
  (:operator (!press_Calendar_NewAppointment_OK ?press_Calendar_NewAppointment_OK_variable1 ?press_Calendar_NewAppointment_OK_variable2)
    ;; preconditions
    (
      (type_Appointment ?press_Calendar_NewAppointment_OK_variable1) (type_Date ?press_Calendar_NewAppointment_OK_variable2)
      (inMode_Calendar) (inMode_Calendar_ConfigureAppointment) (selected ?press_Calendar_NewAppointment_OK_variable1) (isSet_Appointment_Name ?press_Calendar_NewAppointment_OK_variable1) (isSet_Appointment_Time ?press_Calendar_NewAppointment_OK_variable1 ?press_Calendar_NewAppointment_OK_variable2)
    )
    ;; delete effects
    ((inMode_Calendar_ConfigureAppointment) (selected ?press_Calendar_NewAppointment_OK_variable1))
    ;; add effects
    ((created ?press_Calendar_NewAppointment_OK_variable1))
  )
  (:operator (!set_Task_Time ?newObj_variable25 ?set_Task_Time_variable1)
    ;; preconditions
    (
      (type_Task ?newObj_variable25) (type_Date ?set_Task_Time_variable1)
      (inMode_Tasks) (inMode_Tasks_ConfigureTask) (selected ?newObj_variable25) (haveInformation_Regular ?set_Task_Time_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Task_Time ?newObj_variable25 ?set_Task_Time_variable1))
  )
  (:operator (!set_Task_Reminder ?newObj_variable26)
    ;; preconditions
    (
      (type_Task ?newObj_variable26)
      (inMode_Tasks) (inMode_Tasks_ConfigureTask) (selected ?newObj_variable26)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Task_Reminder ?newObj_variable26))
  )
  (:operator (!press_Tasks_NewTask_OK ?press_Tasks_NewTask_OK_variable1)
    ;; preconditions
    (
      (type_Task ?press_Tasks_NewTask_OK_variable1)
      (inMode_Tasks) (inMode_Tasks_ConfigureTask) (isSet_Task_Name ?press_Tasks_NewTask_OK_variable1) (selected ?press_Tasks_NewTask_OK_variable1)
    )
    ;; delete effects
    ((inMode_Tasks_ConfigureTask) (selected ?press_Tasks_NewTask_OK_variable1))
    ;; add effects
    ((created ?press_Tasks_NewTask_OK_variable1))
  )
  (:operator (!press_Contacts_New ?press_Contacts_New_variable1 ?press_Contacts_New_variable2)
    ;; preconditions
    (
      (type_Contact ?press_Contacts_New_variable1) (type_Contactable ?press_Contacts_New_variable2)
      (inMode_Contacts) (not (inMode_Contacts_ConfigureContact)) (not (inUse ?press_Contacts_New_variable1)) (not (inMode_Contacts_Details))
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_Contacts_ConfigureContact) (associated_Contact ?press_Contacts_New_variable1 ?press_Contacts_New_variable2) (inUse ?press_Contacts_New_variable1) (selected ?press_Contacts_New_variable1))
  )
  (:operator (!press_People_More)
    ;; preconditions
    (
      
      (inMode_People)
    )
    ;; delete effects
    ((inMode_People))
    ;; add effects
    ((inMode_Contacts))
  )
  (:operator (!press_Home_People)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_People))
  )
  (:operator (!set_Contact_Name ?newObj_variable44)
    ;; preconditions
    (
      (type_Contact ?newObj_variable44)
      (inMode_Contacts_ConfigureContact) (inMode_Contacts) (not (inMode_PictureSelection)) (selected ?newObj_variable44)
    )
    ;; delete effects
    ()
    ;; add effects
    ((isSet_Contact_Name ?newObj_variable44))
  )
  (:operator (!press_Contacts_NewContact_SelectPicture ?press_Contacts_NewContact_SelectPicture_variable1)
    ;; preconditions
    (
      (type_Contact ?press_Contacts_NewContact_SelectPicture_variable1)
      (inMode_Contacts) (inMode_Contacts_ConfigureContact) (selected ?press_Contacts_NewContact_SelectPicture_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_PictureSelection))
  )
  (:operator (!press_NewMessage_Send_Office ?newObj_variable108 ?press_NewMessage_Send_Office_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable108) (type_SMS ?press_NewMessage_Send_Office_variable1)
      (inMode_NewMessage) (entered_NumberOffice ?newObj_variable108) (not (haveSent ?press_NewMessage_Send_Office_variable1))
    )
    ;; delete effects
    ((inMode_NewMessage) (entered_NumberMobile ?newObj_variable108) (entered_NumberOffice ?newObj_variable108) (entered_AnyNumber))
    ;; add effects
    ((hasReceived ?newObj_variable108 ?press_NewMessage_Send_Office_variable1) (haveSent ?press_NewMessage_Send_Office_variable1))
  )
  (:operator (!press_NewMessage_Send_Mobile ?newObj_variable107 ?press_NewMessage_Send_Mobile_variable2)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable107) (type_SMS ?press_NewMessage_Send_Mobile_variable2)
      (entered_NumberMobile ?newObj_variable107) (inMode_NewMessage) (not (haveSent ?press_NewMessage_Send_Mobile_variable2))
    )
    ;; delete effects
    ((inMode_NewMessage) (entered_NumberMobile ?newObj_variable107) (entered_NumberOffice ?newObj_variable107) (entered_AnyNumber))
    ;; add effects
    ((haveSent ?press_NewMessage_Send_Mobile_variable2) (hasReceived ?newObj_variable107 ?press_NewMessage_Send_Mobile_variable2))
  )
  (:operator (!press_Telephone_Call_Mobile ?newObj_variable73 ?press_Call_Mobile_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable73) (type_Call ?press_Call_Mobile_variable1)
      (inMode_Telephone) (entered_NumberMobile ?newObj_variable73) (not (haveSent ?press_Call_Mobile_variable1))
    )
    ;; delete effects
    ((entered_NumberMobile ?newObj_variable73) (entered_NumberOffice ?newObj_variable73) (entered_AnyNumber))
    ;; add effects
    ((haveSent ?press_Call_Mobile_variable1) (hasReceived ?newObj_variable73 ?press_Call_Mobile_variable1))
  )
  (:operator (!press_Telephone_Call_Office ?newObj_variable74 ?press_Call_Office_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable74) (type_Call ?press_Call_Office_variable1)
      (inMode_Telephone) (entered_NumberOffice ?newObj_variable74) (not (haveSent ?press_Call_Office_variable1))
    )
    ;; delete effects
    ((entered_NumberOffice ?newObj_variable74) (entered_NumberMobile ?newObj_variable74) (entered_AnyNumber))
    ;; add effects
    ((hasReceived ?newObj_variable74 ?press_Call_Office_variable1) (haveSent ?press_Call_Office_variable1))
  )
  (:operator (!enter_Number_ForCall_Mobile ?newObj_variable60 ?enter_Number_ForCall_Mobile_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable60) (type_NumberMobile ?enter_Number_ForCall_Mobile_variable1)
      (inMode_Telephone) (haveInformation_Contactable ?newObj_variable60 ?enter_Number_ForCall_Mobile_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((entered_NumberMobile ?newObj_variable60) (entered_AnyNumber))
  )
  (:operator (!enter_Number_ForCall_Office ?newObj_variable61 ?enter_Number_ForCall_Office_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable61) (type_NumberOffice ?enter_Number_ForCall_Office_variable1)
      (inMode_Telephone) (haveInformation_Contactable ?newObj_variable61 ?enter_Number_ForCall_Office_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((entered_NumberOffice ?newObj_variable61) (entered_AnyNumber))
  )
  (:operator (!enter_Number_ForSMS_Mobile ?newObj_variable100 ?enter_Number_ForSMS_Mobile_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable100) (type_NumberMobile ?enter_Number_ForSMS_Mobile_variable1)
      (inMode_NewMessage) (haveInformation_Contactable ?newObj_variable100 ?enter_Number_ForSMS_Mobile_variable1)
    )
    ;; delete effects
    ()
    ;; add effects
    ((entered_NumberMobile ?newObj_variable100) (entered_AnyNumber))
  )
  (:operator (!enter_Number_ForSMS_Office ?newObj_variable101 ?enter_Number_ForSMS_Office_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable101) (type_NumberOffice ?enter_Number_ForSMS_Office_variable1)
      (haveInformation_Contactable ?newObj_variable101 ?enter_Number_ForSMS_Office_variable1) (inMode_NewMessage)
    )
    ;; delete effects
    ()
    ;; add effects
    ((entered_NumberOffice ?newObj_variable101) (entered_AnyNumber))
  )
  (:operator (!press_EMail_NewEMail_Send ?newObj_variable116 ?press_EMail_NewEMail_Send_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable116) (type_EMail ?press_EMail_NewEMail_Send_variable1)
      (inMode_EMail) (inMode_EMail_NewEMail) (entered_EMail ?newObj_variable116) (not (haveSent ?press_EMail_NewEMail_Send_variable1))
    )
    ;; delete effects
    ((inMode_EMail_NewEMail) (entered_EMail ?newObj_variable116))
    ;; add effects
    ((inMode_EMail_Inbox) (haveSent ?press_EMail_NewEMail_Send_variable1) (hasReceived ?newObj_variable116 ?press_EMail_NewEMail_Send_variable1))
  )
  (:operator (!enter_EMailAddress ?newObj_variable115 ?enter_EMailAddress_variable1)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable115) (type_EMailAddress ?enter_EMailAddress_variable1)
      (haveInformation_Contactable ?newObj_variable115 ?enter_EMailAddress_variable1) (inMode_EMail_NewEMail)
    )
    ;; delete effects
    ()
    ;; add effects
    ((entered_EMail ?newObj_variable115))
  )
  (:operator (!press_Messages_NewMessage)
    ;; preconditions
    (
      
      (inMode_Messages) (not (inMode_NewMessage))
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_NewMessage))
  )
  (:operator (!press_Home_Messages)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_Messages))
  )
  (:operator (!press_Contacts_NewContact_OK ?press_Contacts_NewContact_OK_variable1)
    ;; preconditions
    (
      (type_Contact ?press_Contacts_NewContact_OK_variable1)
      (inMode_Contacts) (inMode_Contacts_ConfigureContact) (not (inMode_PictureSelection)) (isSet_Contact_Name ?press_Contacts_NewContact_OK_variable1)
    )
    ;; delete effects
    ((inMode_Contacts_ConfigureContact) (selected ?press_Contacts_NewContact_OK_variable1))
    ;; add effects
    ((created ?press_Contacts_NewContact_OK_variable1))
  )
  (:operator (!press_People_Smallplus_AlreadyPressed)
    ;; preconditions
    (
      
      (inMode_People) (not (inMode_Menu)) (inMode_People_ReadyToAddFavourite)
    )
    ;; delete effects
    ((inMode_People_FavouriteSelected))
    ;; add effects
    ((inMode_People_ReadyToAddFavourite))
  )
  (:operator (!press_People_Smallplus_FavouriteSelected ?newObj_variable94)
    ;; preconditions
    (
      (type_Contact ?newObj_variable94)
      (inMode_People) (not (inMode_Menu)) (inMode_People_FavouriteSelected) (selected_Favourite ?newObj_variable94)
    )
    ;; delete effects
    ((selected_Favourite ?newObj_variable94) (inMode_People_FavouriteSelected))
    ;; add effects
    ((inMode_People_ReadyToAddFavourite))
  )
  (:operator (!select_People_AddFavourite_Contact_withOffice ?newObj_variable58)
    ;; preconditions
    (
      (type_Contact ?newObj_variable58)
      (inMode_People) (inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectContact) (isSet_Contact_NumberOffice ?newObj_variable58) (not (isFavourite ?newObj_variable58)) (created ?newObj_variable58)
    )
    ;; delete effects
    ((inMode_People_AddFavourite_SelectContact))
    ;; add effects
    ((inMode_People_AddFavourite_SelectFavouriteNumber) (selected_AddAsFavourite ?newObj_variable58))
  )
  (:operator (!select_People_AddFavourite_Contact_withEmail ?newObj_variable57)
    ;; preconditions
    (
      (type_Contact ?newObj_variable57)
      (inMode_People) (inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectContact) (isSet_Contact_EmailAddress ?newObj_variable57) (not (isFavourite ?newObj_variable57)) (created ?newObj_variable57)
    )
    ;; delete effects
    ((inMode_People_AddFavourite_SelectContact))
    ;; add effects
    ((inMode_People_AddFavourite_SelectFavouriteNumber) (selected_AddAsFavourite ?newObj_variable57))
  )
  (:operator (!select_People_AddFavourite_Contact_withMobile ?newObj_variable53)
    ;; preconditions
    (
      (type_Contact ?newObj_variable53)
      (inMode_People) (inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectContact) (isSet_Contact_NumberMobile ?newObj_variable53) (not (isFavourite ?newObj_variable53)) (created ?newObj_variable53)
    )
    ;; delete effects
    ((inMode_People_AddFavourite_SelectContact))
    ;; add effects
    ((inMode_People_AddFavourite_SelectFavouriteNumber) (selected_AddAsFavourite ?newObj_variable53))
  )
  (:operator (!press_People_Menu_AddFavourite)
    ;; preconditions
    (
      
      (inMode_People) (inMode_Menu)
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectContact))
  )
  (:operator (!press_People_Menu)
    ;; preconditions
    (
      
      (inMode_People) (not (inMode_People_AddFavourite)) (not (inMode_Menu))
    )
    ;; delete effects
    ()
    ;; add effects
    ((inMode_Menu))
  )
  (:operator (!select_Contacts_Details_Office ?newObj_variable84 ?select_Contacts_Details_Office_variable1 ?select_Contacts_Details_Office_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable84) (type_Call ?select_Contacts_Details_Office_variable1) (type_Contactable ?select_Contacts_Details_Office_variable2)
      (inMode_Contacts) (inMode_Contacts_Details) (selected ?newObj_variable84) (isSet_Contact_NumberOffice ?newObj_variable84) (associated_Contact ?newObj_variable84 ?select_Contacts_Details_Office_variable2) (not (haveSent ?select_Contacts_Details_Office_variable1))
    )
    ;; delete effects
    ((inMode_Contacts) (inMode_Contacts_Details) (selected ?newObj_variable84))
    ;; add effects
    ((inMode_Telephone) (hasReceived ?select_Contacts_Details_Office_variable2 ?select_Contacts_Details_Office_variable1) (haveSent ?select_Contacts_Details_Office_variable1))
  )
  (:operator (!select_Contacts_Details_Mobile ?newObj_variable83 ?select_Contacts_Details_Mobile_variable1 ?select_Contacts_Details_Mobile_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable83) (type_Call ?select_Contacts_Details_Mobile_variable1) (type_Contactable ?select_Contacts_Details_Mobile_variable2)
      (inMode_Contacts) (inMode_Contacts_Details) (isSet_Contact_NumberMobile ?newObj_variable83) (selected ?newObj_variable83) (not (haveSent ?select_Contacts_Details_Mobile_variable1)) (associated_Contact ?newObj_variable83 ?select_Contacts_Details_Mobile_variable2)
    )
    ;; delete effects
    ((inMode_Contacts) (inMode_Contacts_Details) (selected ?newObj_variable83))
    ;; add effects
    ((inMode_Telephone) (hasReceived ?select_Contacts_Details_Mobile_variable2 ?select_Contacts_Details_Mobile_variable1) (haveSent ?select_Contacts_Details_Mobile_variable1))
  )
  (:operator (!select_People_Favourite_FromReadyToAddFavourite ?newObj_variable123 ?newObj_variable124)
    ;; preconditions
    (
      (type_Contact ?newObj_variable123) (type_Contactable ?newObj_variable124)
      (inMode_People_ReadyToAddFavourite) (inMode_People) (associated_Contact ?newObj_variable123 ?newObj_variable124) (isFavourite ?newObj_variable123) (not (inMode_People_AddFavourite)) (not (inMode_Menu))
    )
    ;; delete effects
    ((inMode_People_ReadyToAddFavourite))
    ;; add effects
    ((selected_Favourite ?newObj_variable123) (inMode_People_FavouriteSelected))
  )
  (:operator (!select_People_Favourite_NoOp ?newObj_variable130 ?newObj_variable131)
    ;; preconditions
    (
      (type_Contact ?newObj_variable130) (type_Contactable ?newObj_variable131)
      (selected_Favourite ?newObj_variable130) (associated_Contact ?newObj_variable130 ?newObj_variable131) (inMode_People_FavouriteSelected) (not (inMode_Menu)) (inMode_People) (not (inMode_People_AddFavourite)) (isFavourite ?newObj_variable130)
    )
    ;; delete effects
    ()
    ;; add effects
    ((selected_Favourite ?newObj_variable130) (inMode_People_FavouriteSelected))
  )
  (:operator (!select_People_Favourite_WithPreviousSelection ?newObj_variable120 ?newObj_variable121 ?newObj_variable122)
    ;; preconditions
    (
      (type_Contact ?newObj_variable120) (type_Contact ?newObj_variable121) (type_Contactable ?newObj_variable122)
      (inMode_People) (not (inMode_People_AddFavourite)) (associated_Contact ?newObj_variable121 ?newObj_variable122) (isFavourite ?newObj_variable121) (selected_Favourite ?newObj_variable120) (not (selected_Favourite ?newObj_variable121)) (not (inMode_Menu))
    )
    ;; delete effects
    ((selected_Favourite ?newObj_variable120))
    ;; add effects
    ((selected_Favourite ?newObj_variable121) (inMode_People_FavouriteSelected))
  )
  (:operator (!select_People_FavouriteSelected_SMS ?newObj_variable112 ?newObj_variable113)
    ;; preconditions
    (
      (type_Contact ?newObj_variable112) (type_Contactable ?newObj_variable113)
      (inMode_People) (inMode_People_FavouriteSelected) (selected_Favourite ?newObj_variable112) (not (inMode_Menu)) (associated_Contact ?newObj_variable112 ?newObj_variable113) (isSet_Contact_NumberMobile ?newObj_variable112) (not (inMode_People_AddFavourite))
    )
    ;; delete effects
    ((inMode_People))
    ;; add effects
    ((inMode_NewMessage) (entered_NumberMobile ?newObj_variable113) (entered_AnyNumber))
  )
  (:operator (!select_People_FavouriteSelected_Mobile ?newObj_variable88 ?select_People_FavouriteSelected_Mobile_variable1 ?select_People_FavouriteSelected_Mobile_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable88) (type_Call ?select_People_FavouriteSelected_Mobile_variable1) (type_Contactable ?select_People_FavouriteSelected_Mobile_variable2)
      (inMode_People) (inMode_People_FavouriteSelected) (selected_Favourite ?newObj_variable88) (not (inMode_Menu)) (isSet_Contact_NumberMobile ?newObj_variable88) (not (inMode_People_AddFavourite)) (not (haveSent ?select_People_FavouriteSelected_Mobile_variable1)) (associated_Contact ?newObj_variable88 ?select_People_FavouriteSelected_Mobile_variable2)
    )
    ;; delete effects
    ((inMode_People))
    ;; add effects
    ((inMode_Telephone) (haveSent ?select_People_FavouriteSelected_Mobile_variable1) (hasReceived ?select_People_FavouriteSelected_Mobile_variable2 ?select_People_FavouriteSelected_Mobile_variable1))
  )
  (:operator (!select_People_FavouriteSelected_Office ?newObj_variable89 ?select_People_FavouriteSelected_Office_variable1 ?select_People_FavouriteSelected_Office_variable2)
    ;; preconditions
    (
      (type_Contact ?newObj_variable89) (type_Call ?select_People_FavouriteSelected_Office_variable1) (type_Contactable ?select_People_FavouriteSelected_Office_variable2)
      (inMode_People) (inMode_People_FavouriteSelected) (isSet_Contact_NumberOffice ?newObj_variable89) (not (inMode_Menu)) (selected_Favourite ?newObj_variable89) (not (inMode_People_AddFavourite)) (not (haveSent ?select_People_FavouriteSelected_Office_variable1)) (associated_Contact ?newObj_variable89 ?select_People_FavouriteSelected_Office_variable2)
    )
    ;; delete effects
    ((inMode_People))
    ;; add effects
    ((inMode_Telephone) (haveSent ?select_People_FavouriteSelected_Office_variable1) (hasReceived ?select_People_FavouriteSelected_Office_variable2 ?select_People_FavouriteSelected_Office_variable1))
  )
  (:operator (!select_Contacts_ContactForContactable ?newObj_variable78 ?newObj_variable79)
    ;; preconditions
    (
      (type_Contact ?newObj_variable78) (type_Contactable ?newObj_variable79)
      (associated_Contact ?newObj_variable78 ?newObj_variable79) (inMode_Contacts) (not (inMode_Contacts_ConfigureContact)) (not (inMode_Contacts_Details))
    )
    ;; delete effects
    ()
    ;; add effects
    ((selected ?newObj_variable78) (inMode_Contacts_Details))
  )
  (:operator (!select_People_AddFavourite_Picture ?newObj_variable62 ?newObj_variable63)
    ;; preconditions
    (
      (type_Contact ?newObj_variable62) (type_Picture ?newObj_variable63)
      (inMode_People) (inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectPicture) (selected_AddAsFavourite ?newObj_variable62) (selected_FavouriteNumber) (haveInformation_Regular ?newObj_variable63)
    )
    ;; delete effects
    ((selected_AddAsFavourite ?newObj_variable62) (inMode_People_AddFavourite_SelectPicture) (selected_FavouriteNumber) (inMode_People_AddFavourite))
    ;; add effects
    ((isSet_Contact_Picture ?newObj_variable62) (associated_Picture ?newObj_variable62 ?newObj_variable63) (isFavourite ?newObj_variable62))
  )
  (:operator (!select_People_AddFavourite_FavouriteNumber_WithoutPicture ?newObj_variable33)
    ;; preconditions
    (
      (type_Contact ?newObj_variable33)
      (not (isSet_Contact_Picture ?newObj_variable33)) (inMode_People_AddFavourite_SelectFavouriteNumber) (inMode_People_AddFavourite) (inMode_People) (selected_AddAsFavourite ?newObj_variable33)
    )
    ;; delete effects
    ((inMode_People_AddFavourite_SelectFavouriteNumber))
    ;; add effects
    ((selected_FavouriteNumber) (inMode_People_AddFavourite_SelectPicture))
  )
  (:operator (!select_People_AddFavourite_FavouriteNumber_WithPicture ?newObj_variable20 ?newObj_variable22)
    ;; preconditions
    (
      (type_Contact ?newObj_variable20) (type_Picture ?newObj_variable22)
      (inMode_People_AddFavourite_SelectFavouriteNumber) (inMode_People_AddFavourite) (associated_Picture ?newObj_variable20 ?newObj_variable22) (inMode_People) (selected_AddAsFavourite ?newObj_variable20)
    )
    ;; delete effects
    ((inMode_People_AddFavourite_SelectFavouriteNumber) (inMode_People_AddFavourite) (selected_AddAsFavourite ?newObj_variable20))
    ;; add effects
    ((isFavourite ?newObj_variable20))
  )
  (:operator (!press_People_LargePlus)
    ;; preconditions
    (
      
      (inMode_People_ReadyToAddFavourite) (not (inMode_Menu))
    )
    ;; delete effects
    ((inMode_People_ReadyToAddFavourite))
    ;; add effects
    ((inMode_People_AddFavourite) (inMode_People_AddFavourite_SelectContact))
  )
  (:operator (!select_PictureSelection_PictureForNewContact ?newObj_variable52 ?select_PictureSelection_PictureForNewContact_variable2)
    ;; preconditions
    (
      (type_Picture ?newObj_variable52) (type_Contact ?select_PictureSelection_PictureForNewContact_variable2)
      (inMode_PictureSelection) (inMode_Contacts_ConfigureContact) (inMode_Contacts) (selected ?select_PictureSelection_PictureForNewContact_variable2) (haveInformation_Regular ?newObj_variable52)
    )
    ;; delete effects
    ((inMode_PictureSelection))
    ;; add effects
    ((associated_Picture ?select_PictureSelection_PictureForNewContact_variable2 ?newObj_variable52) (isSet_Contact_Picture ?select_PictureSelection_PictureForNewContact_variable2))
  )
  (:operator (!press_Home_EMail)
    ;; preconditions
    (
      
      (inMode_Home)
    )
    ;; delete effects
    ((inMode_Home))
    ;; add effects
    ((inMode_EMail))
  )
  (:operator (!select_People_FavouriteSelected_EMail ?newObj_variable135 ?select_People_FavouriteSelected_EMail_variable1)
    ;; preconditions
    (
      (type_Contact ?newObj_variable135) (type_Contactable ?select_People_FavouriteSelected_EMail_variable1)
      (inMode_People) (inMode_People_FavouriteSelected) (selected_Favourite ?newObj_variable135) (isSet_Contact_EmailAddress ?newObj_variable135) (not (inMode_Menu)) (not (inMode_People_AddFavourite)) (associated_Contact ?newObj_variable135 ?select_People_FavouriteSelected_EMail_variable1)
    )
    ;; delete effects
    ((inMode_People))
    ;; add effects
    ((inMode_AccountSelection) (entered_EMail ?select_People_FavouriteSelected_EMail_variable1))
  )
  (:operator (!extractsInformation_Contactable ?newObj_variable182 ?newObj_variable183 ?newObj_variable184 ?newObj_variable185)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable182) (type_Message ?newObj_variable183) (type_ContactableInformation ?newObj_variable184) (type_Contactable ?newObj_variable185)
      (hasReceived ?newObj_variable182 ?newObj_variable183) (attached ?newObj_variable183 ?newObj_variable184)
    )
    ;; delete effects
    ()
    ;; add effects
    ((hasInformation_Contactable ?newObj_variable182 ?newObj_variable185 ?newObj_variable184))
  )
  (:operator (!extractsInformation_Regular ?newObj_variable186 ?newObj_variable187 ?newObj_variable188)
    ;; preconditions
    (
      (type_Contactable ?newObj_variable186) (type_Message ?newObj_variable187) (type_RegularInformation ?newObj_variable188)
      (hasReceived ?newObj_variable186 ?newObj_variable187) (attached ?newObj_variable187 ?newObj_variable188)
    )
    ;; delete effects
    ()
    ;; add effects
    ((hasInformation_Regular ?newObj_variable186 ?newObj_variable188))
  )
  (:operator (!attachContactableInformationToEMail ?newObj_variable153 ?newObj_variable154 ?newObj_variable155)
    ;; preconditions
    (
      (type_EMail ?newObj_variable153) (type_TransferableByEmailContactable ?newObj_variable154) (type_Contactable ?newObj_variable155)
      (haveInformation_Contactable ?newObj_variable155 ?newObj_variable154) (not (haveSent ?newObj_variable153))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable153 ?newObj_variable154))
  )
  (:operator (!attachContactableInformationToSMS ?newObj_variable156 ?newObj_variable157 ?newObj_variable158)
    ;; preconditions
    (
      (type_SMS ?newObj_variable156) (type_TransferableBySMSContactable ?newObj_variable157) (type_Contactable ?newObj_variable158)
      (haveInformation_Contactable ?newObj_variable158 ?newObj_variable157) (not (haveSent ?newObj_variable156))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable156 ?newObj_variable157))
  )
  (:operator (!attachRegularInformationToEMail ?newObj_variable159 ?newObj_variable160)
    ;; preconditions
    (
      (type_EMail ?newObj_variable159) (type_TransferableByEmailRegular ?newObj_variable160)
      (haveInformation_Regular ?newObj_variable160) (not (haveSent ?newObj_variable159))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable159 ?newObj_variable160))
  )
  (:operator (!attachRegularInformationToSMS ?newObj_variable161 ?newObj_variable162)
    ;; preconditions
    (
      (type_SMS ?newObj_variable161) (type_TransferableBySMSRegular ?newObj_variable162)
      (haveInformation_Regular ?newObj_variable162) (not (haveSent ?newObj_variable161))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable161 ?newObj_variable162))
  )
  (:operator (!attachContactableInformationToCall ?newObj_variable150 ?newObj_variable151 ?newObj_variable152)
    ;; preconditions
    (
      (type_Call ?newObj_variable150) (type_TransferableByPhoneContactable ?newObj_variable151) (type_Contactable ?newObj_variable152)
      (haveInformation_Contactable ?newObj_variable152 ?newObj_variable151) (not (haveSent ?newObj_variable150))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable150 ?newObj_variable151))
  )
  (:operator (!attachRegularInformationToCall ?newObj_variable148 ?newObj_variable149)
    ;; preconditions
    (
      (type_Call ?newObj_variable148) (type_TransferableByPhoneRegular ?newObj_variable149)
      (haveInformation_Regular ?newObj_variable149) (not (haveSent ?newObj_variable148))
    )
    ;; delete effects
    ()
    ;; add effects
    ((attached ?newObj_variable148 ?newObj_variable149))
  )
  (:method (__top)
    __top_method
    (
      
      (type_Message ?extractsInformation_Biundo_message) (type_sort_for_dateForMeeting ?var_for_dateForMeeting_1) (type_sort_for_Biundo ?var_for_Biundo_2) (type_sort_for_Biundo ?var_for_Biundo_3) (type_sort_for_dateForMeeting ?var_for_dateForMeeting_4)
      
    )
    ((:unordered (attachInformation ?extractsInformation_Biundo_message ?var_for_dateForMeeting_1) (contact ?var_for_Biundo_2 ?extractsInformation_Biundo_message)) (extractsInformation ?var_for_Biundo_3 ?extractsInformation_Biundo_message ?var_for_dateForMeeting_4))
  )
  (:method (add_Favourite ?do_add_Favourite_variable2)
    do_add_Favourite
    (
      (type_Contact ?do_add_Favourite_variable2)
      (type_Contact ?do_add_Favourite_variable2)
      
    )
    ((enterMode_People) (add_NewFavourite ?do_add_Favourite_variable2))
  )
  (:method (add_NewFavourite ?do_add_NewFavourite_WithoutPicture_variable7)
    do_add_NewFavourite_WithoutPicture
    (
      (type_Contact ?do_add_NewFavourite_WithoutPicture_variable7)
      (type_Contact ?do_add_NewFavourite_WithoutPicture_variable7) (type_Picture ?do_add_NewFavourite_WithoutPicture_variable8)
      
    )
    ((enterMode_People_AddFavourite) (select_People_AddFavourite_Contact ?do_add_NewFavourite_WithoutPicture_variable7) (!select_People_AddFavourite_FavouriteNumber_WithoutPicture ?do_add_NewFavourite_WithoutPicture_variable7) (!select_People_AddFavourite_Picture ?do_add_NewFavourite_WithoutPicture_variable7 ?do_add_NewFavourite_WithoutPicture_variable8))
  )
  (:method (add_NewFavourite ?do_add_NewFavourite_WithPicture_variable5)
    do_add_NewFavourite_WithPicture
    (
      (type_Contact ?do_add_NewFavourite_WithPicture_variable5)
      (type_Contact ?do_add_NewFavourite_WithPicture_variable5) (type_Picture ?do_add_NewFavourite_WithPicture_variable6)
      
    )
    ((enterMode_People_AddFavourite) (select_People_AddFavourite_Contact ?do_add_NewFavourite_WithPicture_variable5) (!select_People_AddFavourite_FavouriteNumber_WithPicture ?do_add_NewFavourite_WithPicture_variable5 ?do_add_NewFavourite_WithPicture_variable6))
  )
  (:method (attachInformation ?do_attachInformation_ToCall_variable3 ?do_attachInformation_ToCall_variable4)
    do_attachInformation_ToCall
    (
      (type_Message ?do_attachInformation_ToCall_variable3) (type_Information ?do_attachInformation_ToCall_variable4)
      (type_Call ?do_attachInformation_ToCall_variable3) (type_TransferableByCall ?do_attachInformation_ToCall_variable4)
      
    )
    ((attachInformationToCall ?do_attachInformation_ToCall_variable3 ?do_attachInformation_ToCall_variable4))
  )
  (:method (attachInformation ?do_attachInformation_ToEMail_variable3 ?do_attachInformation_ToEMail_variable4)
    do_attachInformation_ToEMail
    (
      (type_Message ?do_attachInformation_ToEMail_variable3) (type_Information ?do_attachInformation_ToEMail_variable4)
      (type_EMail ?do_attachInformation_ToEMail_variable3) (type_TransferableByEmail ?do_attachInformation_ToEMail_variable4)
      
    )
    ((attachInformationToEMail ?do_attachInformation_ToEMail_variable3 ?do_attachInformation_ToEMail_variable4))
  )
  (:method (attachInformation ?do_attachInformation_ToSMS_variable3 ?do_attachInformation_ToSMS_variable4)
    do_attachInformation_ToSMS
    (
      (type_Message ?do_attachInformation_ToSMS_variable3) (type_Information ?do_attachInformation_ToSMS_variable4)
      (type_SMS ?do_attachInformation_ToSMS_variable3) (type_TransferableBySMS ?do_attachInformation_ToSMS_variable4)
      
    )
    ((attachInformationToSMS ?do_attachInformation_ToSMS_variable3 ?do_attachInformation_ToSMS_variable4))
  )
  (:method (attachInformationToCall ?do_attachInformationToCall_Regular_variable3 ?do_attachInformationToCall_Regular_variable4)
    do_attachInformationToCall_Regular
    (
      (type_Call ?do_attachInformationToCall_Regular_variable3) (type_TransferableByCall ?do_attachInformationToCall_Regular_variable4)
      (type_Call ?do_attachInformationToCall_Regular_variable3) (type_TransferableByPhoneRegular ?do_attachInformationToCall_Regular_variable4)
      
    )
    ((!attachRegularInformationToCall ?do_attachInformationToCall_Regular_variable3 ?do_attachInformationToCall_Regular_variable4))
  )
  (:method (attachInformationToCall ?do_attachInformationToCall_Contactable_variable4 ?do_attachInformationToCall_Contactable_variable5)
    do_attachInformationToCall_Contactable
    (
      (type_Call ?do_attachInformationToCall_Contactable_variable4) (type_TransferableByCall ?do_attachInformationToCall_Contactable_variable5)
      (type_Call ?do_attachInformationToCall_Contactable_variable4) (type_TransferableByPhoneContactable ?do_attachInformationToCall_Contactable_variable5) (type_Contactable ?do_attachInformationToCall_Contactable_variable6)
      
    )
    ((!attachContactableInformationToCall ?do_attachInformationToCall_Contactable_variable4 ?do_attachInformationToCall_Contactable_variable5 ?do_attachInformationToCall_Contactable_variable6))
  )
  (:method (attachInformationToEMail ?do_attachInformationToEMail_Regular_variable3 ?do_attachInformationToEMail_Regular_variable4)
    do_attachInformationToEMail_Regular
    (
      (type_EMail ?do_attachInformationToEMail_Regular_variable3) (type_TransferableByEmail ?do_attachInformationToEMail_Regular_variable4)
      (type_EMail ?do_attachInformationToEMail_Regular_variable3) (type_TransferableByEmailRegular ?do_attachInformationToEMail_Regular_variable4)
      
    )
    ((!attachRegularInformationToEMail ?do_attachInformationToEMail_Regular_variable3 ?do_attachInformationToEMail_Regular_variable4))
  )
  (:method (attachInformationToEMail ?do_attachInformationToEMail_Contactable_variable4 ?do_attachInformationToEMail_Contactable_variable5)
    do_attachInformationToEMail_Contactable
    (
      (type_EMail ?do_attachInformationToEMail_Contactable_variable4) (type_TransferableByEmail ?do_attachInformationToEMail_Contactable_variable5)
      (type_EMail ?do_attachInformationToEMail_Contactable_variable4) (type_TransferableByEmailContactable ?do_attachInformationToEMail_Contactable_variable5) (type_Contactable ?do_attachInformationToEMail_Contactable_variable6)
      
    )
    ((!attachContactableInformationToEMail ?do_attachInformationToEMail_Contactable_variable4 ?do_attachInformationToEMail_Contactable_variable5 ?do_attachInformationToEMail_Contactable_variable6))
  )
  (:method (attachInformationToSMS ?do_attachInformationToSMS_Regular_variable3 ?do_attachInformationToSMS_Regular_variable4)
    do_attachInformationToSMS_Regular
    (
      (type_SMS ?do_attachInformationToSMS_Regular_variable3) (type_TransferableBySMS ?do_attachInformationToSMS_Regular_variable4)
      (type_SMS ?do_attachInformationToSMS_Regular_variable3) (type_TransferableBySMSRegular ?do_attachInformationToSMS_Regular_variable4)
      
    )
    ((!attachRegularInformationToSMS ?do_attachInformationToSMS_Regular_variable3 ?do_attachInformationToSMS_Regular_variable4))
  )
  (:method (attachInformationToSMS ?do_attachInformationToSMS_Contactable_variable4 ?do_attachInformationToSMS_Contactable_variable5)
    do_attachInformationToSMS_Contactable
    (
      (type_SMS ?do_attachInformationToSMS_Contactable_variable4) (type_TransferableBySMS ?do_attachInformationToSMS_Contactable_variable5)
      (type_SMS ?do_attachInformationToSMS_Contactable_variable4) (type_TransferableBySMSContactable ?do_attachInformationToSMS_Contactable_variable5) (type_Contactable ?do_attachInformationToSMS_Contactable_variable6)
      
    )
    ((!attachContactableInformationToSMS ?do_attachInformationToSMS_Contactable_variable4 ?do_attachInformationToSMS_Contactable_variable5 ?do_attachInformationToSMS_Contactable_variable6))
  )
  (:method (attachMultipleInformation ?do_attachMultipleInformation_Single_variable3)
    do_attachMultipleInformation_Single
    (
      (type_Message ?do_attachMultipleInformation_Single_variable3)
      (type_Message ?do_attachMultipleInformation_Single_variable3) (type_Information ?do_attachMultipleInformation_Single_variable4)
      
    )
    ((attachInformation ?do_attachMultipleInformation_Single_variable3 ?do_attachMultipleInformation_Single_variable4))
  )
  (:method (attachMultipleInformation ?do_attachMultipleInformation_Multiple_variable2)
    do_attachMultipleInformation_Multiple
    (
      (type_Message ?do_attachMultipleInformation_Multiple_variable2)
      (type_Message ?do_attachMultipleInformation_Multiple_variable2) (type_Information ?do_attachMultipleInformation_Multiple_variable6)
      
    )
    (:unordered (attachMultipleInformation ?do_attachMultipleInformation_Multiple_variable2) (attachInformation ?do_attachMultipleInformation_Multiple_variable2 ?do_attachMultipleInformation_Multiple_variable6))
  )
  (:method (_call ?do_Call_EnterNumber_variable1 ?do_Call_EnterNumber_variable3)
    do_Call_EnterNumber
    (
      (type_Contactable ?do_Call_EnterNumber_variable1) (type_Call ?do_Call_EnterNumber_variable3)
      (type_Contactable ?do_Call_EnterNumber_variable1) (type_Call ?do_Call_EnterNumber_variable3)
      
    )
    ((enterMode_Telephone) (enter_Number_ForCall) (press_Telephone_Call ?do_Call_EnterNumber_variable1 ?do_Call_EnterNumber_variable3))
  )
  (:method (_call ?do_Call_SelectContact_variable8 ?do_Call_SelectContact_variable7)
    do_Call_SelectContact
    (
      (type_Contactable ?do_Call_SelectContact_variable8) (type_Call ?do_Call_SelectContact_variable7)
      (type_Contact ?do_Call_SelectContact_variable5) (type_Call ?do_Call_SelectContact_variable7) (type_Contactable ?do_Call_SelectContact_variable8)
      
    )
    ((enterMode_Contacts) (!select_Contacts_ContactForContactable ?do_Call_SelectContact_variable5 ?do_Call_SelectContact_variable8) (select_Contacts_Details_Number ?do_Call_SelectContact_variable5 ?do_Call_SelectContact_variable7 ?do_Call_SelectContact_variable8))
  )
  (:method (_call ?do_Call_Favourite_variable4 ?do_Call_Favourite_variable9)
    do_Call_Favourite
    (
      (type_Contactable ?do_Call_Favourite_variable4) (type_Call ?do_Call_Favourite_variable9)
      (type_Contact ?do_Call_Favourite_variable3) (type_Contactable ?do_Call_Favourite_variable4) (type_Call ?do_Call_Favourite_variable9)
      
    )
    ((enterMode_People) (select_People_Favourite ?do_Call_Favourite_variable3 ?do_Call_Favourite_variable4) (select_People_FavouriteSelected_Number ?do_Call_Favourite_variable3 ?do_Call_Favourite_variable9 ?do_Call_Favourite_variable4))
  )
  (:method (configure_Alarm ?configure_Alarm_variable1)
    do_configure_Alarm
    (
      (type_Date ?configure_Alarm_variable1)
      (type_Date ?configure_Alarm_variable1) (type_Alarm ?do_configureAlarm_variable10) (type_Alarm ?do_configureAlarm_variable6) (type_Alarm ?do_configure_Alarm_variable1) (type_Date ?do_configure_Alarm_variable2) (type_Alarm ?do_configure_Alarm_variable3) (type_Date ?do_configure_Alarm_variable4)
      
    )
    (:unordered (!activate_Alarm ?do_configureAlarm_variable6) (!set_Alarm_Days ?do_configure_Alarm_variable1 ?do_configure_Alarm_variable2) (!set_Alarm_Time ?do_configure_Alarm_variable3 ?do_configure_Alarm_variable4) (!set_Alarm_Description ?do_configureAlarm_variable10))
  )
  (:method (configure_Appointment ?do_configure_Appointment_variable7 ?do_configure_Appointment_variable8 ?do_configure_Appointment_variable6)
    do_configure_Appointment
    (
      (type_Appointment ?do_configure_Appointment_variable7) (type_Date ?do_configure_Appointment_variable8) (type_Location ?do_configure_Appointment_variable6)
      (type_Location ?do_configure_Appointment_variable6) (type_Appointment ?do_configure_Appointment_variable7) (type_Date ?do_configure_Appointment_variable8)
      
    )
    (:unordered (!set_Appointment_Location ?do_configure_Appointment_variable7 ?do_configure_Appointment_variable6) (!set_Appointment_Name ?do_configure_Appointment_variable7) (!set_Appointment_Reminder ?do_configure_Appointment_variable7) (!set_Appointment_Time ?do_configure_Appointment_variable7 ?do_configure_Appointment_variable8))
  )
  (:method (configure_Contact ?do_configure_Contact_variable10 ?do_configure_Contact_variable12)
    do_configure_Contact
    (
      (type_Contact ?do_configure_Contact_variable10) (type_Contactable ?do_configure_Contact_variable12)
      (type_Contact ?do_configure_Contact_variable10) (type_Contactable ?do_configure_Contact_variable12)
      
    )
    (:unordered (!set_Contact_Name ?do_configure_Contact_variable10) (set_Contact_Connection ?do_configure_Contact_variable10 ?do_configure_Contact_variable12))
  )
  (:method (configure_Contact ?do_configure_Contact_WithPicture_variable12 ?do_configure_Contact_WithPicture_variable11)
    do_configure_Contact_WithPicture
    (
      (type_Contact ?do_configure_Contact_WithPicture_variable12) (type_Contactable ?do_configure_Contact_WithPicture_variable11)
      (type_Contactable ?do_configure_Contact_WithPicture_variable11) (type_Contact ?do_configure_Contact_WithPicture_variable12) (type_Picture ?do_configure_Contact_WithPicture_variable8)
      
    )
    (:unordered (set_Contact_Connection ?do_configure_Contact_WithPicture_variable12 ?do_configure_Contact_WithPicture_variable11) (set_Contact_Picture ?do_configure_Contact_WithPicture_variable12 ?do_configure_Contact_WithPicture_variable8) (!set_Contact_Name ?do_configure_Contact_WithPicture_variable12))
  )
  (:method (configure_Task ?do_configure_Task_variable6)
    do_configure_Task
    (
      (type_Task ?do_configure_Task_variable6)
      (type_Date ?do_configure_Task_variable3) (type_Task ?do_configure_Task_variable6)
      
    )
    (:unordered (!set_Task_Name ?do_configure_Task_variable6) (!set_Task_Time ?do_configure_Task_variable6 ?do_configure_Task_variable3) (!set_Task_Reminder ?do_configure_Task_variable6))
  )
  (:method (contact ?do_call_variable3 ?do_call_variable4)
    do_call
    (
      (type_Contactable ?do_call_variable3) (type_Message ?do_call_variable4)
      (type_Contactable ?do_call_variable3) (type_Call ?do_call_variable4)
      
    )
    ((_call ?do_call_variable3 ?do_call_variable4))
  )
  (:method (contact ?do_mail_variable3 ?do_mail_variable4)
    do_mail
    (
      (type_Contactable ?do_mail_variable3) (type_Message ?do_mail_variable4)
      (type_Contactable ?do_mail_variable3) (type_EMail ?do_mail_variable4)
      
    )
    ((send_EMail ?do_mail_variable3 ?do_mail_variable4))
  )
  (:method (contact ?do_sms_variable3 ?do_sms_variable4)
    do_sms
    (
      (type_Contactable ?do_sms_variable3) (type_Message ?do_sms_variable4)
      (type_Contactable ?do_sms_variable3) (type_SMS ?do_sms_variable4)
      
    )
    ((send_SMS ?do_sms_variable3 ?do_sms_variable4))
  )
  (:method (create_Appointment ?do_create_Appointment_variable5 ?do_create_Appointment_variable7 ?do_create_Appointment_variable6)
    do_create_Appointment
    (
      (type_Appointment ?do_create_Appointment_variable5) (type_Location ?do_create_Appointment_variable7) (type_Date ?do_create_Appointment_variable6)
      (type_Appointment ?do_create_Appointment_variable5) (type_Date ?do_create_Appointment_variable6) (type_Location ?do_create_Appointment_variable7)
      
    )
    ((enterMode_Calendar) (create_NewAppointment ?do_create_Appointment_variable5 ?do_create_Appointment_variable6 ?do_create_Appointment_variable7))
  )
  (:method (create_Contact ?do_create_Contact_variable4 ?do_create_Contact_variable5)
    do_create_Contact
    (
      (type_Contact ?do_create_Contact_variable4) (type_Contactable ?do_create_Contact_variable5)
      (type_Contact ?do_create_Contact_variable4) (type_Contactable ?do_create_Contact_variable5)
      
    )
    ((enterMode_Contacts) (create_NewContact ?do_create_Contact_variable4 ?do_create_Contact_variable5))
  )
  (:method (create_NewAppointment ?do_create_NewAppointment_variable10 ?do_create_NewAppointment_variable11 ?do_create_NewAppointment_variable9)
    do_create_NewAppointment
    (
      (type_Appointment ?do_create_NewAppointment_variable10) (type_Date ?do_create_NewAppointment_variable11) (type_Location ?do_create_NewAppointment_variable9)
      (type_Appointment ?do_create_NewAppointment_variable10) (type_Date ?do_create_NewAppointment_variable11) (type_Location ?do_create_NewAppointment_variable9)
      
    )
    ((!press_Calendar_Menu) (!press_Calendar_Menu_NewAppointment ?do_create_NewAppointment_variable10) (configure_Appointment ?do_create_NewAppointment_variable10 ?do_create_NewAppointment_variable11 ?do_create_NewAppointment_variable9) (!press_Calendar_NewAppointment_OK ?do_create_NewAppointment_variable10 ?do_create_NewAppointment_variable11))
  )
  (:method (create_NewContact ?do_create_NewContact_variable1 ?do_create_NewContact_variable17)
    do_create_NewContact
    (
      (type_Contact ?do_create_NewContact_variable1) (type_Contactable ?do_create_NewContact_variable17)
      (type_Contact ?do_create_NewContact_variable1) (type_Contactable ?do_create_NewContact_variable17)
      
    )
    ((!press_Contacts_New ?do_create_NewContact_variable1 ?do_create_NewContact_variable17) (configure_Contact ?do_create_NewContact_variable1 ?do_create_NewContact_variable17) (!press_Contacts_NewContact_OK ?do_create_NewContact_variable1))
  )
  (:method (create_NewTask ?do_create_NewTask_Normal_variable3)
    do_create_NewTask_Normal
    (
      (type_Task ?do_create_NewTask_Normal_variable3)
      (type_Task ?do_create_NewTask_Normal_variable3)
      
    )
    ((!press_Tasks_Menu) (!press_Tasks_Menu_NewTask ?do_create_NewTask_Normal_variable3) (configure_Task ?do_create_NewTask_Normal_variable3) (!press_Tasks_NewTask_OK ?do_create_NewTask_Normal_variable3))
  )
  (:method (create_NewTask ?do_create_NewTask_Light_variable3)
    do_create_NewTask_Light
    (
      (type_Task ?do_create_NewTask_Light_variable3)
      (type_Task ?do_create_NewTask_Light_variable3)
      
    )
    ((!set_Task_Name_Light ?do_create_NewTask_Light_variable3))
  )
  (:method (create_Task ?do_create_Task_variable2)
    do_create_Task
    (
      (type_Task ?do_create_Task_variable2)
      (type_Task ?do_create_Task_variable2)
      
    )
    ((enterMode_Tasks) (create_NewTask ?do_create_Task_variable2))
  )
  (:method (enterMode_Alarm)
    do_enterMode_Alarm_ViaHome
    (
      
      
      
    )
    ((enterMode_Home) (!press_Home_Clock) (!press_Clock_Alarm))
  )
  (:method (enterMode_Calendar)
    do_enterMode_Calendar_ViaHome
    (
      
      
      
    )
    ((enterMode_Home) (!press_Home_Calendar))
  )
  (:method (enterMode_Calendar)
    do_enterMode_Calendar_FromHome
    (
      
      
      
    )
    ((!press_Home_Calendar))
  )
  (:method (enterMode_Contacts)
    do_enterMode_Contacts_ViaTelephone
    (
      
      
      
    )
    ((enterMode_Telephone) (!press_Telephone_Contacts))
  )
  (:method (enterMode_Contacts)
    do_enterMode_Contacts_ViaPeople
    (
      
      
      
    )
    ((enterMode_People) (!press_People_More))
  )
  (:method (enterMode_EMail)
    do_enterMode_EMail_ViaHome
    (
      
      
      
    )
    ((press_Home) (!press_Home_EMail))
  )
  (:method (enterMode_EMail)
    do_enterMode_EMail_FromHome
    (
      
      
      
    )
    ((!press_Home_EMail))
  )
  (:method (enterMode_Home)
    do_enterMode_Home
    (
      
      
      
    )
    ((press_Home))
  )
  (:method (enterMode_Messages)
    do_enterMode_Messages_ViaHome
    (
      
      
      
    )
    ((press_Home) (!press_Home_Messages))
  )
  (:method (enterMode_Messages)
    do_enterMode_Messages_FromHome
    (
      
      
      
    )
    ((!press_Home_Messages))
  )
  (:method (enterMode_People)
    do_enterMode_People_ViaHome
    (
      
      
      
    )
    ((enterMode_Home) (!press_Home_People))
  )
  (:method (enterMode_People)
    do_enterMode_People_FromHome
    (
      
      
      
    )
    ((!press_Home_People))
  )
  (:method (enterMode_People_AddFavourite)
    do_enterMode_People_AddFavourite_ViaSmallPlus
    (
      
      
      
    )
    ((press_People_Smallplus) (!press_People_LargePlus))
  )
  (:method (enterMode_People_AddFavourite)
    do_enterMode_People_AddFavourite_ViaMenu
    (
      
      
      
    )
    ((!press_People_Menu) (!press_People_Menu_AddFavourite))
  )
  (:method (enterMode_Tasks)
    do_enterMode_Tasks_ViaHome
    (
      
      
      
    )
    ((enterMode_Home) (!press_Home_Programs) (!press_Programs_Tasks))
  )
  (:method (enterMode_Tasks)
    do_enterMode_Tasks_FromHome
    (
      
      
      
    )
    ((!press_Home_Programs) (!press_Programs_Tasks))
  )
  (:method (enterMode_Telephone)
    do_enterMode_Telephone_ViaHome
    (
      
      
      
    )
    ((enterMode_Home) (!press_Home_Telephone))
  )
  (:method (enterMode_Telephone)
    do_enterMode_Telephone_FromHome
    (
      
      
      
    )
    ((!press_Home_Telephone))
  )
  (:method (enter_Number_ForCall)
    do_enter_Number_ForCall_Mobile
    (
      
      (type_Contactable ?do_enter_Number_ForCall_Mobile_variable3) (type_NumberMobile ?do_enter_Number_ForCall_Mobile_variable4)
      
    )
    ((!enter_Number_ForCall_Mobile ?do_enter_Number_ForCall_Mobile_variable3 ?do_enter_Number_ForCall_Mobile_variable4))
  )
  (:method (enter_Number_ForCall)
    do_enter_Number_ForCall_Office
    (
      
      (type_Contactable ?do_enter_Number_ForCall_Office_variable1) (type_NumberOffice ?do_enter_Number_ForCall_Office_variable2)
      
    )
    ((!enter_Number_ForCall_Office ?do_enter_Number_ForCall_Office_variable1 ?do_enter_Number_ForCall_Office_variable2))
  )
  (:method (enter_Number_ForSMS)
    do_enter_Number_ForSMS_Mobile
    (
      
      (type_Contactable ?do_enter_Number_ForSMS_Mobile_variable8) (type_NumberMobile ?do_enter_Number_ForSMS_Mobile_variable9)
      
    )
    ((!enter_Number_ForSMS_Mobile ?do_enter_Number_ForSMS_Mobile_variable8 ?do_enter_Number_ForSMS_Mobile_variable9))
  )
  (:method (enter_Number_ForSMS)
    do_enter_Number_ForSMS_Office
    (
      
      (type_Contactable ?do_enter_Number_ForSMS_Office_variable1) (type_NumberOffice ?do_enter_Number_ForSMS_Office_variable3)
      
    )
    ((!enter_Number_ForSMS_Office ?do_enter_Number_ForSMS_Office_variable1 ?do_enter_Number_ForSMS_Office_variable3))
  )
  (:method (extractsInformation ?do_extractsInformation_Regular_variable4 ?do_extractsInformation_Regular_variable5 ?do_extractsInformation_Regular_variable6)
    do_extractsInformation_Regular
    (
      (type_Contactable ?do_extractsInformation_Regular_variable4) (type_Message ?do_extractsInformation_Regular_variable5) (type_Information ?do_extractsInformation_Regular_variable6)
      (type_Contactable ?do_extractsInformation_Regular_variable4) (type_Message ?do_extractsInformation_Regular_variable5) (type_RegularInformation ?do_extractsInformation_Regular_variable6)
      
    )
    ((!extractsInformation_Regular ?do_extractsInformation_Regular_variable4 ?do_extractsInformation_Regular_variable5 ?do_extractsInformation_Regular_variable6))
  )
  (:method (extractsInformation ?do_extractsInformation_Contactable_variable5 ?do_extractsInformation_Contactable_variable6 ?do_extractsInformation_Contactable_variable7)
    do_extractsInformation_Contactable
    (
      (type_Contactable ?do_extractsInformation_Contactable_variable5) (type_Message ?do_extractsInformation_Contactable_variable6) (type_Information ?do_extractsInformation_Contactable_variable7)
      (type_Contactable ?do_extractsInformation_Contactable_variable5) (type_Message ?do_extractsInformation_Contactable_variable6) (type_ContactableInformation ?do_extractsInformation_Contactable_variable7) (type_Contactable ?do_extractsInformation_Contactable_variable8)
      
    )
    ((!extractsInformation_Contactable ?do_extractsInformation_Contactable_variable5 ?do_extractsInformation_Contactable_variable6 ?do_extractsInformation_Contactable_variable7 ?do_extractsInformation_Contactable_variable8))
  )
  (:method (extractsMultipleInformation ?do_extractsMultipleInformation_Single_variable4 ?do_extractsMultipleInformation_Single_variable5)
    do_extractsMultipleInformation_Single
    (
      (type_Contactable ?do_extractsMultipleInformation_Single_variable4) (type_Message ?do_extractsMultipleInformation_Single_variable5)
      (type_Contactable ?do_extractsMultipleInformation_Single_variable4) (type_Message ?do_extractsMultipleInformation_Single_variable5) (type_Information ?do_extractsMultipleInformation_Single_variable6)
      
    )
    ((extractsInformation ?do_extractsMultipleInformation_Single_variable4 ?do_extractsMultipleInformation_Single_variable5 ?do_extractsMultipleInformation_Single_variable6))
  )
  (:method (extractsMultipleInformation ?do_extractsMultipleInformation_Multiple_variable3 ?do_extractsMultipleInformation_Multiple_variable4)
    do_extractsMultipleInformation_Multiple
    (
      (type_Contactable ?do_extractsMultipleInformation_Multiple_variable3) (type_Message ?do_extractsMultipleInformation_Multiple_variable4)
      (type_Information ?do_extractsMultipleInformation_Multiple_variable10) (type_Contactable ?do_extractsMultipleInformation_Multiple_variable3) (type_Message ?do_extractsMultipleInformation_Multiple_variable4)
      
    )
    (:unordered (extractsMultipleInformation ?do_extractsMultipleInformation_Multiple_variable3 ?do_extractsMultipleInformation_Multiple_variable4) (extractsInformation ?do_extractsMultipleInformation_Multiple_variable3 ?do_extractsMultipleInformation_Multiple_variable4 ?do_extractsMultipleInformation_Multiple_variable10))
  )
  (:method (press_Home)
    do_press_Home_Default
    (
      
      
      
    )
    ((!press_Home_Default))
  )
  (:method (press_Home)
    do_press_Home_From_Add_Favourite
    (
      
      (type_Contact ?do_press_Home_From_Add_Favourite_variable2)
      
    )
    ((!press_Home_From_Add_Favourite ?do_press_Home_From_Add_Favourite_variable2))
  )
  (:method (press_Home)
    do_press_Home_From_SMS
    (
      
      
      
    )
    ((press_Home_From_SMS))
  )
  (:method (press_Home)
    do_press_Home_From_Telephone
    (
      
      
      
    )
    ((press_Home_From_Telephone))
  )
  (:method (press_Home)
    do_press_Home_From_Contacts_Details
    (
      
      (type_Contact ?do_press_Home_From_Contacts_Details_variable2)
      
    )
    ((!press_Home_From_Contacts_Details ?do_press_Home_From_Contacts_Details_variable2))
  )
  (:method (press_Home_From_SMS)
    do_press_Home_From_SMS_Mobile
    (
      
      (type_Contactable ?do_press_Home_From_SMS_Mobile_variable3)
      
    )
    ((!press_Home_From_SMS_Mobile ?do_press_Home_From_SMS_Mobile_variable3))
  )
  (:method (press_Home_From_SMS)
    do_press_Home_From_SMS_Office
    (
      
      (type_Contactable ?do_press_Home_From_SMS_Office_variable2)
      
    )
    ((!press_Home_From_SMS_Office ?do_press_Home_From_SMS_Office_variable2))
  )
  (:method (press_Home_From_Telephone)
    do_press_Home_From_Telephone_Mobile
    (
      
      (type_Contactable ?do_press_Home_From_Telephone_Mobile_variable2)
      
    )
    ((!press_Home_From_Telephone_Mobile ?do_press_Home_From_Telephone_Mobile_variable2))
  )
  (:method (press_Home_From_Telephone)
    do_press_Home_From_Telephone_Office
    (
      
      (type_Contactable ?do_press_Home_From_Telephone_Office_variable2)
      
    )
    ((!press_Home_From_Telephone_Office ?do_press_Home_From_Telephone_Office_variable2))
  )
  (:method (press_NewMessage_Send ?do_press_NewMessage_Send_Mobile_variable3 ?do_press_NewMessage_Send_Mobile_variable4)
    do_press_NewMessage_Send_Mobile
    (
      (type_Contactable ?do_press_NewMessage_Send_Mobile_variable3) (type_SMS ?do_press_NewMessage_Send_Mobile_variable4)
      (type_Contactable ?do_press_NewMessage_Send_Mobile_variable3) (type_SMS ?do_press_NewMessage_Send_Mobile_variable4)
      
    )
    ((!press_NewMessage_Send_Mobile ?do_press_NewMessage_Send_Mobile_variable3 ?do_press_NewMessage_Send_Mobile_variable4))
  )
  (:method (press_NewMessage_Send ?do_press_NewMessage_Send_Office_variable5 ?do_press_NewMessage_Send_Office_variable6)
    do_press_NewMessage_Send_Office
    (
      (type_Contactable ?do_press_NewMessage_Send_Office_variable5) (type_SMS ?do_press_NewMessage_Send_Office_variable6)
      (type_Contactable ?do_press_NewMessage_Send_Office_variable5) (type_SMS ?do_press_NewMessage_Send_Office_variable6)
      
    )
    ((!press_NewMessage_Send_Office ?do_press_NewMessage_Send_Office_variable5 ?do_press_NewMessage_Send_Office_variable6))
  )
  (:method (press_People_Smallplus)
    do_press_People_Smallplus_FavouriteSelected
    (
      
      (type_Contact ?do_press_People_Smallplus_FavouriteSelected_variable2)
      
    )
    ((!press_People_Smallplus_FavouriteSelected ?do_press_People_Smallplus_FavouriteSelected_variable2))
  )
  (:method (press_People_Smallplus)
    do_press_People_Smallplus_AlreadyPressed
    (
      
      
      
    )
    ((!press_People_Smallplus_AlreadyPressed))
  )
  (:method (press_Telephone_Call ?do_Press_Call_Mobile_variable4 ?do_Press_Call_Mobile_variable5)
    do_Press_Call_Mobile
    (
      (type_Contactable ?do_Press_Call_Mobile_variable4) (type_Call ?do_Press_Call_Mobile_variable5)
      (type_Contactable ?do_Press_Call_Mobile_variable4) (type_Call ?do_Press_Call_Mobile_variable5)
      
    )
    ((!press_Telephone_Call_Mobile ?do_Press_Call_Mobile_variable4 ?do_Press_Call_Mobile_variable5))
  )
  (:method (press_Telephone_Call ?do_Press_Call_Office_variable10 ?do_Press_Call_Office_variable11)
    do_Press_Call_Office
    (
      (type_Contactable ?do_Press_Call_Office_variable10) (type_Call ?do_Press_Call_Office_variable11)
      (type_Contactable ?do_Press_Call_Office_variable10) (type_Call ?do_Press_Call_Office_variable11)
      
    )
    ((!press_Telephone_Call_Office ?do_Press_Call_Office_variable10 ?do_Press_Call_Office_variable11))
  )
  (:method (select_Contacts_Details_Number ?do_select_Contacts_Details_Mobile_variable5 ?do_select_Contacts_Details_Mobile_variable6 ?do_select_Contacts_Details_Mobile_variable7)
    do_select_Contacts_Details_Mobile
    (
      (type_Contact ?do_select_Contacts_Details_Mobile_variable5) (type_Call ?do_select_Contacts_Details_Mobile_variable6) (type_Contactable ?do_select_Contacts_Details_Mobile_variable7)
      (type_Contact ?do_select_Contacts_Details_Mobile_variable5) (type_Call ?do_select_Contacts_Details_Mobile_variable6) (type_Contactable ?do_select_Contacts_Details_Mobile_variable7)
      
    )
    ((!select_Contacts_Details_Mobile ?do_select_Contacts_Details_Mobile_variable5 ?do_select_Contacts_Details_Mobile_variable6 ?do_select_Contacts_Details_Mobile_variable7))
  )
  (:method (select_Contacts_Details_Number ?do_select_Contacts_Details_Office_variable5 ?do_select_Contacts_Details_Office_variable6 ?do_select_Contacts_Details_Office_variable7)
    do_select_Contacts_Details_Office
    (
      (type_Contact ?do_select_Contacts_Details_Office_variable5) (type_Call ?do_select_Contacts_Details_Office_variable6) (type_Contactable ?do_select_Contacts_Details_Office_variable7)
      (type_Contact ?do_select_Contacts_Details_Office_variable5) (type_Call ?do_select_Contacts_Details_Office_variable6) (type_Contactable ?do_select_Contacts_Details_Office_variable7)
      
    )
    ((!select_Contacts_Details_Office ?do_select_Contacts_Details_Office_variable5 ?do_select_Contacts_Details_Office_variable6 ?do_select_Contacts_Details_Office_variable7))
  )
  (:method (select_EMail_EMailAccount ?do_select_EMail_EMailAccount_NoOp_variable2)
    do_select_EMail_EMailAccount_NoOp
    (
      (type_EMailAccount ?do_select_EMail_EMailAccount_NoOp_variable2)
      (type_EMailAccount ?do_select_EMail_EMailAccount_NoOp_variable2)
      
    )
    ((!select_EMail_EMailAccount_NoOp ?do_select_EMail_EMailAccount_NoOp_variable2))
  )
  (:method (select_EMail_EMailAccount ?do_select_EMail_EMailAccount_WithPreviousSelection_variable4)
    do_select_EMail_EMailAccount_WithPreviousSelection
    (
      (type_EMailAccount ?do_select_EMail_EMailAccount_WithPreviousSelection_variable4)
      (type_EMailAccount ?do_select_EMail_EMailAccount_WithPreviousSelection_variable3) (type_EMailAccount ?do_select_EMail_EMailAccount_WithPreviousSelection_variable4)
      
    )
    ((!select_EMail_EMailAccount_WithPreviousSelection ?do_select_EMail_EMailAccount_WithPreviousSelection_variable3 ?do_select_EMail_EMailAccount_WithPreviousSelection_variable4))
  )
  (:method (select_People_AddFavourite_Contact ?do_select_People_AddFavourite_SelectContact_WithEmail_variable2)
    do_select_People_AddFavourite_SelectContact_WithEmail
    (
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithEmail_variable2)
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithEmail_variable2)
      
    )
    ((!select_People_AddFavourite_Contact_withEmail ?do_select_People_AddFavourite_SelectContact_WithEmail_variable2))
  )
  (:method (select_People_AddFavourite_Contact ?do_select_People_AddFavourite_SelectContact_WithMobile_variable2)
    do_select_People_AddFavourite_SelectContact_WithMobile
    (
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithMobile_variable2)
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithMobile_variable2)
      
    )
    ((!select_People_AddFavourite_Contact_withMobile ?do_select_People_AddFavourite_SelectContact_WithMobile_variable2))
  )
  (:method (select_People_AddFavourite_Contact ?do_select_People_AddFavourite_SelectContact_WithOffice_variable2)
    do_select_People_AddFavourite_SelectContact_WithOffice
    (
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithOffice_variable2)
      (type_Contact ?do_select_People_AddFavourite_SelectContact_WithOffice_variable2)
      
    )
    ((!select_People_AddFavourite_Contact_withOffice ?do_select_People_AddFavourite_SelectContact_WithOffice_variable2))
  )
  (:method (select_People_Favourite ?do_select_People_Favourite_WithPreviousSelection_variable5 ?do_select_People_Favourite_WithPreviousSelection_variable6)
    do_select_People_Favourite_WithPreviousSelection
    (
      (type_Contact ?do_select_People_Favourite_WithPreviousSelection_variable5) (type_Contactable ?do_select_People_Favourite_WithPreviousSelection_variable6)
      (type_Contact ?do_select_People_Favourite_WithPreviousSelection_variable4) (type_Contact ?do_select_People_Favourite_WithPreviousSelection_variable5) (type_Contactable ?do_select_People_Favourite_WithPreviousSelection_variable6)
      
    )
    ((!select_People_Favourite_WithPreviousSelection ?do_select_People_Favourite_WithPreviousSelection_variable4 ?do_select_People_Favourite_WithPreviousSelection_variable5 ?do_select_People_Favourite_WithPreviousSelection_variable6))
  )
  (:method (select_People_Favourite ?do_select_People_Favourite_FromReadyToAddFavourite_variable3 ?do_select_People_Favourite_FromReadyToAddFavourite_variable4)
    do_select_People_Favourite_FromReadyToAddFavourite
    (
      (type_Contact ?do_select_People_Favourite_FromReadyToAddFavourite_variable3) (type_Contactable ?do_select_People_Favourite_FromReadyToAddFavourite_variable4)
      (type_Contact ?do_select_People_Favourite_FromReadyToAddFavourite_variable3) (type_Contactable ?do_select_People_Favourite_FromReadyToAddFavourite_variable4)
      
    )
    ((!select_People_Favourite_FromReadyToAddFavourite ?do_select_People_Favourite_FromReadyToAddFavourite_variable3 ?do_select_People_Favourite_FromReadyToAddFavourite_variable4))
  )
  (:method (select_People_Favourite ?do_select_People_Favourite_NoOp_variable3 ?do_select_People_Favourite_NoOp_variable4)
    do_select_People_Favourite_NoOp
    (
      (type_Contact ?do_select_People_Favourite_NoOp_variable3) (type_Contactable ?do_select_People_Favourite_NoOp_variable4)
      (type_Contact ?do_select_People_Favourite_NoOp_variable3) (type_Contactable ?do_select_People_Favourite_NoOp_variable4)
      
    )
    ((!select_People_Favourite_NoOp ?do_select_People_Favourite_NoOp_variable3 ?do_select_People_Favourite_NoOp_variable4))
  )
  (:method (select_People_FavouriteSelected_Number ?do_select_People_FavouriteSelected_Mobile_variable5 ?do_select_People_FavouriteSelected_Mobile_variable6 ?do_select_People_FavouriteSelected_Mobile_variable7)
    do_select_People_FavouriteSelected_Mobile
    (
      (type_Contact ?do_select_People_FavouriteSelected_Mobile_variable5) (type_Call ?do_select_People_FavouriteSelected_Mobile_variable6) (type_Contactable ?do_select_People_FavouriteSelected_Mobile_variable7)
      (type_Contact ?do_select_People_FavouriteSelected_Mobile_variable5) (type_Call ?do_select_People_FavouriteSelected_Mobile_variable6) (type_Contactable ?do_select_People_FavouriteSelected_Mobile_variable7)
      
    )
    ((!select_People_FavouriteSelected_Mobile ?do_select_People_FavouriteSelected_Mobile_variable5 ?do_select_People_FavouriteSelected_Mobile_variable6 ?do_select_People_FavouriteSelected_Mobile_variable7))
  )
  (:method (select_People_FavouriteSelected_Number ?do_select_People_FavouriteSelected_Office_variable5 ?do_select_People_FavouriteSelected_Office_variable6 ?do_select_People_FavouriteSelected_Office_variable7)
    do_select_People_FavouriteSelected_Office
    (
      (type_Contact ?do_select_People_FavouriteSelected_Office_variable5) (type_Call ?do_select_People_FavouriteSelected_Office_variable6) (type_Contactable ?do_select_People_FavouriteSelected_Office_variable7)
      (type_Contact ?do_select_People_FavouriteSelected_Office_variable5) (type_Call ?do_select_People_FavouriteSelected_Office_variable6) (type_Contactable ?do_select_People_FavouriteSelected_Office_variable7)
      
    )
    ((!select_People_FavouriteSelected_Office ?do_select_People_FavouriteSelected_Office_variable5 ?do_select_People_FavouriteSelected_Office_variable6 ?do_select_People_FavouriteSelected_Office_variable7))
  )
  (:method (send_EMail ?do_send_EMail_ViaEMail_variable5 ?do_send_EMail_ViaEMail_variable6)
    do_send_EMail_ViaEMail
    (
      (type_Contactable ?do_send_EMail_ViaEMail_variable5) (type_EMail ?do_send_EMail_ViaEMail_variable6)
      (type_EMailAccount ?do_send_EMail_ViaEMail_WithSelection_variable6) (type_EMailAddress ?do_send_EMail_ViaEMail_variable2) (type_Contactable ?do_send_EMail_ViaEMail_variable5) (type_EMail ?do_send_EMail_ViaEMail_variable6)
      
    )
    ((enterMode_EMail) (select_EMail_EMailAccount ?do_send_EMail_ViaEMail_WithSelection_variable6) (!press_EMail_NewEMail ?do_send_EMail_ViaEMail_WithSelection_variable6) (!enter_EMailAddress ?do_send_EMail_ViaEMail_variable5 ?do_send_EMail_ViaEMail_variable2) (!press_EMail_NewEMail_Send ?do_send_EMail_ViaEMail_variable5 ?do_send_EMail_ViaEMail_variable6))
  )
  (:method (send_EMail ?do_send_EMail_ViaFavourites_variable4 ?do_send_EMail_ViaFavourites_variable10)
    do_send_EMail_ViaFavourites
    (
      (type_Contactable ?do_send_EMail_ViaFavourites_variable4) (type_EMail ?do_send_EMail_ViaFavourites_variable10)
      (type_EMail ?do_send_EMail_ViaFavourites_variable10) (type_EMailAccount ?do_send_EMail_ViaFavourites_variable2) (type_Contact ?do_send_EMail_ViaFavourites_variable3) (type_Contactable ?do_send_EMail_ViaFavourites_variable4)
      
    )
    ((enterMode_People) (select_People_Favourite ?do_send_EMail_ViaFavourites_variable3 ?do_send_EMail_ViaFavourites_variable4) (!select_People_FavouriteSelected_EMail ?do_send_EMail_ViaFavourites_variable3 ?do_send_EMail_ViaFavourites_variable4) (!select_AccountSelection_Account ?do_send_EMail_ViaFavourites_variable2) (!press_EMail_NewEMail_Send ?do_send_EMail_ViaFavourites_variable4 ?do_send_EMail_ViaFavourites_variable10))
  )
  (:method (send_SMS ?do_send_SMS_ViaMessages_variable3 ?do_send_SMS_ViaMessages_variable4)
    do_send_SMS_ViaMessages
    (
      (type_Contactable ?do_send_SMS_ViaMessages_variable3) (type_SMS ?do_send_SMS_ViaMessages_variable4)
      (type_Contactable ?do_send_SMS_ViaMessages_variable3) (type_SMS ?do_send_SMS_ViaMessages_variable4)
      
    )
    ((enterMode_Messages) (!press_Messages_NewMessage) (enter_Number_ForSMS) (press_NewMessage_Send ?do_send_SMS_ViaMessages_variable3 ?do_send_SMS_ViaMessages_variable4))
  )
  (:method (send_SMS ?do_send_SMS_ViaFavourites_variable4 ?do_send_SMS_ViaFavourites_variable9)
    do_send_SMS_ViaFavourites
    (
      (type_Contactable ?do_send_SMS_ViaFavourites_variable4) (type_SMS ?do_send_SMS_ViaFavourites_variable9)
      (type_Contact ?do_send_SMS_ViaFavourites_variable3) (type_Contactable ?do_send_SMS_ViaFavourites_variable4) (type_SMS ?do_send_SMS_ViaFavourites_variable9)
      
    )
    ((enterMode_People) (select_People_Favourite ?do_send_SMS_ViaFavourites_variable3 ?do_send_SMS_ViaFavourites_variable4) (!select_People_FavouriteSelected_SMS ?do_send_SMS_ViaFavourites_variable3 ?do_send_SMS_ViaFavourites_variable4) (!press_NewMessage_Send_Mobile ?do_send_SMS_ViaFavourites_variable4 ?do_send_SMS_ViaFavourites_variable9))
  )
  (:method (set_Alarm ?set_Alarm_variable1)
    do_set_Alarm
    (
      (type_Date ?set_Alarm_variable1)
      (type_Date ?do_set_Alarm_variable6) (type_Date ?set_Alarm_variable1)
      
    )
    ((enterMode_Alarm) (configure_Alarm ?do_set_Alarm_variable6))
  )
  (:method (set_Contact_Connection ?do_set_Contact_Connection_Email_variable1 ?do_set_Contact_Connection_Email_variable2)
    do_set_Contact_Connection_Email
    (
      (type_Contact ?do_set_Contact_Connection_Email_variable1) (type_Contactable ?do_set_Contact_Connection_Email_variable2)
      (type_Contact ?do_set_Contact_Connection_Email_variable1) (type_Contactable ?do_set_Contact_Connection_Email_variable2) (type_EMailAddress ?do_set_Contact_Connection_Email_variable7)
      
    )
    ((!set_Contact_Email ?do_set_Contact_Connection_Email_variable1 ?do_set_Contact_Connection_Email_variable2 ?do_set_Contact_Connection_Email_variable7))
  )
  (:method (set_Contact_Connection ?do_set_Contact_Connection_Office_variable1 ?do_set_Contact_Connection_Office_variable2)
    do_set_Contact_Connection_Office
    (
      (type_Contact ?do_set_Contact_Connection_Office_variable1) (type_Contactable ?do_set_Contact_Connection_Office_variable2)
      (type_Contact ?do_set_Contact_Connection_Office_variable1) (type_Contactable ?do_set_Contact_Connection_Office_variable2) (type_NumberOffice ?do_set_Contact_Connection_Office_variable3)
      
    )
    ((!set_Contact_NumberOffice ?do_set_Contact_Connection_Office_variable1 ?do_set_Contact_Connection_Office_variable2 ?do_set_Contact_Connection_Office_variable3))
  )
  (:method (set_Contact_Connection ?do_set_Contact_Connection_Mobile_variable1 ?do_set_Contact_Connection_Mobile_variable2)
    do_set_Contact_Connection_Mobile
    (
      (type_Contact ?do_set_Contact_Connection_Mobile_variable1) (type_Contactable ?do_set_Contact_Connection_Mobile_variable2)
      (type_Contact ?do_set_Contact_Connection_Mobile_variable1) (type_Contactable ?do_set_Contact_Connection_Mobile_variable2) (type_NumberMobile ?do_set_Contact_Connection_Mobile_variable3)
      
    )
    ((!set_Contact_NumberMobile ?do_set_Contact_Connection_Mobile_variable1 ?do_set_Contact_Connection_Mobile_variable2 ?do_set_Contact_Connection_Mobile_variable3))
  )
  (:method (set_Contact_Picture ?do_set_Contact_Picture_ViaContacts_variable1 ?do_set_Contact_Picture_ViaContacts_variable7)
    do_set_Contact_Picture_ViaContacts
    (
      (type_Contact ?do_set_Contact_Picture_ViaContacts_variable1) (type_Picture ?do_set_Contact_Picture_ViaContacts_variable7)
      (type_Contact ?do_set_Contact_Picture_ViaContacts_variable1) (type_Picture ?do_set_Contact_Picture_ViaContacts_variable7)
      
    )
    ((!press_Contacts_NewContact_SelectPicture ?do_set_Contact_Picture_ViaContacts_variable1) (!select_PictureSelection_PictureForNewContact ?do_set_Contact_Picture_ViaContacts_variable7 ?do_set_Contact_Picture_ViaContacts_variable1))
  )
  (:method (transferMessage ?do_transferMessage_variable9 ?do_transferMessage_variable10)
    do_transferMessage
    (
      (type_Contactable ?do_transferMessage_variable9) (type_Message ?do_transferMessage_variable10)
      (type_Message ?do_transferMessage_variable10) (type_Contactable ?do_transferMessage_variable9)
      
    )
    ((attachMultipleInformation ?do_transferMessage_variable10) (contact ?do_transferMessage_variable9 ?do_transferMessage_variable10) (extractsMultipleInformation ?do_transferMessage_variable9 ?do_transferMessage_variable10))
  )
))
