Locale = {
    -- Ogólne
    ['system'] = 'System',
    ['housing'] = 'Mieszkanie',
    ['no'] = 'Nie',
    ['yes'] = 'Tak',
    ['are_you_sure'] = "Jesteś pewien?",
    ['not_owned'] = "Not Owned",

    -- Powiadomienia
    ['bought_home'] = 'Zakupiłeś %s za $%s',
    ['given_home'] = 'Otrzymałeś nieruchomość %s',
    ['home_revoked'] = 'Odebrałeś %s właścicielowi',
    ['home_extended'] = 'Twoje mieszkanie zostało powiększone',

    -- Komunikaty o błędach
    ['not_enough_money'] = "Nie masz $%s",
    ['too_much_property'] = 'Posiadasz więcej niż limit posiadania domów!',
    ['not_owned_home'] = 'Nie jesteś właścicielem tego mieszkania!',
    ['error_create_home'] = 'Błąd podczas tworzenia mieszkania',
    ['not_inside_home'] = 'Akcja niemożliwa, nie znajduje się w twoim mieszkaniu!',
    ['not_inside_MLO'] = 'Nie znajduje się w żadnym MLO',
    ['no_owned_house'] = 'Nie posiadasz żadnego mieszkania!',
    ['not_enough_item'] = 'Nie masz wystarczająco %s',
    ['invalid_input'] = 'Nieprawidłowe dane!',
    ['invalid_home'] = 'Mieszkanie nie istnieje!',
    ['target_offline'] = 'Gracz nie jest w mieście!',

    -- Komunikaty
    ['prompt_buy_home'] = 'Naciśnij ~E~ aby kupić mieszkanie',
    ['prompt_enter_home'] = 'Naciśnij ~E~ aby wejść do mieszkania',
    ['prompt_home_menu'] = 'Naciśnij ~E~ aby otworzyć menu',
    ['prompt_open_garage'] = 'Naciśnij ~E~ aby otworzyć garaż',
    ['prompt_store_vehicle'] = 'Naciśnij ~E~ aby zaparkować pojazd',
    ['prompt_open_wardrobe'] = 'Naciśnij ~E~ aby otworzyć szafę',
    ['prompt_open_storage'] = 'Naciśnij ~E~ aby otworzyć magazyn',
    ['prompt_flat_menu'] = 'Naciśnij ~E~ aby otworzyć menu mieszkania',
    ['prompt_apartment_menu'] = 'Naciśnij ~E~ aby otworzyć menu apartamentu',
    ['prompt_vehicle_spawn_point'] =
    'Naciśnij ~E~ aby dodać, Naciśnij ~X~ aby anulować, ← → aby obrócić kierunek pojazdu',
    ['prompt_title'] = 'Naciśnij ~E~ aby ustawić %s',
    ['prompt_bossmenu'] = 'Naciśnij ~E~ aby otworzyć menu szefa',
    ['prompt_screenshot_furniture'] =
    'Press ~E~ to Confirm<br>← → to rotate<br>↑ ↓ to zoom in/out<br>~H~ to flip<br>~SCROLL~ up/down camera',

    -- Tworzenie
    -- Komunikaty
    ['garage'] = 'Garaż',
    ['entrance'] = 'Wejście',
    ['choose'] = 'Wybierz',
    ['prompt_create_shell'] = [[Powłoka: %s<br>
        Krok: %s | %s<br>
        ~ENTER~ aby potwierdzić dom<br>
        ~BACKSPACE~ aby anulować<br>
        ~Q~ ~E~ aby obrócić<br>
        ~R~ ~F~ aby dostosować wysokość<br>
        ~W~ ~A~ ~S~ ~D~ aby poruszać powłoką<br>
        ~CTRL~ ~SCROLL~ aby zmienić powłoki<br>
        ~SHIFT~ ~SCROLL~ aby przybliżyć/oddalić
    ]],
    -- Błąd
    ['canceled_house'] = 'Anulowałeś tworzenie domu',
    ['house_created'] = 'Dom pomyślnie utworzony',

    -- Garaż
    ['spawn_point_added'] = 'Dodano punkt spawnu pojazdu',
    ['garage_canceled'] = 'Tworzenie garażu anulowane',

    -- Zarządzanie Mieszkaniami
    ['home_sold'] = 'Twoje mieszkanie zostało sprzedane za $%s',
    ['home_cannot_be_sold'] = 'Obecnie rząd nie kupuje żadnych mieszkań!',
    ['home_locked'] = 'Mieszkanie zablokowane',
    ['home_unlocked'] = 'Mieszkanie odblokowane',
    ['successfully_renamed'] = 'Pomyślnie zmieniono nazwę mieszkania na %s',

    -- Przekazywanie
    ['transfer'] = 'Przekazanie Własności',
    ['transfer_desc'] = 'Wprowadź identyfikator obywatela docelowego',
    ['transfer_success'] = 'Mieszkanie zostało przekazane na %s pomyślnie',
    ['transfer_to_you'] = 'Mieszkanie zostało przekazane od %s pomyślnie',

    -- Błąd
    ['not_allowed'] = 'Nie masz wystarczających uprawnień, aby to zrobić!',
    ['not_allowed_to_sell'] = 'Tego domu nie możesz sprzedać!',
    ['not_allowed_to_transfer'] = 'Tego domu nie możesz przekazać!',
    ['not_allowed_to_doorlock'] = 'Nie możesz samodzielnie utworzyć zamka drzwiowego!',
    ['not_allowed_to_movegarage'] = 'Nie możesz samodzielnie przenieść garażu!',
    ['rename_not_allowed'] = "Nie masz uprawnień do zmiany nazwy tego mieszkania",

    -- Komendy Admina / Nieruchomości
    -- Zarządzanie
    ['home_deleted'] = 'Mieszkanie %s zostało usunięte',

    -- Błąd
    ['going_too_far'] = 'Idziesz za daleko',
    ['not_near_any_home'] = 'Nie jesteś w pobliżu żadnego domu!',
    ['house_fee_not_enough'] = 'Brak środków w firmie nieruchomości! Opłata za utworzenie wynosi $%s',

    -- Tworzenie Apartamentów
    ['flat_name'] = 'Nazwa Apartamentu',
    ['flat_complex_name'] = 'Nazwa kompleksu apartamentowego',
    ['use_existing'] = 'Czy chcesz dodać ten pokój do apartamentu %s?',
    ['apt_not_found'] = 'Apartament %s nie został znaleziony! Upewnij się, że nazwa jest taka sama!',
    ['open_flat_menu'] = 'Otwórz Menu Apartamentu',

    -- CCTV
    ['keybind_cctv_move'] = 'Przesuń kamerę CCTV',
    ['keybind_cctv_save'] = 'Zapisz obrót kamery CCTV',
    ['keybind_cctv_exit'] = 'Wyjdź z kamery CCTV',
    ['keybind_cctv_zoom'] = 'Przybliż/oddal kamerę',
    ['prompt_cctv_keybinds'] =
    '~BACKSPACE~ aby wyjść<br>~W~ ~A~ ~S~ ~D~ aby poruszać<br>~SCROLL~ aby przybliżyć/oddalić<br>~→~ Następna kamera',
    ['prompt_cctv_preview_keybinds'] =
    '~BACKSPACE~ aby wyjść<br>~W~ ~A~ ~S~ ~D~ aby poruszać<br>~ENTER~ aby zapisać obrót',
    ['setup_cctv_heading'] = 'Proszę ustawić obrót kamery CCTV',
    ['cctv_rotation_saved'] = 'Obrót kamery zapisany, możesz wyjść z ustawień.',

    -- Wiadomości Telefonu
    ['rent_overdue_title'] = 'Zaległe czynsze',
    ['rent_removed_title'] = 'Czynsz usunięty z powodu niezapłaconych czynszów',
    ['mortgage_overdue_title'] = 'Zaległa hipoteka',
    ['your_house_removed'] = 'Twoje mieszkanie zostało usunięte z powodu niezapłaconej hipoteki',
    ['house_bought'] = 'Nabyto nieruchomość %s',
    ['house_detail'] = 'Nabyłeś nieruchomość %s za kwotę $%s',
    ['rent_paid'] = 'Zapłacono czynsz %s',
    ['rent_detail'] = 'Zapłaciłeś czynsz %s w kwocie $%s',

    -- Przypomnienie o czynszu
    ['pay_your_rent'] = 'Masz zaległy czynsz do zapłacenia!',
    ['your_rent_removed'] = 'Twój czynsz został ci odebrany!',
    ['not_enough_money_rent'] = "Nie masz wystarczająco pieniędzy, aby zapłacić czynsz!",
    ['auto_paid_rent'] = 'Zapłacono czynsz w kwocie $%s',
    ['rent_not_needed'] = 'Obecnie nie musisz płacić czynszu',
    ['rent_due_time'] = 'Możesz zapłacić czynsz za %s dni od dzisiaj',

    -- System kluczy
    ['key_created_successfully'] = 'Utworzono klucz %s pomyślnie',
    ['key_creation_error'] = 'Wystąpił błąd podczas tworzenia klucza',
    ['key_deleted_successfully'] = 'Usunięto klucz %s pomyślnie',
    ['key_deletion_error'] = 'Wystąpił błąd podczas usuwania klucza',

    ['key_given_successfully'] = 'Klucz %s został pomyślnie przekazany użytkownikowi %s',
    ['key_give_error'] = 'Wystąpił błąd podczas przekazywania klucza',
    ['key_removed_successfully'] = 'Klucz został pomyślnie usunięty od osoby',
    ['key_removal_error'] = 'Wystąpił błąd podczas usuwania klucza',

    ['key_exists_in_holder'] = 'Klucz nadal istnieje u jednego z posiadaczy! Proszę go usunąć przed usunięciem klucza',

    -- System Drzwi
    ['command_lock'] = 'Zamknij / Otwórz drzwi',
    ['door_deleted'] = 'Pomyślnie usunięto drzwi',
    ['door_added'] = 'Pomyślnie dodano drzwi',
    -- # Komunikaty
    ['prompt_add_door'] = '~LMB~ aby dodać drzwi  \n ~PMB~ aby anulować',
    ['prompt_delete_door'] = 'Naciśnij ~E~ aby usunąć drzwi  \n Naciśnij ~X~ aby anulować',
    ['prompt_lock_door'] = 'Naciśnij ~E~ aby zamknąć drzwi',
    ['prompt_unlock_door'] = 'Naciśnij ~E~ aby otworzyć drzwi',

    -- # Błąd
    ['incorrect_home'] = 'Nie jesteś w tym samym domu co docelowy dom!',
    ['door_no_permission'] = 'Nie masz uprawnień do interakcji z tymi drzwiami',
    ['door_exist'] = 'Drzwi już istnieją',
    ['unable_to_interact_door'] = 'Nie możesz interweniować z tymi drzwiami',
    ['error_duplicate_door_name'] = 'Nie możesz tworzyć zduplikowanej nazwy drzwi!',
    ['failed_lockpick'] = 'Nie udało ci się wytrychować drzwi!',
    ['not_near_any_door'] = 'Nie ma żadnych drzwi w pobliżu!',

    -- Hipoteka
    ['mortgage_paid'] = 'Zapłaciłeś hipotekę za dom w kwocie $%s',
    ['mortgage_paid_all'] = 'Zapłaciłeś swoją pozostałą hipotekę za dom w kwocie $%s',
    ['not_mortgage_time'] = 'Czas na zapłacenie hipoteki jeszcze nie nadszedł',
    ['no_mortgage'] = 'Nie masz żadnej hipoteki do zapłacenia!',
    ['mortgage_chosen'] = 'Successfully chosen and paid mortgage downpayment',
    ['ongoing_mortgage_cannot_be_edited'] = 'You cannot change the mortage because there is an ongoing mortgage!',

    -- Magazyn
    ['storage_added'] = 'Lokalizacja magazynu dodana pomyślnie',
    ['storage_update'] = 'Lokalizacja magazynu zaktualizowana pomyślnie',
    ['saved_storage'] = 'Lokalizacja magazynu ustawiona pomyślnie',

    -- # Komunikaty
    ['prompt_add_storage'] = 'Naciśnij ~E~ aby ustawić magazyn  \n Naciśnij ~X~ aby anulować',

    -- # Komunikaty o błędach
    ['storage_max_exceeded'] = 'Nie możesz dodać więcej magazynów!',
    ['storage_deleted'] = 'Magazyn pomyślnie usunięty',

    -- Meble
    ['furniture_stored'] = 'Meble zostały przeniesione do twojego inwentarza!',
    ['bought_furniture'] = 'Kupiłeś %s za $%s',
    ['furniture_placed'] = 'Umieściłeś meble',
    ['sell_furniture'] = 'Sprzedaj Meble',
    ['sell_furniture_success'] = 'Sprzedałeś swoje meble za $%s',

    -- # Komunikaty o błędach
    ['furniture_not_found'] = 'Meble nie zostały znalezione!',
    ['sell_furniture_failed'] = 'Coś poszło nie tak podczas sprzedaży mebli',

    -- # Komunikaty
    ['prompt_furniture'] = 'Naciśnij ~E~ aby otworzyć sklep meblowy!',
    ['prompt_furnitureshop'] = '~BACKSPACE~ aby wyjść<br>~,~ ~.~ aby obrócić',
    ['prompt_furnish'] = [[
    Obecny Tryb: %s<br>
    ~E~ Umieść meble<br>
    ~BACKSPACE~ aby anulować<br>
    ~G~ Tryb Gizmo<br>
    ~R~ Obrót Gizmo<br>
    ~Z~ Przesuń Gizmo<br>
    ~P~ Tryb Precyzyjny<br>
    ~H~ Tryb Promieniowania / Wyjdź z Gizmo<br>
]],
    ['prompt_furnish_precise'] = [[
    Obecny Tryb: Precyzyjny<br>
    ~E~ Umieść meble<br>
    ~BACKSPACE~ aby anulować<br>
    ~←~ ~→~ Lewo/Prawo<br>
    ~↑~ ~↓~ Do przodu/Do tyłu<br>
    ~Shift~ ~Strzałki~ Nachylenie, Obrót, Rotacja<br>
    ~SCROLL~ Zmiana wysokości<br>
    ~Z~ Umieść obiekt na podłodze<br>
    ~,~ ~.~ aby obrócić<br>
    ~CAPSLOCK~ ~TAB~ zmień prędkość<br>
    ~`~ aby teleportować obiekt do ciebie<br>
    ~G~ Tryb Gizmo<br>
    ~H~ Tryb Promieniowania<br>
]],

    -- Obszar
    ['area_created'] = 'Obszar pomyślnie utworzony',
    ['point_added'] = 'Dodano punkt',
    ['mode_changed'] = 'Zmieniono tryb przemieszczania',
    -- # Komunikaty
    ['prompt_create_mlo'] = [[
        ~X~ aby anulować<br>
        ~G~ aby dodać więcej punktów<br>
        ~R~ Zmień tryb<br>
        Przytrzymaj ~SHIFT~ i przewiń w górę/dół, aby zmienić wysokość<br>
        Przytrzymaj ~ALT~ i przewiń w górę/dół, aby zmienić umieszczenie Z<br>
        ~W~ ~A~ ~S~ ~D~ Ruch kamery<br>
        ~Shift~ ~Alt~ Szybki/Wolny Ruch Kamery<br>
        ~Q~ ~E~ Ruch kamery w górę / w dół<br>
        ~ENTER~ aby zakończyć tworzenie
    ]],
    ['prompt_create_mlo_precise'] = [[
        ~X~ aby anulować<br>
        ~G~ aby dodać więcej punktów<br>
        ~R~ Zmień tryb<br>
        Przewiń w górę/dół zmieniając krok: %s<br>
        Przytrzymaj ~SHIFT~ i przewiń w górę/dół, aby zmienić wysokość<br>
        Przytrzymaj ~ALT~ i przewiń w górę/dół, aby zmienić umieszczenie Z<br>
        ~←~ ~→~ ~↑~ ~↓~ Przesuń punkt<br>
        ~W~ ~A~ ~S~ ~D~ Ruch kamery<br>
        ~Shift~ ~Alt~ Szybki/Wolny Ruch Kamery<br>
        ~Q~ ~E~ Ruch kamery w górę / w dół<br>
        ~ENTER~ aby zakończyć tworzenie
    ]],
    -- # Błąd
    ['canceled_area'] = 'Anulowałeś tworzenie obszaru',
    ['point_too_far'] = 'Punkt obszaru jest zbyt daleko od wejścia!',
    ['point_too_few'] = 'Musisz dodać co najmniej 3 punkty!',

    -- Rabunek
    ['robbery'] = 'Rabunek',
    ['house_robbery'] = 'Rabunek Domu',
    ['house_lockpicked'] = 'Twój dom %s jest rabowany!',
    ['house_entered_by_anon'] = 'Ktoś wszedł do twojego domu %s!',
    ['house_raided'] = 'Rozpocząłeś rabunek domu!',
    ['not_enough_police'] = 'Nie możesz obecnie rabować domu!',
    ['robbery_in_progress'] = 'Rabunek domu jest w toku w domu %s',

    -- Pukanie
    ['no_one_inside'] = 'Nie ma nikogo w domu',
    ['someone_is_knocking'] = 'Ktoś puka z zewnątrz',
    ['door_opened_for_you'] = 'Drzwi zostały otwarte przez właściciela',

    -- Szafa
    ['saved_wardrobe'] = 'Lokalizacja szafy ustawiona pomyślnie',
    ['prompt_add_wardrobe'] = 'Naciśnij ~E~ aby ustawić szafę  \n Naciśnij ~X~ aby anulować',

    ['wardrobe'] = 'Szafa',
    ['outfit_name'] = 'Nazwa stroju',
    ['outfit_desc'] = 'Zapisz nazwę swojego stroju',
    ['change_description'] = 'Zmień na swój strój',
    ['delete_description'] = 'Usuń swój strój',
    ['delete_outfit'] = 'Usuń Strój',
    ['change_outfit'] = 'Zmień Strój',
    ['save_outfit'] = 'Zapisz Strój',
    ['saved_outfit'] = 'Strój został pomyślnie zapisany',
    ['deleted_outfit'] = 'Strój został usunięty',
    ['loaded_outfit'] = 'Strój został załadowany',

    -- Log Discord
    ['log_house_revoked'] = "House Revoked",
    ['log_house_revoked_inactivity'] = 'House %s (%s) has been revoked for inactivity %s',

    ['log_lockpick_title'] = 'Alarm wytrychowy',
    ['log_lockpick_message'] =
    '**Dom**: %s\n**Właściciel**: %s\n**Osoba wytrychująca**: %s (%s)\nDrzwi zostały wytrychowane',
    ['log_nonowner_enter_title'] = 'Wejście osób postronnych',
    ['log_nonowner_enter_msg'] =
    '**Dom**: %s\n**Właściciel**: %s\n**Osoba postronna**: %s (%s)\nTa osoba wszedła do domu jako nie właściciel',

    ['log_house_locked'] = 'Dom zamknięty',
    ['log_house_locked_msg'] = '**Dom**: %s\n**Zamknięty przez**: %s (%s)',
    ['log_house_unlocked'] = 'Dom otwarty',
    ['log_house_unlocked_msg'] = '**Dom**: %s\n**Otwarty przez**: %s (%s)',

    ['log_duplicated_key'] = 'Zduplikowany klucz do domu',
    ['log_duplicated_key_msg'] = '**Dom**: %s\n**Właściciel**: %s',
    ['log_deleted_key'] = 'Klucz do domu został usunięty',
    ['log_deleted_key_msg'] = '**Dom**: %s\n**Właściciel**: %s',
    ['log_gave_key'] = 'Klucz do domu został przekazany',
    ['log_gave_key_msg'] = '**Dom**: %s\n**Właściciel**: %s\n**Przekazany do**: %s (%s)',
    ['log_removed_key'] = 'Klucz do domu został usunięty',
    ['log_removed_key_msg'] = '**Dom**: %s\n**Właściciel**: %s\n**Usunięty od**: %s (%s)',
    ['log_enter_cctv_success'] = 'Wejście do monitoringu',
    ['log_enter_cctv_success_msg'] = '**Dom**: %s\n**Gracz**: %s (%s)',
    ['log_enter_cctv_failed'] = 'Próba wejścia do monitoringu',
    ['log_enter_cctv_failed_msg'] = '**Dom**: %s\n**Gracz**: %s (%s)\n**NIELEGALNE WEJŚCIE (MOŻLIWY OSZUST)**',
    ['log_leave_cctv'] = 'Opuścił monitoring',
    ['log_leave_cctv_msg'] = '**Dom**: %s\n**Gracz**: %s (%s)',

    ['log_player_enter_home'] = 'Gracz wszedł do domu',
    ['log_player_enter_home_msg'] = '**Dom**: %s\n**Gracz**: %s (%s)',
    ['log_player_left_home'] = 'Gracz opuścił dom',
    ['log_player_left_home_msg'] = '**Dom**: %s\n**Gracz**: %s (%s)',

    ['log_house_created'] = 'Dom utworzony',
    ['log_house_created_msg'] = '**ID**: %s\n**Nazwa**: %s\n**Cena**: %s\n**Typ**: %s\n**Utworzony przez**: %s (%s)',
    ['log_house_deleted'] = 'Dom usunięty',
    ['log_house_deleted_msg'] = '**Dom**: %s\n**Usunięty przez**: %s (%s)\nGracz usunął dom',

    ['log_house_expired'] = 'Dom wygasł',
    ['log_house_expired_msg'] = '**Dom**: %s\nDom został odebrany od **%s**',
    ['log_house_given'] = 'Dom przekazany',
    ['log_house_given_msg'] =
    '**Dom**: %s\n**Przekazany przez**: %s (%s)\n**Przekazany do**: %s (%s)\nGracz przekazał dom',
    ['log_house_extended'] = 'Dom rozszerzony',
    ['log_house_extended_msg'] = '**Dom**: %s\nDom został przedłużony do **%s**',
    ['log_bought_house'] = 'Dom zakupiony',
    ['log_bought_house_msg'] = '**Dom**: %s\n**Cena**: %s\n**Kupiony przez**: %s (%s)\nGracz kupił dom',
    ['log_sold_house'] = 'Dom sprzedany',
    ['log_sold_house_msg'] = '**Dom**: %s\n**Zwrócone pieniądze**: %s\n**Sprzedane przez**: %s (%s)\nGracz sprzedał dom',
    ['log_transferred_house'] = 'Właściciel domu przekazany',
    ['log_transferred_house_msg'] = '**Dom**: %s\n**Poprzedni właściciel**: %s (%s) | **Nowy właściciel**: %s (%s)',

    ['log_door_deleted'] = 'Usunięto drzwi domowe',
    ['log_door_deleted_msg'] = '**Dom**: %s\n**Przez**: %s (%s)\nUsunięto drzwi domowe',
    ['log_door_added'] = 'Dodano drzwi domowe',
    ['log_door_added_msg'] = '**Dom**: %s\n**Typ**: %s\n**Przez**: %s (%s)\nDodano drzwi domowe',

    ['log_buy_furniture'] = 'Meble zakupione',
    ['log_buy_furniture_msg'] =
    '**Gracz**: %s (%s)\n**Kategoria**: %s\n**etykieta**: %s\n**model**: %s\n**Cena**: %s\nGracz zakupił meble',
    ['log_placed_furniture'] = 'Umieszczone meble',
    ['log_placed_furniture_msg'] =
    '**Gracz**: %s (%s)\n**Dom**: %s\n**Kategoria**: %s\n**etykieta**: %s\n**model**: %s\nGracz umieścił meble',
    ['log_sold_furniture'] = 'Sprzedane meble',
    ['log_sold_furniture_msg'] =
    '**Gracz**: %s (%s)\n**Kategoria**: %s\n**etykieta**: %s\n**model**: %s\n**Cena**: %s\nGracz sprzedał meble',
    ['log_stored_furniture'] = 'Meble przechowane',
    ['log_stored_furniture_msg'] =
    '**Gracz**: %s (%s)\n**Dom**: %s\n**Kategoria**: %s\n**etykieta**: %s\n**model**: %s\nGracz przechował meble',

    ['log_choose_plan'] = 'Wybrano plan hipoteczny',
    ['log_choose_plan_msg'] =
    '**Dom**: %s\n**Wkład własny**: %s\n**Plan**: Oprocentowanie **%s**, czas trwania **%s**, typ **%s**, wynik **%s**\n**Gracz**: %s (%s)',
    ['log_paid_remaining_mortgages'] = 'Zapłacono pozostałą hipotekę',
    ['log_paid_remaining_mortgages_msg'] =
    '**Dom**: %s\n**Pozostała płatność**: %s\n**Zapłacone przez**: %s (%s)\nZapłacono pozostałą hipotekę',
    ['log_paid_mortgage'] = 'Zapłacono hipotekę',
    ['log_paid_mortgage_msg'] =
    '**Dom**: %s\n**Zapłacone**: %s\n**Pozostało**: %s\n**Zapłacone przez**: %s (%s)\nZapłacono hipotekę',
    ['log_auto_remove_mortgage'] = 'Automatyczne usunięcie niezapłaconej hipoteki',
    ['log_auto_remove_mortgage_msg'] = '**Dom**: %s\n**Był własnością**: %s',
    ['log_return_mortgage_money'] = 'Zwrócono pieniądze z hipoteki',
    ['log_return_mortgage_money_msg'] = '**Dom**: %s\n**Zwrócone pieniądze**: %s\n**Do**: %s',

    ['log_paid_rent'] = 'Zapłacono czynsz',
    ['log_paid_rent_msg'] = '**Dom**: %s\n**Zapłacone**: %s\n**Zapłacone przez**: %s (%s)\nZapłacono czynsz',
    ['log_auto_remove_rent'] = 'Automatyczne usunięcie wygasłego czynszu',
    ['log_auto_remove_rent_msg'] = '**Dom**: %s\n**Był własnością**: %s',

    -- Klawisze instrukcji w przypadku korzystania z bcs_hud
    -- Tytuły klawiszy BCS HUD
    ['polyzone_creation'] = "Tworzenie poligonu",
    ['cctv_controls'] = 'Sterowanie kamerami CCTV',
    ['cctv_setup_controls'] = 'Ustawienia kamer CCTV',

    -- Opisy klawiszy
    ['keybind_add_to_near_apt'] = 'Dodaj do najbliższego mieszkania',
    ['keybind_create_new_apt'] = 'Utwórz nowe mieszkanie',

    ['keybind_cancel'] = 'Anuluj',
    ['keybind_finish'] = 'Zakończ',
    ['keybind_add_point'] = 'Dodaj więcej punktów',
    ['keybind_change_z'] = 'Zmień maks./min. Z',
    ['keybind_move_point'] = 'Przesuń punkt',
    ['keybind_noclip'] = 'Ruch noclip',
    ['keybind_noclip_updown'] = 'Poruszanie w górę/w dół',
    ['keybind_noclip_speed'] = 'Prędkość noclip (Przytrzymaj)',
    ['keybind_crease_height'] = 'Zwiększ/zmniejsz wysokość strefy',
    ['keybind_z_placement'] = 'Z placement',
    ['keybind_change_mode'] = 'Change mode',

    ['keybind_quit'] = 'Wyjście',
    ['keybind_rotate'] = 'Obróć meble',

    ['keybind_place_furniture'] = 'Umieść meble',
    ['keybind_mode_gizmo'] = 'Wejdź w tryb Gizmo',
    ['keybind_mode_gizmo_rotate'] = 'Tryb obracania Gizmo',
    ['keybind_mode_gizmo_move'] = 'Tryb przesuwania Gizmo',
    ['keybind_mode_raycast'] = 'Raycast Movement / Wyjdź z Gizmo',

    ['keybind_confirm_house'] = 'Potwierdź dom',
    ['keybind_adjust_height'] = 'Dostosuj wysokość umieszczenia',
    ['keybind_move_shell'] = 'Przesuń obudowę',
    ['keybind_change_shell'] = 'Zmień obudowę',
    ['keybind_zoom'] = 'Przybliż/oddal',

    -- Konfiguracja
    ['config_updated_successfully'] = 'Konfiguracja domu została pomyślnie zaktualizowana',
    ['config_update_error'] = 'Wystąpił błąd podczas edycji konfiguracji domu',

    -- Związane z menu
    ['house_menu'] = "Menu domu",
    ['apartment_menu'] = 'Menu mieszkania',
    ["house_manager_menu"] = "Menu zarządzania domem",
    ['house_entrance_menu'] = "Menu wejścia do domu",
    ['flat_entrance_menu'] = 'Menu wejścia do mieszkania',
    ['owned_flat_filter'] = 'Filtr posiadanych mieszkań',
    ['owned_flat_entrance_menu'] = "Menu wejścia do posiadanych mieszkań",
    ['exit_house'] = "Wyjście z domu",
    ['manage_house'] = 'Zarządzaj domem',

    -- # Wejście
    ['enter_home'] = "Wejdź do domu",
    ['buy_home'] = 'Kup dom',
    ['rent_home'] = 'Wynajmij dom',
    ['buy_apartment'] = 'Kup mieszkanie',
    ['rent_apartment'] = "Wynajmij mieszkanie",
    ['preview_home'] = 'Podgląd domu',
    ['lockpick_home'] = 'Otwórz dom wytrychem',
    ['lockpick_home_body'] = 'Wytrychuj drzwi domu, aby je otworzyć',
    ['raid_home'] = 'Napad na dom',
    ['raid_home_body'] = 'Napadnij na drzwi domu jako policjant',
    ['knock_door'] = 'Pukanie do drzwi',
    ['unlock_home'] = 'Odblokuj dom',
    ['lock_home'] = 'Zablokuj dom',
    ['lock_home_body'] = 'Zablokuj/odblokuj drzwi domu',
    ['sell_home'] = 'Sprzedaj dom',
    ['sell_home_body'] = 'Sprzedaj swój dom',
    ['confirmation_sell_home'] = 'Sprzedaj dom',
    ['transfer_home'] = 'Przekaż dom',
    ['transfer_home_body'] = 'Przekaż swój dom innemu mieszkańcowi',

    -- Zarządzanie
    ['furnish_home'] = 'Umebluj dom',
    ['furnish_home_body'] = 'Dodaj meble do swojego domu',
    ['edit_furniture'] = 'Edytuj meble',
    ['edit_furniture_body'] = 'Ustaw swoje meble',
    ['pay_mortgage'] = 'Zapłać hipotekę',
    ['pay_mortgage_body'] = 'Zapłać swoją miesięczną rachunkę',
    ['pay_rent'] = 'Zapłać czynsz',
    ['pay_rent_body'] = 'Zapłać swoje miesięczne czynsze',
    ['check_rent'] = 'Sprawdź czynsz',
    ['check_rent_due'] = 'Sprawdź, kiedy następna data płatności czynszu',
}

UILocale = {
    ['currency'] = 'USD', -- if you want usd change it to USD, list can be found here https=--www.iban.com/currency-codes

    -- General
    ['cancel'] = 'Anuluj',
    ['submit'] = 'Prześlij',
    ['price'] = 'Cena',
    ['type'] = 'Typ',
    ['enable'] = 'Włącz',
    ['action'] = 'Akcja',
    ['sell'] = 'Sprzedaj',
    ['no_results'] = 'Brak wyników.',
    ['previous'] = 'Poprzedni',
    ['next'] = 'Następny',
    ['name'] = 'Nazwa',
    ['no'] = 'Nie',
    ['yes'] = 'Tak',
    ['are_you_sure'] = 'Jesteś pewien?',
    ['weight'] = 'Waga',
    ['slots'] = 'Sloty',
    ['create'] = 'Utwórz',
    ['create_set'] = 'Create + Set',
    ['add'] = 'Add',

    -- Zarządzanie domem
    ['identifier'] = 'Identyfikator',
    ['status'] = 'Status',
    ['house_configuration'] = 'Konfiguracja domu',
    ['house_doors'] = 'Drzwi domu',
    ['house_storages'] = 'Magazyny domowe',
    ['house_wardrobes'] = 'Szafy domowe',
    ['level'] = 'Poziom',
    ['rent'] = 'Czynsz',
    ['pay_rent'] = 'Zapłać czynsz',
    ['view_cctv'] = 'Pokaż monitoring',
    ['pay_mortgage'] = 'Zapłać hipotekę',
    ['transfer_home_ownership'] = 'Przekazanie własności domu',
    ['transfer'] = 'Przekazanie',
    ['rename_house'] = 'Zmień nazwę domu',
    ['wardrobe_placeholder'] = 'Nazwa szafy',

    -- Klucze
    -- # Właściciele
    ['give_key'] = 'Daj klucz',
    ['citizen_id'] = 'Identyfikator obywatela',
    ['citizen_id_placeholder'] = 'Wybierz obywatela',
    ['key_name'] = 'Nazwa klucza',
    ['key_placeholder'] = 'Wybierz klucz',
    ['add_key'] = 'Dodaj klucz',
    -- # Lista
    ['permissions'] = 'Uprawnienia',
    ['permissions_desc'] = 'Ustaw listę uprawnień klucza',
    ['key_list_caption'] = 'Lista kluczy',

    -- Utwórz magazyn
    ['create_storage'] = 'Utwórz magazyn',

    -- Utwórz dom
    -- # Karty
    ['main'] = 'Główny',
    ['configuration'] = 'Konfiguracja',
    ['mortgage'] = 'Hipoteka',

    -- # Główny
    ['house_name'] = 'Nazwa domu',
    ['house_name_placeholder'] = 'Wpisz nazwę domu',
    ['type_placeholder'] = 'Wybierz typ',
    ['interior'] = 'Wnętrze',
    ['interior_placeholder'] = 'Wybierz wnętrze',
    ['complex'] = 'Kompleks',
    ['complex_placeholder'] = 'Wybierz kompleks',
    ['payment'] = 'Płatność',
    ['payment_placeholder'] = 'Wybierz formę płatności',
    ['expiry'] = 'Wygasa (dni)',
    ['expiry_desc'] =
    'To określi czas trwania po zakupie, właściciel zostanie pozbawiony',

    -- # Hipoteka
    ['downpayment'] = 'Wkład własny',
    ['add_mortgage'] = 'Dodaj hipotekę',
    ['mortgage_caption'] = 'Opcje planów hipotecznych.',

    -- ## Tabela hipoteczna
    ['duration'] = 'Czas trwania',
    ['duration_type'] = 'Typ czasu trwania',
    ['interest'] = 'Oprocentowanie',
    ['total'] = 'Razem',
    ['duration_placeholder'] = 'Wybierz typ czasu trwania',

    -- # Uprawnienie
    ['owner_permissions'] = 'Uprawnienia właściciela',
    ['transfer_owner'] = 'Przekazanie właściciela',
    ['move_garage'] = 'Przenieś garaż',
    ['manage_doorlocks'] = 'Zarządzaj zamkami drzwi',

    -- # Konfiguracja
    ['max_storages'] = 'Maks. magazyny',
    ['max_wardrobes'] = 'Maks. szafy',
    ['max_keys'] = 'Maks. klucze',
    ['garages'] = 'Garaże',
    ['cctv'] = 'Monitoring',
    ['rename'] = 'Zmień nazwę',

    ['disable_buy'] = 'Wyłącz zakup',
    ['disable_buy_desc'] =
    'Wyłącz kupowanie i można je kupić tylko za pomocą Tebex lub własnej komendy',

    -- Sklep meblowy
    ['furnitures'] = 'Meble',
    ['buy_furniture'] = 'Kup meble',
    ['sell_furniture'] = 'Sprzedaj meble',

    -- Strona Zakupu Domu
    ['buy_now'] = 'Kup teraz',
    ['rent_now'] = 'Wynajmij teraz',
    ['choose'] = 'Wybierz',

    -- Stan hipoteki
    ['mortgage_status'] = 'Status hipoteki',
    ['remaining_payments'] = 'Pozostałe płatności',
    ['last_payment'] = 'Ostatnia płatność',
    ['next_payment'] = 'Następna płatność',
    ['pay'] = 'ZAPŁAĆ',
    ['pay_all'] = 'ZAPŁAĆ WSZYSTKO',
}
