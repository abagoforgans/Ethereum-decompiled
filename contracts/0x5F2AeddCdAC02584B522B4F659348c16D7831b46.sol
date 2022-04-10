contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_8 = 'WWAMT2' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 25
    stor2.length.field_8 = 'World Wide Anonymous Coin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 3
    stor4 = 2 * 10^10
    stor5 = 0
    stor6 = 417116 * 3600
    stor7 = 417236 * 3600
    stor8 = 417476 * 3600
    stor9 = 417816 * 24 * 3600
    require not msg.value
    stor5 = code.data[4844 len 20]
    stor0[stor5] = stor4
    return code.data[703 len 4129]
}



// =====================  Runtime code  =====================


const rate = 200000

const MAX_UINT256 = -1


mapping of uint256 balanceOf;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
address stor5;
uint256 sub_0dca9e7f;
uint256 sub_5638efce;
uint256 sub_d2768f05;
uint256 sub_df1d55e7;

function name() {
    return name[0 len name.length]
}

function sub_0dca9e7f(?) {
    return sub_0dca9e7f
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_5638efce(?) {
    return sub_5638efce
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d2768f05(?) {
    return sub_d2768f05
}

function sub_df1d55e7(?) {
    return sub_df1d55e7
}

function sub_485d79bb(?) {
    sub_df1d55e7 = block.timestamp
}

function sub_74ebf209(?) {
    sub_d2768f05 = block.timestamp
}

function sub_e67bc554(?) {
    sub_5638efce = block.timestamp
}

function startFirstRound() {
    sub_0dca9e7f = block.timestamp
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    if balanceOf[address(arg1)] < 0:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0
            require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    if balanceOf[address(arg1)] < 0:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = msg.sender
            mem[ceil32(arg3.length) + 164] = arg2
            mem[ceil32(arg3.length) + 196] = 96
            mem[ceil32(arg3.length) + 228] = arg3.length
            mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            require ext_call.success
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}

function _fallback() payable {
    require msg.value > 10^16
    require block.timestamp < sub_df1d55e7
    require block.timestamp >= sub_0dca9e7f
    if block.timestamp > sub_5638efce:
        require msg.value <= 0x4c4294205237c7b2d8a4234cd190f60ed1f04947fa570f0199e5dc2db9eb
        require 220000 * msg.value <= -(totalSupply / 50) - 1
        require balanceOf[stor5] >= (220000 * msg.value) + (totalSupply / 50)
        require balanceOf[address(msg.sender)] <= (-220000 * msg.value) - 1
        balanceOf[address(msg.sender)] += 220000 * msg.value
        require balanceOf[stor5] >= 220000 * msg.value
        balanceOf[stor5] += -220000 * msg.value
    else:
        if block.timestamp <= sub_d2768f05:
            require msg.value <= 0x48f1c556916d01cc762db276001b5aaa007688e0acac5122ec400a41ffc0
            require 230000 * msg.value <= -(totalSupply / 50) - 1
            require balanceOf[stor5] >= (230000 * msg.value) + (totalSupply / 50)
            require balanceOf[address(msg.sender)] <= (-230000 * msg.value) - 1
            balanceOf[address(msg.sender)] += 230000 * msg.value
            require balanceOf[stor5] >= 230000 * msg.value
            balanceOf[stor5] += -230000 * msg.value
        else:
            require msg.value <= 0x53e2d6238da3c21187e7c06e19b90ea9e6eeb702602c9081c2e33eff1950
            require 200000 * msg.value <= -(totalSupply / 50) - 1
            require balanceOf[stor5] >= (200000 * msg.value) + (totalSupply / 50)
            require balanceOf[address(msg.sender)] <= (-200000 * msg.value) - 1
            balanceOf[address(msg.sender)] += 200000 * msg.value
            require balanceOf[stor5] >= 200000 * msg.value
            balanceOf[stor5] += -200000 * msg.value
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_a9ca7d63(?) payable {
    require msg.value > 10^16
    require block.timestamp < sub_df1d55e7
    require block.timestamp >= sub_0dca9e7f
    if block.timestamp > sub_5638efce:
        require msg.value <= 0x4c4294205237c7b2d8a4234cd190f60ed1f04947fa570f0199e5dc2db9eb
        require 220000 * msg.value <= -(totalSupply / 50) - 1
        require balanceOf[stor5] >= (220000 * msg.value) + (totalSupply / 50)
        require balanceOf[address(msg.sender)] <= (-220000 * msg.value) - 1
        balanceOf[address(msg.sender)] += 220000 * msg.value
        require balanceOf[stor5] >= 220000 * msg.value
        balanceOf[stor5] += -220000 * msg.value
    else:
        if block.timestamp <= sub_d2768f05:
            require msg.value <= 0x48f1c556916d01cc762db276001b5aaa007688e0acac5122ec400a41ffc0
            require 230000 * msg.value <= -(totalSupply / 50) - 1
            require balanceOf[stor5] >= (230000 * msg.value) + (totalSupply / 50)
            require balanceOf[address(msg.sender)] <= (-230000 * msg.value) - 1
            balanceOf[address(msg.sender)] += 230000 * msg.value
            require balanceOf[stor5] >= 230000 * msg.value
            balanceOf[stor5] += -230000 * msg.value
        else:
            require msg.value <= 0x53e2d6238da3c21187e7c06e19b90ea9e6eeb702602c9081c2e33eff1950
            require 200000 * msg.value <= -(totalSupply / 50) - 1
            require balanceOf[stor5] >= (200000 * msg.value) + (totalSupply / 50)
            require balanceOf[address(msg.sender)] <= (-200000 * msg.value) - 1
            balanceOf[address(msg.sender)] += 200000 * msg.value
            require balanceOf[stor5] >= 200000 * msg.value
            balanceOf[stor5] += -200000 * msg.value
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
