local Translations = {
    rob_npc = 'Rob',
    already_talking = 'Someone else is already robbing this person',
    not_enough_police = 'Not enough police online',
    on_cooldown = 'You can\'t do this right now',
    intimidate = 'Intimidate the person',
    failed_intimidating = 'You failed to intimidate the person and they ran away',
    too_far = 'You were too far away',
    give_money = 'Give me your money!',
    were_robbed = 'You were robbed for %{amount}€',
    retrieved_money = 'You retrieved %{amount}€ from the person that robbed you',
    got_money = 'You robbed %{amount}€ from the person',
    got_item = 'You robbed %{amount}x %{item} from the person',
    not_enough_space = 'Not enough space',
    robbery_alert = 'A %{gender} is robbing a citizen',
    male = 'Male',
    female = 'Female',
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})