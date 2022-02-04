# tmux-notmuch

Allows you to display not much email counts in Tmux status-right and status-left.

## Requirements

[Notmuch](https://notmuchmail.org/) must be installed.

## Installation
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'wpettersson/tmux-notmuch'

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/wpettersson/tmux-notmuch ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/temp.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

If format strings are added to `status-right`, they should now be visible.

## Usage

Add any of the supported format strings (see below) to the existing `status-right` tmux option.
Note that without setting an search string, this will show the number of emails
with the tag `unread` in your mailbox.
Example:

    # in .tmux.conf
    set -g status-right 'temp: #{notmuch} | %a %h-%d %H:%M '

### Supported Options

- `@notmuch_tags` - A notmuch [search
	string](https://notmuchmail.org/searching/). The default is `tag:unread`, a
	common use-case is `tag:unread and tag:inbox`.
