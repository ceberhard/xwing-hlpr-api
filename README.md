# xwing-hlpr-api
This is a .NET Core Web API meant to help organize matches of the Fantasy Flight x-wing miniatures game.

### App Organization

1. Game_Events
    1. These are points in the game process where Actions occur
2. Actions
    1. Attached to specific hooks 

### JSON Structure

``` json
{
    "ship_list":
    [
        {
            "type":"T-65 X-Wing",
            "name":"Luke Skywalker",
            "pilot_skill":8,
            "upgrades":
            [
                {
                    "type":"Skill",
                    "name":"Push the Limit",
                    "text":"",
                    "game_event":"ship_activation"
                }
            ]
        }

    ]


}
```

``` json
{
    "game_events":
    [
        "pre_activation_phase",
        "before_ship_activation",
        "ship_activation",
        "ship_movement",
        "ship_action",
        "after_ship_activation",

    ]
}
```
