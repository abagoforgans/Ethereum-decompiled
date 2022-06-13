contract main {




// =====================  Runtime code  =====================


const name = 'aXpire'

const decimals = 18

const symbol = 'AXPR'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address stor4;
uint256 icoTokenExchangeRate;
uint256 tokenCreationCap;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8

function icoTokenExchangeRate() {
    return icoTokenExchangeRate
}

function totalSupply() {
    return totalSupply
}

function dead() {
    return bool(uint8(stor8.field_16))
}

function paused() {
    return bool(stor3)
}

function tokenCreationCap() {
    return tokenCreationCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenSaleActive() {
    return bool(uint8(stor8.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function haltIco() {
    return bool(uint8(stor8.field_8))
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function setIcoTokenExchangeRate(uint256 arg1) {
    require msg.sender == owner
    icoTokenExchangeRate = arg1
}

function setHaltIco(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function endIco() {
    require msg.sender == owner
    require 1 == bool(uint8(stor8.field_0))
    uint8(stor8.field_0) = 0
}

function toggleDead() {
    require msg.sender == owner
    Mask(240, 0, stor8.field_16) = Mask(240, 0, not uint8(stor8.field_16))
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendFundHome() {
    require msg.sender == owner
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sendFundHomeAmt(uint256 arg1) {
    require msg.sender == owner
    call stor4 with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens() payable {
    require uint8(stor8.field_0)
    require not uint8(stor8.field_8)
    require msg.value
    require icoTokenExchangeRate * msg.value / msg.value == icoTokenExchangeRate
    require (icoTokenExchangeRate * msg.value) + totalSupply >= totalSupply
    require tokenCreationCap >= (icoTokenExchangeRate * msg.value) + totalSupply
    totalSupply += icoTokenExchangeRate * msg.value
    balanceOf[msg.sender] += icoTokenExchangeRate * msg.value
    emit CreateToken((icoTokenExchangeRate * msg.value), msg.sender);
}



}
