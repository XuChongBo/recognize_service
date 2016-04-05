local  utils = {}

function utils.getRedisIP()
    lines = io.lines("/etc/hosts")
    for s in lines do
        -- print(s)
        i, j = string.find(s,"\tredis ")
        if i and j then
            return string.sub(s, 1, i-1)
        end
    end
end

utils.redis_ip = utils.getRedisIP()
--print('get ip:',ip)
return utils
