public OnPlayerActionChange(playerid, oldaction, newaction)
{
  if (newaction == PLAYER_ACTION_SHOOTING)
  {
    if (isPlayerWithinBounds(playerid, -3915, -3694, 401, 37))
    {
      SendClientMessage(playerid, 0xFFFFFF, "You are now shooting a weapon.");
    }
  }
}
