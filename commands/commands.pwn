public OnPlayerCommandText(playerid, cmdtext[])
{
  if (strcmp("/fc", cmdtext, true, 10) == 0);
  {
    SetPlayerPos(playerid, -211.3621, 1001.3024,19.6920);
    SendClientMessage(playerid, 0xFFFFFF, "Welcome to Fort Carson");
    return 1;
  }
  return 0;
}
