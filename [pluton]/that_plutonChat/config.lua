Config = {}

Config.framework = 'qb' -- esx, qb

-- [Staff Groups] --
Config.StaffGroups = {
	'superadmin',
	'admin',
	'god', -- qb
	'mod', -- qb
}

Config.ShowMessage = {
	Join = true, -- Config.Messages.PlayerJoined
	Quit = true -- Config.Messages.PlayerJoined
}

-- Proximity Text 3D Settings
Config.Text3D = {
	Time = 5.0, -- Seconds before 3D message disappears
}

--[[
	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]
	---------------------------------------
	Usage: /<command>
	---------------------------------------
]]
Config.ClearChat = {
	Clear = {
		-- The suggestion text will not work due to /clear being already registered in resource es_extended.
		-- Thats why changed the command to chat_clear
		command = 'chat_clear',

		suggestion = {
			info = 'Clear the chat (just for you)',
			arguments = {}
		}
	},

	-- This command is for active admins only (Config.AdminDuty)
	ClearAll = {
		-- The suggestion text will not work due to /clearall being already registered in resource es_extended.
		-- Thats why changed the command to chat_clearall
		command = 'chat_clearall',
		
		suggestion = {
			info = 'Clear the chat (for everyone) [Admin Only]',
			arguments = {}
		}
	}
}

--[[
	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]
	formatChat = {				[REQUIRED]
		sender [STRING],
		receiver [STRING]
	},

	range [FLOAT]				[REQUIRED]
	---------------------------------------
	Usage: /<command> <message>
	---------------------------------------
]]
Config.Say = {
	--SAY
	command = 'say',
	formatChat = '<span>{PlayerName} Says: {Message}</span>',
	formatChat3D = '~c~* ~s~{Message}',

	range = 10.0,
}

--[[
	---------------------------------------
	Instructions:
	---------------------------------------
	-- When you add 3D message, you must add range
	-- When you add range, chat message becomes proximity
	-- * Seenby will be ignored when proximity message is enabled
	-- * Delayed messages will be ignored when seenby or proximity message is enabled
	-- If seenby is not added and theres no range then message is sent to everyone (for commands like /announce)
	-- Player will see the message they sent even if seenby condition is not met
	---------------------------------------


	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]
	formatChat [STRING],		[REQUIRED]

	formatChat3D [STRING],		[OPTIONAL]
	range [FLOAT],				[OPTIONAL but REQUIRED with 3D]

	require = {					[OPTIONAL]
		isAdmin [BOOLEAN],
		job = {
			jobname [STRING]
		}
	},
	
	seenby = {					[OPTIONAL]
		isAdmin [BOOLEAN],
		job = {
			jobname [STRING]
		}
	},

	cost = {					[OPTIONAL]
		amount [INTEGER],
		account [STRING],
		reason [STRING]
	},

	delay = {					[OPTIONAL]
		min [INTEGER],
		max [INTEGER]
	}
	---------------------------------------
	Usage: /<command> <message>
	---------------------------------------
]]
Config.Chat = {
	{
		--ME
		command = 'me',
		formatChat = '<span style="color:rgba(226, 245, 39, 1);">* {PlayerName} {Message}</span>',
		formatChat3D = '~c~* ~s~{Message} ~c~*',

		range = 5.0,

		suggestion = {
			info = 'Me (proximity)',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--DO
		command = 'do',
		formatChat = '<span style="color:rgba(226, 245, 39, 1);">{Message} (({PlayerName}))</span>',
		formatChat3D = '~c~** ~s~{Message} ~c~**',

		range = 5.0,
		
		suggestion = {
			info = 'Do (proximity)',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--OOC
		command = 'ooc',
		formatChat = '<span style="color:rgba(0, 166, 246, 1);">(([{PlayerID}] {PlayerName}: {Message}))</span>',
		formatChat3D = '~c~**~s~{Message} ~c~**',
		
		suggestion = {
			info = 'Out of character chat',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--OOC_LOCAL
		command = 'b',
		formatChat = '<span style="color:rgba(0, 166, 246, 1);">(([{PlayerID}] {PlayerName}: {Message}))</span>',
		formatChat3D = '~c~** ~s~{Message} ~c~**',

		range = 10.0,
		
		suggestion = {
			info = 'Out of character chat (proximity)',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--ANNOUNCEMENT
		command = 'announce',
		formatChat = '<span style="color:rgba(209, 24, 24, 1);">[Announcement] {Message}</span>',
		
		require = {
			isAdmin = true,
		},
		
		suggestion = {
			info = 'Broadcast message to whole server',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--NEWS
		command = 'news',
		formatChat = '<span style="color:rgba(209, 24, 24, 1);">[News] {Message}</span>',

		require = {
			job = {"police", "weazelnews"}
		},
		
		suggestion = {
			info = 'News report to whole server',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--ADVERT
		command = 'advert',

		cost = {
			amount = 1000,
			account = 'bank',
			reason = 'publishing advert'
		},

		formatChat = '<span style="color:rgba(226, 245, 39, 1);">[Advertisement] </span><span>{PlayerName}: ({PlayerID}) {Message}</span>',

		delay = {min = 5, max = 15}, -- shown randomly between min-max seconds
		
		suggestion = {
			info = 'Advertise to the whole server (paid)',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--DISPATCH
		command = 'dispatch',
		formatChat = '<span>[Dispatch] {PlayerName} [{PlayerID}]: {Message}</span>',

		require = {
			job = {"police"}
		},

		seenby = {
			job = {"police"}
		},
		
		suggestion = {
			info = 'Dispatch radio for police',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
	{
		--STAFF
		command = 'staff',
		formatChat = '<span>[Staff] {PlayerName} [{PlayerID}]: {Message}</span>',

		require = {
			isAdmin = true
		},

		seenby = {
			isAdmin = true
		},
		
		suggestion = {
			info = 'Send message in staff chat [Admin Only]',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},
}

--[[
	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]
	formatChat = {				[REQUIRED]
		sender [STRING],
		receiver [STRING]
	},

	require = {					[OPTIONAL]
		isAdmin [BOOLEAN],
		job = {
			jobname [STRING]
		}
	}
	---------------------------------------
	Usage: /<command> <playerId> <message>
	---------------------------------------
]]
Config.DirectChat = {
	{
		--PM
		command = 'pm',

		formatChat = {
			sender = '<span>DM sent to {TargetName} [{TargetID}] | {Message}</span>',
			receiver = '<span>DM from {PlayerName} [{PlayerID}] | {Message}</span>'
		},
		
		suggestion = {
			info = 'Send message to a player',
			arguments = {
				{
					name = 'playerId',
					help = 'Id of the player you want to send message'
				},
				{
					name = 'message',
					help = 'Message to send'
				},
			}
		}
	},
}

--[[
	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]

	account [STRING], 			[REQUIRED]
	formatChat [STRING]			[REQUIRED]
	---------------------------------------
	Usage: /<command> <message>
	---------------------------------------
]]
Config.Accounts = {
	{
		--CASH
		command = 'cash',

		account = 'cash', -- change to 'cash' for qbcore
		formatChat = '<span>You have </span><span style="color:rgba(48, 245, 0, 1);">${Amount} </span><span">cash in your pocket</span>',
		
		suggestion = {
			info = 'Shows amount of cash in your pocket',
			arguments = {}
		}
	},
	{
		--BANK
		command = 'bank',

		account = 'bank',
		formatChat = '<span>You have </span><span style="color:rgba(0, 94, 245, 1);">${Amount} </span><span">in your bank account</span>',
		
		suggestion = {
			info = 'Shows amount of money in your bank account',
			arguments = {}
		}
	},
}

-- Require permission (Config.StaffGroups)
--[[
	---------------------------------------
	Usage: /<command>
	---------------------------------------
]]
Config.AdminDuty = {
	--[[
		---------------------------------------
		Arguments:
		---------------------------------------
		command [STRING] 			[REQUIRED]
		---------------------------------------
	]]
	JOIN = {
		command = 'adminduty',
		
		suggestion = {
			info = 'Set yourself active as an admin [Admin Only]',
			arguments = {}
		}
	},

	--[[
		---------------------------------------
		Arguments:
		---------------------------------------
		command [STRING], 			[REQUIRED]

		formatChat [STRING],		[REQUIRED]
		adminsFormat [STRING]		[REQUIRED]
		---------------------------------------
	]]
	LIST = {
		command = 'admins',
		formatChat = '<span>Active Admins [{AdminsCount}]: {Admins}</span>',
		adminsFormat = '[{AdminID}] {AdminName}', -- <-- this format will be followed in {Admins}
		
		suggestion = {
			info = 'Shows all active admins [Admin Only]',
			arguments = {}
		}
	}
}

--[[
	---------------------------------------
	Arguments:
	---------------------------------------
	command [STRING], 			[REQUIRED]

	account [STRING], 			[REQUIRED]
	formatChat [STRING]			[REQUIRED]
	---------------------------------------
]]
Config.ReportChat = {
	--[[
		---------------------------------------
		Usage: /<command> <message>
		---------------------------------------
	]]
	SEND = {
		command = 'report',
		formatChat = {
			sender = '<span>[Report] Your report has been sent for a review.</span>',
			receiver = '<span>[Report] {PlayerName} [{PlayerID}] reported: {Message}</span>'
		},
		
		suggestion = {
			info = 'Report to active staff/admins',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				}
			}
		}
	},

	--[[
		---------------------------------------
		Usage: /<command> <playerId> <message>
		---------------------------------------
	]]
	REPLY = {
		command = 'reportr',
		formatChat = {
			sender = '<span>[Report Reply] Replied to {TargetName} [{TargetID}]: {Message}</span>',
			receiver = '<span>[Report Reply] {PlayerName} [{PlayerID}] replied to your report: {Message}</span>'
		},
		
		suggestion = {
			info = 'Reply to a player report [Admin Only]',
			arguments = {
				{
					name = 'playerId',
					help = 'Id of the player you want to send message'
				},
				{
					name = 'message',
					help = 'Message to send'
				},
			}
		}
	}
}

Config.Radio = {
	--[[
		---------------------------------------
		Arguments:
		---------------------------------------
		command [STRING], 			[REQUIRED]
		formatChat [STRING]			[REQUIRED]
		---------------------------------------
		Usage: /<command> <channelId>
		---------------------------------------
	]]
	JOIN = {
		command = 'setfrequency',
		formatChat = '<span>Joined CH-{Channel}.</span>',
		
		suggestion = {
			info = 'Join a radio channel',
			arguments = {
				{
					name = 'channelId',
					help = 'Id of the channel you want to join'
				},
			}
		}
	},
	
	--[[
		---------------------------------------
		Arguments:
		---------------------------------------
		command [STRING], 			[REQUIRED]
	
		formatChat = {				[REQUIRED]
			radio [STRING],
			nearby [STRING]
		},
		formatChat3D [STRING]		[OPTIONAL]
		---------------------------------------
		Usage: /<command> <message>
		---------------------------------------
	]]
	CHAT = {
		command = 'radio',
		formatChat = {
			radio = '<span>** [CH-{Channel}] {PlayerName}: {Message}</span>',
			nearby = '<span>(Radio) {PlayerName} says: {Message}</span>',
		},
		formatChat3D = '~c~** ~b~{Message} ~c~**',

		range = 10.0,
		
		suggestion = {
			info = 'Send message in the radio channel',
			arguments = {
				{
					name = 'message',
					help = 'Message to send'
				},
			}
		}
	},
	
	--[[
		---------------------------------------
		Arguments:
		---------------------------------------
		command [STRING], 			[REQUIRED]
		formatChat [STRING],		[REQUIRED]
		---------------------------------------
		Usage: /<command>
		---------------------------------------
	]]
	LEAVE = {
		command = 'leaveradio',
		formatChat = '<span>Left CH-{Channel}.</span>',
		
		suggestion = {
			info = 'Leave a radio channel',
			arguments = {}
		}
	}
}

Config.ErrorMessages = {
	PlayerNotFound = '<span>Player not found.</span>',
	EmptyMessage = '<span>Message cannot be empty.</span>',
	NotEnoughMoney = "<span>You dont have ${Cost} to use this command.</span>",
	JobNotFound = '<span>You dont have the required job.</span>',
	NoPermission = '<span>You dont have the required permission.</span>',
	NotInAnyChannel = '<span>You are not in any channel.</span>',
	NoPlayerId = '<span>Specify player ID.</span>',
	AlreadyInThatChannel = '<span>You are already in that channel.</span>',
	NoChannelNumber = '<span>Specify channel number.</span>',
	NotInAnyChannel = '<span>You are not in any channel.</span>',
}

Config.Messages = {
	Charged = "<span>You have been charged ${Cost} (Reason: {Reason}).</span>",
	AdminMode = '<span>Admin mode activated.</span>',
	AlreadyAdmin = "<span>You're already in Admin mode.</span>",
	DelayedMessage = "<span>Your message will be shown in the next {min}-{max} seconds.</span>",
	PlayerJoined = '<span">[{PlayerID}] {Player} joined.</span>',
	PlayerLeft = '<span">[{PlayerID}] {Player} left ({Reason}).</span>'
}