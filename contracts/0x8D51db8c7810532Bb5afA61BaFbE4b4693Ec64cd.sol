contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#  - benchTransfer(address[] arg1, uint256[] arg2)
#
uint256 totalSupply;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint256 startTime;
address shortAddress;
address longAddress;
address teamAddress;
address rewardAddress;
address investmentAddress;
address foundationAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function Long() {
    return longAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function Team() {
    return teamAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function Short() {
    return shortAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function Foundation() {
    return foundationAddress
}

function Investment() {
    return investmentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Reward() {
    return rewardAddress
}

function _fallback() payable {
    revert
}

function setLong(address arg1) {
    require msg.sender == investmentAddress
    longAddress = arg1
}

function setShort(address arg1) {
    require msg.sender == investmentAddress
    shortAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
