--
-- search google groups mailinglist
--  inbox: your original inbox
--  group: name of the group
--
function googlegroups(inbox, group)
   sender = group .. '@googlegroups.com'
   return inbox:contain_field('Sender', sender)
end

--
-- search trac emails
--  inbox: your original inbox
--  name: name of the trac
--
function trac(inbox, name)
   return inbox:contain_field('X-Trac-Project', name)
end

--
-- search basecamp emails
--  inbox: your original inbox
--  name: name of the basecamp
--
function basecamp(infox, name)
   return infox:contain_field('Reply-To', name)
end
