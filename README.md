# YAM

**Requires [DataManager](https://github.com/tes3mp-scripts/DataManager)!**

Yet Another MOTD script for TES3MP.

## Installation

1. Place this repo into your `CoreScripts/scripts/custom/` directory.

1. Add the following to `CoreScripts/scripts/customScripts.lua`:

        ...
        -- DataManager needs to before YAM, like this
        DataManager = require("custom/DataManager/main")

        require("custom/tes3mp-yam/main")

1. Ensure that `DataManager` loads before this mod as seen above.

1. Optionally configure YAM by editing the `CoreScripts/data/custom/__config_YAM.json` file (see below).

## Configuration

* `btnText`

String.  Text to show for the confirmation button.  Default: `OK`

* `chatOnly`

Boolean.  Whether or not to only print the MOTD in the chat box.  Default: `false`

* `motd`

String.  The MOTD to print.  Default: `#008000This is the default MOTD for YAM!\n\nYou should change it.#FFFFFF`

* `showInChat`

Boolean.  Whether or not to also print the MOTD in the chat box.  Default: `false`
