contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 0
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'BCM' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 50 * 10^6 * 3600
    stor3 = 2500000 * 3600
    require not msg.value
    stor4 = msg.sender
    stor5[address(msg.sender)] = stor3
    require stor0 + stor3 >= stor0
    stor0 += stor3
    return code.data[536 len 4075]
}



// =====================  Runtime code  =====================


const name = 'BitClemm'

const decimals = 3

const RATE = 1000


uint256 _totalSupply;
array of uint256 symbol;
uint256 MAX_SUPPLY;
uint256 TOKEN_TO_CREATOR;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function TOKEN_TO_CREATOR() {
    return TOKEN_TO_CREATOR
}

function totalSupply() {
    return _totalSupply
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function _totalSupply() {
    return _totalSupply
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
        require 1000 * msg.value / msg.value == 1000
    if 1000 * msg.value:
        require 1000 * msg.value
        require 10^6 * msg.value / 1000 * msg.value == 1000
    require _totalSupply + (10^6 * msg.value / 10^18) >= _totalSupply
    require _totalSupply + (10^6 * msg.value / 10^18) <= MAX_SUPPLY
    require balanceOf[address(msg.sender)] + (10^6 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^6 * msg.value / 10^18
    _totalSupply += 10^6 * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value >= 0
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if 1000 * msg.value:
        require 1000 * msg.value
        require 10^6 * msg.value / 1000 * msg.value == 1000
    require _totalSupply + (10^6 * msg.value / 10^18) >= _totalSupply
    require _totalSupply + (10^6 * msg.value / 10^18) <= MAX_SUPPLY
    require balanceOf[address(msg.sender)] + (10^6 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^6 * msg.value / 10^18
    _totalSupply += 10^6 * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
