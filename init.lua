local cjson = require "cjson";
local utils = require "utils"

local config = ngx.shared.config;

local file = io.open("config.json", "r");
local content = cjson.decode(file:read("*all"));
file:close();

for name, value in pairs(content) do
    config:set(name, value);
end
-- replace the hostname by ip
ngx.log(ngx.ERR, utils.redis_ip)
config:set("host", utils.redis_ip)