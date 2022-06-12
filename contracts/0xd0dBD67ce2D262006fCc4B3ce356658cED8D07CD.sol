contract main {




// =====================  Runtime code  =====================


array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;

function sub_6a66fc22(?) {
    require arg1 < sub_6a66fc22.length
    return uint256(sub_6a66fc22[arg1].field_256)
}

function sub_98597490(?) {
    return sub_6a66fc22.length
}

function _fallback() payable {
    revert
}

function sub_6e58cd5d(?) {
    require arg1 < sub_6a66fc22.length
    require 0 < uint256(sub_6a66fc22[arg1].field_0)
    if msg.sender == address(sub_6a66fc22[arg1].field_0):
        require arg1 < sub_6a66fc22.length
        uint256(sub_6a66fc22[arg1].field_0)++
        address(stor[('array', ('mul', 4, ('param', 'arg1')), ('name', 'sub_6a66fc22', 0)) + uint256(sub_6a66fc22[arg1].field_0)].field_0) = arg2
}

function sub_5d6e6977(?) {
    require arg1 < sub_6a66fc22.length
    require 0 < uint256(sub_6a66fc22[arg1].field_0)
    require arg1 < sub_6a66fc22.length
    require 0 < uint256(sub_6a66fc22[arg1].field_768)
    mem[128] = uint256(stor[sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3))].field_0)
    idx = 128
    s = 0
    while stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3)].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3))].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_6a66fc22[arg1].field_0), 
           Array(len=stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3)].length, data=mem[128 len stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3)].length])
}

function sub_325bced6(?) payable {
    mem[64] = 96
    require not msg.value
    require arg1 < sub_6a66fc22.length
    if var13003 >= uint256(sub_6a66fc22[arg1].field_0):
        return bool(var13004)
    require arg1 < sub_6a66fc22.length
    require var17004 < uint256(sub_6a66fc22[arg1].field_0)
    if address(sub_6a66fc22[(4 * arg1) + var17004].field_0) != arg2:
        if arg1 < sub_6a66fc22.length:
            mem[0] = 0
            if var17004 + 1 >= uint256(sub_6a66fc22[arg1].field_0):
                return bool(var17005)
            if arg1 < sub_6a66fc22.length:
                var17004 = var17004 + 1
                var17005 = var17005
                continue 
    else:
        if arg1 < sub_6a66fc22.length:
            mem[0] = 0
            if var17004 + 1 >= uint256(sub_6a66fc22[arg1].field_0):
                return 1
            if arg1 < sub_6a66fc22.length:
                var17004 = var17004 + 1
                var17005 = 1
                continue 
    revert
}

function getMessage(uint256 arg1, uint256 arg2) {
    require arg1 < sub_6a66fc22.length
    require arg2 < uint256(sub_6a66fc22[arg1].field_256)
    require arg1 < sub_6a66fc22.length
    require arg2 < uint256(sub_6a66fc22[arg1].field_512)
    require arg1 < sub_6a66fc22.length
    require arg2 < uint256(sub_6a66fc22[arg1].field_768)
    mem[128] = uint256(stor[sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + arg2)].field_0)
    idx = 128
    s = 0
    while stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + arg2].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + arg2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + arg2].field_0), 
           uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 2) + arg2].field_0),
           Array(len=stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + arg2].length, data=mem[128 len stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + arg2].length])
}

function sub_e845f58c(?) {
    sub_6a66fc22.length++
    uint256(sub_6a66fc22[sub_6a66fc22.length].field_0) = 0
    idx = 0
    while uint256(sub_6a66fc22[sub_6a66fc22.length].field_0) > idx:
        address(sub_6a66fc22[(4 * sub_6a66fc22.length) + idx].field_0) = 0
        idx = idx + 1
        continue 
    stor290D[stor0.length] = 0
    idx = 0
    while stor290D[stor0.length] > idx:
        address(stor[idx + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)]) = 0
        idx = idx + 1
        continue 
    stor290D[stor0.length] = 0
    idx = 0
    while stor290D[stor0.length] > idx:
        uint256(stor[idx + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565)]) = 0
        idx = idx + 1
        continue 
    stor290D[stor0.length] = 0
    mem[0] = (4 * sub_6a66fc22.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e566
    idx = 0
    while sha3((4 * sub_6a66fc22.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e566) + stor290D[stor0.length] > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        if 31 < stor[idx + sha3(mem[0])].length:
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    require sub_6a66fc22.length - 1 < sub_6a66fc22.length
    uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_0)++
    uint256(stor[('array', ('mul', 4, ('add', -1, ('stor', ('length', ('name', 'sub_6a66fc22', 0))))), ('name', 'sub_6a66fc22', 0)) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(stor[('array', ('mul', 4, ('add', -1, ('stor', ('length', ('name', 'sub_6a66fc22', 0))))), ('name', 'sub_6a66fc22', 0)) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_0)].field_0))
    uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_256)++
    uint256(stor[sha3((4 * sub_6a66fc22.length - 1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((4 * sub_6a66fc22.length - 1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_256)].field_0))
    uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_512)++
    uint256(stor[sha3((4 * sub_6a66fc22.length - 1) + ('name', 'sub_6a66fc22', 0) + 2) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_512)].field_0) = arg1
    uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_768)++
    uint256(stor[sha3(sha3((4 * sub_6a66fc22.length - 1) + ('name', 'sub_6a66fc22', 0) + 3) + uint256(sub_6a66fc22[sub_6a66fc22.length - 1].field_768))][].field_0) = Array(len=arg2.length, data=arg2[all])
    return (sub_6a66fc22.length - 1)
}

function sub_18b4e7d5(?) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require arg1 < sub_6a66fc22.length
    if var14003 >= uint256(sub_6a66fc22[arg1].field_0):
        if var14004:
            require arg1 < sub_6a66fc22.length
            uint256(sub_6a66fc22[arg1].field_256)++
            uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0))
            uint256(sub_6a66fc22[arg1].field_512)++
            uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 2) + uint256(sub_6a66fc22[arg1].field_512)].field_0) = arg2
            uint256(sub_6a66fc22[arg1].field_768)++
            uint256(stor[sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + uint256(sub_6a66fc22[arg1].field_768))][].field_0) = Array(len=arg3.length, data=arg3[all])
    else:
        require arg1 < sub_6a66fc22.length
        require var18004 < uint256(sub_6a66fc22[arg1].field_0)
        require arg1 < sub_6a66fc22.length
        mem[0] = 0
        if address(sub_6a66fc22[(4 * arg1) + var18004].field_0) == msg.sender:
            if var18004 + 1 < uint256(sub_6a66fc22[arg1].field_0):
                require arg1 < sub_6a66fc22.length
                var18004 = var18004 + 1
                var18005 = 1
                continue 
            require arg1 < sub_6a66fc22.length
            uint256(sub_6a66fc22[arg1].field_256)++
            uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0))
            uint256(sub_6a66fc22[arg1].field_512)++
            uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 2) + uint256(sub_6a66fc22[arg1].field_512)].field_0) = arg2
            uint256(sub_6a66fc22[arg1].field_768)++
            uint256(stor[sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + uint256(sub_6a66fc22[arg1].field_768))][].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            if var18004 + 1 < uint256(sub_6a66fc22[arg1].field_0):
                require arg1 < sub_6a66fc22.length
                var18004 = var18004 + 1
                var18005 = var18005
                continue 
            if var18005:
                require arg1 < sub_6a66fc22.length
                uint256(sub_6a66fc22[arg1].field_256)++
                uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 1) + uint256(sub_6a66fc22[arg1].field_256)].field_0))
                uint256(sub_6a66fc22[arg1].field_512)++
                uint256(stor[sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 2) + uint256(sub_6a66fc22[arg1].field_512)].field_0) = arg2
                uint256(sub_6a66fc22[arg1].field_768)++
                uint256(stor[sha3(sha3((4 * arg1) + ('name', 'sub_6a66fc22', 0) + 3) + uint256(sub_6a66fc22[arg1].field_768))][].field_0) = Array(len=arg3.length, data=arg3[all])
}



}
