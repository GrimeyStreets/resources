JobConfig = {
    jobs = {
        ['dynasty8'] = {
            label = 'Dynasty 8',
            realEstateFee = 10,   -- how much should realestate pay to create the house? Percentage of the house price, set to 0 to disable
            rentPercentage = 20, -- how much should realestate company receive from rent payments
            grade = {
                createhome = 0,
                deletehome = 1,
                createdoor = 1,
                area = 1,
            },
            permission = {
                furnish = true,    -- enable or disable permission for job to furnish other player houses that is created by the job
                configuration = 2, -- Minimum grade to access a house configuration, make it higher than top grade to disable
                storage = 2,       -- allow storage creation and management,
                garage = 1,
                unlock = 2,        -- allow agent to lock / unlock a house managed by them
            }
        },
        ['realestate'] = {
            label = 'Maze Bank Foreclosure',
            realEstateFee = 10,   -- how much should realestate pay to create the house? Percentage of the house price, set to 0 to disable
            rentPercentage = 20, -- how much should realestate company receive from rent payments
            grade = {
                createhome = 0,
                deletehome = 1,
                createdoor = 1,
                area = 1,
            },
            permission = {
                furnish = true,    -- enable or disable permission for job to furnish other player houses that is created by the job
                configuration = 2, -- Minimum grade to access a house configuration, make it higher than top grade to disable
                storage = 2,       -- allow storage creation and management,
                garage = 1,
                unlock = 2,        -- allow agent to lock / unlock a house managed by them
            }
        }
    },
    sellHome = {
        allowed = true,         -- allow homeowners to sell their home
        resellPercentage = 80,  -- percentage from the initial home price
        resellToCompany = false -- if true then it will use the company money to rebuy the home
    },
}
