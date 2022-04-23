contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 10000000 * 10^18
    stor1 = 1000000 * 10^18
    stor2 = 2500 * 10^18 * 3600
    require not msg.value
    stor3 = msg.sender
    return code.data[139 len 3882]
}



// =====================  Runtime code  =====================


const name = 'GNI'

const decimals = 18

const symbol = 'Genie Coin'

const RATE = 300


uint256 _totalSupply;
uint256 _initialSupply;
uint256 _futureSupply;
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

function _futureSupply() {
    return _futureSupply
}

function _initialSupply() {
    return _initialSupply
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
    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
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
    require _initialSupply >= 0
    if not msg.value:
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= _initialSupply
    else:
        require msg.value
        require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (300 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 300 * msg.value
        require 300 * msg.value <= _initialSupply
        _initialSupply += -300 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require _initialSupply >= 0
    if not msg.value:
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= _initialSupply
    else:
        require msg.value
        require 300 * msg.value / msg.value == 300
        require balanceOf[address(msg.sender)] + (300 * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 300 * msg.value
        require 300 * msg.value <= _initialSupply
        _initialSupply += -300 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
