local jdtls = require("jdtls")

local root_dir = vim.fs.root(0, {
    "pom.xml",
    "build.gradle",
    "build.gradle.kts",
    "mvnw",
    "gradlew",
})

if not root_dir then
    return
end

local project_name = vim.fn.fnamemodify(root_dir, ":t")

local workspace_dir =
    vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name

jdtls.start_or_attach({
    cmd = {
        vim.fn.exepath("jdtls"),
        "-data",
        workspace_dir,
    },

    root_dir = root_dir,

    settings = {
        java = {
            configuration = {
                updateBuildConfiguration = "interactive",
            },

            saveActions = {
                organizeImports = false,
            },
        },
    },

    init_options = {
        bundles = {},
    },
})
