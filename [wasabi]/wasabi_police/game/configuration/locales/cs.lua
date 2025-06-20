-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not Config.Language then Config.Language = 'cs' end
if Config.Language ~= 'cs' then return end

Strings = {

    jail_countdown_header = 'JSTE VE VĚZENÍ',
    jail_countdown_sentence = '%s měsíců zbývá',
    jail_time_up = 'Čas ve vězení vypršel',
    jail_time_up_desc = 'Odpykal jste si svůj čas ve vězení.',

    no_society_account = 'Žádný účet společnosti nebyl nalezen - zkontrolujte svou konfiguraci!',
    officer = 'Úředník',
    not_authorized = 'Není oprávněno',
    not_authorized_desc = 'Nemáte oprávnění to používat!',
    not_on_duty = 'Není na službě',
    not_on_duty_desc = 'Nyní nejste na službě!',
    gps_enabled = 'GPS je povoleno',
    gps_enabled_desc = 'GPS bylo povoleno',
    gps_disabled = 'GPS je zakázáno',
    gps_disabled_desc = 'GPS bylo zakázáno',

    new_speed_trap = 'Nová rychlostní past',
    speed_limit = 'Rychlostní limit',
    incorrect_input = 'Nesprávný vstup',
    incorrect_input_cancel = 'Předchozí vstup zrušen.',
    incorrect_input_speed = 'Prosím, zadejte platný rychlostní limit.',
    radar_post = 'Radarový sloup',
    ui_radar_post_place = 'E - Umístit stanoviště  \n R - Otočit  \n BACK - Zrušit  \n UP/DOWN - Vzdálenost',
    radar_post_placed = 'Radarový sloup úspěšně umístěn.',
    radar_post_failed = 'Nepodařilo se umístit radarový sloup.',
    speed_trap_rename = 'Přejmenovat %s',
    speed_trap = 'Rychlostní past',
    new_name = 'Nové jméno',
    speed_trap_renamed = 'Úspěšně jste přejmenovali %s na %s.',
    speed_trap_rename_failed = 'Přejmenování radarového sloupu se nezdařilo!',
    manage_trap_rename = 'Přejmenovat radarový sloup',
    manage_trap_rename_desc = 'Upravit jméno tohoto radarového sloupu',
    manage_trap_delete = 'Odstranit radarový sloup',
    manage_trap_delete_desc = 'Odstranit tento radarový sloup',
    menu_trap_create = 'Vytvořit radarový sloup',
    menu_trap_create_desc = 'Vytvořit radarový sloup poblíž vaší aktuální polohy',
    menu_trap_manage = 'Spravovat radarový sloup',
    menu_trap_manage_desc = 'Spravovat nejbližší radarový sloup.',
    menu_select_trap = 'Vybrat radarový sloup',
    menu_radar_posts = 'Radarové stanoviště',
    menu_radar_posts_desc = 'Nasadit/Odstranit radarové stanoviště.',
    warning_speedtrap_table = '^0[^1VAROVÁNÍ^0] Tabulka databáze rychlostních pastí nebyla automaticky vytvořena!',

    menu_cctv_cameras = 'CCTV kamery',
    menu_cctv_cameras_desc = 'Nasadit/Odstranit CCTV kamery',
    menu_cctv_create = 'Vytvořit CCTV kameru',
    menu_cctv_create_desc = 'Vytvořte CCTV kameru poblíž vaší aktuální polohy',
    menu_select_cctv = 'Vybrat CCTV kameru',
    menu_cctv_manage = 'Správa CCTV kamery',
    menu_cctv_manage_desc = 'Spravovat nejbližší CCTV kameru',
    new_cctv = 'Nová CCTV kamera',
    manage_cctv_rename = 'Přejmenovat kameru CCTV',
    manage_cctv_rename_desc = 'Upravit název této CCTV kamery',
    cctv_renamed = 'Úspěšně jste přejmenovali %s na %s.',
    cctv_rename_failed = 'Nezdařilo se vám přejmenovat CCTV kameru!',
    manage_cctv_delete = 'Odstranit CCTV kameru',
    manage_cctv_delete_desc = 'Odstranit tuto CCTV kameru',
    manage_cctv_view = 'Zobrazit kameru CCTV',
    manage_cctv_view_desc = 'Zobrazit aktuální CCTV kameru',
    cctv = 'CCTV kamera',
    cctv_placed = 'CCTV kamera byla úspěšně umístěna.',
    cctv_failed = 'Nepodařilo se umístit CCTV kameru.',
    manage_cctv_repair = 'Opravit CCTV kameru',
    manage_cctv_repair_desc = 'Opravit tuto CCTV kameru',
    cctv_repaired = 'CCTV kamera byla opravena.',
    cctv_repair_failed = 'Nepodařilo se opravit CCTV kameru.',
    warning_cctv_table = '^0[^1WARNING^0] CCTV databázová tabulka se nevytvořila automaticky!',
    cctv_repairing = 'Oprava CCTV kamery. . .',
    cctv_not_broken = 'CCTV kamera není rozbitá',
    cctv_destroyed = 'CCTV kamera zničena',
    cctv_destroyed_desc = 'Zničili jste CCTV kameru',
    cctv_not_closest = 'Není nejbližší CCTV kamera',
    cctv_remove_error = 'Chyba',
    cctv_remove_error_desc = "Nemůžete odstranit tuto CCTV kameru",

    menu_tracking_bracelet = 'Zobrazit sledovací náramky',
    menu_tracking_bracelet_desc = 'Zobrazit všechny sledovací náramky ve městě',
    tracking_bracelet = 'Sledovací náramek',
    tracking_bracelet_desc = 'Přidejte nebo odeberte sledovací náramek od blízkého podezřelého',
    no_bracelets = 'Žádné náramky',
    no_bracelets_desc = 'Ve městě nejsou žádné sledovací náramky.',
    optn_tracking_bracelet_title = 'Podezřelý: %s',
    optn_tracking_bracelet_desc = 'Sledovací náramek přidán: %s',
    tracking_bracelet_toggle_failed = 'Nepodařilo se přepnout sledovací náramek!',
    tracking_bracelet_toggle = 'Sledovací náramek přepnut',
    tracking_bracelet_toggled_desc = 'Přepnul(a) jsi sledovací náramek pro %s',
    tracking_bracelet_toggle_failed_desc = 'Nepodařilo se přepnout sledovací náramek pro %s',
    got_tracking_bracelet = 'Sledovací náramek přidán',
    got_tracking_bracelet_desc = 'Získal(a) jsi sledovací náramek',
    start_tracking = 'Přidávání sledovacího náramku',
    stop_tracking = 'Odebrání sledovacího náramku',
    removed_tracking_bracelet = 'Sledovací náramek odebrán',
    removed_tracking_bracelet_desc = 'Sledovací náramek byl odebrán',
    no_tracking_bracelet = 'Žádný sledovací náramek',
    no_tracking_bracelet_desc = 'Nemáš sledovací náramek',


    license_self = 'Sám',
    grade_too_low = 'Příliš nízká hodnost',
    grade_too_low_desc = 'Vaše hodnost je příliš nízká pro tuto akci!',
    invoice_amount = 'Částka faktury',
    amount_invoice = 'Částka',
    reason_invoice = 'Důvod',
    description_invoice = 'Popis',
    description_invoice_desc = 'Poznámky k pokutě',
    tickets_invoice = 'Pokuty',
    tickets_invoice_desc = 'Vybrat pokuty',
    gov_billing = 'Vládní výběr dluhů',
    fine_id_invoice = 'ID pokuty',
    offenses_invoice = 'Přestupky',
    ticket_received = 'Obdrželi jste pokutu od %s',
    speedtrap_fine = 'Pokuta za rychlostní past',
    speedtrap_fine_desc = 'Byli jste pokutováni částkou %s%s za překročení limitu o %s%s na kameře!',

    evidence_storage = 'Sklad důkazů',
    locker_number = 'Číslo skříňky',

    cuffed_last_online = 'Dříve spoutaný',
    cuffed_last_online_desc = 'Když jste byli naposledy ve městě, byli jste spoutáni.',

    player_in_vehicle = 'Podezřelý ve vozidle',
    player_in_vehicle_desc = 'Před provedením této akce vyjměte podezřelého z vozidla!',
    suspect_died_escort = 'Podezřelý zemřel',
    suspect_died_escort_desc = 'Podezřelý zemřel během eskorty a upustil jste ho.',

    stop_escorting_interact = '[E] - Zastavit eskortu',
    cant_wield = 'Nelze vybavit',
    cant_wield_desc = 'V tuto chvíli to nemůžete použít!',

    jailed_player = 'Podezřelý uvězněn',
    jailed_player_desc = 'Uvěznili jste %s na %s měsíců.',

    gps_active = 'GPS aktivováno',
    gps_active_desc = 'Hráč %s aktivoval své GPS',
    gps_deactive = 'GPS deaktivováno',
    gps_deactive_desc = 'Hráč %s deaktivoval své GPS',

    no_wsb = '^0[^3VAROVÁNÍ^0] wasabi_bridge nebyl spuštěn PO frameworku a/nebo PŘED zdrojem: %s',
    currency = 'Kč',
    success = 'Úspěch',
    go_back = 'Zpět',
    cloakroom = 'Šatna',
    civilian_wear = 'Civilní oblečení',
    armoury_quantity_dialog = 'Množství k objednání',
    quantity = 'Množství',
    invalid_amount = 'Neplatná částka',
    invalid_amount_desc = 'Prosím, zadejte platnou částku',
    successful_purchase_desc = 'Úspěšně jste si objednali zbraně ze zbrojnice',
    lacking_funds = 'Nedostatek prostředků',
    lacking_funds_desc = 'Nemáte dostatek prostředků na účtu pro tento nákup',
    no_permission = 'Bez povolení',
    no_access_desc = 'Nemáte oprávnění k přístupu k tomuto!',
    key_map_cuff = 'Spoutat hráče',
    key_map_tackle = 'Srazit hráče při sprintu',
    key_map_job = 'Otevřít pracovní menu',
    no_nearby = 'Nikdo nalezen',
    no_nearby_desc = 'Zdá se, že nikdo není poblíž',
    invalid_entry = 'Neplatný vstup',
    invalid_entry_desc = 'Zadejte prosím platný vstup.',
    fines = 'Pokuty',
    fines_desc = 'Udělit pokutu hráči poblíž',
    search_player = 'Prohledat podezřelého',
    search_player_desc = 'Prohledat podezřelého poblíž',
    jail_player = 'Uvést podezřelého do vězení',
    jail_player_desc = 'Uvést podezřelého poblíž do vězení',
    minutes_dialog = 'Rozsudek',
    minutes_dialog_field = 'Měsíce',
    escort_player = 'Eskortovat podezřelého',
    escort_player_desc = 'Eskortovat podezřelého poblíž',
    handcuff_hard_player = 'Spoutat podezřelého (tvrdě)',
    handcuff_hard_player_desc = 'Spoutat podezřelého poblíž (tvrdě)',
    handcuff_soft_player = 'Spoutat podezřelého (měkce)',
    handcuff_soft_player_desc = 'Spoutat podezřelého poblíž (měkce)',
    put_in_vehicle = 'Umístit do vozidla',
    put_in_vehicle_desc = 'Umístit podezřelého poblíž do vozidla',
    check_id = 'Zkontrolovat identifikaci',
    check_id_desc = 'Zkontrolovat ID podezřelého poblíž.',
    id_result_menu = 'Výsledky identifikace',
    name = 'Jméno',
    job = 'Práce',
    job_position = 'Pozice',
    dob = 'Datum narození',
    sex = 'Pohlaví',
    bac = 'BAC',
    licenses = 'Licence',
    total_licenses = 'Celkem licencí:',
    no_licenses = 'Žádné licence',
    revoke_license = 'Odebrat licenci',
    license_revoked = 'Licence odebrána',
    license_revoked_desc = 'Úspěšně jste odebrali licenci',
    armoury_menu = 'Menu zbrojnice',
    take_out_vehicle = 'Vyjmout z vozidla',
    take_out_vehicle_desc = 'Vyjmout podezřelého z vozidla',
    not_restrained = 'Cíl není spoután',
    not_restrained_desc = 'Musíte zločince spoutat před eskortováním',
    vehicle_not_found = 'Vozidlo nenalezeno',
    vehicle_not_found_desc = 'V okolí nebylo nalezeno žádné vozidlo',
    unconcious = 'Osoba v bezvědomí',
    unconcious_desc = 'Osoba vypadá, že je v bezvědomí',
    police_garage = 'Garáž',
    police = 'Policie',
    plate = 'SPZ',
    owner = 'Majitel',
    possibly_stolen = 'Pozor!',
    possibly_stolen_desc = 'Vozidlo je možná kradené',
    vehicle_interactions = 'Interakce s vozidlem',
    vehicle_interactions_desc = 'Prohlédnout vozidlo poblíž',
    vehicle_information = 'Informace o vozidle',
    vehicle_information_desc = 'Informace o vozidle poblíž',
    lockpick_vehicle = 'Vyháčkovat vozidlo',
    locakpick_vehicle_desc = 'Vynucený přístup k vozidlu poblíž',
    lockpick_progress = 'Vyháčkování vozidla . . .',
    too_far = 'Příliš daleko',
    too_far_desc = 'Cílové vozidlo je příliš daleko',
    lockpicked = 'Úspěšně odemčeno',
    lockpicked_desc = 'Úspěšně jste odemkli cílové vozidlo',
    cancelled = 'Zrušeno',
    cancelled_desc = 'Poslední akce byla zrušena',
    impound_vehicle = 'Odtáhnout vozidlo',
    impound_vehicle_desc = 'Odtáhnout vozidlo poblíž',
    impounding_progress = 'Odtahování vozidla . . .',
    driver_in_car = 'Řidič ve vozidle',
    driver_in_car_desc = 'Před odtažením vyjměte řidiče z vozidla!',
    car_impounded_desc = 'Vozidlo bylo odtaženo',
    place_object = 'Umístit předměty',
    place_object_desc = 'Umístit předměty na podlahu.',
    prop_help_text =
    'Stiskněte ~INPUT_CONTEXT~ pro přesun předmětu.\nStiskněte ~INPUT_DETONATE~ pro odstranění předmětu.',
    prop_help_text2 = 'Stiskněte ~INPUT_CONTEXT~ pro umístění předmětu.',

    seize_cash_title = 'Zabavit peníze',
    seize_cash = 'Peníze zabaveny',
    seize_cash_desc = 'Policie(%s) zabavila vaše peníze',
    seize_cash_label = 'Zabavené peníze podezřelého',
    seize_cash_failed = 'Zabavení se nezdařilo',
    seize_cash_failed_desc = 'Podezřelý nemá žádné peníze',
    fine_sent = 'Pokuty odeslány',
    fine_sent_desc = 'Úspěšně jste odeslali pokutu ve výši $%s!',
    fine_received = 'Pokuta přijata',
    fine_received_desc = 'Obdrželi jste pokutu ve výši $%s',
    fine_nomoney = 'Pokuta neúspěšná',
    fine_nomoney_desc = 'Podezřelý nemá dostatek peněz na zaplacení pokuty (Výše pokuty: $%s)',
    male = 'Muž',
    female = 'Žena',
    mr = 'Pan',
    mrs = 'Paní',
    debt_collection = 'Vymáhání dluhů',
    db_email =
    'Vážený %s %s,<br /><br />Centrální soudní inkasní agentura (CJCA) vybrala pokuty, které jste obdrželi od policie.<br />Z vašeho účtu byla odečtena částka <strong>$%s</strong>.<br /><br />S pozdravem,<br />Pan Wasabi',

    spawn_blocked = 'Garáž zablokována',
    spawn_blocked_desc = 'Nemůžete vytáhnout své vozidlo, protože je zablokováno!',

    positive = 'Pozitivní',
    positive_gsr_desc = 'Podezřelý testoval POZITIVNÍ na střelný prach!',
    negative = 'Negativní',
    negative_gsr_desc = 'Podezřelý testoval NEGATIVNÍ na střelný prach!',
    gsr_test = 'Test na střelný prach',
    gsr_test_desc = 'Otestujte podezřelého poblíž na střelný prach',
    hands_clean = 'Čisté ruce',
    hands_clean_desc = 'Úspěšně jste si umyli ruce od střelného prachu!',
    gsr_wash_ui = '[E] - Umyjte si ruce',

    on_duty = 'Ve službě',
    on_duty_desc = 'Nyní jste ve službě!',
    off_duty = 'Mimo službu',
    off_duty_desc = 'Nyní jste mimo službu!',

    robbing_player = 'Loupí oběť...',

    cancelled_action = 'Akce zrušena',
    cancelled_action_desc = 'Vaše poslední akce byla zrušena!',

    no_cuffs = 'Žádná pouta',
    no_cuffs_desc = 'Nemáte žádná pouta v kapsách!',
    failed = 'Neúspěšný',
    lockpick_handcuff_success = 'Úspěšně jste odemkli pouta!',
    lockpick_handcuff_fail = 'Neúspěšný pokus o odemknutí pout!',
    lockpick_broke = 'Zlomený zámek',
    lockpick_broke_desc = 'Váš zámek se zlomil!',
    grant_license = 'Vydat zbrojní průkaz',
    grant_license_desc = 'Vydat zbrojní průkaz osobě poblíž',
    player_id = 'ID hráče:',
    select_player = 'Vybrat osobu',
    license_granted = 'Licence udělena',
    license_granted_desc = 'Vydali jste zbrojní průkaz %s (%s)',
    license_alr_granted = 'Tato osoba již má licenci!',
    weapon_license = 'Zbrojní průkaz',
    weapon_license_desc = 'Právě vám byl vydán zbrojní průkaz.',

    in_vehicle = 'Ve vozidle',
    in_vehicle_desc = 'Nemůžete zatknout podezřelého, když je ve vozidle!',
}
