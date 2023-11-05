#> repopo:item/sign
# 看板一括入手


# 看板
    give @s oak_sign{display: {Name: '{"text": "青鬼抽選部屋", "color": "blue"}'}, BlockEntityTag: {is_waxed: true, front_text: {color: "blue", has_glowing_text: true, messages: ['{"text": "青鬼抽選部屋", "bold": true}', '""', '""', '""']}}}
    give @s oak_sign{display: {Name: '{"text": "参加", "color": "green"}'}, BlockEntityTag: {is_waxed: true, front_text: {color: "green", has_glowing_text: true, messages: ['{"text": "参加", "bold": true, "clickEvent": {"action": "run_command", "value": "/team join Hiroshi"}}', '""', '""', '""']}}}
    give @s oak_sign{display: {Name: '{"text": "不参加", "color": "dark_purple"}'}, BlockEntityTag: {is_waxed: true, front_text: {color: "purple", has_glowing_text: true, messages: ['{"text": "不参加", "bold": true, "clickEvent": {"action": "run_command", "value": "/team join Guest"}}', '""', '""', '""']}}}
    give @s oak_sign{display: {Name: '{"text": "右クリ復活", "color": "aqua"}'}, BlockEntityTag: {is_waxed: true, front_text: {color: "light_blue", has_glowing_text: true, messages: ['{"text": "右クリックで", "bold": true, "clickEvent": {"action": "run_command", "value": "/function repopo:system/hiroshi_death"}}', '{"text": "復活"}', '""', '""']}}}
    give @s oak_sign{display: {Name: '{"text": "右クリ脱出", "color": "blue"}'}, BlockEntityTag: {is_waxed: true, front_text: {color: "blue", has_glowing_text: true, messages: ['{"text": "右クリックで脱出", "bold": true, "clickEvent": {"action": "run_command", "value": "/function repopo:system/escape"}}', '""', '""', '""']}}}