local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
    fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
    vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
    function()
        use 'wbthomason/packer.nvim'-- Packer can manage itself

        -- colorscheme -------------------
        use 'NTBBloodbath/doom-one.nvim'


        -- lsp ---------------------------------
        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
        use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'onsails/lspkind-nvim'
        use 'hrsh7th/cmp-buffer'
        use 'L3MON4D3/LuaSnip' -- 代码提示
        use 'saadparwaiz1/cmp_luasnip'  -- 代码提示
        use 'rafamadriz/friendly-snippets' -- 自定义代码段
        use 'williamboman/nvim-lsp-installer' 

        -- nvim-lualine/lualine.nvim UI美化 --------------------------------
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use { 'tami5/lspsaga.nvim' }  -- nightly

        -- bufferline 显示标签页,与lualine配合使用 ------------------------
        use "akinsho/bufferline.nvim"

        -- nvim-tree ------------------------------------------
        use {
            'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icon
            },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }

        -- 语法高亮 ---------------------------------------
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            commit = "44b7c8100269161e20d585f24bce322f6dcdf8d2",
        }        


        -- 文件搜索 预览 等
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                "nvim-lua/plenary.nvim",
                "kyazdani42/nvim-web-devicons"
            }
        }
        use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"} -- 用了这个插件以后，貌似更快了(感觉输入更跟手了，可能是心理作用)。但是对于我的小项目感受不是很明显

        -- 终端
        use "numToStr/FTerm.nvim"

        -- 格式化
        use 'sbdchd/neoformat'

        -- tmux
        use 'aserowy/tmux.nvim'
    end,
    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
