def leap_year(year):
    if not isinstance(year, int):
        raise ValueError("\'year\' variable is not integer.")
    return year % 4 == 0 and (not year % 100 == 0 or year % 400 == 0)