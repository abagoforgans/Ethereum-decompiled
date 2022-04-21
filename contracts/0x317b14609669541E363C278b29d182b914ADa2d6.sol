contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 150000000 * 10^18
    stor1 = 350000000 * 10^18
    stor2 = 0
    stor3 = 422919 * 3600
    require not msg.value
    stor4 = msg.sender
    stor5[stor4] = stor0
    stor5[address(code.data[4566 len 32])] = stor1
    return code.data[342 len 4224]
}



// =====================  Runtime code  =====================


const name = 'E-FASH TOKEN'

const decimals = 18

const symbol = 'EFT'

const RATE = 7000


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address owner;
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
    require msg.value > 0
    if msg.value:
        require msg.value
        require 7000 * msg.value / msg.value == 7000
    if 7000 * msg.value:
        require 7000 * msg.value
        require 7000 * 10^18 * msg.value / 7000 * msg.value == 10^18
    require stor2 + (7000 * 10^18 * msg.value / 10^18) >= stor2
    require stor2 + (7000 * 10^18 * msg.value / 10^18) <= stor0
    require block.timestamp <= stor3
    require 7000 * 10^18 * msg.value / 10^18 <= balanceOf[stor4]
    balanceOf[stor4] -= 7000 * 10^18 * msg.value / 10^18
    require balanceOf[address(arg1)] + (7000 * 10^18 * msg.value / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 7000 * 10^18 * msg.value / 10^18
    emit Transfer((7000 * 10^18 * msg.value / 10^18), owner, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor2 + (7000 * 10^18 * msg.value / 10^18) >= stor2
    stor2 += 7000 * 10^18 * msg.value / 10^18
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 7000 * msg.value / msg.value == 7000
    if 7000 * msg.value:
        require 7000 * msg.value
        require 7000 * 10^18 * msg.value / 7000 * msg.value == 10^18
    require stor2 + (7000 * 10^18 * msg.value / 10^18) >= stor2
    require stor2 + (7000 * 10^18 * msg.value / 10^18) <= stor0
    require block.timestamp <= stor3
    require 7000 * 10^18 * msg.value / 10^18 <= balanceOf[stor4]
    balanceOf[stor4] -= 7000 * 10^18 * msg.value / 10^18
    require balanceOf[address(msg.sender)] + (7000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 7000 * 10^18 * msg.value / 10^18
    emit Transfer((7000 * 10^18 * msg.value / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor2 + (7000 * 10^18 * msg.value / 10^18) >= stor2
    stor2 += 7000 * 10^18 * msg.value / 10^18
}



}
