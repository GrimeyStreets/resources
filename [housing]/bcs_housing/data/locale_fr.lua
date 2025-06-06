Locale = {
    -- Général
    ['system'] = 'Système',
    ['housing'] = 'Logement',
    ['no'] = 'Non',
    ['yes'] = 'Oui',
    ['are_you_sure'] = "Êtes-vous sûr(e) ?",
    ['not_owned'] = "Not Owned",

    -- # Notifications
    ['bought_home'] = 'Vous avez acheté %s pour %s $',
    ['given_home'] = 'Vous avez reçu le logement %s',
    ['home_revoked'] = 'Vous avez révoqué %s du propriétaire',
    ['home_extended'] = 'Votre maison a été étendue',


    -- # Error Messages
    ['not_enough_money'] = "Vous n'avez pas assez de %s $",
    ['too_much_property'] = "Vous avez plus que la limite de propriétés!",
    ['not_owned_home'] = "Vous n'êtes pas le propriétaire de ce logement!",
    ['error_create_home'] = "Erreur lors de la création du logement",
    ['not_inside_home'] = "Action impossible, vous n'êtes pas à l'intérieur de votre logement!",
    ['not_inside_MLO'] = "Pas à l'intérieur d'un MLO",
    ['no_owned_house'] = "Vous ne possédez aucune maison!",
    ['not_enough_item'] = "Vous n'avez pas assez de %s",
    ['invalid_input'] = "Entrée invalide!",
    ['invalid_home'] = "Ce logement n'existe pas!",
    ['target_offline'] = "Le citoyen n'est pas en ville!",


    -- # Prompts
    ["prompt_buy_home"] = "Appuyez sur ~E~ pour acheter une maison",
    ["prompt_enter_home"] = "Appuyez sur ~E~ pour entrer dans la maison",
    ["prompt_home_menu"] = "Appuyez sur ~E~ pour ouvrir le menu",
    ["prompt_open_garage"] = "Appuyez sur ~E~ pour ouvrir le garage",
    ["prompt_store_vehicle"] = "Appuyez sur ~E~ pour ranger le véhicule",
    ["prompt_open_wardrobe"] = "Appuyez sur ~E~ pour ouvrir la garde-robe",
    ["prompt_open_storage"] = "Appuyez sur ~E~ pour ouvrir le stockage",
    ["prompt_flat_menu"] = "Appuyez sur ~E~ pour ouvrir le menu de l'appartement",
    ["prompt_apartment_menu"] = "Appuyez sur ~E~ pour ouvrir le menu de l'appartement",
    ["prompt_vehicle_spawn_point"] =
    "Appuyez sur ~E~ pour ajouter, Appuyez sur ~X~ pour annuler, ← → pour faire pivoter l'orientation du véhicule",
    ["prompt_title"] = "Appuyez sur ~E~ pour définir %s",
    ["prompt_bossmenu"] = "Appuyez sur ~E~ pour ouvrir le menu du patron",
    ['prompt_screenshot_furniture'] =
    'Press ~E~ to Confirm<br>← → to rotate<br>↑ ↓ to zoom in/out<br>~H~ to flip<br>~SCROLL~ up/down camera',

    -- Creation
    -- # Prompts
    ["garage"] = "Garage",
    ["entrance"] = "Entrance",
    ["choose"] = "Choose",
    ["prompt_create_shell"] = [[Shell: %s<br>
    Étape: %s | %s<br>
    ~ENTRÉE~ pour confirmer la maison<br>
    ~RETOUR ARRIÈRE~ pour annuler<br>
    ~Q~ ~E~ pour faire pivoter<br>
    ~R~ ~F~ pour ajuster la hauteur<br>
    ~W~ ~A~ ~S~ ~D~ pour déplacer la coque<br>
    ~CTRL~ ~MOLETTE~ pour changer les coques<br>
    ~MAJ~ ~MOLETTE~ pour zoomer avant/arrière
    ]],

    -- # Erreur
    ["canceled_house"] = "Vous avez annulé la création de la maison",
    ["house_created"] = "Maison créée avec succès",

    -- # Garage
    ["spawn_point_added"] = "Point d'apparition du véhicule ajouté",
    ["garage_canceled"] = "Création du garage annulée",

    -- Gérer la maison
    ["home_sold"] = "Votre maison a été vendue pour %s $",
    ["home_cannot_be_sold"] = "Le gouvernement n'achète actuellement aucune maison !",
    ["home_locked"] = "Maison verrouillée",
    ["home_unlocked"] = "Maison déverrouillée",
    ["successfully_renamed"] = "Vous avez renommé votre maison en %s avec succès",

    -- # Transfert
    ["transfer"] = "Transférer la propriété",
    ["transfer_desc"] = "Entrez l'identifiant du citoyen cible",
    ["transfer_success"] = "La maison a été transférée à %s avec succès",
    ["transfer_to_you"] = "La maison a été transférée de %s avec succès",

    -- # Erreur
    ["not_allowed"] = "Vous n'avez pas assez de permissions pour faire cela !",
    ["not_allowed_to_sell"] = "Cette maison ne peut pas être vendue par vous !",
    ["not_allowed_to_transfer"] = "Cette maison ne peut pas être transférée par vous !",
    ["not_allowed_to_doorlock"] = "Vous ne pouvez pas créer un verrou de porte vous-même !",
    ["not_allowed_to_movegarage"] = "Vous ne pouvez pas déplacer le garage vous-même !",
    ["rename_not_allowed"] = "Vous n'êtes pas autorisé à renommer cette maison",

    -- Admin / Commandes immobilières
    -- # Gérer
    ["home_deleted"] = "La maison %s a été supprimée",

    -- # Erreur
    ["going_too_far"] = "Aller trop loin",
    ["not_near_any_home"] = "Pas près de n'importe quelle maison !",
    ["house_fee_not_enough"] = "Fonds de l'agence immobilière insuffisants ! Les frais de création sont de %s $",

    -- Création de l'appartement
    ["flat_name"] = "Nom de l'appartement",
    ["flat_complex_name"] = "Nom du complexe d'appartements",
    ["use_existing"] = "Voulez-vous ajouter cette pièce à l'appartement %s ?",
    ["apt_not_found"] = "L'appartement %s n'a pas été trouvé ! Assurez-vous que le nom est le même !",
    ["open_flat_menu"] = "Ouvrir le menu de l'appartement",

    -- CCTV
    ["keybind_cctv_move"] = "Déplacer la caméra de surveillance",
    ["keybind_cctv_save"] = "Enregistrer la rotation de la caméra de surveillance",
    ["keybind_cctv_exit"] = "Quitter la caméra de surveillance",
    ["keybind_cctv_zoom"] = "Zoom avant/arrière",
    ["prompt_cctv_keybinds"] =
    "~BACKSPACE~ pour quitter<br>~W~ ~A~ ~S~ ~D~ pour déplacer<br>~MOLETTE~ pour zoomer avant/arrière<br>~→~ Caméra suivante",
    ["prompt_cctv_preview_keybinds"] =
    "~BACKSPACE~ pour quitter<br>~W~ ~A~ ~S~ ~D~ pour déplacer<br>~ENTER~ pour enregistrer la rotation",
    ["setup_cctv_heading"] = "Veuillez configurer la rotation de la caméra de surveillance",
    ["cctv_rotation_saved"] = "Rotation de la caméra enregistrée, vous pouvez quitter la configuration.",

    -- Message du téléphone
    ["rent_overdue_title"] = "Loyer en retard",
    ["rent_removed_title"] = "Loyer supprimé en raison de loyers impayés",
    ["mortgage_overdue_title"] = "Prêt hypothécaire en retard",
    ["your_house_removed"] = "Votre maison a été supprimée en raison d'un prêt hypothécaire impayé",
    ["house_bought"] = "Propriété %s achetée",
    ["house_detail"] = "Vous avez acheté la propriété %s pour le prix de %s $",
    ["rent_paid"] = "Loyer payé %s",
    ["rent_detail"] = "Vous avez payé votre loyer %s pour %s $",


    -- Rappel de loyer
    ["pay_your_rent"] = "Vous avez un loyer à payer !",
    ["your_rent_removed"] = "Votre loyer vous a été retiré !",
    ["not_enough_money_rent"] = "Vous n'avez pas assez d'argent pour payer le loyer !",
    ["auto_paid_rent"] = "Vous avez payé votre loyer pour %s $",
    ["rent_not_needed"] = "Vous n'avez pas besoin de payer le loyer pour le moment",
    ["rent_due_time"] = "Vous pouvez payer votre loyer dans %s jour(s) à partir d'aujourd'hui",

    -- Système de clés
    ["key_created_successfully"] = "La clé %s a été créée avec succès",
    ["key_creation_error"] = "Une erreur s'est produite lors de la création de la clé",
    ["key_deleted_successfully"] = "La clé %s a été supprimée avec succès",
    ["key_deletion_error"] = "Une erreur s'est produite lors de la suppression de la clé",

    ["key_given_successfully"] = "La clé %s a été donnée à %s avec succès",
    ["key_give_error"] = "Une erreur s'est produite lors de la remise de la clé",
    ["key_removed_successfully"] = "La clé a été retirée de la personne avec succès",
    ["key_removal_error"] = "Une erreur s'est produite lors de la suppression de la clé",

    ["key_exists_in_holder"] =
    "La clé existe toujours chez l'un des propriétaires ! Veuillez les retirer avant de supprimer la clé",

    -- Système de portes
    ["command_lock"] = "Verrouiller / Déverrouiller la porte",
    ["door_deleted"] = "La porte a été supprimée avec succès",
    ["door_added"] = "La porte a été ajoutée avec succès",

    -- # Invites
    ["prompt_add_door"] = "~LMB~ pour ajouter la porte  \n ~RMB~ pour annuler",
    ["prompt_delete_door"] = "Appuyez sur ~E~ pour supprimer la porte  \n Appuyez sur ~X~ pour annuler",
    ["prompt_lock_door"] = "Appuyez sur ~E~ pour verrouiller la porte",
    ["prompt_unlock_door"] = "Appuyez sur ~E~ pour déverrouiller la porte",

    -- # Erreur
    ["incorrect_home"] = "Vous n'êtes pas dans la même maison que la maison cible !",
    ["door_no_permission"] = "Vous n'avez pas l'autorisation d'interagir avec cette porte",
    ["door_exist"] = "La porte existe déjà",
    ["unable_to_interact_door"] = "Vous ne pouvez pas interagir avec cette porte",
    ["error_duplicate_door_name"] = "Vous ne pouvez pas créer de nom de porte en double !",
    ["failed_lockpick"] = "Vous avez échoué à crocheter la serrure de la porte !",
    ["not_near_any_door"] = "Il n'y a aucune porte à proximité !",

    -- Prêts hypothécaires
    ["mortgage_paid"] = "Vous avez payé votre prêt hypothécaire pour %s $",
    ["mortgage_paid_all"] = "Vous avez payé la totalité de votre prêt hypothécaire restant pour %s $",
    ["not_mortgage_time"] = "Il n'est pas encore temps de payer le prêt hypothécaire",
    ["no_mortgage"] = "Vous n'avez aucun prêt hypothécaire à payer !",
    ['mortgage_chosen'] = 'Successfully chosen and paid mortgage downpayment',
    ['ongoing_mortgage_cannot_be_edited'] = 'You cannot change the mortage because there is an ongoing mortgage!',

    -- Stockage
    ["storage_added"] = "Emplacement de stockage ajouté avec succès",
    ["storage_update"] = "Emplacement de stockage mis à jour avec succès",
    ["saved_storage"] = "Emplacement de stockage défini avec succès",


    -- # Invites
    ["prompt_add_storage"] = "Appuyez sur ~E~ pour définir le stockage  \n Appuyez sur ~X~ pour annuler",

    -- # Messages d'erreur
    ["storage_max_exceeded"] = "Vous ne pouvez pas ajouter plus de stockage !",
    ["storage_deleted"] = "Stockage supprimé avec succès",

    -- Mobilier
    ["furniture_stored"] = "Le mobilier a été stocké dans votre inventaire !",
    ["bought_furniture"] = "Vous avez acheté %s pour %s $",
    ["furniture_placed"] = "Vous avez placé le mobilier",
    ["sell_furniture"] = "Vendre du mobilier",
    ["sell_furniture_success"] = "Vous avez vendu votre mobilier pour %s $",

    -- # Messages d'erreur
    ["furniture_not_found"] = "Le mobilier n'a pas été trouvé !",
    ["sell_furniture_failed"] = "Une erreur s'est produite lors de la vente de votre mobilier",

    -- # Invites
    ["prompt_furniture"] = "Appuyez sur ~E~ pour ouvrir le magasin de meubles !",
    ["prompt_furnitureshop"] = "~BACKSPACE~ pour quitter<br>~,~ ~.~ pour faire pivoter",
    ["prompt_furnish"] = [[
    Mode actuel : %s<br>
    ~E~ placer le mobilier<br>
    ~BACKSPACE~ pour annuler<br>
    ~G~ Mode Gizmo<br>
    ~R~ Rotation Gizmo<br>
    ~Z~ Déplacement Gizmo<br>
    ~P~ Mode précis<br>
    ~H~ Mode rayon / Quitter Gizmo<br>
    ]],
    ["prompt_furnish_precise"] = [[
    Mode actuel : Précis<br>
    ~E~ placer le mobilier<br>
    ~BACKSPACE~ pour annuler<br>
    ~←~ ~→~ Gauche/Droite<br>
    ~↑~ ~↓~ Avant/Arrière<br>
    ~Shift~ ~Flèches~ Tangage, lacet, roulis<br>
    ~SCROLL~ Changer de hauteur<br>
    ~Z~ Mettre l'objet au sol<br>
    ~,~ ~.~ pour faire pivoter<br>
    ~CAPSLOCK~ ~TAB~ changer la vitesse<br>
    ~`~ téléporter l'objet vers vous<br>
    ~G~ Mode Gizmo<br>
    ~H~ Mode rayon<br>
    ]],


    -- Zone
    ["area_created"] = "Zone créée avec succès",
    ["point_added"] = "Point ajouté",
    ["mode_changed"] = "Mode de déplacement modifié",

    -- # Invites
    ["prompt_create_mlo"] = [[
    ~X~ pour annuler<br>
    ~G~ pour ajouter plus de points<br>
    ~R~ Changer de mode<br>
    Maintenir ~SHIFT~ Faire défiler vers le haut/vers le bas la hauteur<br>
    Maintenir ~ALT~ Faire défiler vers le haut/vers le bas le placement Z<br>
    ~W~ ~A~ ~S~ ~D~ Mouvement de la caméra<br>
    ~Shift~ ~Alt~ Déplacement rapide/lent de la caméra<br>
    ~Q~ ~E~ Caméra haut/bas<br>
    ~ENTER~ pour terminer la création
    ]],
    ["prompt_create_mlo_precise"] = [[
    ~X~ pour annuler<br>
    ~G~ pour ajouter plus de points<br>
    ~R~ Changer de mode<br>
    ~Scroll~ Haut/Bas changer l'étape : %s<br>
    Maintenir ~SHIFT~ Faire défiler vers le haut/vers le bas la hauteur<br>
    Maintenir ~ALT~ Faire défiler vers le haut/vers le bas le placement Z<br>
    ~←~ ~→~ ~↑~ ~↓~ Déplacer le point<br>
    ~W~ ~A~ ~S~ ~D~ Mouvement de la caméra<br>
    ~Shift~ ~Alt~ Déplacement rapide/lent de la caméra<br>
    ~Q~ ~E~ Caméra haut/bas<br>
    ~ENTER~ pour terminer la création
    ]],

    -- # Erreur
    ["canceled_area"] = "Vous avez annulé la création de la zone",
    ["point_too_far"] = "Le point de la zone est trop éloigné de l'entrée !",
    ["point_too_few"] = "Vous devez ajouter au moins 3 points !",

    -- Cambriolage
    ["robbery"] = "Cambriolage",
    ["house_robbery"] = "Cambriolage de maison",
    ["house_lockpicked"] = "Votre maison %s est en cours de cambriolage !",
    ["house_entered_by_anon"] = "Quelqu'un est entré dans votre maison %s !",
    ["house_raided"] = "Vous avez cambriolé la maison !",
    ["not_enough_police"] = "Vous ne pouvez pas cambrioler une maison en ce moment !",
    ["robbery_in_progress"] = "Un cambriolage de maison est en cours dans la maison de %s",

    -- Knock
    ["no_one_inside"] = "Il n'y a personne à l'intérieur de la maison",
    ["someone_is_knocking"] = "Quelqu'un frappe de l'extérieur",
    ["door_opened_for_you"] = "La porte a été ouverte par le propriétaire",

    -- Garde-robe
    ["saved_wardrobe"] = "Emplacement de la garde-robe défini avec succès",
    ["prompt_add_wardrobe"] = "Appuyez sur ~E~ pour définir la garde-robe  \n Appuyez sur ~X~ pour annuler",

    ["wardrobe"] = "Garde-robe",
    ["outfit_name"] = "Nom de la tenue",
    ["outfit_desc"] = "Enregistrez le nom de votre tenue",
    ["change_description"] = "Changer pour votre tenue",
    ["delete_description"] = "Supprimer votre tenue",
    ["delete_outfit"] = "Supprimer la tenue",
    ["change_outfit"] = "Changer de tenue",
    ["save_outfit"] = "Enregistrer la tenue",
    ["saved_outfit"] = "La tenue a été enregistrée avec succès",
    ["deleted_outfit"] = "La tenue a été supprimée",
    ["loaded_outfit"] = "La tenue a été utilisée",

    -- Journal Discord
    ["log_lockpick_title"] = "Alerte de crochetage",
    ["log_lockpick_message"] = "**Maison**: %s\n**Propriétaire**: %s\n**Crocheteur**: %s (%s)\nLa maison a été crochetée",
    ["log_nonowner_enter_title"] = "Entrée de non-propriétaire",
    ["log_nonowner_enter_msg"] =
    "**Maison**: %s\n**Propriétaire**: %s\n**Non-propriétaire**: %s (%s)\nCette personne est entrée dans la maison en tant que non-propriétaire",


    -- Verrouillage de la maison
    ['log_house_revoked'] = "House Revoked",
    ['log_house_revoked_inactivity'] = 'House %s (%s) has been revoked for inactivity %s',

    ["log_house_locked"] = "Maison verrouillée",
    ["log_house_locked_msg"] = "**Maison**: %s\n**Verrouillée par**: %s (%s)",
    ["log_house_unlocked"] = "Maison déverrouillée",
    ["log_house_unlocked_msg"] = "**Maison**: %s\n**Déverrouillée par**: %s (%s)",

    -- Clé dupliquée
    ["log_duplicated_key"] = "Clé de maison dupliquée",
    ["log_duplicated_key_msg"] = "**Maison**: %s\n**Propriétaire**: %s",
    ["log_deleted_key"] = "Clé de maison supprimée",
    ["log_deleted_key_msg"] = "**Maison**: %s\n**Propriétaire**: %s",
    ["log_gave_key"] = "Clé de maison donnée",
    ["log_gave_key_msg"] = "**Maison**: %s\n**Propriétaire**: %s\n**Donnée à**: %s (%s)",
    ["log_removed_key"] = "Clé de maison supprimée",
    ["log_removed_key_msg"] = "**Maison**: %s\n**Propriétaire**: %s\n**Supprimée de**: %s (%s)",

    -- Entrée CCTV
    ["log_enter_cctv_success"] = "Entrée dans la CCTV",
    ["log_enter_cctv_success_msg"] = "**Maison**: %s\n**Joueur**: %s (%s)",
    ["log_enter_cctv_failed"] = "Tentative d'entrée dans la CCTV",
    ["log_enter_cctv_failed_msg"] = "**Maison**: %s\n**Joueur**: %s (%s)\n**ENTRÉE ILLÉGALE (TRICHERIE POSSIBLE)**",
    ["log_leave_cctv"] = "Sortie de la CCTV",
    ["log_leave_cctv_msg"] = "**Maison**: %s\n**Joueur**: %s (%s)",

    -- Joueur entre dans la maison
    ["log_player_enter_home"] = "Joueur entre dans la maison",
    ["log_player_enter_home_msg"] = "**Maison**: %s\n**Joueur**: %s (%s)",
    ["log_player_left_home"] = "Joueur quitte la maison",
    ["log_player_left_home_msg"] = "**Maison**: %s\n**Joueur**: %s (%s)",

    -- Maison créée
    ["log_house_created"] = "Maison créée",
    ["log_house_created_msg"] = "**ID**: %s\n**Nom**: %s\n**Prix**: %s\n**Type**: %s\n**Créée par**: %s (%s)",
    ["log_house_deleted"] = "Maison supprimée",
    ["log_house_deleted_msg"] = "**Maison**: %s\n**Supprimée par**: %s (%s)\nJoueur a supprimé la maison",

    -- Maison expirée
    ["log_house_expired"] = "Maison expirée",
    ["log_house_expired_msg"] = "**Maison**: %s\nLa maison a été révoquée de **%s**",
    ["log_house_given"] = "Maison donnée",
    ["log_house_given_msg"] = "**Maison**: %s\n**Donnée par**: %s (%s)\n**Donnée à**: %s (%s)\nJoueur a donné la maison",
    ["log_house_extended"] = "Maison prolongée",
    ["log_house_extended_msg"] = "**Maison**: %s\nLa maison a été prolongée jusqu'à **%s**",
    ["log_bought_house"] = "Maison achetée",
    ["log_bought_house_msg"] = "**Maison**: %s\n**Prix**: %s\n**Achetée par**: %s (%s)\nJoueur a acheté la maison",
    ["log_sold_house"] = "Maison vendue",
    ["log_sold_house_msg"] = "**Maison**: %s\n**Argent retourné**: %s\n**Vendue par**: %s (%s)\nJoueur a vendu la maison",
    ["log_transferred_house"] = "Transfert de propriété de la maison",
    ["log_transferred_house_msg"] =
    "**Maison**: %s\n**Propriétaire précédent**: %s (%s) | **Nouveau propriétaire**: %s (%s)",

    -- Porte de maison
    ["log_door_deleted"] = "Porte de maison supprimée",
    ["log_door_deleted_msg"] = "**Maison**: %s\n**Par**: %s(%s)\nPorte de maison supprimée",
    ["log_door_added"] = "Porte de maison ajoutée",
    ["log_door_added_msg"] = "**Maison**: %s\n**Type**: %s\n**Par**: %s (%s)\nPorte de maison ajoutée",

    -- Achat de meubles
    ["log_buy_furniture"] = "Meubles achetés",
    ["log_buy_furniture_msg"] =
    "**Joueur**: %s (%s)\n**Catégorie**: %s\n**Étiquette**: %s\n**Modèle**: %s\n**Prix**: %s\nJoueur a acheté des meubles",
    ["log_placed_furniture"] = "Meubles placés",
    ["log_placed_furniture_msg"] =
    "**Joueur**: %s (%s)\n**Maison**: %s\n**Catégorie**: %s\n**Étiquette**: %s\n**Modèle**: %s\nJoueur a placé des meubles",
    ["log_sold_furniture"] = "Meubles vendus",
    ["log_sold_furniture_msg"] =
    "**Joueur**: %s (%s)\n**Catégorie**: %s\n**Étiquette**: %s\n**Modèle**: %s\n**Prix**: %s\nJoueur a vendu des meubles",
    ["log_stored_furniture"] = "Meubles stockés",
    ["log_stored_furniture_msg"] =
    "**Joueur**: %s (%s)\n**Maison**: %s\n**Catégorie**: %s\n**Étiquette**: %s\n**Modèle**: %s\nJoueur a stocké des meubles",

    -- Choix du plan de prêt hypothécaire
    ["log_choose_plan"] = "Plan de prêt hypothécaire choisi",
    ["log_choose_plan_msg"] =
    "**Maison**: %s\n**Acompte**: %s\n**Plan**: Intérêt **%s**, durée **%s**, type **%s**, résultat **%s**\n**Joueur**: %s (%s)",
    ["log_paid_remaining_mortgages"] = "Remboursement du prêt hypothécaire restant",
    ["log_paid_remaining_mortgages_msg"] =
    "**Maison**: %s\n**Paiement restant**: %s\n**Payé par**: %s (%s)\nPaiement du prêt hypothécaire restant",
    ["log_paid_mortgage"] = "Prêt hypothécaire payé",
    ["log_paid_mortgage_msg"] =
    "**Maison**: %s\n**Payé**: %s\n**Restant**: %s\n**Payé par**: %s (%s)\nPaiement du prêt hypothécaire",
    ["log_auto_remove_mortgage"] = "Suppression automatique du prêt hypothécaire non payé",
    ["log_auto_remove_mortgage_msg"] = "**Maison**: %s\n**Était possédé par**: %s",
    ["log_return_mortgage_money"] = "Argent du prêt hypothécaire retourné",
    ["log_return_mortgage_money_msg"] = "**Maison**: %s\n**Argent retourné**: %s\n**À**: %s",

    -- Paiement de loyer
    ["log_paid_rent"] = "Loyer payé",
    ["log_paid_rent_msg"] = "**Maison**: %s\n**Payé**: %s\n**Payé par**: %s (%s)\nPaiement du loyer",
    ["log_auto_remove_rent"] = "Suppression automatique du loyer expiré",
    ["log_auto_remove_rent_msg"] = "**Maison**: %s\n**Était possédé par**: %s",


    -- Instructions pour les raccourcis clavier si vous utilisez bcs_hud
    -- Titres des raccourcis clavier BCS HUD
    ["polyzone_creation"] = "Création de polyzone",
    ["cctv_controls"] = "Contrôles CCTV",
    ["cctv_setup_controls"] = "Contrôles de configuration CCTV",

    -- Description des raccourcis clavier
    ["keybind_add_to_near_apt"] = "Ajouter au flat le plus proche",
    ["keybind_create_new_apt"] = "Créer un nouveau flat",

    ["keybind_cancel"] = "Annuler",
    ["keybind_finish"] = "Terminer",
    ["keybind_add_point"] = "Ajouter plus de points",
    ["keybind_change_z"] = "Changer Z max/min",
    ["keybind_move_point"] = "Déplacer le point",
    ["keybind_noclip"] = "Déplacement en mode noclip",
    ["keybind_noclip_updown"] = "Déplacer vers le haut/vers le bas",
    ["keybind_noclip_speed"] = "Vitesse en mode noclip (Maintenir)",
    ["keybind_crease_height"] = "Augmenter/diminuer la hauteur de la zone",
    ['keybind_z_placement'] = 'Z placement',
    ['keybind_change_mode'] = 'Change mode',

    ["keybind_quit"] = "Quitter",
    ["keybind_rotate"] = "Rotation des meubles",

    ["keybind_place_furniture"] = "Placer les meubles",
    ["keybind_mode_gizmo"] = "Activer le mode Gizmo",
    ["keybind_mode_gizmo_rotate"] = "Mode rotation du Gizmo",
    ["keybind_mode_gizmo_move"] = "Mode déplacement du Gizmo",
    ["keybind_mode_raycast"] = "Raycast de déplacement / Sortie du Gizmo",

    ["keybind_confirm_house"] = "Confirmer la maison",
    ["keybind_adjust_height"] = "Ajuster la hauteur de placement",
    ["keybind_move_shell"] = "Déplacer la coquille",
    ["keybind_change_shell"] = "Changer de coquille",
    ["keybind_zoom"] = "Zoom avant/arrière",

    -- Configuration
    ["config_updated_successfully"] = "La configuration de la maison a été mise à jour avec succès",
    ["config_update_error"] = "Une erreur est survenue lors de l'édition de la configuration de la maison",

    -- Menus associés
    ["house_menu"] = "Menu de la maison",
    ["apartment_menu"] = "Menu de l'appartement",
    ["house_manager_menu"] = "Menu du gestionnaire de la maison",
    ["house_entrance_menu"] = "Menu de l'entrée de la maison",
    ["flat_entrance_menu"] = "Menu de l'entrée du flat",
    ["owned_flat_filter"] = "Filtre des flats possédés",
    ["owned_flat_entrance_menu"] = "Menu de l'entrée du flat possédé",
    ["exit_house"] = "Quitter la maison",
    ["manage_house"] = "Gérer la maison",


    -- # Entrée
    ['enter_home'] = "Entrer dans la maison",
    ['buy_home'] = 'Acheter une maison',
    ['rent_home'] = 'Louer une maison',
    ['buy_apartment'] = 'Acheter un appartement',
    ['rent_apartment'] = "Louer un appartement",
    ['preview_home'] = 'Aperçu de la maison',
    ['lockpick_home'] = 'Crocheter la serrure de la maison',
    ['lockpick_home_body'] = 'Crocheter la porte de la maison pour la déverrouiller',
    ['raid_home'] = 'Faire un raid sur la maison',
    ['raid_home_body'] = "Forcer l'entrée dans la maison en tant que policier",
    ['knock_door'] = 'Frapper à la porte',
    ['unlock_home'] = 'Déverrouiller la maison',
    ['lock_home'] = 'Verrouiller la maison',
    ['lock_home_body'] = 'Verrouiller/déverrouiller la porte de la maison',
    ['sell_home'] = 'Vendre la maison',
    ['sell_home_body'] = 'Vendre votre maison',
    ['confirmation_sell_home'] = 'Vendre la maison',
    ['transfer_home'] = 'Transférer la maison',
    ['transfer_home_body'] = 'Transférer votre maison à un autre citoyen',

    -- Gestion
    ['furnish_home'] = 'Meubler la maison',
    ['furnish_home_body'] = 'Ajouter vos meubles de maison',
    ['edit_furniture'] = 'Éditer les meubles',
    ['edit_furniture_body'] = 'Arranger vos meubles',
    ['pay_mortgage'] = "Payer l'hypothèque",
    ['pay_mortgage_body'] = 'Payer votre facture mensuelle',
    ['pay_rent'] = 'Payer le loyer',
    ['pay_rent_body'] = 'Payer votre loyer mensuel',
    ['check_rent'] = 'Vérifier le loyer',
    ['check_rent_due'] = "Vérifier quand est la prochaine date d'échéance pour le loyer",

}

UILocale = {
    ["currency"] = "USD", -- if you want usd change it to USD, list can be found here https=--www.iban.com/currency-codes

    -- Général
    ["cancel"] = "Annuler",
    ["submit"] = "Soumettre",
    ["price"] = "Prix",
    ["type"] = "Type",
    ["enable"] = "Activer",
    ["action"] = "Action",
    ["sell"] = "Vendre",
    ["no_results"] = "Aucun résultat.",
    ["previous"] = "Précédent",
    ["next"] = "Suivant",
    ["name"] = "Nom",
    ["no"] = "Non",
    ["yes"] = "Oui",
    ["are_you_sure"] = "Êtes-vous sûr?",
    ["weight"] = "Poids",
    ["slots"] = "Emplacements",
    ["create"] = "Créer",
    ['create_set'] = 'Create + Set',
    ['add'] = 'Add',

    -- Gestion de la maison
    ["identifier"] = "Identifiant",
    ["status"] = "Statut",
    ["house_configuration"] = "Configuration de la maison",
    ["house_doors"] = "Portes de la maison",
    ["house_storages"] = "Espaces de rangement de la maison",
    ["house_wardrobes"] = "Armoires de la maison",
    ["level"] = "Niveau",
    ["rent"] = "Loyer",
    ["pay_rent"] = "Payer le loyer",
    ["view_cctv"] = "Voir les caméras de surveillance",
    ["pay_mortgage"] = "Payer l'hypothèque",
    ["transfer_home_ownership"] = "Transférer la propriété de la maison",
    ["transfer"] = "Transférer",
    ["rename_house"] = "Renommer la maison",
    ["wardrobe_placeholder"] = "Nom de l'armoire",

    -- Clés
    -- # Titulaires
    ["give_key"] = "Donner une clé",
    ["citizen_id"] = "Identifiant du citoyen",
    ["citizen_id_placeholder"] = "Sélectionnez un citoyen",
    ["key_name"] = "Nom de la clé",
    ["key_placeholder"] = "Sélectionnez une clé",
    ["add_key"] = "Ajouter une clé",
    -- # Liste
    ["permissions"] = "Permissions",
    ["permissions_desc"] = "Définir la liste des permissions de la clé",
    ["key_list_caption"] = "Liste des clés",

    -- Créer un espace de rangement
    ["create_storage"] = "Créer un espace de rangement",

    -- Créer une maison
    -- # Onglets
    ["main"] = "Principal",
    ["configuration"] = "Configuration",
    ["mortgage"] = "Hypothèque",

    -- # Principal
    ["house_name"] = "Nom de la maison",
    ["house_name_placeholder"] = "Tapez un nom de maison",
    ["type_placeholder"] = "Sélectionnez un type",
    ["interior"] = "Intérieur",
    ["interior_placeholder"] = "Sélectionnez un intérieur",
    ["complex"] = "Complexe",
    ["complex_placeholder"] = "Sélectionnez un complexe",
    ["payment"] = "Paiement",
    ["payment_placeholder"] = "Sélectionnez un mode de paiement",
    ["expiry"] = "Expiration (Jours)",
    ["expiry_desc"] = "Cela déterminera la durée après l'achat, le propriétaire sera révoqué",

    -- # Hypothèque
    ["downpayment"] = "Paiement initial",
    ["add_mortgage"] = "Ajouter une hypothèque",
    ["mortgage_caption"] = "Options de plans d'hypothèque.",

    -- ## Tableau d'hypothèque
    ["duration"] = "Durée",
    ["duration_type"] = "Type de durée",
    ["interest"] = "Intérêt",
    ["total"] = "Total",
    ["duration_placeholder"] = "Sélectionnez le type de durée",

    -- # Permission
    ["owner_permissions"] = "Permissions du propriétaire",
    ["transfer_owner"] = "Transférer le propriétaire",
    ["move_garage"] = "Déplacer le garage",
    ["manage_doorlocks"] = "Gérer les verrous de porte",

    -- # Configuration
    ["max_storages"] = "Nombre maximal d'espaces de rangement",
    ["max_wardrobes"] = "Nombre maximal d'armoires",
    ["max_keys"] = "Nombre maximal de clés",
    ["garages"] = "Garages",
    ["cctv"] = "CCTV",
    ["rename"] = "Renommer",

    ["disable_buy"] = "Désactiver l'achat",
    ["disable_buy_desc"] = "Désactiver l'achat et ne peut être acheté que via Tebex ou une commande personnalisée",

    -- Magasin de meubles
    ["furnitures"] = "Meubles",
    ["buy_furniture"] = "Acheter des meubles",
    ["sell_furniture"] = "Vendre des meubles",

    -- Page d'achat de maison
    ["buy_now"] = "Acheter maintenant",
    ["rent_now"] = "Louer maintenant",
    ["choose"] = "Choisir",

    -- Statut de l'hypothèque
    ["mortgage_status"] = "État de l'hypothèque",
    ["remaining_payments"] = "Paiements restants",
    ["last_payment"] = "Dernier paiement le",
    ["next_payment"] = "Prochain paiement le",
    ["pay"] = "PAYER",
    ["pay_all"] = "TOUT PAYER",
}
