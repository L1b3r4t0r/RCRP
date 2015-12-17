new bool:flag = false;
// Set the flag value can be overwritten with a passed boolean as argument
public setFlagValue(value = "none")
{
  if (value != "none")
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
forward setFlagValue();
SetTimer("setFlagValue", 300000, true);

// Gets the flag vallue as in a OOP setter getter model
public getFlagValue()
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
