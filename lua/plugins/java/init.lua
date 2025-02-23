return {
  'nvim-java/nvim-java',
  config = false,
  lazy = true,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      opts = {
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require('java').setup {
              root_markers = {
                'settings.gradle',
                'pom.xml',
                'build.gradle',
                'mvnw',
                'gradlew',
                'build.gradle',
              },
              -- load java debugger plugins
              java_debug_adapter = {
                enable = true,
              },
              notifications = {
                -- enable 'Configuring DAP' & 'DAP configured' messages on start up
                dap = true,
              },
              -- load java test plugins
              java_test = {
                enable = false,
              },
            }
          end,
        },
      },
    },
  },
}
