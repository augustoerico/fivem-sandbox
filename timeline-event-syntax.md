# FXClient events

Respresentation of something that happened that affects the (self) _character_ resource.

Examples:
- purchase affects _in\_game\_money_
- killing an NPC affects _threat\_level_ (may also affect in _player_ scope, not only _character_ scope)
- practice shooting affects _shooting\_skill_

Note: depending on the event nature, it may be cached and grouped in the client side to improve performance. Example:
- instead of sending an event for each piece of clothing in a purchase, make it like a cart and send the only once
- some events during a contract can be sent at the end of it
- character statistics may be collected every 1 to 5 minutes

Also, if the event processing result is not time-sensitive (like statistics) it can be processed in the background and return the result after it via webhook to FXServer, then FXServer to FXClient

\[WIP this point forward]
## Definition

Type: Object
Description: Representation of something that happened, triggerd by the FXClient (game client instance) in a given time.

## Structure

```json
{
    "agent": {
        "activity": ":activity",
        "threat_level": ":threat_level",
        "action": ":action"
    },
    "target": {
        ":type": ":type_obj",
    },
    "created_at": ":timestamp"
}
```

```
activity := "IN_FREEROAM" | "IN_STRUCTURED_EVENT" | in_contract
in_contract := "IN_CONTRACT-<id>..<variation>"
threat_level := "NEUTRAL" | "HOSTILE"

```