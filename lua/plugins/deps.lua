return {
    { 
        "williamboman/mason.nvim", 
        priority=100,
        config=function()
            require('mason').setup()
        end
    },
	{'nvim-lua/plenary.nvim', lazy=false},
	{'nvim-tree/nvim-web-devicons', lazy=false},
	{'BurntSushi/ripgrep', lazy=false},
    {
        'nvim-telescope/telescope-fzf-native.nvim', 
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' ,
        lazy=false
    },
}
