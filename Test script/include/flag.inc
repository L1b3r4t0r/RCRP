new bool:flag = false;
// Set the flag value can be overwritten with a passed boolean as argument
stock setFlagValue()
{
  argNum = numargs() - 1;
  if (argNum != 0)
  {
    if (flag == true)
    {
      flag = false;
    }
    else
    {
      flag = true;
    }
  }
  else
  {
    flag = value;
  }
  return 1;
}
// Gets the flag vallue as in a OOP setter getter model
stock getFlagValue()
{
  if(flag == true)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

forward setFlagValue();
forward getFlagValue();
