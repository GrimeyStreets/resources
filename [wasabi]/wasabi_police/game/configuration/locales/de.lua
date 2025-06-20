-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not Config.Language then Config.Language = 'de' end
if Config.Language ~= 'de' then return end

Strings = {

    jail_countdown_header = 'SIE SIND IM GEFÄNGNIS',
    jail_countdown_sentence = '%s Monate verbleibend',
    jail_time_up = 'Gefängniszeit abgelaufen',
    jail_time_up_desc = 'Sie haben Ihre Zeit im Gefängnis abgesessen.',

    no_society_account = 'Kein Gesellschaftskonto gefunden - überprüfen Sie Ihre Konfiguration!',
    officer = 'Beamter',
    not_authorized = 'Nicht autorisiert',
    not_authorized_desc = 'Sie sind nicht berechtigt, dies zu verwenden!',
    not_on_duty = 'Nicht im Dienst',
    not_on_duty_desc = 'Sie sind nicht im Dienst!',
    gps_enabled = 'GPS aktiviert',
    gps_enabled_desc = 'Sie haben Ihr GPS aktiviert',
    gps_disabled = 'GPS deaktiviert',
    gps_disabled_desc = 'Sie haben Ihr GPS deaktiviert',

    new_speed_trap = 'Neues Geschwindigkeitsradar',
    speed_limit = 'Geschwindigkeitsbegrenzung',
    incorrect_input = 'Falsche Eingabe',
    incorrect_input_cancel = 'Vorherige Eingabe abgebrochen.',
    incorrect_input_speed = 'Bitte geben Sie eine gültige Geschwindigkeitsbegrenzung ein.',
    radar_post = 'Radarpfosten',
    ui_radar_post_place = 'E - Posten platzieren  \n R - Drehen  \n BACK - Abbrechen  \n UP/DOWN - Entfernung',
    radar_post_placed = 'Radarpfosten erfolgreich platziert.',
    radar_post_failed = 'Radarpfosten konnte nicht platziert werden.',
    speed_trap_rename = '%s umbenennen',
    speed_trap = 'Geschwindigkeitsradar',
    new_name = 'Neuer Name',
    speed_trap_renamed = 'Sie haben %s erfolgreich in %s umbenannt.',
    speed_trap_rename_failed = 'Radarpfosten konnte nicht umbenannt werden!',
    manage_trap_rename = 'Radarpfosten umbenennen',
    manage_trap_rename_desc = 'Den Namen dieses Radarpfostens bearbeiten',
    manage_trap_delete = 'Radarpfosten entfernen',
    manage_trap_delete_desc = 'Diesen Radarpfosten entfernen',
    menu_trap_create = 'Radarpfosten erstellen',
    menu_trap_create_desc = 'Einen Radarpfosten in Ihrer Nähe erstellen',
    menu_trap_manage = 'Radarpfosten verwalten',
    menu_trap_manage_desc = 'Den nächsten Radarpfosten verwalten.',
    menu_select_trap = 'Radarpfosten auswählen',
    menu_radar_posts = 'Radarstationen',
    menu_radar_posts_desc = 'Radarstationen einsetzen/entfernen.',
    warning_speedtrap_table =
    '^0[^1WARNUNG^0] Die Geschwindigkeitsradar-Datenbanktabelle wurde nicht automatisch erstellt!',

    menu_cctv_cameras = 'CCTV-Kameras',
    menu_cctv_cameras_desc = 'CCTV-Kameras bereitstellen/entfernen',
    menu_cctv_create = 'CCTV-Kamera erstellen',
    menu_cctv_create_desc = 'CCTV-Kamera in der Nähe Ihres aktuellen Standorts erstellen',
    menu_select_cctv = 'CCTV-Kamera auswählen',
    menu_cctv_manage = 'CCTV-Kamera verwalten',
    menu_cctv_manage_desc = 'Nächstgelegene CCTV-Kamera verwalten',
    new_cctv = 'Neue CCTV-Kamera',
    manu_cctv_rename = 'CCTV-Kamera umbenennen',
    manu_cctv_rename_desc = 'Name dieser CCTV-Kamera bearbeiten',
    cctv_renamed = 'Sie haben %s erfolgreich in %s umbenannt.',
    cctv_rename_failed = 'Das Umbenennen der CCTV-Kamera ist fehlgeschlagen!',
    manage_cctv_delete = 'CCTV-Kamera entfernen',
    manage_cctv_delete_desc = 'Diese CCTV-Kamera entfernen',
    manage_cctv_view = 'CCTV-Kamera anzeigen',
    manage_cctv_view_desc = 'Aktuelle CCTV-Kamera anzeigen',
    cctv = 'CCTV-Kamera',
    cctv_placed = 'CCTV-Kamera wurde erfolgreich platziert.',
    cctv_failed = 'CCTV-Kamera konnte nicht platziert werden.',
    manage_cctv_repair = 'CCTV-Kamera reparieren',
    manage_cctv_repair_desc = 'Diese CCTV-Kamera reparieren',
    cctv_repaired = 'CCTV-Kamera wurde repariert.',
    cctv_repair_failed = 'CCTV-Kamera konnte nicht repariert werden.',
    warning_cctv_table = '^0[^1WARNING^0] CCTV-Datenbanktabelle wurde nicht automatisch erstellt!',
    cctv_repairing = 'CCTV-Kamera wird repariert. . .',
    cctv_not_broken = 'CCTV-Kamera nicht kaputt',
    cctv_destroyed = 'CCTV-Kamera zerstört',
    cctv_destroyed_desc = 'Sie haben die CCTV-Kamera zerstört',
    cctv_not_closest = 'Nicht die nächstgelegene CCTV-Kamera',
    cctv_remove_error = 'Fehler',
    cctv_remove_error_desc = "Sie können diese CCTV-Kamera nicht entfernen",

    menu_tracking_bracelet = 'Verfolgungsarmbänder anzeigen',
    menu_tracking_bracelet_desc = 'Zeige alle Verfolgungsarmbänder in der Stadt an',
    tracking_bracelet = 'Verfolgungsarmband',
    tracking_bracelet_desc = 'Füge einem nahegelegenen Verdächtigen ein Verfolgungsarmband hinzu oder entferne es',
    no_bracelets = 'Keine Armbänder',
    no_bracelets_desc = 'Es gibt keine Verfolgungsarmbänder in der Stadt.',
    optn_tracking_bracelet_title = 'Verdächtiger: %s',
    optn_tracking_bracelet_desc = 'Verfolgungsarmband hinzugefügt von: %s',
    tracking_bracelet_toggle_failed = 'Verfolgungsarmband konnte nicht umgeschaltet werden!',
    tracking_bracelet_toggle = 'Verfolgungsarmband umgeschaltet',
    tracking_bracelet_toggled_desc = 'Du hast das Verfolgungsarmband für %s umgeschaltet',
    tracking_bracelet_toggle_failed_desc = 'Du hast das Verfolgungsarmband für %s nicht umschalten können',
    got_tracking_bracelet = 'Verfolgungsarmband hinzugefügt',
    got_tracking_bracelet_desc = 'Du hast ein Verfolgungsarmband erhalten',
    start_tracking = 'Verfolgungsarmband hinzufügen',
    stop_tracking = 'Verfolgungsarmband entfernen',
    removed_tracking_bracelet = 'Verfolgungsarmband entfernt',
    removed_tracking_bracelet_desc = 'Das Verfolgungsarmband wurde entfernt',
    no_tracking_bracelet = 'Kein Verfolgungsarmband',
    no_tracking_bracelet_desc = 'Du hast kein Verfolgungsarmband',


    license_self = 'Selbst',
    grade_too_low = 'Rang zu niedrig',
    grade_too_low_desc = 'Ihr Rang ist zu niedrig für diese Aktion!',
    invoice_amount = 'Rechnungsbetrag',
    amount_invoice = 'Betrag',
    reason_invoice = 'Grund',
    description_invoice = 'Beschreibung',
    description_invoice_desc = 'Notizen für die Strafe',
    tickets_invoice = 'Tickets',
    tickets_invoice_desc = 'Strafen auswählen',
    gov_billing = 'Staatliche Inkasso',
    fine_id_invoice = 'Straf-ID',
    offenses_invoice = 'Vergehen',
    ticket_received = 'Sie haben ein Ticket von %s erhalten',
    speedtrap_fine = 'Geschwindigkeitsradar-Strafe',
    speedtrap_fine_desc =
    'Sie wurden mit %s%s für eine Geschwindigkeitsüberschreitung von %s%s über dem Limit auf Kamera geblitzt!',

    evidence_storage = 'Beweislager',
    locker_number = 'Schließfachnummer',

    cuffed_last_online = 'Zuletzt gefesselt',
    cuffed_last_online_desc = 'Sie wurden gefesselt, als Sie das letzte Mal in der Stadt waren.',

    player_in_vehicle = 'Verdächtiger im Fahrzeug',
    player_in_vehicle_desc = 'Entfernen Sie den Verdächtigen aus dem Fahrzeug, bevor Sie dies tun!',
    suspect_died_escort = 'Verdächtiger gestorben',
    suspect_died_escort_desc = 'Der Verdächtige starb während des Transports und Sie haben ihn fallen lassen.',

    stop_escorting_interact = '[E] - Transport stoppen',
    cant_wield = 'Kann nicht ausrüsten',
    cant_wield_desc = 'Sie können dies momentan nicht benutzen!',

    jailed_player = 'Verdächtiger eingesperrt',
    jailed_player_desc = 'Sie haben %s für %s Monate eingesperrt.',

    gps_active = 'GPS aktiviert',
    gps_active_desc = 'Spieler %s hat sein GPS aktiviert',
    gps_deactive = 'GPS deaktiviert',
    gps_deactive_desc = 'Spieler %s hat sein GPS deaktiviert',

    no_wsb = '^0[^3WARNUNG^0] wasabi_bridge wurde NICHT nach dem Framework und/oder VOR der Ressource gestartet: %s',
    currency = '€',
    success = 'Erfolg',
    go_back = 'Zurück',
    cloakroom = 'Garderobe',
    civilian_wear = 'Zivile Kleidung',
    armoury_quantity_dialog = 'Bestellmenge',
    quantity = 'Menge',
    invalid_amount = 'Ungültiger Betrag',
    invalid_amount_desc = 'Bitte geben Sie einen gültigen Betrag ein',
    successful_purchase_desc = 'Sie haben Ihre Waffen erfolgreich aus dem Waffenkammer bestellt',
    lacking_funds = 'Unzureichende Mittel',
    lacking_funds_desc = 'Sie haben nicht genug Geld auf Ihrem Bankkonto für diesen Kauf',
    no_permission = 'Keine Berechtigung',
    no_access_desc = 'Sie sind nicht berechtigt, darauf zuzugreifen!',
    key_map_cuff = 'Spieler fesseln',
    key_map_tackle = 'Spieler beim Sprinten tackeln',
    key_map_job = 'Job-Menü öffnen',
    no_nearby = 'Niemand gefunden',
    no_nearby_desc = 'Es scheint niemand in der Nähe zu sein',
    invalid_entry = 'Ungültiger Eintrag',
    invalid_entry_desc = 'Bitte geben Sie einen gültigen Eintrag ein.',
    fines = 'Strafen',
    fines_desc = 'Einem nahegelegenen Spieler eine Strafe erteilen',
    search_player = 'Verdächtigen durchsuchen',
    search_player_desc = 'Einen nahegelegenen Verdächtigen durchsuchen',
    jail_player = 'Verdächtigen einsperren',
    jail_player_desc = 'Einen nahegelegenen Verdächtigen einsperren',
    minutes_dialog = 'Strafzeit',
    minutes_dialog_field = 'Monate',
    escort_player = 'Verdächtigen transportieren',
    escort_player_desc = 'Einen nahegelegenen Verdächtigen transportieren',
    handcuff_hard_player = 'Verdächtigen hart fesseln',
    handcuff_hard_player_desc = 'Einen nahegelegenen Verdächtigen hart fesseln',
    handcuff_soft_player = 'Verdächtigen sanft fesseln',
    handcuff_soft_player_desc = 'Einen nahegelegenen Verdächtigen sanft fesseln',
    put_in_vehicle = 'In Fahrzeug setzen',
    put_in_vehicle_desc = 'Nahegelegenen Verdächtigen ins Fahrzeug setzen',
    check_id = 'Identität überprüfen',
    check_id_desc = 'Den Ausweis eines nahegelegenen Verdächtigen überprüfen.',
    id_result_menu = 'Identitätsergebnisse',
    name = 'Name',
    job = 'Beruf',
    job_position = 'Position',
    dob = 'Geburtsdatum',
    sex = 'Geschlecht',
    bac = 'Blutalkoholgehalt',
    licenses = 'Lizenzen',
    total_licenses = 'Gesamtlizenzen:',
    no_licenses = 'Keine Lizenzen',
    revoke_license = 'Lizenz entziehen',
    license_revoked = 'Lizenz entzogen',
    license_revoked_desc = 'Sie haben die Lizenz erfolgreich entzogen',
    armoury_menu = 'Waffenkammer-Menü',
    take_out_vehicle = 'Aus Fahrzeug entfernen',
    take_out_vehicle_desc = 'Verdächtigen aus dem Fahrzeug entfernen',
    not_restrained = 'Ziel nicht gefesselt',
    not_restrained_desc = 'Sie müssen den Kriminellen erst fesseln, bevor Sie ihn transportieren',
    vehicle_not_found = 'Fahrzeug nicht gefunden',
    vehicle_not_found_desc = 'Kein Fahrzeug in der Nähe gefunden',
    unconcious = 'Person bewusstlos',
    unconcious_desc = 'Die Person scheint bewusstlos zu sein',
    police_garage = 'Garage',
    police = 'Polizei',
    plate = 'Kennzeichen',
    owner = 'Besitzer',
    possibly_stolen = 'Achtung!',
    possibly_stolen_desc = 'Fahrzeug möglicherweise gestohlen',
    vehicle_interactions = 'Fahrzeug-Interaktionen',
    vehicle_interactions_desc = 'Nahegelegenes Fahrzeug untersuchen',
    vehicle_information = 'Fahrzeuginformationen',
    vehicle_information_desc = 'Informationen über das nahegelegene Fahrzeug',
    lockpick_vehicle = 'Fahrzeug aufbrechen',
    locakpick_vehicle_desc = 'Zugang zu nahegelegenem Fahrzeug erzwingen',
    lockpick_progress = 'Fahrzeug aufbrechen . . .',
    too_far = 'Zu weit entfernt',
    too_far_desc = 'Das Ziel-Fahrzeug ist zu weit entfernt',
    lockpicked = 'Erfolgreich aufgebrochen',
    lockpicked_desc = 'Sie haben das Ziel-Fahrzeug erfolgreich aufgebrochen',
    cancelled = 'Abgebrochen',
    cancelled_desc = 'Sie haben Ihre letzte Aktion abgebrochen',
    impound_vehicle = 'Fahrzeug beschlagnahmen',
    impound_vehicle_desc = 'Nahegelegenes Fahrzeug beschlagnahmen',
    impounding_progress = 'Fahrzeug beschlagnahmen . . .',
    driver_in_car = 'Fahrer im Fahrzeug',
    driver_in_car_desc = 'Entfernen Sie den Fahrer aus dem Fahrzeug, bevor Sie es beschlagnahmen!',
    car_impounded_desc = 'Fahrzeug wurde beschlagnahmt',
    place_object = 'Objekte platzieren',
    place_object_desc = 'Objekte auf den Boden stellen.',
    prop_help_text =
    'Drücken Sie ~INPUT_CONTEXT~, um das Objekt zu bewegen.\nDrücken Sie ~INPUT_DETONATE~, um das Objekt zu löschen.',
    prop_help_text2 = 'Drücken Sie ~INPUT_CONTEXT~, um das Objekt zu platzieren.',

    seize_cash_title = 'Bargeld beschlagnahmen',
    seize_cash = 'Bargeld beschlagnahmt',
    seize_cash_desc = 'Polizei(%s) hat Ihr Bargeld beschlagnahmt',
    seize_cash_label = 'Bargeld des Verdächtigen beschlagnahmt',
    seize_cash_failed = 'Beschlagnahme fehlgeschlagen',
    seize_cash_failed_desc = 'Verdächtiger hat kein Bargeld',
    fine_sent = 'Strafen gesendet',
    fine_sent_desc = 'Sie haben erfolgreich eine Strafe in Höhe von $%s gesendet!',
    fine_received = 'Strafe erhalten',
    fine_received_desc = 'Sie haben eine Strafe in Höhe von $%s erhalten',
    fine_nomoney = 'Strafe fehlgeschlagen',
    fine_nomoney_desc = 'Verdächtiger hat nicht genug Geld, um die Strafe zu zahlen (Strafbetrag: $%s)',
    male = 'Männlich',
    female = 'Weiblich',
    mr = 'Herr',
    mrs = 'Frau',
    debt_collection = 'Schuldeneintreibung',
    db_email =
    'Sehr geehrter Herr/Frau %s %s,<br /><br />Die Zentrale Justizinkassobehörde (CJCA) hat die von Ihnen erhaltenen Polizeistrafen eingezogen.<br />Ein Betrag von <strong>$%s</strong> wurde von Ihrem Konto abgezogen.<br /><br />Mit freundlichen Grüßen,<br />Herr Wasabi',

    spawn_blocked = 'Garage blockiert',
    spawn_blocked_desc = 'Ihr Fahrzeug kann nicht herausgeholt werden, weil es blockiert ist!',

    positive = 'Positiv',
    positive_gsr_desc = 'Der Verdächtige wurde positiv auf Schussrückstände getestet!',
    negative = 'Negativ',
    negative_gsr_desc = 'Der Verdächtige wurde negativ auf Schussrückstände getestet!',
    gsr_test = 'GSR-Test',
    gsr_test_desc = 'Nahegelegenen Verdächtigen auf Schussrückstände testen',
    hands_clean = 'Gereinigt',
    hands_clean_desc = 'Sie haben Ihre Hände erfolgreich von Schussrückständen gereinigt!',
    gsr_wash_ui = '[E] - Hände waschen',

    on_duty = 'Im Dienst',
    on_duty_desc = 'Sie sind jetzt im Dienst!',
    off_duty = 'Außer Dienst',
    off_duty_desc = 'Sie sind jetzt außer Dienst!',

    robbing_player = 'Opfer ausrauben...',

    cancelled_action = 'Aktion abgebrochen',
    cancelled_action_desc = 'Ihre letzte Aktion wurde abgebrochen!',

    no_cuffs = 'Keine Handschellen',
    no_cuffs_desc = 'Sie haben keine Handschellen in Ihrer Tasche!',
    failed = 'Fehlgeschlagen',
    lockpick_handcuff_success = 'Sie haben die Handschellen erfolgreich aufgebrochen!',
    lockpick_handcuff_fail = 'Aufbrechen der Handschellen fehlgeschlagen!',
    lockpick_broke = 'Dietrich verbogen',
    lockpick_broke_desc = 'Ihr Dietrich ist verbogen!',
    grant_license = 'Waffenlizenz ausstellen',
    grant_license_desc = 'Einer nahegelegenen Person eine Waffenlizenz ausstellen',
    player_id = 'Spieler-ID:',
    select_player = 'Person auswählen',
    license_granted = 'Lizenz erteilt',
    license_granted_desc = 'Sie haben %s (%s) erfolgreich eine Waffenlizenz erteilt',
    license_alr_granted = 'Diese Person hat bereits eine Lizenz!',
    weapon_license = 'Waffenlizenz',
    weapon_license_desc = 'Ihnen wurde gerade eine Waffenlizenz erteilt.',

    in_vehicle = 'Im Fahrzeug',
    in_vehicle_desc = 'Sie können den Verdächtigen nicht im Fahrzeug verhaften!',
}
