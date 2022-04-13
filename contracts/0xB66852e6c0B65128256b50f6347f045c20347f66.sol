contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'ITA' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 2281000000 * 10^18
    stor3 = 114050000 * 10^18
    require not msg.value
    return code.data[309 len 4274]
}



// =====================  Runtime code  =====================


const name = 'ItalyCoin'

const decimals = 18

const RATE = 25000


uint256 TOTALSUPPLY;
array of uint256 symbol;
uint256 MAX_SUPPLY;
uint256 TOKEN_TO_CREATOR;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function TOKEN_TO_CREATOR() {
    return TOKEN_TO_CREATOR
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function _totalSupply() {
    return TOTALSUPPLY
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function TOTALSUPPLY() {
    return TOTALSUPPLY
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ItlyCoin() {
    owner = msg.sender
    balanceOf[address(msg.sender)] = TOKEN_TO_CREATOR
    require TOTALSUPPLY + TOKEN_TO_CREATOR >= TOTALSUPPLY
    TOTALSUPPLY += TOKEN_TO_CREATOR
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value >= 0
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 25000 * 10^18 * msg.value / 10^18 * msg.value == 25000
    require TOTALSUPPLY + (25000 * 10^18 * msg.value / 10^18) >= TOTALSUPPLY
    require TOTALSUPPLY + (25000 * 10^18 * msg.value / 10^18) <= MAX_SUPPLY
    require balanceOf[address(msg.sender)] + (25000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 25000 * 10^18 * msg.value / 10^18
    TOTALSUPPLY += 25000 * 10^18 * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value >= 0
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 25000 * 10^18 * msg.value / 10^18 * msg.value == 25000
    require TOTALSUPPLY + (25000 * 10^18 * msg.value / 10^18) >= TOTALSUPPLY
    require TOTALSUPPLY + (25000 * 10^18 * msg.value / 10^18) <= MAX_SUPPLY
    require balanceOf[address(msg.sender)] + (25000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 25000 * 10^18 * msg.value / 10^18
    TOTALSUPPLY += 25000 * 10^18 * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
