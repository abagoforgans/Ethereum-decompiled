contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 2 * 10^15
    require not msg.value
    stor1 = code.data[3638 len 20]
    stor3 = code.data[3658 len 32]
    stor4 = code.data[3658 len 32] + (21888 * 24 * 3600)
    stor6[stor1] = stor0
    return code.data[153 len 3473]
}



// =====================  Runtime code  =====================


const name = 'DCX Shareholders Token'

const decimals = 8

const standard = 'ERC20'

const lockedAmount = 2 * 10^14

const tokensForIco = 16 * 10^14

const symbol = 'DCX'

const reservedAmount = 2 * 10^14


uint256 totalSupply;
address owner;
address icoAddress;
uint256 startTime;
uint256 lockReleaseDate;
uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function ico() {
    return icoAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function lockReleaseDate() {
    return lockReleaseDate
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setStart(uint256 arg1) {
    require msg.sender == icoAddress
    require arg1 < startTime
    startTime = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2 != 0:
        require 0 == allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setICO(address arg1) {
    require msg.sender == owner
    icoAddress = arg1
    require 0 == allowance[address(msg.sender)][stor2]
    allowance[address(msg.sender)][stor2] = 16 * 10^14
    emit Approval(16 * 10^14, msg.sender, icoAddress);
}

function burn() {
    if not stor5:
        if block.timestamp > startTime:
            require 2 * 10^14 <= balanceOf[stor1]
            balanceOf[stor1] = 2 * 10^14
            require balanceOf[stor1] - 2 * 10^14 <= totalSupply
            totalSupply = totalSupply + -balanceOf[stor1] + 2 * 10^14
            stor5 = 1
            emit Burned((balanceOf[stor1] - 2 * 10^14));
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= startTime
    if msg.sender == owner:
        if block.timestamp < lockReleaseDate:
            require arg2 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - arg2 >= 2 * 10^14
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp >= startTime:
        if owner == arg1:
            if block.timestamp < lockReleaseDate:
                require arg3 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - arg3 >= 2 * 10^14
    else:
        require owner == arg1
        if block.timestamp < lockReleaseDate:
            require arg3 <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - arg3 >= 2 * 10^14
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
