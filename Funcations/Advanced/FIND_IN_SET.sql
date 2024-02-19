SELECT FIND_IN_SET('y','x,y,z'); -- 2
-- continue
/**
  FIND_IN_SET() function used to find the position of a string within a list of strings.
  If the string is repeated multiple time, the output will be the first position of that string.

  Point to be noted :
    If string is not found in string_list, the result is 0
    If string or string_list is NULL, the result is NULL
    If string_list is an empty string (“”), the result is 0
*/