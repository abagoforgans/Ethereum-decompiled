contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint8 stor5;
uint8 stor7;

function _fallback() payable {
    stor4 = 2758651105 * 10^15 * 3600
    stor5 = 0
    stor7 = 1
    stor3 = msg.sender
    return code.data[87 len 3404]
}



// =====================  Runtime code  =====================


const name = 'cVToken'

const decimals = 18

const symbol = 'cV'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address tokenOwner;
uint256 supplyLimit;
uint8 stor5;
mapping of uint256 stor6;
uint8 stor7;

function mintingFinished() {
    return bool(stor5)
}

function totalSupply() {
    return totalSupply
}

function supplyLimit() {
    return supplyLimit
}

function transfersAreLocked() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return tokenOwner
}

function tokenOwner() {
    return tokenOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeTransferLock(bool arg1) {
    require tokenOwner == msg.sender
    stor7 = uint8(arg1)
}

function lockTill(address arg1, uint256 arg2) {
    require tokenOwner == msg.sender
    stor6[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require tokenOwner == msg.sender
    require arg1
    emit OwnershipTransferred(tokenOwner, arg1);
    tokenOwner = arg1
}

function finishMinting() {
    require tokenOwner == msg.sender
    require not stor5
    require totalSupply >= totalSupply
    require totalSupply <= supplyLimit
    stor5 = 1
    emit MintFinished()
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function mint(address arg1, uint256 arg2) {
    require tokenOwner == msg.sender
    require not stor5
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= supplyLimit
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor7
    require stor6[address(msg.sender)] < block.timestamp
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor7
    require stor6[address(arg1)] < block.timestamp
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
