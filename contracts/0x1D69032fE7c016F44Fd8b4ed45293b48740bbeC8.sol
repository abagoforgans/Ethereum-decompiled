contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 3000
    require not msg.value
    return code.data[41 len 3990]
}



// =====================  Runtime code  =====================


const name = 'Genesis 1:4'

const decimals = 0

const symbol = 'GEN14'

const RATE = 1000


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

function sub_d23a16f9(?) {
    owner = msg.sender
    balanceOf[stor2] = totalSupply
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
    balanceOf[address(msg.sender)] = arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require 0 <= stor1
    require totalSupply < stor1
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 1000 * msg.value
    require totalSupply + (1000 * msg.value) >= totalSupply
    totalSupply += 1000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    require 0 <= stor1
    require totalSupply < stor1
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 1000 * msg.value
    require totalSupply + (1000 * msg.value) >= totalSupply
    totalSupply += 1000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = (2 * balanceOf[address(arg2)]) + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
