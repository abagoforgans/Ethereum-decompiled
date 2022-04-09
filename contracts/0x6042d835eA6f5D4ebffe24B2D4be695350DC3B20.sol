contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 42 * 10^6
    stor1 = 20 * 10^6
    stor2 = 10^15
    stor3 = 3973365
    stor4 = 4300000
    stor5 = 0x314fa670cd113e0c4168fe0d62355b314dea4f06
    require not msg.value
    stor6[stor5] = 22 * 10^6
    return code.data[142 len 2183]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 0

const symbol = ''


uint256 totalSupply;
uint256 remainingSupply;
uint256 stor2;
uint256 stor3;
uint256 endBlock;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function remainingSupply() {
    return remainingSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function saleInProgress() {
    if remainingSupply <= 0:
        return (remainingSupply > 0)
    if block.number < stor3:
        return block.number >= stor3
    return (block.number < endBlock)
}

function finalizeSale() {
    require owner == msg.sender
    if remainingSupply > 0:
        if block.number >= stor3:
            require block.number >= endBlock
        if remainingSupply > 0:
            balanceOf[stor5] += remainingSupply
            remainingSupply = 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor2
    require remainingSupply > 0
    require block.number >= stor3
    require block.number < endBlock
    require msg.value / stor2 <= remainingSupply
    balanceOf[address(msg.sender)] += msg.value / stor2
    remainingSupply -= msg.value / stor2
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
