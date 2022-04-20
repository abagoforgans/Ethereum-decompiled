contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 14
    stor3.length.field_8 = 'X8X token v1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'X8XToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'X8X' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 100000000 * 10^18
    stor2 = 4894000
    emit ContractLocked(4894000, 'Lock before crowdsale starts');
    return code.data[828 len 6629]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
address newOwner;
uint256 lockedUntilBlock;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupplyLimit;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function symbol() {
    return symbol[0 len symbol.length]
}

function totalSupplyLimit() {
    return totalSupplyLimit
}

function newOwner() {
    return newOwner
}

function lockedUntilBlock() {
    return lockedUntilBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function lockUntil(uint256 arg1, string arg2) {
    require msg.sender == owner
    lockedUntilBlock = arg1
    emit ContractLocked(arg1, Array(len=arg2.length, data=arg2[all]));
}

function approve(address arg1, uint256 arg2) {
    require block.number > lockedUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function salvageTokensFromContract(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 <= totalSupplyLimit
    require totalSupply <= -arg2 - 1
    totalSupply += arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require block.number > lockedUntilBlock
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require block.number > lockedUntilBlock
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.number > lockedUntilBlock
    require arg2
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] <= -arg3 - 1
    balanceOf[address(arg2)] += arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
