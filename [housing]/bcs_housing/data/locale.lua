Locale = {
    -- General
    ['system'] = 'System',
    ['housing'] = 'Housing',
    ['realestate'] = 'Real Estate',
    ['no'] = 'No',
    ['yes'] = 'Yes',
    ['are_you_sure'] = "Are you sure?",
    ['exit_preview_catalogue'] = "Exit Preview Catalogue",
    ['open_catalogue'] = 'Open Catalogue',
    ['not_owned'] = "Not Owned",

    ['title'] = 'Title',
    ['subtitle'] = 'Subtitle',
    ['content'] = 'Content',
    ['description'] = 'Description',
    ['footer'] = 'Footer',
    ['name'] = 'Name',
    ['type'] = 'Type',
    ['confirm'] = 'Confirm',
    ['confirm_change'] = 'Confirm the changes',

    -- # Notifications
    ['bought_home'] = 'You purchased %s for $%s',
    ['given_home'] = 'You have been given %s property',
    ['home_revoked'] = 'You have revoked %s from the owner',
    ['home_extended'] = 'Your house has been extended',
    ['redeemed_house'] = 'You have redeemed house %s successfully!',

    -- # Error Messages
    ['not_enough_money'] = "You don't have $%s",
    ['too_much_property'] = 'You have more than the house ownership limit!',
    ['not_owned_home'] = 'You are not the owner of this home!',
    ['error_create_home'] = 'Error while creating home',
    ['not_inside_home'] = 'Action impossible, it is not inside your home!',
    ['not_inside_MLO'] = 'Not inside any MLO',
    ['no_owned_house'] = 'You do not own any house!',
    ['not_enough_item'] = 'You do not have enough %s',
    ['invalid_input'] = 'Invalid input!',
    ['invalid_home'] = 'Home does not exists!',
    ['target_offline'] = 'Citizen is not in the city!',
    ['max_keys_exceeded'] = 'Maximum amount of keys shared exceeded',
    ['temporarily_unavailable'] = 'Temporarily unavailable',
    ['interior_not_found'] = 'There is no interior of this type!',
    ['an_error_has_occured'] = 'An unexpected error has occured!',
    ['action_cannot_inside'] = 'You cannot do this inside a house!',

    -- # Prompts
    ['prompt_buy_home'] = 'Press ~E~ to buy home',
    ['prompt_enter_home'] = 'Press ~E~ to enter home',
    ['prompt_exit_home'] = 'Press ~E~ to exit home',
    ['prompt_home_menu'] = 'Press ~E~ to open menu',
    ['prompt_open_garage'] = 'Press ~E~ to open garage',
    ['prompt_store_vehicle'] = 'Press ~E~ to store vehicle',
    ['prompt_open_wardrobe'] = 'Press ~E~ to open wardrobe',
    ['prompt_open_storage'] = 'Press ~E~ to open storage',
    ['prompt_flat_menu'] = 'Press ~E~ to open flat menu',
    ['prompt_apartment_menu'] = 'Press ~E~ to open apartment menu',
    ['prompt_vehicle_spawn_point'] = 'Press ~E~ to add, Press ~X~ to cancel, ← → to rotate vehicle heading',
    ['prompt_title'] = 'Press ~E~ to set %s',
    ['prompt_bossmenu'] = 'Press ~E~ to open boss menu',
    ['prompt_screenshot_interior'] = 'Press ~H~ to screenshot the interior',
    ['prompt_manage_sign'] = 'Press ~E~ to edit sign, Press ~G~ to delete sign',
    ['prompt_open_catalogue'] = 'Press ~E~ to open the catalogue',
    ['prompt_screenshot_furniture'] =
    'Press ~E~ to Confirm<br>← → to rotate<br>↑ ↓ to zoom in/out<br>~H~ to flip<br>~SCROLL~ up/down camera',

    -- Signboard
    ['signboard'] = 'Signboard',
    ['prompt_sign_placement'] = 'Press ~E~ to place, Press ~X~ to cancel, ← → to rotate sign',
    ['edit_sign'] = 'Edit sign',
    ['delete_sign'] = 'Delete sign',
    ['logo_url'] = 'Logo URL',
    ['footer_signboard'] = 'Can be for phone number',
    ['create_sign_successful'] = 'Created sign successfully',
    ['edit_sign_successful'] = 'Edited sign successfully',
    ['delete_sign_successful'] = 'Deleted sign successfully',

    -- Creation
    -- # Prompts
    ['garage'] = 'Garage',
    ['entrance'] = 'Entrance',
    ['choose'] = 'Choose',
    ['prompt_create_shell'] = [[Shell: %s<br>
        Step: %s | %s<br>
        ~ENTER~ to confirm house<br>
        ~BACKSPACE~ to cancel<br>
        ~Q~ ~E~ to Rotate<br>
        ~R~ ~F~ to adjust height placement<br>
        ~W~ ~A~ ~S~ ~D~ to move shell<br>
        ~CTRL~ ~SCROLL~ to Change shells<br>
        ~SHIFT~ ~SCROLL~ to Zoom in/out
    ]],
    -- # Error
    ['canceled_house'] = 'You canceled creating the house',
    ['house_created'] = 'House successfully created',

    -- # Garage
    ['spawn_point_added'] = 'Added vehicle spawn point',
    ['garage_canceled'] = 'Garage creation canceled',
    ['garage_deleted'] = 'Garage deleted succesfully',

    -- Manage Home
    ['home_sold'] = 'Your home has been sold for $%s',
    ['home_cannot_be_sold'] = 'The government currently does not buy any home!',
    ['home_locked'] = 'Home locked',
    ['home_unlocked'] = 'Home unlocked',
    ['successfully_renamed'] = 'You have successfully renamed your house into %s',

    -- # Transfer
    ['transfer'] = 'Transfer Ownership',
    ['transfer_desc'] = 'Enter target citizen id',
    ['transfer_success'] = 'Home has been transferred to %s successfully',
    ['transfer_to_you'] = 'Home has been transferred from %s successfully',

    -- # Error
    ['not_allowed'] = 'You do not have enough permission to do this!',
    ['not_allowed_to_sell'] = 'This house cannot be sold by you!',
    ['not_allowed_to_transfer'] = 'This house cannot be transferred by you!',
    ['not_allowed_to_doorlock'] = 'You cannot create a door lock by yourself!',
    ['not_allowed_to_movegarage'] = 'You cannot move the garage by yourself!',
    ['rename_not_allowed'] = "You are not allowed to rename this house",

    -- Admin / Realestate Commands
    -- # Manage
    ['home_deleted'] = 'Home %s have been deleted',

    -- # Error
    ['going_too_far'] = 'Going too far',
    ['not_near_any_home'] = 'Not near any house!',
    ['house_fee_not_enough'] = 'Realestate company fund not enough! Creation fee is $%s',

    -- Flat Creation
    ['flat_name'] = 'Flat Name',
    ['flat_complex_name'] = 'The flat complex name',
    ['use_existing'] = 'Do you want to add this room to %s Flat?',
    ['apt_not_found'] = 'Flat %s was not found! Make sure the name is the same!',
    ['open_flat_menu'] = 'Open Flat Menu',

    -- CCTV
    ['keybind_cctv_move'] = 'Move CCTV',
    ['keybind_cctv_save'] = 'Save CCTV Rotation',
    ['keybind_cctv_exit'] = 'Exit CCTV',
    ['keybind_cctv_zoom'] = 'Zoom In/Out',
    ['prompt_cctv_keybinds'] =
    '~BACKSPACE~ to exit<br>~W~ ~A~ ~S~ ~D~ to move<br>~SCROLL~ to zoom in/out<br>~→~ Next Camera',
    ['prompt_cctv_preview_keybinds'] = '~BACKSPACE~ to exit<br>~W~ ~A~ ~S~ ~D~ to move<br>~ENTER~ to save rotation',
    ['setup_cctv_heading'] = 'Please setup the cctv rotation',
    ['cctv_rotation_saved'] = 'Camera rotation saved, you can exit the setup.',
    ['cctv_rotation_same'] = 'CCTV Rotation is the same as the initial default. Press ENTER to save current rotation.',

    -- Phone Message
    ['rent_overdue_title'] = 'Rent Overdue',
    ['rent_removed_title'] = 'Rent Removed Due to Unpaid Rent',
    ['mortgage_overdue_title'] = 'Mortgage Overdue',
    ['your_house_removed'] = 'Your house has been removed due to unpaid mortgage',
    ['house_bought'] = '%s property bought',
    ['house_detail'] = 'You have bought %s property for the price of $%s',
    ['house_mortgaged'] = '%s property mortgage started',
    ['house_detail_mortgage'] = 'You have bought %s property for the downpayment of $%s',
    ['rent_paid'] = 'Paid Rent %s',
    ['rent_detail'] = 'You have paid your %s rent for $%s',

    -- Rent reminder
    ['pay_your_rent'] = 'You have a rent that needs to be paid!',
    ['your_rent_removed'] = 'Your rent has been revoked from you!',
    ['not_enough_money_rent'] = "You don't have enough money to pay rent!",
    ['auto_paid_rent'] = 'You paid your rent for $%s',
    ['rent_not_needed'] = 'You do not need to pay rent now',
    ['rent_due_time'] = 'You can pay your rent in %s day(s) from today',

    -- # Rent
    ['rent_options_saved'] = 'Rental options has been saved',
    ['rent_house_enabled'] = 'You have put your house to be rentable!',
    ['rent_house_disabled'] = 'You have removed your house from being rented',
    ['rented_house'] = 'You have rented house for $ %s / %s',
    ['tenant_evicted'] = 'You have evicted the tenant',
    ['you_have_been_evicted'] = 'You have been evicted from the house by the owner!',

    -- Key system
    ['key_created_successfully'] = '%s key has been created successfully',
    ['key_creation_error'] = 'An error has occured while creating key',
    ['key_deleted_successfully'] = '%s key has been deleted successfully',
    ['key_deletion_error'] = 'An error has occured while deleting key',

    ['key_given_successfully'] = '%s key has been given to %s successfully',
    ['key_give_error'] = 'An error has occured while giving key',
    ['key_removed_successfully'] = 'Key has been removed from the person successfully',
    ['key_removal_error'] = 'An error has occured while removing key',

    ['key_exists_in_holder'] = 'Key still exists in one of the holder! Please remove them before you remove the key',

    -- Door System
    ['command_lock'] = 'Lock / Unlock door',
    ['door_deleted'] = 'Door successfully deleted',
    ['door_added'] = 'Door successfully added',

    -- # Prompts
    ['prompt_add_door'] = '~LMB~ to add the door  \n ~RMB~ to cancel',
    ['prompt_delete_door'] = 'Press ~E~ to delete the door  \n Press ~X~ to cancel',
    ['prompt_lock_door'] = 'Press ~E~ to lock door',
    ['prompt_unlock_door'] = 'Press ~E~ to unlock door',

    -- # Error
    ['incorrect_home'] = 'You are not inside the same home with target home!',
    ['door_no_permission'] = 'You have no permission to interact with this door',
    ['door_exist'] = 'Door already exist',
    ['unable_to_interact_door'] = 'You cannot interact with this door',
    ['error_duplicate_door_name'] = 'You cannot create duplicate door name!',
    ['failed_lockpick'] = 'You failed to lockpick the door!',
    ['not_near_any_door'] = 'There is no door nearby!',

    -- Mortgage stuff
    ['mortgage_paid'] = 'You paid your home mortgage for $%s',
    ['mortgage_paid_all'] = 'You paid your remaining home mortgage for $%s',
    ['not_mortgage_time'] = 'The time to pay mortgage has not yet come',
    ['no_mortgage'] = 'You do not have any mortgage to pay!',
    ['mortgage_chosen'] = 'Successfully chosen and paid mortgage downpayment',
    ['ongoing_mortgage_cannot_be_edited'] = 'You cannot change the mortage because there is an ongoing mortgage!',

    -- Storage
    ['storage_added'] = 'Storage location added successfully',
    ['storage_update'] = 'Storage location updated successfully',
    ['saved_storage'] = 'Storage location set successfully',

    -- # Prompts
    ['prompt_add_storage'] = 'Press ~E~ to set storage  \n Press ~X~ to cancel',

    -- # Error Messages
    ['storage_max_exceeded'] = 'You cannot add anymore storage!',
    ['storage_deleted'] = 'Storage deleted successfully',

    -- Furniture Stuff
    ['furniture_stored'] = 'Furniture has been stored to your inventory!',
    ['bought_furniture'] = 'You bought %s for $%s',
    ['furniture_placed'] = 'You placed the furniture',
    ['sell_furniture'] = 'Sell Furniture',
    ['sell_furniture_success'] = 'Your sold your furniture for $%s',

    -- # Error Messages
    ['furniture_not_found'] = 'Furniture was not found!',
    ['furniture_type_max_exceeded'] = 'This furniture type max has been exceeded!',
    ['sell_furniture_failed'] = 'Something went wrong while selling your furniture',

    -- # Prompts
    ['prompt_furniture'] = 'Press ~E~ to open furniture store!',
    ['prompt_furnitureshop'] = '~BACKSPACE~ to quit<br>~,~ ~.~ to Rotate',
    ['prompt_furnish_precise'] = [[
        %s Left/Right<br>
        %s Forward/Backward<br>
        %s Pitch, Yaw, Roll<br>
        ~%s~ Change height<br>
        %s to Rotate<br>
        %s change speed<br>
    ]],
    ['prompt_edit_furniture'] = 'Press ~E~ to move<br>Press ~G~ to delete<br>Press ~BACKSPACE~ to cancel',
    ['prompt_edit_furniture_shop'] = 'Press ~E~ to move<br>Press ~G~ to sell<br>Press ~BACKSPACE~ to cancel',

    -- Area
    ['area_created'] = 'Area successfully created',
    ['point_added'] = 'Added point',
    ['mode_changed'] = 'Movement mode changed',
    -- # Prompts
    ['prompt_create_mlo'] = [[
        ~%s~ to cancel<br>
        ~%s~ to add more point<br>
        ~%s~ Change mode<br>
        Hold ~%s~ %s Up/Down Height<br>
        Hold ~%s~ %s Up/Down Z Placement<br>
        ~W~ ~A~ ~S~ ~D~ Camera Movement<br>
        ~Shift~ ~Alt~ Fast/Slow Cam Movement<br>
        ~Q~ ~E~ Camera Up / Down<br>
        ~%s~ to finish creation
    ]],
    ['prompt_create_mlo_precise'] = [[
        ~%s~ to cancel<br>
        ~%s~ to add more point<br>
        ~%s~ Change mode<br>
        ~%s~ Up/Down change step: %s<br>
        Hold ~%s~ %s Up/Down Height<br>
        Hold ~%s~ %s Up/Down Z Placement<br>
        %s Move point<br>
        ~W~ ~A~ ~S~ ~D~ Camera Movement<br>
        ~Shift~ ~Alt~ Fast/Slow Cam Movement<br>
        ~Q~ ~E~ Camera Up / Down<br>
        ~%s~ to finish creation
    ]],
    -- # Error
    ['canceled_area'] = 'You canceled creating the area',
    ['point_too_far'] = 'The area point is too far from the entrance!',
    ['point_too_few'] = 'You need to atleast add 3 point!',

    -- Robbery
    ['robbery'] = 'Robbery',
    ['house_robbery'] = 'House Robbery',
    ['house_lockpicked'] = 'Your house %s is being robbed!',
    ['house_entered_by_anon'] = 'Someone entered your home %s!',
    ['house_raided'] = 'You have raided the house!',
    ['not_enough_police'] = 'You cannot rob a house right now!',
    ['robbery_in_progress'] = 'A House robbery is in progress in %s house',

    -- Knock
    ['no_one_inside'] = 'There is no one inside home',
    ['someone_is_knocking'] = 'Someone is knocking from outside',
    ['door_opened_for_you'] = 'The door has been opened by the owner',

    -- Wardrobe
    ['saved_wardrobe'] = 'Wardrobe location set successfuly',
    ['prompt_add_wardrobe'] = 'Press ~E~ to set wardrobe  \n Press ~X~ to cancel',
    ['max_wardrobes'] = 'Maximum wardrobe exceeded',

    ['wardrobe'] = 'Wardrobe',
    ['outfit_name'] = 'Outfit name',
    ['outfit_desc'] = 'Save your outfit name',
    ['change_description'] = 'Change to your outfit',
    ['delete_description'] = 'Delete your outfit',
    ['delete_outfit'] = 'Delete Outfit',
    ['change_outfit'] = 'Change Outfit',
    ['save_outfit'] = 'Save Outfit',
    ['saved_outfit'] = 'Outfit successfully saved',
    ['deleted_outfit'] = 'Outfit has been deleted',
    ['loaded_outfit'] = 'Outfit has been used',

    --- Starter Apartment
    ['starter_apartment_menu'] = 'Starter Apartment Menu',
    ['starter_apartment_list'] = 'Starter Apartment List',
    ['starter_apartment_add'] = 'Add Starter Apartment',
    ['starter_apartment_remove'] = 'Remove Starter Apartment',
    ['choose_actions'] = 'Choose Actions',

    -- Discord log
    ['log_house_revoked'] = "House Revoked",
    ['log_house_revoked_inactivity'] = 'House %s (%s) has been revoked for inactivity %s',

    ['log_lockpick_title'] = 'Lockpick Alert',
    ['log_lockpick_message'] = '**House**: %s\n**Owner**: %s\n**Lockpicker**: %s (%s)\nThe house was lockpicked',
    ['log_nonowner_enter_title'] = 'Nonowner Enter',
    ['log_nonowner_enter_msg'] =
    '**House**: %s\n**Owner**: %s\n**Nonowner**: %s (%s)\nThis person entered the house as a non owner',

    ['log_house_locked'] = 'House Locked',
    ['log_house_locked_msg'] = '**Home**: %s\n**Locked by**: %s (%s)',
    ['log_house_unlocked'] = 'House Unlocked',
    ['log_house_unlocked_msg'] = '**Home**: %s\n**Unlocked by**: %s (%s)',

    ['log_duplicated_key'] = 'Home Key Duplicated',
    ['log_duplicated_key_msg'] = '**Home**: %s\n**Owner**: %s',
    ['log_deleted_key'] = 'Home Key Deleted',
    ['log_deleted_key_msg'] = '**Home**: %s\n**Owner**: %s',
    ['log_gave_key'] = 'Home Key Given',
    ['log_gave_key_msg'] = '**Home**: %s\n**Owner**: %s\n**Given to**: %s (%s)',
    ['log_removed_key'] = 'Home Key Removed',
    ['log_removed_key_msg'] = '**Home**: %s\n**Owner**: %s\n**Removed from**: %s (%s)',

    ['log_enter_cctv_success'] = 'Entered CCTV',
    ['log_enter_cctv_success_msg'] = '**Home**: %s\n**Player**: %s (%s)',
    ['log_enter_cctv_failed'] = 'Tried to Enter CCTV',
    ['log_enter_cctv_failed_msg'] = '**Home**: %s\n**Player**: %s (%s)\n**ILLEGAL ENTERING (POSSIBLE CHEATER)**',
    ['log_leave_cctv'] = 'Left CCTV',
    ['log_leave_cctv_msg'] = '**Home**: %s\n**Player**: %s (%s)',

    ['log_player_enter_home'] = 'Player Entered Home',
    ['log_player_enter_home_msg'] = '**Home**: %s\n**Player**: %s (%s)',
    ['log_player_left_home'] = 'Player Left Home',
    ['log_player_left_home_msg'] = '**Home**: %s\n**Player**: %s (%s)',

    ['log_house_created'] = 'Home Created',
    ['log_house_created_msg'] = '**ID**: %s\n**Name**: %s\n**Price**: %s\n**Type**: %s\n**Created by**: %s (%s)',
    ['log_house_deleted'] = 'House Deleted',
    ['log_house_deleted_msg'] = '**House**: %s\n**Deleted by**: %s (%s)\nPlayer deleted house',

    ['log_house_expired'] = 'Home Expired',
    ['log_house_expired_msg'] = '**House**: %s\nHouse has been revoked from **%s**',
    ['log_house_given'] = 'Home Given',
    ['log_house_given_msg'] = '**House**: %s\n**Given By**: %s (%s)\n**Given to**: %s (%s)\nPlayer given house',
    ['log_house_extended'] = 'Home Extended',
    ['log_house_extended_msg'] = '**House**: %s\nHouse has been extended until **%s**',
    ['log_bought_house'] = 'House Bought',
    ['log_bought_house_msg'] = '**House**: %s\n**Price**: %s\n**Bought by**: %s (%s)\nPlayer bought house',
    ['log_sold_house'] = 'House Sold',
    ['log_sold_house_msg'] = '**House**: %s\n**Returned money**: %s\n**Sold by**: %s (%s)\nPlayer sold house',
    ['log_transferred_house'] = 'House Owner Transferred',
    ['log_transferred_house_msg'] = '**House**: %s\n**Previous Owner**: %s (%s) | **New Owner**: %s (%s)',

    ['log_door_deleted'] = 'Home Door Deleted',
    ['log_door_deleted_msg'] = '**House**: %s\n**By**: %s(%s)\nHouse door deleted',
    ['log_door_added'] = 'Home Door Added',
    ['log_door_added_msg'] = '**House**: %s\n**Type**: %s\n**By**: %s (%s)\nHouse door added',

    ['log_buy_furniture'] = 'Furniture Bought',
    ['log_buy_furniture_msg'] =
    '**Player**: %s (%s)\n**Category**: %s\n**label**: %s\n**model**: %s\n**Price**: %s\nPlayer bought furniture',
    ['log_placed_furniture'] = 'Furniture Placed',
    ['log_placed_furniture_msg'] =
    '**Player**: %s (%s)\n**Home**: %s\n**Category**: %s\n**label**: %s\n**model**: %s\nPlayer placed furniture',
    ['log_sold_furniture'] = 'Sold Furniture',
    ['log_sold_furniture_msg'] =
    '**Player**: %s (%s)\n**Category**: %s\n**label**: %s\n**model**: %s\n**Price**: %s\nPlayer sold furniture',
    ['log_stored_furniture'] = 'Furniture Stored',
    ['log_stored_furniture_msg'] =
    '**Player**: %s (%s)\n**Home**: %s\n**Category**: %s\n**label**: %s\n**model**: %s\nPlayer store furniture',

    ['log_choose_plan'] = 'Mortgage Plan Chosen',
    ['log_choose_plan_msg'] =
    '**Home**: %s\n**Downpayment**: %s\n**Plan**: Interest **%s**, duration **%s**, type **%s**, result **%s**\n**Player**: %s (%s)',
    ['log_paid_remaining_mortgages'] = 'Paid Remaining Mortage',
    ['log_paid_remaining_mortgages_msg'] =
    '**Home**: %s\n**Remaining payment**: %s\n**Paid by**: %s (%s)\nPaid remaining mortgage',
    ['log_paid_mortgage'] = 'Paid Mortgage',
    ['log_paid_mortgage_msg'] = '**Home**: %s\n**Paid**: %s\n**Remaining**: %s\n**Paid by**: %s (%s)\nPaid mortgage',
    ['log_auto_remove_mortgage'] = 'Auto Removal Mortgage Not Paid',
    ['log_auto_remove_mortgage_msg'] = '**Home**: %s\n**Was Owned By**: %s',
    ['log_return_mortgage_money'] = 'Returned Mortgage Money',
    ['log_return_mortgage_money_msg'] = '**Home**: %s\n**Returned money**: %s\n**To**: %s',

    ['log_paid_rent'] = 'Paid Rent',
    ['log_paid_rent_msg'] = '**Home**: %s\n**Paid**: %s\n**Paid by**: %s (%s)\nPaid rent',
    ['log_auto_remove_rent'] = 'Auto Removal Rent Expired',
    ['log_auto_remove_rent_msg'] = '**Home**: %s\n**Was Owned By**: %s',

    -- Instruction keybinds if using bcs_hud
    -- BCS HUD keybind titles
    ['polyzone_creation'] = "Polyzone Creation",
    ['cctv_controls'] = 'CCTV Controls',
    ['cctv_setup_controls'] = 'CCTV Setup Controls',

    -- Description keybinds
    ['keybind_add_to_near_apt'] = 'Add to nearest Flat',
    ['keybind_create_new_apt'] = 'Create a new Flat',

    ['keybind_cancel'] = 'Cancel',
    ['keybind_finish'] = 'Finish',
    ['keybind_add_point'] = 'Add more points',
    ['keybind_change_z'] = 'Change max/min Z',
    ['keybind_move_point'] = 'Move the point',
    ['keybind_noclip'] = 'Noclip movement',
    ['keybind_noclip_updown'] = 'Move up/down',
    ['keybind_noclip_speed'] = 'Noclip speed (Hold)',
    ['keybind_crease_height'] = 'Increase/decrease Zone height',
    ['keybind_z_placement'] = 'Z placement',
    ['keybind_change_mode'] = 'Change mode',

    ['keybind_quit'] = 'Quit',
    ['keybind_rotate'] = 'Rotate Furniture',

    ['keybind_place_furniture'] = 'Place furniture',
    ['keybind_mode_gizmo'] = 'Enter Gizmo Mode',
    ['keybind_mode_gizmo_rotate'] = 'Gizmo Rotate mode',
    ['keybind_mode_gizmo_move'] = 'Gizmo Move mode',
    ['keybind_mode_raycast'] = 'Movement Raycast / Exit Gizmo',

    ['keybind_confirm_house'] = 'Confirm House',
    ['keybind_adjust_height'] = 'Adjust height placement',
    ['keybind_move_shell'] = 'Move shell',
    ['keybind_change_shell'] = 'Change Shell',
    ['keybind_zoom'] = 'Zoom in/out',

    -- Configuration
    ['config_updated_successfully'] = 'House configuration has been updated successfully',
    ['config_update_error'] = 'An error occured while editing the house configuration',

    -- Configuration
    ['permission_updated_successfully'] = 'House permission has been updated successfully',
    ['permission_update_error'] = 'An error occured while editing the house permission',

    -- Shell Edit
    ['shell_updated_successfully'] = 'House Shell has been updated successfully',
    ['shell_update_error'] = 'An error occured while updating the house shell',

    -- Menu Related
    ['house_menu'] = "House Menu",
    ['apartment_menu'] = 'Apartment Menu',
    ["house_manager_menu"] = "House Manager Menu",
    ['house_entrance_menu'] = "House Entrance Menu",
    ['flat_entrance_menu'] = 'Flat Entrance Menu',
    ['owned_flat_filter'] = 'Owned Flats Filter',
    ['owned_flat_entrance_menu'] = "Owned Flat Entrance Menu",
    ['exit_house'] = "Exit House",
    ['manage_house'] = 'Manage House',
    ['list_rooms'] = 'Room List',

    -- # Entrance
    ['enter_home'] = "Enter Home",
    ['buy_home'] = 'Buy Home',
    ['rent_home'] = 'Rent Home',
    ['buy_apartment'] = 'Buy Apartment',
    ['rent_apartment'] = "Rent Apartment",
    ['preview_home'] = 'Preview Home',
    ['lockpick_home'] = 'Lockpick Home',
    ['lockpick_home_body'] = 'Lockpick the house door to unlock it',
    ['raid_home'] = 'Raid Home',
    ['raid_home_body'] = 'Raid home door as a police',
    ['knock_door'] = 'Knock Door',
    ['unlock_home'] = 'Unlock Home',
    ['lock_home'] = 'Lock Home',
    ['lock_home_body'] = 'Lock/unlock home door',
    ['sell_home'] = 'Sell Home',
    ['sell_home_body'] = 'Sell your home',
    ['confirmation_sell_home'] = 'Sell Home',
    ['transfer_home'] = 'Transfer Home',
    ['transfer_home_body'] = 'Transfer your home to another citizen',

    -- Management
    ['furnish_home'] = 'Furnish Home',
    ['furnish_home_body'] = 'Add your house furniture',
    ['edit_furniture'] = 'Edit Furniture',
    ['edit_furniture_body'] = 'Arrange your furniture',
    ['saved_mortgage'] = 'Mortgage plan saved successfully',
    ['pay_mortgage'] = 'Pay Mortgage',
    ['pay_mortgage_body'] = 'Pay your monthly bill',
    ['pay_rent'] = 'Pay Rent',
    ['pay_rent_body'] = 'Pay your monthly rent',
    ['check_rent'] = 'Check Rent',
    ['check_rent_due'] = 'Check when is the next due date for the rent',

    -- Garage
    ['garage_exists'] = 'Garage already exists',
    ['vehicle_not_allowed'] = 'This vehicle is not allowed to be stored here.',

    -- Lights
    ['lights'] = 'Lights',
    ['turn_on_off_light'] = 'Turn on/off light',
    ['for_which_light'] = 'For which light is it?'

}

UILocale = {
    ['currency'] = 'USD', -- if you want usd change it to USD, list can be found here https://www.iban.com/currency-codes

    -- TABS
    ['home'] = 'Home',
    ['keys'] = 'Keys',
    ['doors'] = 'Doors',
    ['storages'] = 'Storages',
    ['wardrobes'] = 'Wardrobes',

    -- General
    ['cancel'] = 'Cancel',
    ['submit'] = 'Submit',
    ['price'] = 'Price',
    ['type'] = 'Type',
    ['enable'] = 'Enable',
    ['action'] = 'Action',
    ['sell'] = 'Sell',
    ['no_results'] = 'No results.',
    ['previous'] = 'Previous',
    ['next'] = 'Next',
    ['name'] = 'Name',
    ['no'] = 'No',
    ['yes'] = 'Yes',
    ['are_you_sure'] = 'Are you sure?',
    ['weight'] = 'Weight',
    ['slots'] = 'Slots',
    ['create'] = 'Create',
    ['create_set'] = 'Create + Set',
    ['add'] = 'Add',
    ['save'] = 'Save',
    ['title'] = 'Title',
    ['description'] = 'Description',
    ['thumbnail'] = 'Custom Thumbnail',
    ['owned'] = "Owned",
    ['not_owned'] = "Not Owned",

    -- Home Manager
    ['identifier'] = 'Identifier',
    ['status'] = 'Status',
    ['house_configuration'] = 'House Configuration',
    ['house_doors'] = 'House Doors',
    ['house_storages'] = 'House Storages',
    ['house_wardrobes'] = 'House Wardrobes',
    ['level'] = 'Level',
    ['rent'] = 'Rent',
    ['pay_rent'] = 'Pay Rent',
    ['view_cctv'] = 'View CCTV',
    ['pay_mortgage'] = 'Pay Mortgage',
    ['transfer_home_ownership'] = 'Transfer Home Ownership',
    ['transfer'] = 'Transfer',
    ['rename_house'] = 'Rename House',
    ['wardrobe_placeholder'] = 'Wardrobe Name',
    ['delete_house_confirmation'] =
    'This will permanently delete all the furniture and content of the house from the city!',

    -- Keys
    -- # Holders
    ['give_key'] = 'Give Key',
    ['citizen_id'] = 'Citizen ID',
    ['citizen_id_placeholder'] = 'Select a citizen',
    ['key_name'] = 'Key Name',
    ['key_placeholder'] = 'Select a Key',
    ['add_key'] = 'Add Key',
    -- # List
    ['permissions'] = 'Permissions',
    ['permissions_desc'] = 'Set the key permission list',
    ['key_list_caption'] = 'Keys List',

    -- Create Storage
    ['create_storage'] = 'Create Storage',

    -- Create Home
    -- # Tabs
    ['main'] = 'Main',
    ['configuration'] = 'Configuration',
    ['mortgage'] = 'Mortgage',
    ['wardrobe'] = 'Wardrobe',
    ['storage'] = 'Storage',
    ['house_owner_permission'] = 'House Owner Permission',
    ['misc'] = 'Misc',

    -- # Main
    ['house_name'] = 'House Name',
    ['house_name_placeholder'] = 'Type a house name',
    ['type_placeholder'] = 'Select a type',
    ['interior'] = 'Interior',
    ['interior_placeholder'] = 'Select an Interior',
    ['complex'] = 'Complex',
    ['complex_placeholder'] = 'Select an Complex',
    ['payment'] = 'Payment',
    ['payment_placeholder'] = 'Select a payment',
    ['expiry'] = 'Expiry (Days)',
    ['expiry_desc'] =
    'This will determine the duration after purchase, owner will be revoked. Expiry can only be extended via tebex or /extendhome command',
    ['expiry_edit_desc'] = 'Keep it empty to exclude the house from expiring',
    ['edit_shell'] = 'Edit Shell',
    ['search_interior'] = 'Search Interior',
    ['no_interior_found'] = 'No Interior found',
    ['set_area'] = 'Set Area',
    ['set_area_desc'] = 'Do you want to set the area now?',

    -- # Mortgage
    ['downpayment'] = 'Downpayment',
    ['add_mortgage'] = 'Add Mortgage',
    ['mortgage_caption'] = 'Mortgage plans options.',

    -- ## Mortgage Table
    ['duration'] = 'Duration',
    ['duration_type'] = 'Duration Type',
    ['interest'] = 'Interest',
    ['total'] = 'Total',
    ['duration_placeholder'] = 'Select duration type',

    -- ## Edit Dialog
    ['edit_home'] = 'Edit Home',

    -- # Permission
    ['owner_permissions'] = 'Owner Permissions',
    ['transfer_owner'] = 'Transfer Owner',
    ['move_garage'] = 'Move Garage',
    ['manage_doorlocks'] = 'Manage Doorlocks',

    -- # Configuration
    ['max_storages'] = 'Max Storages',
    ['max_wardrobes'] = 'Max Wardrobes',
    ['max_keys'] = 'Max Keys',
    ['max_garages'] = 'Max Garages',
    ['garages'] = 'Garages',
    ['cctv'] = 'CCTV',
    ['rename'] = 'Rename',

    ['disable_buy'] = 'Disable Buy',
    ['disable_buy_desc'] =
    'Disable buy and can only be bought via Tebex or custom command',
    ['rentable'] = 'Rentable',
    ['rentable_desc'] = 'Can owner rent the owned house to other citizen?',

    -- # Rent
    ['rent_options'] = 'Rent Options',
    ['tenant_information'] = 'Tenant Information',
    ['evict'] = 'Evict',
    ['rent_your_house'] = 'Rent your house',
    ['rent_your_house_desc'] = 'Put your house to be rented for other citizen',
    ['rented_at'] = 'Rented At',
    ['payment_due'] = 'Payment Due At',
    ['auto_remove'] = 'Auto Remove Rent',
    ['auto_remove_desc'] = 'Auto revoke the house owner after certain days',
    ['rent_timer'] = 'Rent Timer',
    ['rent_timer_desc'] = 'This will determine the duration (days) of the rent',

    -- ## Permission Rent
    ['garage'] = 'Garage',
    ['garage_desc'] = 'Allow tenant to use garage',
    ['wardrobe_desc'] = 'Allow tenant to manage wardrobe',
    ['storage_desc'] = 'Allow tenant to manage storage',
    ['furnish'] = 'Furnish',
    ['furnish_desc'] = 'Allow tenant to furnish house',
    ['key'] = 'Key',
    ['key_desc'] = 'Allow tenant to give and manage keys',
    ['door'] = 'Door',
    ['door_desc'] = 'Allow tenant to manage house doors',

    -- Furniture Shop
    ['furnitures'] = 'Furnitures',
    ['buy_furniture'] = 'Buy Furniture',
    ['sell_furniture'] = 'Sell Furniture',

    -- Buy Home Page
    ['buy_now'] = 'Buy Now',
    ['rent_now'] = 'Rent Now',
    ['choose'] = 'Choose',

    -- Mortgage Status
    ['mortgage_status'] = 'Mortgage Status',
    ['remaining_payments'] = 'Remaining Payments',
    ['interest_for'] = 'interest for',
    ['last_payment'] = 'Last payment at',
    ['next_payment'] = 'Next payment at',
    ['pay'] = 'PAY',
    ['pay_all'] = 'PAY ALL',

    -- Controls Furnish
    ['tooltip_save_white'] = 'Save rotation or coordinate input',
    ['mode'] = 'Mode:',
    ['hold_rmb'] = 'Hold RMB to move character',
    ['tooltip_save'] = '[E] to save placement',
    ['tooltip_teleport'] = 'Teleport object to you',
    ['tooltip_snap'] = 'Snap object to ground',
    ['tooltip_rotate'] = '[R] for rotate mode',
    ['tooltip_move_mode'] = '[Z] for move mode',

    -- Garages
    ['create_garage'] = 'Create Garage',

    -- Tebex
    ['tebex'] = 'Tebex',
}
