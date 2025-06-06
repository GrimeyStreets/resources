## v1.1
- Fixed where required items of processing removes if you changes any setting
- Now you will see the available required items in the process menu.
### Replace:
- modules/collect/client/collect.lua
- modules/process/client/process.lua
- modules/process/server/process.lua

## v1.2
- Prop placement system added
### Add:
- modules/props/
- modules/creation/client/objectplacement.lua
- import sql from "INSTALL ME FIRST/sql for database/Update/v1.1 to v1.2.sql"
### Replace:
- locales/en.lua
- modules/_init/client/_init.lua
- modules/_init/server/_init.lua
- modules/creation/config.lua
- modules/creation/client/creation.lua

## v1.3
- Drug test kit added
## Add:
- new item to qb-core/shared/items.lua from "INSTALL ME FIRST/items/Update/v1.2 to v1.3.lua"
### Replace:
- locales/en.lua
- framework/server/qb.lua
- modules/usable/config.lua
- modules/usable/client/main.lua
- modules/usable/server/usable.lua

## v1.4
- usable nose inhale type fixed
### Replace:
- modules/usable/client/main.lua

## v1.5
- buyer npc will be removed after some time
### Replace:
- modules\npcsell\client\npcsell.lua
