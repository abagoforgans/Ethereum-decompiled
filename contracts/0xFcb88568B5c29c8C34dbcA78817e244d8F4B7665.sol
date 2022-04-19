contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor6;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function _fallback() payable {
    bool(stor8.length) = 0
    stor8.length.field_1 = 6
    stor8.length.field_8 = 'LHCoin' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor9.length) = 0
    stor9.length.field_1 = 3
    stor9.length.field_8 = 'LHC' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 8
    stor11 = 100 * 10^6
    stor12 = 0
    require not msg.value
    stor6 = msg.sender
    require msg.sender == stor6
    require not stor12
    require stor0 + (20000 * 3600 * stor11) >= stor0
    stor0 += 20000 * 3600 * stor11
    require stor1[address(msg.sender)] + (20000 * 3600 * stor11) >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += 20000 * 3600 * stor11
    emit Mint((20000 * 3600 * stor11), msg.sender);
    require msg.sender == stor6
    stor12 = 1
    emit MintFinished()
    return code.data[1170 len 7306]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint8 stor2;
array of address owner;
mapping of uint256 allowance;
array of address ownersOfToken;
address owner;
uint8 stor7; offset 160
uint128 stor7; offset 160
address managerAddress;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 decimalMultiplier;
uint8 mintingFinished;
address stor12; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function ownersLen() {
    return owner.length
}

function balances(address arg1) {
    return balances[arg1]
}

function decimalMultiplier() {
    return decimalMultiplier
}

function decimals() {
    return decimals
}

function manager() {
    return managerAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function ownersOfToken(uint256 arg1) {
    require arg1 < ownersOfToken.length
    return address(ownersOfToken[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function onChain(address arg1) {
    return bool(stor2[arg1])
}

function ownerAddress(uint256 arg1) {
    require arg1 < owner.length
    return address(owner[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1) {
    require msg.sender == owner
    managerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    mintingFinished = 1
    emit MintFinished()
    return 1
}

function setBountyCoin(address arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    stor12 = arg1
}

function setExchangeable(bool arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function exchangeBounty(address arg1, uint256 arg2) {
    require msg.sender == stor12
    require uint8(stor7.field_160)
    balances[address(arg1)] = arg2
    totalSupply += arg2
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    emit Burn(arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    if not stor2[address(arg1)]:
        owner.length++
        if not owner.length <= owner.length + 1:
            idx = owner.length + 1
            while owner.length > idx:
                uint256(owner[idx]) = 0
                idx = idx + 1
                continue 
        address(owner[owner.length]) = arg1
        stor2[address(arg1)] = 1
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor2[address(arg2)]:
        ownersOfToken.length++
        if not ownersOfToken.length <= ownersOfToken.length + 1:
            idx = ownersOfToken.length + 1
            while ownersOfToken.length > idx:
                uint256(ownersOfToken[idx]) = 0
                idx = idx + 1
                continue 
        address(ownersOfToken[ownersOfToken.length]) = arg2
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
