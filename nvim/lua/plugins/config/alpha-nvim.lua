return {
    config = function()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = {
            [[                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         ]],
            [[                     •██  ██ ·██ ▐███▪▐█ ▀.                        ]],
            [[                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       ]],
            [[                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       ]],
            [[                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        ]],
            [[                                             o8o                   ]],
            [[                                             `"'                   ]],
            [[ooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  ]],
            [[`888P"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P"Y88bP"Y88b ]],
            [[ 888   888  888ooo888 888   888   `88..8'    888   888   888   888 ]],
            [[ 888   888  888    .o 888   888    `888'     888   888   888   888 ]],
            [[o888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o]],
        }
        dashboard.section.buttons.val = {
            dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "\\ t f", "  Find file" ),
            dashboard.button( "\\ t o", "  Previously opened files" ),
            dashboard.button( "\\ t C", "  Colorscheme" ),
            dashboard.button( "\\ p", "ﯻ  Toggle Sidebar" ),
            dashboard.button( "\\ D", "  Git Changes" ),
            dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
        }
        alpha.setup(dashboard.opts)
    end
}
