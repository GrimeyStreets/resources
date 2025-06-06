if not IsDuplicityVersion() then
    Config = Config or {}

    function GetScreenshot()
        local Promise = promise.new()
        local server, field
        local options = {
            encoding = 'png'
        }
        if Config.Screenshot == 'fivemanage' then
            options.headers = {
                Authorization = GetConvar('FIVEMANAGE_TOKEN', '')
            }
            server = 'https://api.fivemanage.com/api/image'
            field = 'image'
        elseif Config.Screenshot == 'discord' then
            server = GetConvar('SCREENSHOT_WEBHOOK', '')
            field = 'files'
        elseif Config.Screenshot == 'standalone' then
            server = GetConvar('IMAGE_SERVER', '')
            field = 'file'
        end
        exports['screenshot-basic']:requestScreenshotUpload(server, field, options, function(data)
            if Config.Screenshot == 'fivemanage' then
                local image = json.decode(data)
                if image and image.url then
                    Promise:resolve(image.url)
                else
                    Promise:resolve(print("HOST UPLOAD ERROR", server))
                end
            elseif Config.Screenshot == 'discord' then
                local image = json.decode(data)
                if image and image.attachments[1].proxy_url then
                    Promise:resolve(image.attachments[1].proxy_url)
                else
                    Promise:resolve(print("HOST UPLOAD ERROR", server))
                end
            elseif Config.Screenshot == 'standalone' then
                local image = json.decode(data)
                if image and image.filename then
                    local link = ('%s/%s'):format(server, image.filename)
                    Promise:resolve(link)
                else
                    Promise:resolve(print("HOST UPLOAD ERROR", server))
                end
            end
        end)
        return Citizen.Await(Promise)
    end
end
