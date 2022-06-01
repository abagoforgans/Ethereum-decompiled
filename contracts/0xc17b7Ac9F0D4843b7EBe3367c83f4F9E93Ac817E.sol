contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor5;
uint256 totalSupply;
address stor7;
uint256 tokenSold;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tokenSold() {
    return tokenSold
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function stopped() {
    return bool(stor5)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getStageData() {
    return stor9, stor10, stor11, stor12, stor13, stor14
}

function start() {
    require stor7 == msg.sender
    require stor5
    stor5 = 0
}

function stop() {
    require stor7 == msg.sender
    require not stor5
    stor5 = 1
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setStage(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require stor7 == msg.sender
    require balanceOf[address(msg.sender)] >= arg4
    require block.timestamp < arg2
    require arg2 < arg3
    stor9 = arg1
    stor10 = arg2
    stor11 = arg3
    stor12 = arg4 * 10^decimals
    stor13 = arg5
    stor14 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require arg1
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendToken(address arg1, uint256 arg2) {
    require stor7 == msg.sender
    require not stor5
    require msg.sender
    require arg2 > 0
    require block.timestamp >= stor10
    require block.timestamp <= stor11
    if not arg2 * 10^decimals:
        require arg2 * 10^decimals >= arg2 * 10^decimals
        require balanceOf[address(msg.sender)] >= arg2 * 10^decimals
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= arg2 * 10^decimals
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
        require arg2 * 10^decimals <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg2 * 10^decimals
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2 * 10^decimals
        emit Transfer((arg2 * 10^decimals), msg.sender, arg1);
        require arg2 * 10^decimals <= stor12
        stor12 += -1 * arg2 * 10^decimals
        require stor14 + (arg2 * 10^decimals) >= stor14
        stor14 += arg2 * 10^decimals
        require tokenSold + (arg2 * 10^decimals) >= tokenSold
        tokenSold += arg2 * 10^decimals
    else:
        require arg2 * 10^decimals
        require arg2 * 10^decimals * stor13 / arg2 * 10^decimals == stor13
        require (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) >= arg2 * 10^decimals
        require balanceOf[address(msg.sender)] >= (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100)
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100)
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) >= balanceOf[address(arg1)]
        require (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * 10^decimals) - (arg2 * 10^decimals * stor13 / 100)
        require balanceOf[address(arg1)] + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100)
        emit Transfer(((arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100)), msg.sender, arg1);
        require arg2 * 10^decimals <= stor12
        stor12 += -1 * arg2 * 10^decimals
        require stor14 + (arg2 * 10^decimals) >= stor14
        stor14 += arg2 * 10^decimals
        require tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100) >= tokenSold
        tokenSold = tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor13 / 100)
    return 1
}



}
