set -l _bold "\e[1;37m"
set -l _reset "\e[m"

function bold --description 'Return bolded text using ANSI escape codes'
    printf '\e[1m%s\e[0m' "$argv"
end

set -l messages \
    "Może nie jest stylowy. Ale na $(bold Żywo)"\
    "Właśnie ten zwrotny punkt trzeba mi $(bold zmian)\nFala poniesie mnie tam gdzie będę chciał\n$(bold Zmienić) wszystko by się nie $(bold zmieniło) wcale nic\n$(bold "Zmienić") kolor i smak i na głowie stać\n$(bold "Zmienić") tło całkiem tak i kierunek $(bold zmian)\nJeśli nie teraz tu to $(bold "kiedy")?" \
    "Umrzyj i oddaj swoją duszę. To nie należy do $(bold ciebie)." \
    "$(bold Król nie żyje niech żyje królowa)"

set -l count (count $messages)
set -l index (random 1 $count)
echo -e "$messages[$index]"
