contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
address stor6;
uint8 stor7;
address stor7; offset 8
address stor7;
address stor8;
address stor9;
mapping of uint256 stor10;
array of uint256 stor13;
array of uint256 stor14;
array of uint256 stor15;

function _fallback() {
    stor10[address(msg.sender)] = 1500000000 * 10^18
    stor3 = 10000000000 * 10^18
    bool(stor0.length) = 0
    uint255(stor0.length.field_1) = 14
    Mask(248, 0, stor0.length.field_8) = 'GD Union Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    uint255(stor1.length.field_1) = 4
    Mask(248, 0, stor1.length.field_8) = 'GDUT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = msg.sender
    stor5 = block.timestamp
    stor6 = 0xa201967b67fa4da2f7f4cc2a333d2594fc44d350
    uint8(stor7.field_0) = 0
    Mask(152, 0, stor7.field_8) = 0xc49909d6cc0b460adb33e591ec314dc817e9d2
    stor8 = 0x455a3ac6f11e6c301e4e5996f26efaa76c549474
    stor9 = 0xa93eae1db16f8710293a505289b0c8c34af5332f
    idx = 0
    while idx < 10:
        stor13.length++
        if not stor13.length <= stor13.length + 1:
            s = sha3(13) + stor13.length + 1
            while sha3(13) + stor13.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 13
        stor13[stor13.length] = 50000000 * 10^18
        idx = idx + 1
        continue 
    stor15[stor6] = stor13.length
    if not stor13.length:
        idx = 0
        while stor15[stor6] > idx:
            stor15[stor6][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor13.length > idx:
            stor15[stor6][s] = stor13[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor13.length
        while stor15[stor6] > idx:
            stor15[stor6][idx] = 0
            idx = idx + 1
            continue 
    stor15[address(stor7.field_0)] = stor13.length
    if not stor13.length:
        idx = 0
        while stor15[address(stor7.field_0)] > idx:
            stor15[address(stor7.field_0)][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor13.length > idx:
            stor15[address(stor7.field_0)][s] = stor13[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor13.length
        while stor15[address(stor7.field_0)] > idx:
            stor15[address(stor7.field_0)][idx] = 0
            idx = idx + 1
            continue 
    stor15[stor8] = stor13.length
    if not stor13.length:
        idx = 0
        while stor15[stor8] > idx:
            stor15[stor8][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor13.length > idx:
            stor15[stor8][s] = stor13[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor13.length
        while stor15[stor8] > idx:
            stor15[stor8][idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < 4:
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            s = sha3(14) + stor14.length + 1
            while sha3(14) + stor14.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 14
        stor14[stor14.length] = (500000000 * 10^18 * idx) + 1000000000 * 10^18
        idx = idx + 1
        continue 
    stor15[stor9] = stor14.length
    if not stor14.length:
        idx = 0
        while stor15[stor9] > idx:
            stor15[stor9][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor14.length > idx:
            stor15[stor9][s] = stor14[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor14.length
        while stor15[stor9] > idx:
            stor15[stor9][idx] = 0
            idx = idx + 1
            continue 
    return code.data[1705 len 6460]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint256 stor5;
address stor6;
address stor7;
address stor8;
address stor9;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
mapping of uint256 allowance;
array of uint256 stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function withdrawEther(uint256 arg1) payable {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require freezeOf[address(msg.sender)] + arg1 >= freezeOf[address(msg.sender)]
    require freezeOf[address(msg.sender)] + arg1 >= arg1
    freezeOf[address(msg.sender)] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require freezeOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= freezeOf[address(msg.sender)]
    freezeOf[address(msg.sender)] -= arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + arg1 >= arg1
    balanceOf[address(msg.sender)] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_ee6efa47(?) {
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            require msg.sender == stor8
    idx = 0
    while idx < block.timestamp - stor5 / 2190 * 3600:
        require idx < stor15[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor15[address(msg.sender)][idx]
        mem[32] = 15
        require idx < stor15[address(msg.sender)]
        mem[0] = sha3(address(msg.sender), 15)
        stor15[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}

function sub_cf8939aa(?) {
    require msg.sender == stor9
    require block.timestamp - stor5 > 0
    require block.timestamp - stor5 / 8760 * 24 * 3600 <= 3
    idx = 0
    while idx < block.timestamp - stor5 / 8760 * 24 * 3600:
        require idx < stor15[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor15[address(msg.sender)][idx]
        mem[32] = 15
        require idx < stor15[address(msg.sender)]
        mem[0] = sha3(address(msg.sender), 15)
        stor15[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
