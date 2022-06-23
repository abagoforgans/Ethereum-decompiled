contract main {




// =====================  Runtime code  =====================


const name = 'PET'

const totalSupply = 10000000 * 10^18

const decimals = 18

const version = '1.0'

const symbol = 'PET'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor4;
uint256 approvalCount;
uint256 stor6;
address burnedTokensReceiverAddress;

function getApprovalCount() {
    require msg.sender == stor4
    return approvalCount
}

function burnedTokensReceiver() {
    return burnedTokensReceiverAddress
}

function getBurnedTokensReceiver() {
    require msg.sender == stor4
    return burnedTokensReceiverAddress
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

function _fallback() payable {
    revert
}

function setApprovalCounts(uint256 arg1) {
    require msg.sender == stor4
    approvalCount = arg1
}

function setMinApprovalCounts(uint256 arg1) {
    require msg.sender == stor4
    require arg1 > 0
    stor6 = arg1
    return 1
}

function replaceController(address arg1) {
    require msg.sender == stor4
    require arg1
    stor4 = arg1
    emit SetNewController(msg.sender, stor4);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function controllerApproval(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor6 <= approvalCount
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[stor7] + arg2 >= balanceOf[stor7]
    balanceOf[stor7] += arg2
    emit Transfer(arg2, arg1, burnedTokensReceiverAddress);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require msg.sender
    require arg1 != msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg1
    require arg1 != arg2
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



}
