#include <a_samp>

#include <YSI_Visual\y_commands>
#include <YSI_Players\y_groups>
#include <YSI_Coding\y_va>

new Group:gGroupLoggedIn;

main() {}

public OnGameModeInit() {
    gGroupLoggedIn = Group_Create("LoggedIn");

    Group_SetCommandDefault(GROUP_GLOBAL, UNDEF);

    Group_SetCommand(gGroupLoggedIn, YCMD:me, ALLOW);
    Group_SetCommand(GROUP_GLOBAL, YCMD:cmds, ALLOW);
    Group_SetCommand(GROUP_GLOBAL, YCMD:login, ALLOW);
}

public OnPlayerRequestClass(playerid, classid) {
    SetSpawnInfo(playerid, NO_TEAM, 0, -2926.6021, 1162.8817, 13.5313, 270.0, -1, -1, -1, -1, -1, -1);
    SpawnPlayer(playerid);

    return 1;
}

public e_COMMAND_ERRORS:OnPlayerCommandReceived(playerid, cmdtext[], e_COMMAND_ERRORS:success) {
    new color = 0xBB3366FF;

    if (success == COMMAND_OK) {
        color = 0x3366BBFF;
    }

    SendClientMessage(playerid, color, "Player: %s, Command: %s, Success: %d", ReturnPlayerName(playerid), cmdtext, success);
    printf("Player: %s, Command: %s, Success: %d", ReturnPlayerName(playerid), cmdtext, success);

    return success;
}

public e_COMMAND_ERRORS:OnPlayerCommandPerformed(playerid, cmdtext[], e_COMMAND_ERRORS:success) {
    return COMMAND_OK;
}

YCMD:login(playerid, params[], help) {
    Group_SetPlayer(gGroupLoggedIn, playerid, true);
    SendClientMessage(playerid, -1, "Group has been changed.");

    return 1;
}

YCMD:cmds(playerid, params[], help) {
    SendClientMessage(playerid, -1, "Output:");
    printf("Output:");
    foreach(new Group:g : PlayerGroups(playerid)) {
        SendClientMessage(playerid, -1, "g: %d", _:g);
        printf("g: %d", _:g);
    }

    return 1;
}

YCMD:me(playerid, params[], help) {
    if (IsNull(params))
        return SendClientMessage(playerid, 0xDD2222, "You must enter an action");

    SendClientMessageToAll(-1, "** %s %s **", ReturnPlayerName(playerid), params);

    return 1;
}