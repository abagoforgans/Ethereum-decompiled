contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 100000000 * 10^18
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor4 = code.data[2458 len 20]
    return code.data[119 len 2327]
}



// =====================  Runtime code  =====================


const name = 'TRUE Token'

const decimals = 18

const symbol = 'TRUE'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 baseStartTime;
address founderAddress;
uint256 distributed;

function baseStartTime() {
    return baseStartTime
}

function totalSupply() {
    return totalSupply
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function distributed() {
    return distributed
}

function kill() {
    if founderAddress != msg.sender:
    selfdestruct(founderAddress)
}

function setStartTime(uint256 arg1) {
    require founderAddress == msg.sender
    baseStartTime = arg1
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    founderAddress = arg1
}

function _fallback() payable {
    call founderAddress with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distribute(uint256 arg1, address arg2) {
    require founderAddress == msg.sender
    require distributed + arg1 <= totalSupply
    distributed += arg1
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, this.address, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= baseStartTime
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require founderAddress == msg.sender
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
