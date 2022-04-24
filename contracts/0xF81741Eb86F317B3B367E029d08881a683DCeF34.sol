contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 150000000 * 10^18
    stor1 = 350000000 * 10^18
    stor2 = 422919 * 3600
    require not msg.value
    stor3 = msg.sender
    stor4 = code.data[4856 len 20]
    stor5[stor3] = stor0
    stor5[address(code.data[4812 len 32])] = stor1
    return code.data[412 len 4400]
}



// =====================  Runtime code  =====================


const name = 'EFT'

const decimals = 18

const symbol = 'E-FASH TOKEN'

const RATE = 7000


uint256 stor0;
uint256 stor1;
uint256 stor2;
address owner;
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    require stor0 + stor1 >= stor0
    return (stor0 + stor1)
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
    require block.timestamp <= stor2
    require msg.value > 0
    if msg.value:
        require msg.value
        require 7000 * msg.value / msg.value == 7000
    if 7000 * msg.value:
        require 7000 * msg.value
        require 7000 * 10^18 * msg.value / 7000 * msg.value == 10^18
    require balanceOf[stor3] - (7000 * 10^18 * msg.value / 10^18) > 0
    require 7000 * 10^18 * msg.value / 10^18 <= balanceOf[stor3]
    balanceOf[stor3] -= 7000 * 10^18 * msg.value / 10^18
    require balanceOf[address(arg1)] + (7000 * 10^18 * msg.value / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 7000 * 10^18 * msg.value / 10^18
    emit Transfer((7000 * 10^18 * msg.value / 10^18), owner, arg1);
    call stor4 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call owner with:
       value 9 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp <= stor2
    require msg.value > 0
    if msg.value:
        require msg.value
        require 7000 * msg.value / msg.value == 7000
    if 7000 * msg.value:
        require 7000 * msg.value
        require 7000 * 10^18 * msg.value / 7000 * msg.value == 10^18
    require balanceOf[stor3] - (7000 * 10^18 * msg.value / 10^18) > 0
    require 7000 * 10^18 * msg.value / 10^18 <= balanceOf[stor3]
    balanceOf[stor3] -= 7000 * 10^18 * msg.value / 10^18
    require balanceOf[address(msg.sender)] + (7000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 7000 * 10^18 * msg.value / 10^18
    emit Transfer((7000 * 10^18 * msg.value / 10^18), owner, msg.sender);
    call stor4 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call owner with:
       value 9 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
