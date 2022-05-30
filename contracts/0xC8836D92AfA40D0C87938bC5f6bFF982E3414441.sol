contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor5;

function _fallback() payable {
    stor1 = 10000000000 * 10^18
    stor2 = 0
    stor3 = 342935525 * 10^14 * 3600
    require not msg.value
    stor0 = msg.sender
    stor5[address(msg.sender)] = stor3
    stor2 = stor5[address(msg.sender)]
    return code.data[270 len 6325]
}



// =====================  Runtime code  =====================


const name = 'XingXing'

const decimals = 18

const symbol = 'XX'


address owner;
uint256 totalSupply;
uint256 currentTotalSupply;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function currentTotalSupply() {
    return currentTotalSupply
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return stor5[address(arg1)]
    if stor4[address(arg1)]:
        return stor5[address(arg1)]
    require stor5[address(arg1)] + stor3 >= stor5[address(arg1)]
    return (stor5[address(arg1)] + stor3)
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
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not stor4[address(arg1)]:
        if currentTotalSupply < totalSupply:
            stor4[address(arg1)] = 1
            require stor5[address(arg1)] + stor3 >= stor5[address(arg1)]
            stor5[address(arg1)] += stor3
            require currentTotalSupply + stor3 >= currentTotalSupply
            currentTotalSupply += stor3
    require arg3 <= stor5[address(arg1)]
    require arg3 <= stor5[address(arg1)]
    stor5[address(arg1)] -= arg3
    require stor5[address(arg2)] + arg3 >= stor5[address(arg2)]
    stor5[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor4[address(msg.sender)]:
        if currentTotalSupply < totalSupply:
            require stor5[address(msg.sender)] + stor3 >= stor5[address(msg.sender)]
            stor5[address(msg.sender)] += stor3
            stor4[address(msg.sender)] = 1
            require currentTotalSupply + stor3 >= currentTotalSupply
            currentTotalSupply += stor3
    require arg2 <= stor5[address(msg.sender)]
    require arg2 <= stor5[address(msg.sender)]
    stor5[address(msg.sender)] -= arg2
    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
    stor5[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not stor3 / 10^6:
        stor3 = 0
    else:
        require stor3 / 10^6
        require 999999 * stor3 / 10^6 / stor3 / 10^6 == 999999
        stor3 = 999999 * stor3 / 10^6
    return 1
}



}
