-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
[[                                                                .#%%%%%%%%%%,   ]],
[[                          *#%%%%%%%%#/                           ,(#%%%&%%%#    ]],
[[                     *#%%%%%%%%%%%%%%%%%%/                        /./##%%%%#    ]],
[[                   ##%%%%%%%%%%%%&&&&&&%%%%#                      ,  ,**///*    ]],
[[                 *#%%%%%%%%%%%%%%%%%%%%%%%%%%#                     . ./%%#####, ]],
[[                ((#%%%%%%%%%%%%%%&&&%%%%%%%%%%%#                   ,#%%%%&&%%##*]],
[[               ((%%%%%%%%%%%%&&&&&&&&&%%%%%%%%%%%.                 (#&&&&%&&&%%#]],
[[             ,%%%%%####%%%%%%&&&&&&&&&&&&%&&%%%%%%              (%#(%&&&&&&&&%%%]],
[[            .%%%##(##%###%#(%%%%%%%&&&&&&&&&&&%%&%%.           .,#%(&&&&&&&&&%%%]],
[[            #%%%%#(#(##%%%%#((((###%%%%%&&%&&&&&&&%%/         ..,##%&&&&&&%%&%&%]],
[[         *(((%%%#%%/##(####(/////((###%#%%&&&&&&&&&&&%        ,#(#%&&&&&&&%%&%&%]],
[[....,,,./(((/#%%%%(**//(//////////((((##%%%&&&&&&&&&&&%%#,/((..**#&#*///***&&&&%]],
[[        ,*/*/(#%%% ///(#((#((((////((((###%%&&&&&&&&&&&&&&&&&%%%%#&,*///***&&&&%]],
[[***.     ,./(##(%%%%#./(((#%%#(////(((#####%&&&&&&&&&&&&&&&&&&&&&%%(*///**(&&&&%]],
[[..,/*,   . ((///(%&%%&(/(#(((((((((((######%&&&&&&&&&&&&&&&&&&&&&&&%%(#((&&&&&%%]],
[[.,,,*// ,, *,,,***/(%&&&,##(((/(((#########%&&&&%&&&&&&&&&&&&&&&&&&%%%%&&&&&&&%%]],
[[*//*,**/.,.,,,,,****/(%&%.,//((####%######%%&&%/&&&&&&&&&&&&&&&&&&&&%%%%&&&&&&&&]],
[[,.....,.  ,,,***//(#%%%&%%%&&&&&&&&&%%%####(&&/%&&&&&&&&&&&&&&&&&&&&&%%%%&&&&&&&]],
[[.,*/**,.,/***//(#%%%%%%&&&%&&&&&%//&&%###//%&((&&&&&&&&&&&&&&&&&&&&%%%%%%%&&&&&&]],
[[,,,(((#*((((((#%%%%%&&&&&&&&&&&&&&/#%%#//*(&%(&&&&&&&&&&&&&&&&&&&&&&&&%%%%&&&&&&]],
[[,,**/##(((####%%%%%%&&&&&&&&&&&&&&&&%%(***/&##&%%%&&&&&&&&&&&&&&&&&&&%%&&&%&&&&&]],
[[*******(#%%%%%##%%&&&&&&&&&&&&&&&&&&&&&&&&&&(/%&&&&&&&&&&&&&&&&&&&&&%%&&&&%&&&&&]],
[[///(((#%%%%%%#%%&#%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&&&&&&%&&&&]],
[[(((#%%%%%%%&&&&&&&&%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&*. ]],
[[%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&(#/.]],
[[%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%((/]],
[[%%%&&&&&&&&&&&&&&&&&&&&&%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&#(*]],
[[%#%%&&&&&&&&&&&&&&&&&&&&(&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@&&&&&&&&%%#]],
[[*(*%&&&&&&&&&&&&&&&&&&&#%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@@@@@&&&&&&&%%]],
[[,,,**///(#&&&&&%&%(/&&&&@&&%@&&#(#%&&&&&&&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&]],
[[..,,,,,,,,,,*****///#&@&&&&&&####%%%%%%%&&&&&&&&&&&&&&&&&&&&&@@@@@@&&&&&&&&&&&&&]],
[[*/(*..,//**,,,,*,,,*(#%((#&&%#############(#%&&@&&&&&&&&&@@@@&&@@@@@@@&&&&&&&&&&]],
[[.....(#.*#%%%#((//***,,,*********((##%%#%%%%&%#%%%%@@@@@@@&@@@@&@@@@@@@@&&&&&&&&]],
}

-- dashboard.section.header.val = {
-- 	[[                                                        ###(//*                   ]],
-- 	[[                                                     #######////////              ]],
-- 	[[                                                  /#########/////////////         ]],
-- 	[[                                                ############//////////////////    ]],
-- 	[[                                             ###############////////////////////  ]],
-- 	[[                                          ##################////////////////////  ]],
-- 	[[                                       *####################////////////////////  ]],
-- 	[[        /((/                         #######################////////////////////  ]],
-- 	[[      (((((((((                   ##########################(///////////////////  ]],
-- 	[[   (((((((((((((((             (########################*   (///////////////////  ]],
-- 	[[  #((((((((((((((((((,      *########################       (///////////////////  ]],
-- 	[[     (((((((((((((((((((( ########################          (///////////////////  ]],
-- 	[[       ,((((((((((((((((((((###################             (///////////////////  ]],
-- 	[[          (((((((((((((((((((((############.                (///////////////////  ]],
-- 	[[             ((((((((((((((((((((((#####                    (///////////////////  ]],
-- 	[[               #((((((((((((((((((((((                      (///////////////////  ]],
-- 	[[            #######((((((((((((((((((((((                   (///////////////////  ]],
-- 	[[         ############(((((((((((((((((((((((*               (///////////////////  ]],
-- 	[[      *#################((((((((((((((((((((((((            (///////////////////  ]],
-- 	[[    ###################/   ((((((((((((((((((((((((         (///////////////////  ]],
-- 	[[  ##################         *((((((((((((((((((((((((*     (///////////////////  ]],
-- 	[[    #############               ((((((((((((((((((((((((((  (///////////////////  ]],
-- 	[[       ######(                     (((((((((((((((((((((((((////////////////////  ]],
-- 	[[                                      ((((((((((((((((((((((////////////////////  ]],
-- 	[[                                        .(((((((((((((((((((////////////////////  ]],
-- 	[[                                           (((((((((((((((((////////////////////  ]],
-- 	[[                                              ((((((((((((((///////////////////.  ]],
-- 	[[                                                 (((((((((((///////////////(.     ]],
-- 	[[                                                   *((((((((///////////           ]],
-- 	[[                                                      #(((((//////                ]],
-- 	[[                                                         (//(                     ]],
-- }
dashboard.section.buttons.val = {
 	dashboard.button("SPA ff", "Find file", ":Telescope find_files <CR>"),
	dashboard.button("SPA fr", "Find recent", ":Telescope resume <CR>"),
 	dashboard.button("SPA fg", "Find text", ":Telescope live_grep <CR>"),
 	dashboard.button("q", "Quit Neovim", ":qa<CR>"),
}

dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
