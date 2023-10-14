# CraftOS-PC-Action

GitHub Action for [CraftOS-PC].

## CraftOS-PC Tweaks

CraftOS-PC-Action runs some tweaks in order to improve the styling of the output.
The tweaks can be seen at [craftos-pc-tweaks].

## Default CraftOS settings

Please note that CraftOS-PC-Action comes with default CraftOS [settings]. However, you have the option to override them by creating a `/.settings` file. **It is important to set the setting `bios.use_multishell` to `false` in order to ensure proper logging.** Additionally, setting `motd.enable` to `false` is recommended, although not necessary. Disabling the MOTD will reduce the number of messages displayed during startup.

Here is an example of how to properly configure the settings file:

```conf
{
    ["motd.enable"] = false,
    ["bios.use_multishell"] = false
}
```

[settings]: https://tweaked.cc/module/settings.html
[CraftOS-PC]: https://github.com/MCJack123/craftos2
[craftos-pc-tweaks]: https://github.com/Commandcracker/craftos-pc-tweaks

## Example workflow

```yml
name: CraftOS-PC Action
on:
    workflow_dispatch:
    push:
        #branches:
            #- main

jobs:
    publish:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout 🛎️
              uses: actions/checkout@v4

            - name: CraftOS-PC >_
              uses: Commandcracker/craftos-pc-action@v1
              #with:
                  # Example inputs ordered by usefulness
                  #root: ./src
                  #timeout: 1m
                  #disable_root: true
                  #directory: ./cc
                  #luajit: true
                  #options: --exec print('Hello, World!')
                  #disable_tweaks: true
                  #disable_default_settings: true
                  #id: 42
                  #timeout_signal: "KILL"
                  #disable_timeout_verbose: true
                  #timeout_arguments: "--preserve-status"
                  #disable_single: true
                  #disable_headless: true
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                                  INPUT                                                   |  TYPE  | REQUIRED | DEFAULT |                                                                                                                                                     DESCRIPTION                                                                                                                                                     |
|----------------------------------------------------------------------------------------------------------|--------|----------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                       <a name="input_directory"></a>[directory](#input_directory)                        | string |  false   |         |                                                                                      Sets the directory that stores <br>user data. Use disable_root if <br>you want to use the <br>user data computer directory as <br>root!                                                                                        |
| <a name="input_disable_default_settings"></a>[disable_default_settings](#input_disable_default_settings) | string |  false   |         |                                                                                  Setting this will dsiable all <br>default CraftOS-PC settings. This is <br>required if you want to <br>delete .settings for some odd <br>reason.                                                                                   |
|             <a name="input_disable_headless"></a>[disable_headless](#input_disable_headless)             | string |  false   |         |                                                                                      Setting this will disable the <br>headless render mode. It is <br>not recommended to do this <br>unless you know what you <br>are doing.                                                                                       |
|                   <a name="input_disable_root"></a>[disable_root](#input_disable_root)                   | string |  false   |         |                                                                           This will disable mounting the <br>root directory making the root <br>input useless. Use this if <br>root files should be mounted <br>to user data directory.                                                                             |
|                <a name="input_disable_single"></a>[disable_single](#input_disable_single)                | string |  false   |         |                                                                                   Setting this will disable the <br>single window render mode. It <br>is not recommended to do <br>this unless you know what <br>you are doing.                                                                                     |
|  <a name="input_disable_timeout_verbose"></a>[disable_timeout_verbose](#input_disable_timeout_verbose)   | string |  false   |         |                                                                                                                   This will disable verbose timeout, <br>not printing if a timeout <br>accoured.                                                                                                                    |
|                <a name="input_disable_tweaks"></a>[disable_tweaks](#input_disable_tweaks)                | string |  false   |         |                                                                                                                                Setting this will dsiable all <br>CraftOS-PC-Tweaks                                                                                                                                  |
|                                  <a name="input_id"></a>[id](#input_id)                                  | string |  false   |         |                                                                                                                                  Sets the ID of the <br>computer that will launch                                                                                                                                   |
|                            <a name="input_luajit"></a>[luajit](#input_luajit)                            | string |  false   |         |                                                                                                  Setting this will use CraftOS-PC <br>Accelerated (with LuaJIT) instead of default <br>CraftOS-PC (with PUC Lua)                                                                                                    |
|                          <a name="input_options"></a>[options](#input_options)                           | string |  false   |         |                                                                                                                            These are the options that <br>will be passed to CraftOS-PC                                                                                                                              |
|                               <a name="input_root"></a>[root](#input_root)                               | string |  false   | `"./"`  |                                                                                                                          The root directory of the <br>craftos-pc containg a startup.lua                                                                                                                            |
|                          <a name="input_timeout"></a>[timeout](#input_timeout)                           | string |  false   | `"60"`  | Specifies the maximum amount of <br>time that the action will <br>run before timing out. "timeout <br>is a floating point number <br>with an optional suffix:" 's' <br>for seconds (the default), 'm' for <br>minutes, 'h' for hours or <br>'d' for days. A duration <br>of 0 disables the associated <br>timeout.  |
|           <a name="input_timeout_arguments"></a>[timeout_arguments](#input_timeout_arguments)            | string |  false   |         |                                                                                                                                        Defines additional timeout arguments.                                                                                                                                        |
|                <a name="input_timeout_signal"></a>[timeout_signal](#input_timeout_signal)                | string |  false   | `"HUP"` |                                                                                   specify the signal to be <br>sent on timeout; SIGNAL may <br>be a name like 'HUP' <br>or a number; see 'kill <br>-l' for a list of <br>signals                                                                                    |

<!-- AUTO-DOC-INPUT:END -->
