contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender
    return code.data[88 len 5324]
}



// =====================  Runtime code  =====================


const name = 'Gamblica Coin'

const decimals = 18

const symbol = 'GMBC'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 unlockTime;
mapping of uint256 allowance;
address crowdsaleAddress;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function getUnlockTime(address arg1) {
    return unlockTime[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function isUnlocked(address arg1) {
    return (unlockTime[address(arg1)] < block.timestamp)
}

function changeCrowdsale(address arg1) {
    require msg.sender == owner
    crowdsaleAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require unlockTime[address(msg.sender)] < block.timestamp
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function send(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == crowdsaleAddress
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    if unlockTime[address(arg1)] < 424392 * 24 * 3600:
        unlockTime[address(arg1)] = 424392 * 24 * 3600
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require unlockTime[address(arg1)] < block.timestamp
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == crowdsaleAddress
    require arg2 > 0
    if balanceOf[address(arg1)] < arg2:
        balanceOf[address(arg1)] = 0
        require totalSupply >= balanceOf[address(arg1)]
        totalSupply -= balanceOf[address(arg1)]
        emit Burned(address(arg1), balanceOf[address(arg1)]);
    else:
        balanceOf[address(arg1)] -= arg2
        require totalSupply >= arg2
        totalSupply -= arg2
        emit Burned(address(arg1), arg2);
}



}
