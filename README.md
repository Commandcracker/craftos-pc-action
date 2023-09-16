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
