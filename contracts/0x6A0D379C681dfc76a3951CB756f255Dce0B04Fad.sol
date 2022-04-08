contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() {
    stor1 = code.data[2119 len 32]
    stor2 = code.data[2151 len 32]
    stor3[address(msg.sender)] = code.data[2087 len 32]
    stor0 = code.data[2087 len 32]
    return code.data[103 len 1984]
}



// =====================  Runtime code  =====================


const name = 'SG2'

const totalSupply = 0

const decimals = 18

const symbol = 'SG2'


uint256 stor0;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundingEndBlock() {
    return fundingEndBlock
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function refund() {
  stop
}

function finalize() {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.number <= fundingEndBlock
    require msg.value
    require 100 * msg.value <= 10^18
    if msg.value:
        require msg.value
        require 100000 * msg.value / msg.value == 100000
    require (100000 * msg.value) + stor0 >= stor0
    require (100000 * msg.value) + stor0 >= 100000 * msg.value
    stor0 += 100000 * msg.value
    balanceOf[address(msg.sender)] += 100000 * msg.value
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_0472e7b2(?) payable {
    require block.number <= fundingEndBlock
    require msg.value
    require 100 * msg.value <= 10^18
    if msg.value:
        require msg.value
        require 100000 * msg.value / msg.value == 100000
    require (100000 * msg.value) + stor0 >= stor0
    require (100000 * msg.value) + stor0 >= 100000 * msg.value
    stor0 += 100000 * msg.value
    balanceOf[address(msg.sender)] += 100000 * msg.value
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
