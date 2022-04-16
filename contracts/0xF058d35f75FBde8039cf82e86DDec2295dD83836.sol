contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor5 = 10^18
    stor6 = 416195 * 3600
    require not msg.value
    stor3 = msg.sender
    stor0 = 10000 * 10^18
    stor4 = code.data[6889 len 20]
    stor1[address(msg.sender)] = 10000 * 10^18
    stor7 = code.data[6909 len 32]
    return code.data[325 len 6552]
}



// =====================  Runtime code  =====================


const name = 'SimpleToken3'

const decimals = 18

const symbol = 'SIMSIM3'

const INITIAL_SUPPLY = 10000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address walletAddress;
uint256 sub_8174e972;
uint256 startTime;
uint256 endTime;

function totalSupply() {
    return totalSupply
}

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_8174e972(?) {
    return sub_8174e972
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function setAmountToken(uint256 arg1) {
    require msg.sender == owner
    sub_8174e972 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
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
    require block.timestamp > startTime
    require block.timestamp < endTime
    require balanceOf[stor3] > 0
    if msg.value:
        require msg.value
        require msg.value * sub_8174e972 / msg.value == sub_8174e972
    require balanceOf[address(msg.sender)] + (msg.value * sub_8174e972 / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * sub_8174e972 / 10^18
    balanceOf[stor3] -= msg.value * sub_8174e972 / 10^18
    emit Transfer((msg.value * sub_8174e972 / 10^18), owner, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
