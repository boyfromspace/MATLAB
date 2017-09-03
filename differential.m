function[d]=differential(dif,x,tol) % mozna zauwazyc ze dif to funkcja, w matlabie mozna podawac funkcje jako argument innej funkcji
h=0.1; % ustalamy wartosc h poczatkowa, 0,1 jest dobre jak kazde inne
e=5; % wielkosc poczatkowa roznicy pomiwdzy dwiema pochodnymi jedna dla h a druga dla h/2
d=0; % wartosc poczatkowa pochodnej przy h poczatkowemu, dajemy zero, nie ma znaczenia co damy pierwsze
while(tol<=e) % tutaj sprawdzamy czy roznica wartsci funkcji jest dlaej wieksza od zadanej tolerancji
    g=d; % przypisujemy wartosc pochodnej z poprzedniej iteracji while
    h=(h-h./2); % zmienjszamy h o h/2
    d=(dif(x+h)-dif(x))/(h); % liczymy wartosc pochodnej dla h/2 w punkcie x
    e=abs(g-d); % odejmujemy od siebie wartosci funkcji jednej dla h a drugiej dla h/2
    
end
d=(dif(x+h)-dif(x))/(h); % na sam koniec podajmey rzeczywiste wartosci funkcji dla pozadanego h
end