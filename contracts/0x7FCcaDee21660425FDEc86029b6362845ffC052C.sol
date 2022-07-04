contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
address stor8;
uint256 stor9;

function _fallback() payable {
    stor2 = 8
    require not msg.value
    mem[96 len -5056] = code.data[5447 len -5056]
    mem[64] = -4960
    stor3 = mem[96] * 10^stor2
    stor8 = msg.sender
    stor4[address(msg.sender)] = mem[96] * 10^stor2
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor9 = 10011010010
    return code.data[391 len 5056]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
mapping of uint256 balanceLocked;
mapping of uint256 allowance;
address stor8;
uint256 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceLocked(address arg1) {
    return balanceLocked[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function addressLocked(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function lock(address arg1) {
    require stor8 == msg.sender
    require stor8 != arg1
    stor5[address(arg1)] = 1
    emit Lock(arg1);
    return 1
}

function unlock(address arg1) {
    require stor8 == msg.sender
    require stor8 != arg1
    stor5[address(arg1)] = 0
    emit Unlock(arg1);
    return 1
}

function raise(uint256 arg1) {
    require arg1 > 0
    require stor8 == msg.sender
    totalSupply += arg1
    balanceOf[stor8] += arg1
    emit 0x71da0b73: arg1
    return 1
}

function sub_a951b3ae(?) {
    require stor8 == msg.sender
    require stor9 == arg2
    require not stor5[address(arg1)]
    stor8 = arg1
    stor9 = arg3
    emit 0xe2c7d1c4: msg.sender, arg1
    return 1
}

function release(uint256 arg1) {
    require arg1 > 0
    require stor8 == msg.sender
    require balanceOf[stor8] >= arg1
    totalSupply -= arg1
    balanceOf[stor8] -= arg1
    emit Release(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[stor8] += arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function frozen(address arg1, uint256 arg2) {
    require arg2 > 0
    require stor8 == msg.sender
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    balanceLocked[address(arg1)] += arg2
    emit Frozen(arg2, arg1);
    return 1
}

function unfrozen(address arg1, uint256 arg2) {
    require arg2 > 0
    require stor8 == msg.sender
    require balanceLocked[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    balanceLocked[address(arg1)] -= arg2
    emit Unfrozen(arg2, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 > 0
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    balanceOf[stor8] += arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg2 > 0
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function allot(address arg1) {
    require stor8 == msg.sender
    if balanceOf[address(arg1)] > 0:
        balanceOf[address(arg1)] = 0
        balanceOf[msg.sender] += balanceOf[address(arg1)]
    if balanceLocked[address(arg1)] > 0:
        balanceLocked[address(arg1)] = 0
        balanceLocked[msg.sender] += balanceLocked[address(arg1)]
    if balanceOf[address(arg1)] + balanceLocked[address(arg1)] <= 0:
        return 0
    emit 0x4a1e1124: balanceOf[address(arg1)], balanceLocked[address(arg1)], arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1
    require arg1 != msg.sender
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[msg.sender] -= arg2
    if arg1 != this.address:
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]:
    else:
        balanceOf[stor8] += arg2
        emit Transfer(arg2, msg.sender, stor8);
        if balanceOf[stor8] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[stor8]:
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 > 0
    require arg2
    require arg1 != arg2
    require not stor5[address(arg1)]
    require not stor5[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    balanceOf[arg1] -= arg3
    if arg2 != this.address:
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]:
            return 1
    else:
        balanceOf[stor8] += arg3
        emit Transfer(arg3, arg1, stor8);
        if balanceOf[stor8] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[stor8]:
            return 1
    revert
}



}
