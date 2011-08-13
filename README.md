# Oh my inbox

A collection of imapfilter functions to manage your inboxes.

## GOAL ?

http://inboxzero.com/

## How to use it ?

    cd ~/.imapfilter
    git clone https://github.com/francois2metz/oh-my-inbox

In your config.lua:

    package.path = package.path .. ";" .. os.getenv("HOME") .. "/.imapfilter/?/init.lua"
    filters = require 'oh-my-inbox'

    mailbox = IMAP {
      server = 'imap.example.com',
      ...
    }

    # Filter trac emails
    results = filters.trac(mailbox.INBOX, 'myproject')
    # Filter basecamp emails
    results = filters.basecamp(mailbox.INBOX, 'myproject')
    # Filter googlegroups mails
    results = filters.googlegroups(mailbox.INBOX, 'mygroup')

## Credits

Inspired by oh-my-zsh.

Created by François de Metz.

## License

MIT
