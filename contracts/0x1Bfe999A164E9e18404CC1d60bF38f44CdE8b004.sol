contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 0x339038cc4b8833ac98a1510c853bef983b0a34e4
    stor3 = 5
    require not msg.value
    mem[96 len -1780] = code.data[2098 len -1780]
    mem[64] = -1684
    stor1 = msg.sender
    stor4 = 0
    stor5 = 0
    stor0.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[318 len 1780]
}



// =====================  Runtime code  =====================


array of uint256 contractName;
address owner;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function sub_0366fc49(?) {
    return sub_0366fc49[arg1].field_0, sub_0366fc49[arg1].field_512, sub_0366fc49[arg1].field_768
}

function contractName() {
    return contractName[0 len contractName.length]
}

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    emit 0x18b4cbb3: msg.sender, msg.value
    stor4 += (100 * msg.value) - (stor3 * msg.value) / 100 * stor3 / 100
    sub_0366fc49[stor5].field_256++
    if not sub_0366fc49[stor5].field_256 <= sub_0366fc49[stor5].field_256 + 1:
        idx = 4 * sub_0366fc49[stor5].field_256 + 1
        while 4 * sub_0366fc49[stor5].field_256 > idx:
            sub_0366fc49[stor5][idx + 1].field_0 = 0
            sub_0366fc49[stor5][idx + 1].field_256 = 0
            sub_0366fc49[stor5][idx + 1].field_512 = 0
            sub_0366fc49[stor5][idx + 1].field_768 = 0
            idx = idx + 4
            continue 
    stor[(4 * sub_0366fc49[stor5].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor5', 5)), ('name', 'sub_0366fc49', 6)))].field_0 = msg.sender
    stor[(4 * sub_0366fc49[stor5].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor5', 5)), ('name', 'sub_0366fc49', 6)))].field_256 = (100 * msg.value) - (stor3 * msg.value) / 100
    stor[(4 * sub_0366fc49[stor5].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor5', 5)), ('name', 'sub_0366fc49', 6)))].field_512 = sub_0366fc49[stor5].field_0
    stor[(4 * sub_0366fc49[stor5].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor5', 5)), ('name', 'sub_0366fc49', 6)))].field_768 = ((100 * msg.value) - (stor3 * msg.value) / 100) + sub_0366fc49[stor5].field_0 - 1
    sub_0366fc49[stor5].field_0 += (100 * msg.value) - (stor3 * msg.value) / 100
    sub_0366fc49[stor5].field_768 = sub_0366fc49[stor5].field_0 / 10^18
}

function payout() {
    require owner == msg.sender
    stor5++
    require sub_0366fc49[stor5 - 1].field_0 - 1
    s = 0
    s = 0
    idx = 0
    while idx < sub_0366fc49[stor5 - 1].field_256:
        require idx < sub_0366fc49[stor5 - 1].field_256
        require idx < sub_0366fc49[stor5 - 1].field_256
        if block.hash(block.number - 1) % sub_0366fc49[stor5 - 1].field_0 - 1 < stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_512:
            mem[0] = stor5 - 1
            mem[32] = 6
            s = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_768
            s = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_512
            idx = idx + 1
            continue 
        if block.hash(block.number - 1) % sub_0366fc49[stor5 - 1].field_0 - 1 > stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_768:
            mem[0] = stor5 - 1
            mem[32] = 6
            s = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_768
            s = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_512
            idx = idx + 1
            continue 
        require idx < sub_0366fc49[stor5 - 1].field_256
        call stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_0 with:
           value sub_0366fc49[stor5 - 1].field_0 - 10^16 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            sub_0366fc49[stor5 - 1].field_512 = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_0
            call stor2 with:
               value stor4 wei
                 gas 2300 * is_zero(value) wei
        else:
            emit LotteryWinner(stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_0, sub_0366fc49[stor5 - 1].field_0);
            sub_0366fc49[stor5 - 1].field_512 = stor[(4 * idx) + ('array', 1, ('map', ('add', -1, ('stor', ('name', 'stor5', 5))), ('name', 'sub_0366fc49', 6)))].field_0
            call stor2 with:
               value stor4 wei
                 gas 2300 * is_zero(value) wei
            emit 0x49215579: stor4
            stor4 = 0
    call 0x0 with:
       value sub_0366fc49[stor5 - 1].field_0 - 10^16 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        sub_0366fc49[stor5 - 1].field_512 = 0
        call stor2 with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
    else:
        emit LotteryWinner(0, sub_0366fc49[stor5 - 1].field_0);
        sub_0366fc49[stor5 - 1].field_512 = 0
        call stor2 with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
        emit 0x49215579: stor4
        stor4 = 0
}



}
