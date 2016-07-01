do
local function run(msg, matches)
local x = 229462627
local y = 147715308
local arshia = 147715308
    if matches[1] == 'left' and is_admin(msg) or msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbotmain) then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..fbotmain, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^[!/]([Ll][Ee][Ff][Tt])$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
