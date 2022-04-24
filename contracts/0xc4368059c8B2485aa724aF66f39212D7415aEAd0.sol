contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
address stor5;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    stor1 = 200000000 * 10^18
    stor2 = 800000000 * 10^18
    require not msg.value
    stor5 = msg.sender
    stor3[stor5] = stor0
    return code.data[246 len 3954]
}



// =====================  Runtime code  =====================


const name = 'VRBTC'

const decimals = 18

const symbol = 'VRBTCToken'

const RATE = 300


uint256 _totalSupply;
uint256 _initialSupply;
uint256 _futureSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

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
    balanceOf[address(arg1)] += arg2
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

function createTokens(address arg1) payable {
    require arg1
    if not msg.value:
        require _initialSupply >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= _initialSupply
    else:
        require msg.value
        require 300 * msg.value / msg.value == 300
        require _initialSupply >= 300 * msg.value
        require balanceOf[address(arg1)] + (300 * msg.value) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 300 * msg.value
        require 300 * msg.value <= _initialSupply
        _initialSupply += -300 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if not msg.value:
        require _initialSupply >= 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= _initialSupply
    else:
        require msg.value
        require 300 * msg.value / msg.value == 300
        require _initialSupply >= 300 * msg.value
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
