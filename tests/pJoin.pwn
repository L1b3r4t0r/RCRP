public OnPlayerConnect(playerid)
{
  // Send a message to the connect client only to greet
  SendClientMessage (playerid, 0xFFFFFF, "Welcome to Grove street DM enjoy your stay&quot;");
  // Define a varible to hold the player nickname
  new pName[MAX_PLAYER_NAME];
  // Get the player nickname using the provided id and dump it into the pName variable
  GetPlayerName(playerid, pName, sizeof(pName));
  // Creates a 64 bytes lenght string to hold the public message
  new pubMessage[64];
  // Format the public message to for public display on the server and dump it into pubMessage variable
  format(pubMessage, sizeof pubMessage, "%s has joined the server. Welcome!", pName);
  // Publicy display the pubMessage contents to the server
  SendClientMessageToAll(0xFFFFFF, pubMessage);
  // Return a success code
  return 1;
}
