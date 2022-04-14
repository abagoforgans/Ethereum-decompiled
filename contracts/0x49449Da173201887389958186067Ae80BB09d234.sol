contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint8 stor11;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Hedge v1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'Hedge' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'HGD' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 50000000 * 10^18
    stor7 = block.timestamp + (4320 * 24 * 3600)
    stor8 = 50000000 * 10^18
    require not msg.value
    stor0 = msg.sender
    stor11[0] = 1
    stor11[this.address] = 1
    stor9[address(msg.sender)] = 50000000 * 10^18
    return code.data[614 len 4521]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint256 tokenFrozenUntilBlock;
uint256 timeLock;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;

function isRestrictedAddress(address arg1) {
    return bool(uint8(stor11[address(arg1)]))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenFrozenUntilBlock() {
    return tokenFrozenUntilBlock
}

function symbol() {
    return symbol[0 len symbol.length]
}

function timeLock() {
    return timeLock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freezeTransfersUntil(uint256 arg1, string arg2) {
    if owner == msg.sender:
        tokenFrozenUntilBlock = arg1
        emit TokenFrozen(arg1, Array(len=arg2.length, data=arg2[all]));
}

function editRestrictedAddress(address arg1) {
    if owner == msg.sender:
        uint256(stor11[address(arg1)]) = not uint8(stor11[address(arg1)]) or Mask(248, 8, uint256(stor11[address(arg1)]))
}

function approve(address arg1, uint256 arg2) {
    require block.number > tokenFrozenUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require block.number > tokenFrozenUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.number >= tokenFrozenUntilBlock
    require not uint8(stor11[address(arg1)])
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if owner == msg.sender:
        if block.timestamp < timeLock:
            require balanceOf[address(msg.sender)] - arg2 >= 10000000 * 10^18
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        require block.number >= tokenFrozenUntilBlock
        require not uint8(stor11[address(arg1)])
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] >= balanceOf[address(arg1)]
        if owner == msg.sender:
            require block.timestamp >= timeLock
        balanceOf[address(msg.sender)] = 0
        balanceOf[arg1] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
        owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.number > tokenFrozenUntilBlock
    require not uint8(stor11[address(arg2)])
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if owner == arg1:
        if block.timestamp < timeLock:
            require balanceOf[address(arg1)] - arg3 >= 10000000 * 10^18
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unfreezeTransfersUntil(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner == msg.sender:
        tokenFrozenUntilBlock = 0
        mem[ceil32(arg1.length) + 128] = 0
        mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit TokenFrozen(uint256 rg1, string rg2):
                             0,
                             64,
                             arg1.length,
                             Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
            emit TokenFrozen(uint256 rg1, string rg2):
                             0,
                             64,
                             arg1.length,
                             Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                             mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}



}
