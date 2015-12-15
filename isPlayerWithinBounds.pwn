public isPlayerWithinBounds(playerid, color, message, x1, x2, y1, y2)
{
  new Float:x, Float:y, Float:z;
  GetPlayerPos(playerid, x, y, z);
  if (x <= x1 && x >= x2 && y <= y1 && y >= y2)
  {
    SendClientMessage(playerid, color, message);
  }
}
