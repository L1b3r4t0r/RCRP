public OnPlayerActionChange(playerid, oldaction, newaction)
{
  if (newaction == PLAYER_ACTION_SHOOTING)
  {
     new Float:x, Float:y, Float:z;
     GetPlayerPos(playerid, x, y, z);
     SendClientMessage(playerid, 0xFFFFFF, "You are now shooting a weapon.");
  }
}
