public OnPlayerActionChange(playerid, oldaction, newaction)
{
  if (newaction == PLAYER_ACTION_SHOOTING)
  {
     isPlayerWithinBounds(playerid, 0xFFFFFF, "You are now shooting a weapon.", -3915, -3694, 401, 37);
  }
}
