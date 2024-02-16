return {
    "neanias/everforest-nvim",
    lazy = false,
    version = false,
    priority = 1000,
    config = function()
        local everforest = require("everforest")
        everforest.setup {}
        everforest.load()
    end,
}
