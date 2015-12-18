/*Add these to the defines*/

enum
{
  DIALOG_TUTORIAL, // If the player likes to start the Tutorial
  DIALOG_FC, // The dialog for fort carson
  DIALOG_COLLEGE, //the dialog for the college
  DIALOG_SD, //the dialog for the SD
  DIALOG_HOSPITAL, //the dialog for the hospital
  DIALOG_FEDEX, //the dialog for the fedex depot
  DIALOG_FINISH, //the dialog for finishing
}



public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(response)
  {
    switch(dialogid)
    {
      case DIALOG_TUTORIAL: // Add this to OnDialogResponse
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerCameraPos(playerid, 33.5722, 1167.1045, 94.6055);
            SetPlayerCameraLookAt(playerid, -190.2980, 1128.4006, 19.5929);
            ShowPlayerDialog(playerid, DIALOG_FC, DIALOG_STYLE_MSGBOX, "Tutorial",
            "Welcome to RidgeCrest Roleplay,\n\
            In this tutorial we're going to cover some basic locations.\n\
            "
            , "Continue", "");
            return 1;
          }
          case 1:
          {
            SendClientMessage(playerid, COLOR_ORANGE, "You have canceled the tutorial.");
            return 1;
          }
        }
      }
      case DIALOG_FC:
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerCameraPos(playerid, -187.9593, 1118.7156, 23.8026);
            SetPlayerCameraLookAt(playerid, -207.5477, 1119.2731, 20.4297);
            ShowPlayerDialog(playerid, DIALOG_CITYHALL, DIALOG_STYLE_MSGBOX, "City hall",
            "This is the city hall. You can pay off tickets and also aquire a license here.\n\
            Dont forget to take classes in college to have the ability to take the test.\n\
            "
            , "Continue", "");
            return 1;
          }
        }
      }
      case DIALOG_CITYHALL:
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerCameraPos(playerid, 110.2658, 1086.3412, 25.9279);
            SetPlayerCameraLookAt(playerid, 110.1809, 1050.7789, 18.9344);
            ShowPlayerDialog(playerid, DIALOG_COLLEGE, DIALOG_STYLE_MSGBOX, "College",
            "This is the college. For every job and license you will have to take your classes here.\n\
            This is also the perfect opportunity to take or organize classes from other players.\n\
            "
            , "continue", "");
            return 1;
          }
        }
      }
      case DIALOG_SD:
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerCameraPos(playerid, -311.1235, 1083.0095, 32.1056);
            SetPlayerCameraLookAt(playerid, -320.0216, 1048.5702, 20.3403);
            ShowPlayerDialog(playerid, DIALOG_HOSPITAL, DIALOG_STYLE_MSGBOX, "Hospital",
            "This is the hospital. If you call 911 and select medical an ambulance will be send from here.\n\
            This is also where you can buy a health insurance for -howmuch it costs-.\n\
            "
            , "Continue", ""); // Can you verify the health insurance thing? If it aint there remove it
            return 1;
          }
        }
      }
      case DIALOG_HOSPITAL:
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerCameraPos(playerid, -149.0728, 1112.9447, 29.1646);
            SetPlayerCameraLookAt(playerid, -151.2296, 1086.8920, 20.8094);
            ShowPlayerDialog(playerid, DIALOG_FEDEX, DIALOG_STYLE_MSGBOX, "FedEx",
            "This is the FedEx depot. Its really recommended that this would be your first job.\n\
            You should get classes for this job at our college.\n\
            "
            , "Continue", "");
            return 1;
          }
        }
      }
      case DIALOG_FEDEX:
      {
        switch (listitem)
        {
          case 0:
          {
            SetPlayerPos(playerid, -204.9801, 1119.2793, 19.7422);
            SetPlayerCameraPos(playerid, -187.9593, 1118.7156, 23.8026);
            SetPlayerCameraLookAt(playerid, -207.5477, 1119.2731, 20.4297);
            ShowPlayerDialog(playerid, DIALOG_FINISH, DIALOG_STYLE_MSGBOX, "Finishing",
            "That was it for this tutorial. On behold of our staff we would like to welcome you to our server.\n\
            To see some usefull locations please dont forget to use the command /gps
            "
            , "End Tutorial", "");
            return 1;
          }
        }
      }
      case DIALOG_FINISH:
      {
        switch (listitem)
        {
          case 0:
          {
            SetCameraBehindPlayer(playerid);
            return 1;
          }
        }
      }
    }
  }
