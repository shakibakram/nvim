local config = {
    cmd = {vim.fn.expand('/home/lc3/.local/share/nvim/mason/bin/jdtls')},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw', 'src'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
