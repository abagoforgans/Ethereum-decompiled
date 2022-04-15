contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor1 = msg.sender
    return code.data[102 len 3552]
}



// =====================  Runtime code  =====================


const name = 'Tres comas Token'

const decimals = 18

const symbol = '3COMAS'

const RATE = 10^9


uint256 _totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
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
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 10^9 * msg.value / msg.value == 10^9
    require balanceOf[address(msg.sender)] + (10^9 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^9 * msg.value
    require _totalSupply + (10^9 * msg.value) >= _totalSupply
    _totalSupply += 10^9 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 10^9 * msg.value / msg.value == 10^9
    require balanceOf[address(msg.sender)] + (10^9 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^9 * msg.value
    require _totalSupply + (10^9 * msg.value) >= _totalSupply
    _totalSupply += 10^9 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require balanceOf[address(msg.sender)] + arg3 >= balanceOf[address(msg.sender)]
    balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + arg3
    require arg3 <= balanceOf[address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = balanceOf[address(msg.sender)] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
