Locale = {
    -- General
    ['system'] = 'System',
    ['housing'] = 'Wohnen',
    ['realestate'] = 'Immobilien',
    ['no'] = 'Nein',
    ['yes'] = 'Ja',
    ['are_you_sure'] = "Bist du sicher?",
    ['exit_preview_catalogue'] = "Katalog-Vorschau verlassen",
    ['open_catalogue'] = 'Katalog öffnen',
    ['not_owned'] = "Not Owned",

    ['title'] = 'Titel',
    ['subtitle'] = 'Untertitel',
    ['content'] = 'Inhalt',
    ['description'] = 'Beschreibung',
    ['footer'] = 'Fußzeile',
    ['name'] = 'Name',
    ['type'] = 'Typ',

    -- # Notifications
    ['bought_home'] = 'Du hast %s für $%s gekauft',
    ['given_home'] = 'Dir wurde die Immobilie %s übergeben',
    ['home_revoked'] = 'Du hast %s vom Besitzer entzogen',
    ['home_extended'] = 'Dein Haus wurde erweitert',
    ['redeemed_house'] = 'Du hast das Haus %s erfolgreich eingelöst!',

    -- # Error Messages
    ['not_enough_money'] = "Du hast nicht genug Geld ($%s)",
    ['too_much_property'] = 'Du besitzt bereits zu viele Häuser!',
    ['not_owned_home'] = 'Du bist nicht der Besitzer dieses Hauses!',
    ['error_create_home'] = 'Fehler beim Erstellen des Hauses',
    ['not_inside_home'] = 'Aktion nicht möglich, da du nicht in deinem Haus bist!',
    ['not_inside_MLO'] = 'Nicht in einem MLO',
    ['no_owned_house'] = 'Du besitzt kein Haus!',
    ['not_enough_item'] = 'Du hast nicht genug %s',
    ['invalid_input'] = 'Ungültige Eingabe!',
    ['invalid_home'] = 'Das Haus existiert nicht!',
    ['target_offline'] = 'Die Person ist nicht in der Stadt!',
    ['max_keys_exceeded'] = 'Maximale Anzahl an geteilten Schlüsseln überschritten',
    ['temporarily_unavailable'] = 'Vorübergehend nicht verfügbar',
    ['interior_not_found'] = 'Es gibt kein Interieur dieses Typs!',
    ['an_error_has_occured'] = 'Ein unerwarteter Fehler ist aufgetreten!',
    ['action_cannot_inside'] = 'Du kannst dies nicht in einem Haus tun!',

    -- # Prompts
    ['prompt_buy_home'] = '(E) Haus kaufen',
    ['prompt_enter_home'] = '(E) Haus betreten',
    ['prompt_exit_home'] = '(E) Haus verlassen',
    ['prompt_home_menu'] = '(E) Menü öffnen',
    ['prompt_open_garage'] = '(E) Garage öffnen',
    ['prompt_store_vehicle'] = '(E) Fahrzeug einparken',
    ['prompt_open_wardrobe'] = '(E) Kleiderschrank öffnen',
    ['prompt_open_storage'] = '(E) Lager öffnen',
    ['prompt_flat_menu'] = '(E) Wohnungsmenü öffnen',
    ['prompt_apartment_menu'] = '(E) Apartment-Menü öffnen',
    ['prompt_vehicle_spawn_point'] = '(E) Hinzufügen (X) Abbrechen (← →) Fahrzeugausrichtung drehen',
    ['prompt_title'] = '(E) %s festzulegen',
    ['prompt_bossmenu'] = '(E) Bosmenü öffnen',
    ['prompt_screenshot_interior'] = '(H) Interieur fotografieren',
    ['prompt_manage_sign'] = '(E) Schild bearbeiten (G) Schild löschen',
    ['prompt_open_catalogue'] = '(E) Katalog öffnen',

    -- Signboard
    ['signboard'] = 'Schild',
    ['prompt_sign_placement'] = '(E) Platzieren (X) Abbrechen (← →) Schild drehen',
    ['edit_sign'] = 'Schild bearbeiten',
    ['delete_sign'] = 'Schild löschen',
    ['logo_url'] = 'Logo-URL',
    ['footer_signboard'] = 'Kann für Telefonnummer verwendet werden',
    ['create_sign_successful'] = 'Schild erfolgreich erstellt',
    ['edit_sign_successful'] = 'Schild erfolgreich bearbeitet',
    ['delete_sign_successful'] = 'Schild erfolgreich gelöscht',

    -- Creation
    -- # Prompts
    ['garage'] = 'Garage',
    ['entrance'] = 'Eingang',
    ['choose'] = 'Auswählen',
    ['prompt_create_shell'] = [[Schale: %s<br>
        Schritt: %s | %s<br>
        ~ENTER~, um das Haus zu bestätigen<br>
        ~BACKSPACE~, um abzubrechen<br>
        ~Q~ ~E~, um zu drehen<br>
        ~R~ ~F~, um die Höhe anzupassen<br>
        ~W~ ~A~ ~S~ ~D~, um die Schale zu bewegen<br>
        ~CTRL~ ~SCROLL~, um die Schalen zu wechseln<br>
        ~SHIFT~ ~SCROLL~, um ein-/auszuzoomen
    ]],
    -- # Error
    ['canceled_house'] = 'Du hast die Erstellung des Hauses abgebrochen',
    ['house_created'] = 'Haus erfolgreich erstellt',

    -- # Garage
    ['spawn_point_added'] = 'Fahrzeug-Spawnpunkt hinzugefügt',
    ['garage_canceled'] = 'Garage-Erstellung abgebrochen',
    ['garage_deleted'] = 'Garage erfolgreich entfernt',

    -- Manage Home
    ['home_sold'] = 'Dein Haus wurde für $%s verkauft',
    ['home_cannot_be_sold'] = 'Der Staat kauft derzeit keine Häuser!',
    ['home_locked'] = 'Haus abgeschlossen',
    ['home_unlocked'] = 'Haus aufgeschlossen',
    ['successfully_renamed'] = 'Du hast dein Haus erfolgreich in %s umbenannt',

    -- # Transfer
    ['transfer'] = 'Eigentum übertragen',
    ['transfer_desc'] = 'Bürger-ID eingeben',
    ['transfer_success'] = 'Haus wurde erfolgreich an %s übertragen',
    ['transfer_to_you'] = 'Haus wurde erfolgreich von %s an dich übertragen',

    -- # Fehler
    ['not_allowed'] = 'Du hast nicht die Berechtigung, das zu tun!',
    ['not_allowed_to_sell'] = 'Dieses Haus darfst du nicht verkaufen!',
    ['not_allowed_to_transfer'] = 'Dieses Haus darfst du nicht übertragen!',
    ['not_allowed_to_doorlock'] = 'Du kannst selbst kein Türschloss erstellen!',
    ['not_allowed_to_movegarage'] = 'Du kannst die Garage nicht selbst verschieben!',
    ['rename_not_allowed'] = 'Du darfst dieses Haus nicht umbenennen!',

    -- Admin / Immobilien-Befehle
    -- # Verwaltung
    ['home_deleted'] = 'Das Haus %s wurde gelöscht',

    -- # Fehler
    ['going_too_far'] = 'Du gehst zu weit weg',
    ['not_near_any_home'] = 'Du bist in der Nähe von keinem Haus!',
    ['house_fee_not_enough'] = 'Die Mittel der Immobilienfirma reichen nicht aus! Die Erstellungsgebühr beträgt $%s',

    -- Wohnungserstellung
    ['flat_name'] = 'Wohnungsname',
    ['flat_complex_name'] = 'Name des Wohnkomplexes',
    ['use_existing'] = 'Möchtest du diesen Raum zur Wohnung %s hinzufügen?',
    ['apt_not_found'] = 'Die Wohnung %s wurde nicht gefunden! Stelle sicher, dass der Name stimmt!',
    ['open_flat_menu'] = 'Wohnungsmenü öffnen',

    -- CCTV
    ['keybind_cctv_move'] = 'CCTV bewegen',
    ['keybind_cctv_save'] = 'CCTV-Drehung speichern',
    ['keybind_cctv_exit'] = 'CCTV verlassen',
    ['keybind_cctv_zoom'] = 'Ein-/Auszoomen',
    ['prompt_cctv_keybinds'] =
    '~BACKSPACE~, um zu verlassen<br>~W~ ~A~ ~S~ ~D~, um zu bewegen<br>~SCROLL~, um ein-/auszuzoomen<br>~→~ Nächste Kamera',
    ['prompt_cctv_preview_keybinds'] =
    '~BACKSPACE~, um zu verlassen<br>~W~ ~A~ ~S~ ~D~, um zu bewegen<br>~ENTER~, um die Drehung zu speichern',
    ['setup_cctv_heading'] = 'Bitte die CCTV-Drehung einstellen',
    ['cctv_rotation_saved'] = 'Kameradrehung gespeichert, du kannst das Setup verlassen.',
    ['cctv_rotation_same'] =
    'Die CCTV-Drehung ist identisch mit der Standardposition. Drücke ENTER, um die aktuelle Drehung zu speichern.',

    -- Telefonbenachrichtigungen
    ['rent_overdue_title'] = 'Miete überfällig',
    ['rent_removed_title'] = 'Miete entfernt wegen unbezahlter Miete',
    ['mortgage_overdue_title'] = 'Hypothek überfällig',
    ['your_house_removed'] = 'Dein Haus wurde wegen unbezahlter Hypothek entfernt',
    ['house_bought'] = 'Immobilie %s gekauft',
    ['house_detail'] = 'Du hast die Immobilie %s für $%s gekauft',
    ['house_mortgaged'] = 'Hypothek für die Immobilie %s gestartet',
    ['house_detail_mortgage'] = 'Du hast die Immobilie %s für eine Anzahlung von $%s gekauft',
    ['rent_paid'] = 'Miete %s bezahlt',
    ['rent_detail'] = 'Du hast deine Miete für %s in Höhe von $%s bezahlt',

    -- Miet-Erinnerung
    ['pay_your_rent'] = 'Du hast eine Miete zu bezahlen!',
    ['your_rent_removed'] = 'Deine Mietberechtigung wurde widerrufen!',
    ['not_enough_money_rent'] = 'Du hast nicht genug Geld, um die Miete zu bezahlen!',
    ['auto_paid_rent'] = 'Du hast deine Miete für $%s bezahlt',
    ['rent_not_needed'] = 'Du musst derzeit keine Miete bezahlen',
    ['rent_due_time'] = 'Du kannst deine Miete in %s Tag(en) bezahlen',

    -- # Miete
    ['rent_options_saved'] = 'Mietoptionen wurden gespeichert',
    ['rent_house_enabled'] = 'Du hast dein Haus zur Vermietung freigegeben!',
    ['rent_house_disabled'] = 'Du hast dein Haus von der Vermietung entfernt',
    ['rented_house'] = 'Du hast ein Haus für $%s / %s gemietet',
    ['tenant_evicted'] = 'Du hast den Mieter aus dem Haus entfernt',
    ['you_have_been_evicted'] = 'Der Eigentümer hat dich aus dem Haus entfernt!',

    -- Schlüssel-System
    ['key_created_successfully'] = 'Der Schlüssel %s wurde erfolgreich erstellt',
    ['key_creation_error'] = 'Ein Fehler ist beim Erstellen des Schlüssels aufgetreten',
    ['key_deleted_successfully'] = 'Der Schlüssel %s wurde erfolgreich gelöscht',
    ['key_deletion_error'] = 'Ein Fehler ist beim Löschen des Schlüssels aufgetreten',

    ['key_given_successfully'] = 'Der Schlüssel %s wurde erfolgreich an %s übergeben',
    ['key_give_error'] = 'Ein Fehler ist beim Übergeben des Schlüssels aufgetreten',
    ['key_removed_successfully'] = 'Der Schlüssel wurde erfolgreich von der Person entfernt',
    ['key_removal_error'] = 'Ein Fehler ist beim Entfernen des Schlüssels aufgetreten',

    ['key_exists_in_holder'] =
    'Der Schlüssel befindet sich noch bei einer Person! Bitte entferne ihn, bevor du den Schlüssel löschst',

    -- Tür-System
    ['command_lock'] = 'Tür abschließen / aufschließen',
    ['door_deleted'] = 'Tür erfolgreich gelöscht',
    ['door_added'] = 'Tür erfolgreich hinzugefügt',

    -- # Aufforderungen
    ['prompt_add_door'] = '(LMB) Tür hinzuzufügen (RMB) abbrechen',
    ['prompt_delete_door'] = '(E) Tür löschen (X) abbrechen',
    ['prompt_lock_door'] = '(E) Tür abschließen',
    ['prompt_unlock_door'] = '(E) Tür aufschließen',

    -- # Fehler
    ['incorrect_home'] = 'Du befindest dich nicht im selben Haus wie das Zielhaus!',
    ['door_no_permission'] = 'Du hast keine Berechtigung, mit dieser Tür zu interagieren',
    ['door_exist'] = 'Die Tür existiert bereits',
    ['unable_to_interact_door'] = 'Du kannst mit dieser Tür nicht interagieren',
    ['error_duplicate_door_name'] = 'Du kannst keinen doppelten Türnamen erstellen!',
    ['failed_lockpick'] = 'Du hast das Schlossknacken der Tür nicht geschafft!',
    ['not_near_any_door'] = 'Keine Tür in der Nähe!',

    -- Hypothek
    ['mortgage_paid'] = 'Du hast $%s deiner Haus-Hypothek bezahlt',
    ['mortgage_paid_all'] = 'Du hast die restliche Hypothek für dein Haus in Höhe von $%s bezahlt',
    ['not_mortgage_time'] = 'Es ist noch nicht Zeit, die Hypothek zu bezahlen',
    ['no_mortgage'] = 'Du hast keine Hypothek zu bezahlen!',
    ['mortgage_chosen'] = 'Successfully chosen and paid mortgage downpayment',
    ['ongoing_mortgage_cannot_be_edited'] = 'You cannot change the mortage because there is an ongoing mortgage!',

    -- Lager
    ['storage_added'] = 'Lagerplatz erfolgreich hinzugefügt',
    ['storage_update'] = 'Lagerplatz erfolgreich aktualisiert',
    ['saved_storage'] = 'Lagerplatz erfolgreich festgelegt',

    -- # Aufforderungen
    ['prompt_add_storage'] = '(E) Lager festlegen (X) abbrechen',

    -- # Fehlermeldungen
    ['storage_max_exceeded'] = 'Du kannst kein weiteres Lager hinzufügen!',
    ['storage_deleted'] = 'Lager erfolgreich gelöscht',

    -- Möbel
    ['furniture_stored'] = 'Das Möbelstück wurde in dein Inventar gelegt!',
    ['bought_furniture'] = 'Du hast %s für $%s gekauft',
    ['furniture_placed'] = 'Du hast das Möbelstück platziert',
    ['sell_furniture'] = 'Möbel verkaufen',
    ['sell_furniture_success'] = 'Du hast dein Möbelstück für $%s verkauft',

    -- # Fehlermeldungen
    ['furniture_not_found'] = 'Möbelstück wurde nicht gefunden!',
    ['furniture_type_max_exceeded'] = 'Das Maximum für diesen Möbeltyp wurde überschritten!',
    ['sell_furniture_failed'] = 'Es ist ein Fehler beim Verkauf deines Möbelstücks aufgetreten',

    -- # Aufforderungen
    ['prompt_furniture'] = '(E) Möbelshop öffnen',
    ['prompt_furnitureshop'] = '~BACKSPACE~, um zu beenden<br>~,~ ~.~ zum Drehen',
    ['prompt_furnish_precise'] = [[
        %s Links/Rechts<br>
        %s Vorwärts/Rückwärts<br>
        %s Neigung, Gier, Rolle<br>
        ~%s~ Höhe ändern<br>
        %s zum Drehen<br>
        %s Geschwindigkeit ändern<br>
    ]],
    ['prompt_edit_furniture'] =
    'Drücke E um zu bewegen<br>Drücke ~G~, um zu löschen<br>Drücke ~BACKSPACE~, um abzubrechen',
    ['prompt_edit_furniture_shop'] =
    'Drücke E um zu bewegen<br>Drücke ~G~, um zu verkaufen<br>Drücke ~BACKSPACE~, um abzubrechen',

    -- Bereich
    ['area_created'] = 'Bereich erfolgreich erstellt',
    ['point_added'] = 'Punkt hinzugefügt',
    ['mode_changed'] = 'Bewegungsmodus geändert',

    -- # Aufforderungen
    ['prompt_create_mlo'] = [[
        ~%s~, um abzubrechen<br>
        ~%s~, um mehr Punkte hinzuzufügen<br>
        ~%s~, um den Modus zu ändern<br>
        Halte ~%s~ %s für Höhe hoch/runter<br>
        Halte ~%s~ %s für Z-Platzierung hoch/runter<br>
        ~W~ ~A~ ~S~ ~D~ Kamerabewegung<br>
        ~Shift~ ~Alt~ Schnelle/langsame Kamerabewegung<br>
        ~Q~ ~E~ Kamera hoch/runter<br>
        ~%s~, um die Erstellung abzuschließen
    ]],
    ['prompt_create_mlo_precise'] = [[
        ~%s~, um abzubrechen<br>
        ~%s~, um mehr Punkte hinzuzufügen<br>
        ~%s~, um den Modus zu ändern<br>
        ~%s~ Hoch/Runter, Schritt ändern: %s<br>
        Halte ~%s~ %s für Höhe hoch/runter<br>
        Halte ~%s~ %s für Z-Platzierung hoch/runter<br>
        %s Punkt bewegen<br>
        ~W~ ~A~ ~S~ ~D~ Kamerabewegung<br>
        ~Shift~ ~Alt~ Schnelle/langsame Kamerabewegung<br>
        ~Q~ ~E~ Kamera hoch/runter<br>
        ~%s~, um die Erstellung abzuschließen
    ]],

    -- # Fehler
    ['canceled_area'] = 'Du hast die Erstellung des Bereichs abgebrochen',
    ['point_too_far'] = 'Der Punkt des Bereichs ist zu weit vom Eingang entfernt!',
    ['point_too_few'] = 'Du musst mindestens 3 Punkte hinzufügen!',

    -- Raub
    ['robbery'] = 'Raub',
    ['house_robbery'] = 'Hausraub',
    ['house_lockpicked'] = 'Dein Haus %s wird gerade ausgeraubt!',
    ['house_entered_by_anon'] = 'Jemand hat dein Haus %s betreten!',
    ['house_raided'] = 'Du hast das Haus geplündert!',
    ['not_enough_police'] = 'Du kannst gerade kein Haus ausrauben!',
    ['robbery_in_progress'] = 'Ein Hausraub läuft gerade im Haus %s',

    -- Klopfen
    ['no_one_inside'] = 'Niemand ist im Haus',
    ['someone_is_knocking'] = 'Jemand klopft von draußen an',
    ['door_opened_for_you'] = 'Die Tür wurde vom Eigentümer für dich geöffnet',

    -- Kleiderschrank
    ['saved_wardrobe'] = 'Kleiderschrank-Standort erfolgreich festgelegt',
    ['prompt_add_wardrobe'] = '(E) Kleiderschrank setzen (X) abbrechen',
    ['max_wardrobes'] = 'Maximale Anzahl an Kleiderschränken überschritten',

    ['wardrobe'] = 'Kleiderschrank',
    ['outfit_name'] = 'Outfit-Name',
    ['outfit_desc'] = 'Speichere den Namen deines Outfits',
    ['change_description'] = 'Ziehe dein Outfit an',
    ['delete_description'] = 'Lösche dein Outfit',
    ['delete_outfit'] = 'Outfit löschen',
    ['change_outfit'] = 'Outfit wechseln',
    ['save_outfit'] = 'Outfit speichern',
    ['saved_outfit'] = 'Outfit erfolgreich gespeichert',
    ['deleted_outfit'] = 'Outfit wurde gelöscht',
    ['loaded_outfit'] = 'Outfit wurde angezogen',

    --- Starter Apartment
    ['starter_apartment_menu'] = 'Menü Starter-Apartment',
    ['starter_apartment_list'] = 'Liste der Starter-Apartments',
    ['starter_apartment_add'] = 'Starter-Apartment hinzufügen',
    ['starter_apartment_remove'] = 'Starter-Apartment entfernen',
    ['choose_actions'] = 'Wähle eine Aktion',

    -- Discord-Log
    ['log_house_revoked'] = "Haus widerrufen",
    ['log_house_revoked_inactivity'] = 'Haus %s (%s) wurde wegen Inaktivität widerrufen %s',

    ['log_lockpick_title'] = 'Schlossknacken-Alarm',
    ['log_lockpick_message'] = '**Haus**: %s\n**Besitzer**: %s\n**Schlossknacker**: %s (%s)\nDas Haus wurde geknackt',
    ['log_nonowner_enter_title'] = 'Betreten durch Nichtbesitzer',
    ['log_nonowner_enter_msg'] =
    '**Haus**: %s\n**Besitzer**: %s\n**Nichtbesitzer**: %s (%s)\nDiese Person hat das Haus als Nichtbesitzer betreten',

    ['log_house_locked'] = 'Haus abgeschlossen',
    ['log_house_locked_msg'] = '**Haus**: %s\n**Abgeschlossen von**: %s (%s)',
    ['log_house_unlocked'] = 'Haus aufgeschlossen',
    ['log_house_unlocked_msg'] = '**Haus**: %s\n**Aufgeschlossen von**: %s (%s)',

    ['log_duplicated_key'] = 'Hausschlüssel dupliziert',
    ['log_duplicated_key_msg'] = '**Haus**: %s\n**Besitzer**: %s',
    ['log_deleted_key'] = 'Hausschlüssel gelöscht',
    ['log_deleted_key_msg'] = '**Haus**: %s\n**Besitzer**: %s',
    ['log_gave_key'] = 'Hausschlüssel vergeben',
    ['log_gave_key_msg'] = '**Haus**: %s\n**Besitzer**: %s\n**Vergeben an**: %s (%s)',
    ['log_removed_key'] = 'Hausschlüssel entfernt',
    ['log_removed_key_msg'] = '**Haus**: %s\n**Besitzer**: %s\n**Entfernt von**: %s (%s)',

    ['log_enter_cctv_success'] = 'CCTV betreten',
    ['log_enter_cctv_success_msg'] = '**Haus**: %s\n**Spieler**: %s (%s)',
    ['log_enter_cctv_failed'] = 'Versuch, CCTV zu betreten',
    ['log_enter_cctv_failed_msg'] = '**Haus**: %s\n**Spieler**: %s (%s)\n**ILLEGALER ZUGRIFF (MÖGLICHER CHEATER)**',
    ['log_leave_cctv'] = 'CCTV verlassen',
    ['log_leave_cctv_msg'] = '**Haus**: %s\n**Spieler**: %s (%s)',

    ['log_player_enter_home'] = 'Spieler hat Haus betreten',
    ['log_player_enter_home_msg'] = '**Haus**: %s\n**Spieler**: %s (%s)',
    ['log_player_left_home'] = 'Spieler hat Haus verlassen',
    ['log_player_left_home_msg'] = '**Haus**: %s\n**Spieler**: %s (%s)',

    ['log_house_created'] = 'Haus erstellt',
    ['log_house_created_msg'] = '**ID**: %s\n**Name**: %s\n**Preis**: %s\n**Typ**: %s\n**Erstellt von**: %s (%s)',
    ['log_house_deleted'] = 'Haus gelöscht',
    ['log_house_deleted_msg'] = '**Haus**: %s\n**Gelöscht von**: %s (%s)\nSpieler hat Haus gelöscht',

    ['log_house_expired'] = 'Haus abgelaufen',
    ['log_house_expired_msg'] = '**Haus**: %s\nDas Haus wurde von **%s** widerrufen',
    ['log_house_given'] = 'Haus übertragen',
    ['log_house_given_msg'] = '**Haus**: %s\n**Übertragen von**: %s (%s)\n**An**: %s (%s)\nSpieler hat Haus übertragen',
    ['log_house_extended'] = 'Haus verlängert',
    ['log_house_extended_msg'] = '**Haus**: %s\nDas Haus wurde bis **%s** verlängert',
    ['log_bought_house'] = 'Haus gekauft',
    ['log_bought_house_msg'] = '**Haus**: %s\n**Preis**: %s\n**Gekauft von**: %s (%s)\nSpieler hat Haus gekauft',
    ['log_sold_house'] = 'Haus verkauft',
    ['log_sold_house_msg'] =
    '**Haus**: %s\n**Zurückerstattetes Geld**: %s\n**Verkauft von**: %s (%s)\nSpieler hat Haus verkauft',
    ['log_transferred_house'] = 'Hausbesitz übertragen',
    ['log_transferred_house_msg'] = '**Haus**: %s\n**Vorheriger Besitzer**: %s (%s) | **Neuer Besitzer**: %s (%s)',

    ['log_door_deleted'] = 'Haustür gelöscht',
    ['log_door_deleted_msg'] = '**Haus**: %s\n**Von**: %s(%s)\nHaustür gelöscht',
    ['log_door_added'] = 'Haustür hinzugefügt',
    ['log_door_added_msg'] = '**Haus**: %s\n**Typ**: %s\n**Von**: %s (%s)\nHaustür hinzugefügt',

    ['log_buy_furniture'] = 'Möbel gekauft',
    ['log_buy_furniture_msg'] =
    '**Spieler**: %s (%s)\n**Kategorie**: %s\n**Label**: %s\n**Modell**: %s\n**Preis**: %s\nSpieler hat Möbel gekauft',
    ['log_placed_furniture'] = 'Möbel platziert',
    ['log_placed_furniture_msg'] =
    '**Spieler**: %s (%s)\n**Haus**: %s\n**Kategorie**: %s\n**Label**: %s\n**Modell**: %s\nSpieler hat Möbel platziert',
    ['log_sold_furniture'] = 'Möbel verkauft',
    ['log_sold_furniture_msg'] =
    '**Spieler**: %s (%s)\n**Kategorie**: %s\n**Label**: %s\n**Modell**: %s\n**Preis**: %s\nSpieler hat Möbel verkauft',
    ['log_stored_furniture'] = 'Möbel eingelagert',
    ['log_stored_furniture_msg'] =
    '**Spieler**: %s (%s)\n**Haus**: %s\n**Kategorie**: %s\n**Label**: %s\n**Modell**: %s\nSpieler hat Möbel eingelagert',

    ['log_choose_plan'] = 'Hypothekenplan gewählt',
    ['log_choose_plan_msg'] =
    '**Haus**: %s\n**Anzahlung**: %s\n**Plan**: Zinssatz **%s**, Laufzeit **%s**, Typ **%s**, Ergebnis **%s**\n**Spieler**: %s (%s)',
    ['log_paid_remaining_mortgages'] = 'Resthypothek bezahlt',
    ['log_paid_remaining_mortgages_msg'] =
    '**Haus**: %s\n**Verbleibende Zahlung**: %s\n**Bezahlt von**: %s (%s)\nResthypothek bezahlt',
    ['log_paid_mortgage'] = 'Hypothek bezahlt',
    ['log_paid_mortgage_msg'] =
    '**Haus**: %s\n**Bezahlt**: %s\n**Verbleibend**: %s\n**Bezahlt von**: %s (%s)\nHypothek bezahlt',
    ['log_auto_remove_mortgage'] = 'Automatische Entfernung wegen unbezahlter Hypothek',
    ['log_auto_remove_mortgage_msg'] = '**Haus**: %s\n**Gehörte vorher**: %s',
    ['log_return_mortgage_money'] = 'Hypothekengeld zurückerstattet',
    ['log_return_mortgage_money_msg'] = '**Haus**: %s\n**Zurückerstattetes Geld**: %s\n**An**: %s',

    ['log_paid_rent'] = 'Miete bezahlt',
    ['log_paid_rent_msg'] = '**Haus**: %s\n**Bezahlt**: %s\n**Bezahlt von**: %s (%s)\nMiete bezahlt',
    ['log_auto_remove_rent'] = 'Automatische Entfernung wegen abgelaufener Miete',
    ['log_auto_remove_rent_msg'] = '**Haus**: %s\n**Gehörte vorher**: %s',

    -- Anweisungen für Keybinds bei Verwendung von bcs_hud
    -- BCS HUD Keybind-Titel
    ['polyzone_creation'] = "Polyzonen-Erstellung",
    ['cctv_controls'] = 'CCTV-Steuerung',
    ['cctv_setup_controls'] = 'CCTV-Einrichtungssteuerung',

    -- Beschreibung der Keybinds
    ['keybind_add_to_near_apt'] = 'Zum nächstgelegenen Apartment hinzufügen',
    ['keybind_create_new_apt'] = 'Ein neues Apartment erstellen',

    ['keybind_cancel'] = 'Abbrechen',
    ['keybind_finish'] = 'Fertigstellen',
    ['keybind_add_point'] = 'Weitere Punkte hinzufügen',
    ['keybind_change_z'] = 'Maximale/minimale Z-Werte ändern',
    ['keybind_move_point'] = 'Punkt bewegen',
    ['keybind_noclip'] = 'Noclip-Bewegung',
    ['keybind_noclip_updown'] = 'Auf/Ab bewegen',
    ['keybind_noclip_speed'] = 'Noclip-Geschwindigkeit (Halten)',
    ['keybind_crease_height'] = 'Zonenhöhe erhöhen/verringern',
    ['keybind_z_placement'] = 'Z Platzierung',
    ['keybind_change_mode'] = 'Modus wechseln',

    ['keybind_quit'] = 'Verlassen',
    ['keybind_rotate'] = 'Möbel drehen',

    ['keybind_place_furniture'] = 'Möbel platzieren',
    ['keybind_mode_gizmo'] = 'Gizmo-Modus aktivieren',
    ['keybind_mode_gizmo_rotate'] = 'Gizmo-Drehmodus',
    ['keybind_mode_gizmo_move'] = 'Gizmo-Bewegungsmodus',
    ['keybind_mode_raycast'] = 'Raycast-Bewegung / Gizmo verlassen',

    ['keybind_confirm_house'] = 'Haus bestätigen',
    ['keybind_adjust_height'] = 'Höhenplatzierung anpassen',
    ['keybind_move_shell'] = 'Schale bewegen',
    ['keybind_change_shell'] = 'Schale wechseln',
    ['keybind_zoom'] = 'Ein-/Auszoomen',

    -- Konfiguration
    ['config_updated_successfully'] = 'Die Hauskonfiguration wurde erfolgreich aktualisiert',
    ['config_update_error'] = 'Fehler beim Bearbeiten der Hauskonfiguration aufgetreten',

    -- Berechtigungen
    ['permission_updated_successfully'] = 'Die Hausberechtigung wurde erfolgreich aktualisiert',
    ['permission_update_error'] = 'Fehler beim Bearbeiten der Hausberechtigung aufgetreten',

    -- Schalenbearbeitung
    ['shell_updated_successfully'] = 'Die Hausschale wurde erfolgreich aktualisiert',
    ['shell_update_error'] = 'Fehler beim Aktualisieren der Hausschale aufgetreten',

    -- Menübezogenes
    ['house_menu'] = "Hausmenü",
    ['apartment_menu'] = 'Apartment-Menü',
    ["house_manager_menu"] = "Hausverwaltungsmenü",
    ['house_entrance_menu'] = "Hauseingangsmenü",
    ['flat_entrance_menu'] = 'Apartment-Eingangsmenü',
    ['owned_flat_filter'] = 'Filter: Eigene Apartments',
    ['owned_flat_entrance_menu'] = "Eingangsmenü für eigene Apartments",
    ['exit_house'] = "Haus verlassen",
    ['manage_house'] = 'Haus verwalten',
    ['list_rooms'] = 'Zimmerliste',

    -- # Eingang
    ['enter_home'] = "Haus betreten",
    ['buy_home'] = 'Haus kaufen',
    ['rent_home'] = 'Haus mieten',
    ['buy_apartment'] = 'Apartment kaufen',
    ['rent_apartment'] = "Apartment mieten",
    ['preview_home'] = 'Haus ansehen',
    ['lockpick_home'] = 'Haus aufbrechen',
    ['lockpick_home_body'] = 'Die Haustür aufbrechen, um sie zu entriegeln',
    ['raid_home'] = 'Haus durchsuchen',
    ['raid_home_body'] = 'Als Polizist die Haustür durchsuchen',
    ['knock_door'] = 'An die Tür klopfen',
    ['unlock_home'] = 'Haus aufschließen',
    ['lock_home'] = 'Haus abschließen',
    ['lock_home_body'] = 'Die Haustür abschließen/aufschließen',
    ['sell_home'] = 'Haus verkaufen',
    ['sell_home_body'] = 'Dein Haus verkaufen',
    ['confirmation_sell_home'] = 'Haus verkaufen',
    ['transfer_home'] = 'Haus übertragen',
    ['transfer_home_body'] = 'Übertrage dein Haus an einen anderen Bürger',

    -- Verwaltung
    ['furnish_home'] = 'Haus möblieren',
    ['furnish_home_body'] = 'Füge Möbel zu deinem Haus hinzu',
    ['edit_furniture'] = 'Möbel bearbeiten',
    ['edit_furniture_body'] = 'Arrangiere deine Möbel',
    ['saved_mortgage'] = 'Hypothek plan wurde gespeichert',
    ['pay_mortgage'] = 'Hypothek bezahlen',
    ['pay_mortgage_body'] = 'Zahle deine monatliche Rechnung',
    ['pay_rent'] = 'Miete bezahlen',
    ['pay_rent_body'] = 'Zahle deine monatliche Miete',
    ['check_rent'] = 'Miete überprüfen',
    ['check_rent_due'] = 'Prüfe, wann die nächste Miete fällig ist',

    -- Garage
    ['garage_exists'] = 'Garage exestiert bereits',
    ['vehicle_not_allowed'] = 'Dieses Fahrzeug kannst du hier nicht einparken.',

}

UILocale = {
    ['currency'] = 'USD', -- if you want usd change it to USD, list can be found here https://www.iban.com/currency-codes

    -- TABS
    ['home'] = 'Haus',
    ['keys'] = 'Schlüssel',
    ['doors'] = 'Türen',
    ['storages'] = 'Lager',
    ['wardrobes'] = 'Kleiderschränke',

    -- Allgemein
    ['cancel'] = 'Abbrechen',
    ['submit'] = 'Bestätigen',
    ['price'] = 'Preis',
    ['type'] = 'Typ',
    ['enable'] = 'Aktivieren',
    ['action'] = 'Aktion',
    ['sell'] = 'Verkaufen',
    ['no_results'] = 'Keine Ergebnisse.',
    ['previous'] = 'Zurück',
    ['next'] = 'Weiter',
    ['name'] = 'Name',
    ['no'] = 'Nein',
    ['yes'] = 'Ja',
    ['are_you_sure'] = 'Bist du sicher?',
    ['weight'] = 'Gewicht',
    ['slots'] = 'Slots',
    ['create'] = 'Erstellen',
    ['create_set'] = 'Create + Set',
    ['add'] = 'Add',
    ['save'] = 'Speichern',
    ['title'] = 'Titel',
    ['description'] = 'Beschreibung',
    ['thumbnail'] = 'Benutzerdefiniertes Thumbnail',
    ['owned'] = "Besitz",
    ['not_owned'] = "Kein Besitz",

    -- Hausverwaltung
    ['identifier'] = 'Kennung',
    ['status'] = 'Status',
    ['house_configuration'] = 'Hauskonfiguration',
    ['house_doors'] = 'Haustüren',
    ['house_storages'] = 'Hauslager',
    ['house_wardrobes'] = 'Hauskleiderschränke',
    ['level'] = 'Level',
    ['rent'] = 'Miete',
    ['pay_rent'] = 'Miete zahlen',
    ['view_cctv'] = 'CCTV anzeigen',
    ['pay_mortgage'] = 'Hypothek bezahlen',
    ['transfer_home_ownership'] = 'Hausbesitz übertragen',
    ['transfer'] = 'Übertragen',
    ['rename_house'] = 'Haus umbenennen',
    ['wardrobe_placeholder'] = 'Kleiderschrank-Name',
    ['delete_house_confirmation'] = 'Dies wird alle Möbel und Inhalte des Hauses dauerhaft aus der Stadt löschen!',

    -- Schlüssel
    -- # Inhaber
    ['give_key'] = 'Schlüssel geben',
    ['citizen_id'] = 'Bürger-ID',
    ['citizen_id_placeholder'] = 'Wähle einen Bürger aus',
    ['key_name'] = 'Schlüsselname',
    ['key_placeholder'] = 'Wähle einen Schlüssel aus',
    ['add_key'] = 'Schlüssel hinzufügen',

    -- # Liste
    ['permissions'] = 'Berechtigungen',
    ['permissions_desc'] = 'Die Berechtigungsliste des Schlüssels festlegen',
    ['key_list_caption'] = 'Schlüsselliste',

    -- Lager erstellen
    ['create_storage'] = 'Lager erstellen',

    -- Haus erstellen
    -- # Tabs
    ['main'] = 'Haupt',
    ['configuration'] = 'Konfiguration',
    ['mortgage'] = 'Hypothek',
    ['wardrobe'] = 'Kleiderschrank',
    ['storage'] = 'Lager',
    ['house_owner_permission'] = 'Berechtigung des Hauseigentümers',
    ['misc'] = 'Sonstiges',

    -- # Haupt
    ['house_name'] = 'Hausname',
    ['house_name_placeholder'] = 'Gib einen Hausnamen ein',
    ['type_placeholder'] = 'Wähle einen Typ aus',
    ['interior'] = 'Interieur',
    ['interior_placeholder'] = 'Wähle ein Interieur aus',
    ['complex'] = 'Komplex',
    ['complex_placeholder'] = 'Wähle einen Komplex aus',
    ['payment'] = 'Zahlung',
    ['payment_placeholder'] = 'Wähle eine Zahlungsart aus',
    ['expiry'] = 'Ablauf (Tage)',
    ['expiry_desc'] = 'Dies bestimmt die Dauer nach dem Kauf, nach der das Eigentum widerrufen wird',
    ['expiry_edit_desc'] = 'Leer lassen, um das Haus vom Ablauf auszuschließen',
    ['edit_shell'] = 'Schale bearbeiten',
    ['search_interior'] = 'Interieur suchen',
    ['no_interior_found'] = 'Kein Interieur gefunden',
    ['set_area'] = 'Bereich festlegen',
    ['set_area_desc'] = 'Möchtest du den Bereich jetzt festlegen?',

    -- # Hypothek
    ['downpayment'] = 'Anzahlung',
    ['add_mortgage'] = 'Hypothek hinzufügen',
    ['mortgage_caption'] = 'Optionen für Hypothekenpläne.',

    -- ## Hypothekentabelle
    ['duration'] = 'Dauer',
    ['duration_type'] = 'Dauer-Typ',
    ['interest'] = 'Zinsen',
    ['total'] = 'Gesamt',
    ['duration_placeholder'] = 'Dauer-Typ auswählen',

    -- ## Bearbeitungsdialog
    ['edit_home'] = 'Haus bearbeiten',

    -- # Berechtigungen
    ['owner_permissions'] = 'Eigentümer-Berechtigungen',
    ['transfer_owner'] = 'Besitzer übertragen',
    ['move_garage'] = 'Garage verschieben',
    ['manage_doorlocks'] = 'Türschlösser verwalten',

    -- # Konfiguration
    ['max_storages'] = 'Maximale Lager',
    ['max_wardrobes'] = 'Maximale Kleiderschränke',
    ['max_keys'] = 'Maximale Schlüssel',
    ['max_garages'] = 'Max. Garagen',
    ['garages'] = 'Garagen',
    ['cctv'] = 'CCTV',
    ['rename'] = 'Umbenennen',

    ['disable_buy'] = 'Kauf deaktivieren',
    ['disable_buy_desc'] = 'Kauf deaktivieren, kann nur über Tebex oder benutzerdefinierten Befehl gekauft werden',
    ['rentable'] = 'Vermietbar',
    ['rentable_desc'] = 'Kann der Eigentümer das Haus an andere Bürger vermieten?',

    -- # Miete
    ['rent_options'] = 'Mietoptionen',
    ['tenant_information'] = 'Mieterinformationen',
    ['evict'] = 'Räumung',
    ['rent_your_house'] = 'Vermiete dein Haus',
    ['rent_your_house_desc'] = 'Stelle dein Haus zur Miete für andere Bürger bereit',
    ['rented_at'] = 'Vermietet am',
    ['payment_due'] = 'Zahlung fällig am',

    -- ## Mietberechtigungen
    ['garage'] = 'Garage',
    ['garage_desc'] = 'Erlaube dem Mieter, die Garage zu nutzen',
    ['wardrobe_desc'] = 'Erlaube dem Mieter, den Kleiderschrank zu verwalten',
    ['storage_desc'] = 'Erlaube dem Mieter, das Lager zu verwalten',
    ['furnish'] = 'Möblieren',
    ['furnish_desc'] = 'Erlaube dem Mieter, das Haus zu möblieren',
    ['key'] = 'Schlüssel',
    ['key_desc'] = 'Erlaube dem Mieter, Schlüssel zu vergeben und zu verwalten',
    ['door'] = 'Tür',
    ['door_desc'] = 'Erlaube dem Mieter, die Türen des Hauses zu verwalten',

    -- Möbelgeschäft
    ['furnitures'] = 'Möbel',
    ['buy_furniture'] = 'Möbel kaufen',
    ['sell_furniture'] = 'Möbel verkaufen',

    -- Haus kaufen Seite
    ['buy_now'] = 'Jetzt kaufen',
    ['rent_now'] = 'Jetzt mieten',
    ['choose'] = 'Wählen',

    -- Hypothekenstatus
    ['mortgage_status'] = 'Hypothekenstatus',
    ['remaining_payments'] = 'Verbleibende Zahlungen',
    ['interest_for'] = 'Zinsen für',
    ['last_payment'] = 'Letzte Zahlung am',
    ['next_payment'] = 'Nächste Zahlung am',
    ['pay'] = 'ZAHLEN',
    ['pay_all'] = 'ALLES ZAHLEN',

    -- Steuerung Möblieren
    ['mode'] = 'Modus:',
    ['hold_rmb'] = '(RMB) Charakter zu bewegen',
    ['tooltip_save'] = '(E) Platzierung zu speichern',
    ['tooltip_teleport'] = 'Objekt zu dir teleportieren',
    ['tooltip_snap'] = 'Objekt am Boden ausrichten',
    ['tooltip_rotate'] = '(R) Drehmodus',
    ['tooltip_move_mode'] = '(Z) Bewegungsmodus',

    -- Garages
    ['create_garage'] = 'Garage erstellen',

}
