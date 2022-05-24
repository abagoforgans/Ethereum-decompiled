contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;

function _fallback() payable {
    stor7 = 0
    stor0 = msg.sender
    return code.data[88 len 7251]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
address newOwner;
uint256 lockedUntilBlock;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupplyLimit;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
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

function killContract() {
    require msg.sender == owner
    selfdestruct(owner)
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

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function salvageTokensFromContract(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
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
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
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

function ACLYDCoinContract() {
    bool(name.length) = 0
    name.length.field_1 = 5
    name.length.field_8 = 'ACLYD' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 5
    symbol.length.field_8 = 'ACLYD' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    totalSupplyLimit = 750000000 * 10^18
    lockedUntilBlock = 0
    emit ContractLocked(uint256 arg1, string arg2):
                        0,
                        64,
                        28,
                        Mask(224, 0, 'Lock before crowdsale starts'),
}



}
