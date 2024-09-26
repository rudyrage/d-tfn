rectangle_area(Length, Width, Area) :- 
       Area is Length * Width.
rectangle_perimeter(Length, Width, Perimeter) :- 
       Perimeter is 2 * (Length + Width).

circle_area(Radius, Area) :- 
       Area is 3.14159 * Radius * Radius.
circle_circumference(Radius, Circumference) :- 
       Circumference is 2 * 3.14159 * Radius.
