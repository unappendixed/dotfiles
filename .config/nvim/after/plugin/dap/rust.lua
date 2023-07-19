local dap = require('dap')

dap.adapters.lldb = {
    type = "executable",
    command = "/usr/bin/lldb-vscode",
    name = "lldb"
}

dap.adapters.rust = dap.adapters.lldb


dap.configurations.test = {
    {
        type = "lldb",
        request = "launch",
        name = "Debug",
        program = "${fileDirname}/../target/debug/${fileBasenameNoExtension}",
        cwd = "${workspaceRoot}",
        sourceLanguages = {
        "rust",
        }
    },
}
