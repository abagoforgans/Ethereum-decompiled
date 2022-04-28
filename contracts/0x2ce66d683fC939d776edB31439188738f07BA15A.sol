contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 10^6
    stor1 = 0
    require not msg.value
    stor2 = msg.sender
    stor3[stor2] = stor0
    return code.data[211 len 4188]
}



// =====================  Runtime code  =====================


const name = 'Tomyuo Coin'

const decimals = 3

const symbol = 'TMC'

const RATE = 10


uint256 totalSupply;
uint256 stor1;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value > 0
    if not msg.value:
        require stor1 >= stor1
        require stor1 <= totalSupply
        require 0 <= balanceOf[stor2]
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, owner, arg1);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor1 >= stor1
    require msg.value
    require 10 * msg.value / msg.value == 10
    if not 10 * msg.value:
        require stor1 >= stor1
        require stor1 <= totalSupply
        require 0 <= balanceOf[stor2]
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, owner, arg1);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor1 >= stor1
    require 10 * msg.value
    require 10000 * msg.value / 10 * msg.value == 1000
    require stor1 + (10000 * msg.value / 10^18) >= stor1
    require stor1 + (10000 * msg.value / 10^18) <= totalSupply
    require 10000 * msg.value / 10^18 <= balanceOf[stor2]
    balanceOf[stor2] -= 10000 * msg.value / 10^18
    require balanceOf[address(arg1)] + (10000 * msg.value / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10000 * msg.value / 10^18
    emit Transfer((10000 * msg.value / 10^18), owner, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor1 + (10000 * msg.value / 10^18) >= stor1
    stor1 += 10000 * msg.value / 10^18
}

function _fallback() payable {
    require msg.value > 0
    if not msg.value:
        require stor1 >= stor1
        require stor1 <= totalSupply
        require 0 <= balanceOf[stor2]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, owner, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor1 >= stor1
    require msg.value
    require 10 * msg.value / msg.value == 10
    if not 10 * msg.value:
        require stor1 >= stor1
        require stor1 <= totalSupply
        require 0 <= balanceOf[stor2]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, owner, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor1 >= stor1
    require 10 * msg.value
    require 10000 * msg.value / 10 * msg.value == 1000
    require stor1 + (10000 * msg.value / 10^18) >= stor1
    require stor1 + (10000 * msg.value / 10^18) <= totalSupply
    require 10000 * msg.value / 10^18 <= balanceOf[stor2]
    balanceOf[stor2] -= 10000 * msg.value / 10^18
    require balanceOf[address(msg.sender)] + (10000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10000 * msg.value / 10^18
    emit Transfer((10000 * msg.value / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor1 + (10000 * msg.value / 10^18) >= stor1
    stor1 += 10000 * msg.value / 10^18
}



}
