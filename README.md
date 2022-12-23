# mvce

## open.mp
```
Output:
[2022-11-20T20:55:25+0100] [Info] Player: hA.Divir, Command: /cmds, Success: 1
[2022-11-20T20:55:25+0100] [Info] Output:
[2022-11-20T20:55:25+0100] [Info] g: -2147483521
[2022-11-20T20:55:25+0100] [Error] Invalid memory access
[2022-11-20T20:55:27+0100] [Info] Player: hA.Divir, Command: /login, Success: 1
[2022-11-20T20:55:30+0100] [Info] Player: hA.Divir, Command: /cmds, Success: 1
[2022-11-20T20:55:30+0100] [Info] Output:
[2022-11-20T20:55:30+0100] [Info] g: -2147483648
[2022-11-20T20:55:30+0100] [Error] Invalid memory access
```

### Output with crashdetect loaded
```
[2022-12-23T12:31:13+0100] [Info] Player: renzitoo_silva, Command: /cmds, Success: 1
[2022-12-23T12:31:13+0100] [Info] Output:
[2022-12-23T12:31:13+0100] [Info] g: -2147483521
[2022-12-23T12:31:13+0100] [Info] [debug]
[2022-12-23T12:31:13+0100] [Info] [debug] Parameter count corrections:
[2022-12-23T12:31:13+0100] [Info] [debug]
[2022-12-23T12:31:13+0100] [Info] [debug] The 1st mangled arguments (e.g. `<1073741823 arguments>`) below should read `<2 arguments>`
[2022-12-23T12:31:13+0100] [Info] [debug] Parameter count loop detected.
[2022-12-23T12:31:13+0100] [Info] [debug]
[2022-12-23T12:31:13+0100] [Info] [debug] Run time error 5: "Invalid memory access"
[2022-12-23T12:31:13+0100] [Info] [debug] AMX backtrace:
[2022-12-23T12:31:13+0100] [Info] [debug] #0 000112ac in Iter_Func@Bits (start=-2147483520, Bit:data[]=@017089d4, size=4) at /home/mysy/Projects/samp/ysi-mcve/dependencies/YSI-Includes/YSI_Visual\y_commands\..\..\YSI_Data\y_playerarray\..\..\YSI_Data\y_bit\y_bit_impl.inc:275
[2022-12-23T12:31:13+0100] [Info] [debug] #1 0004c750 in ?? (0, 24861904, 0) at /home/mysy/Projects/samp/ysi-mcve/test.pwn:55
[2022-12-23T12:31:13+0100] [Info] [debug] #2 00032ce0 in Command_ReProcess (0, 24861884, 0)  at /home/mysy/Projects/samp/ysi-mcve/dependencies/YSI-Includes/YSI_Visual\y_commands\y_commands_impl.inc:711
[2022-12-23T12:31:13+0100] [Info] [debug] #3 00037318 in _@yHOnPlayerCommandText@000 (playerid=0, cmdtext[]=@017b5cbc "/cmds") <@Z:> at /home/mysy/Projects/samp/ysi-mcve/dependencies/YSI-Includes/YSI_Visual\y_commands\y_commands_impl.inc:1801
[2022-12-23T12:31:13+0100] [Info] [debug] #4 00025ab8 in public OnPlayerCommandText (0, 24861884) at /home/mysy/Projects/samp/ysi-mcve/dependencies/YSI-Includes/YSI_Visual\y_commands\..\..\YSI_Coding\y_hooks\..\y_cgen\y_cgen_impl.inc:157
[2022-12-23T12:31:13+0100] [Error] Invalid memory access
```

## samp
```
[20:56:22] Player: hA.Divir, Command: /cmds, Success: 1
[20:56:22] Output:
[20:56:22] g: -2147483521
[20:56:23] Player: hA.Divir, Command: /login, Success: 1
[20:56:24] Player: hA.Divir, Command: /cmds, Success: 1
[20:56:24] Output:
[20:56:24] g: --
```
