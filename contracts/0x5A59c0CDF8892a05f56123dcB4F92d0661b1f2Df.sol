contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor5;
uint256 totalSupply;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
uint256 fundRaised;
uint256 tokenSold;
uint256 tokenPerEth;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;

function name() {
    return name[0 len name.length]
}

function tokenPerEth() {
    return tokenPerEth
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

function fundRaised() {
    return fundRaised
}

function sub_d20f999a(?) {
    require stor11 == msg.sender
    return balanceOf[stor11], balanceOf[stor12], balanceOf[stor13], balanceOf[stor14], balanceOf[stor15]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getStageData() {
    return stor19, stor20, stor21, stor22, stor23, stor24
}

function start() {
    require stor11 == msg.sender
    require stor5
    stor5 = 0
}

function stop() {
    require stor11 == msg.sender
    require not stor5
    stor5 = 1
}

function getWallets() {
    require stor11 == msg.sender
    return stor11, stor12, stor13, stor14, stor15
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
    require stor11 == msg.sender
    require balanceOf[address(msg.sender)] >= arg4
    require block.timestamp < arg2
    require arg2 < arg3
    stor19 = arg1
    stor20 = arg2
    stor21 = arg3
    stor22 = arg4 * 10^decimals
    stor23 = arg5
    stor24 = 0
    return 1
}

function burnToken(uint256 arg1) {
    require stor11 == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 * 10^decimals <= balanceOf[stor11]
    balanceOf[stor11] += -1 * arg1 * 10^decimals
    require arg1 * 10^decimals <= totalSupply
    totalSupply += -1 * arg1 * 10^decimals
    emit Burn((arg1 * 10^decimals), stor11);
    emit Transfer(arg1, stor11, 0);
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

function sub_10111329(?) {
    require stor11 == msg.sender
    require not stor5
    require arg1
    require stor15
    require balanceOf[stor15] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require arg2 * 10^decimals <= balanceOf[stor15]
    balanceOf[stor15] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), stor15, arg1);
}

function sendFromBountyWallet(address arg1, uint256 arg2) {
    require stor11 == msg.sender
    require not stor5
    require arg1
    require stor14
    require balanceOf[stor14] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require arg2 * 10^decimals <= balanceOf[stor14]
    balanceOf[stor14] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), stor14, arg1);
}

function sendFromAdvisorWallet(address arg1, uint256 arg2) {
    require stor11 == msg.sender
    require not stor5
    require arg1
    require stor13
    require balanceOf[stor13] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require arg2 * 10^decimals <= balanceOf[stor13]
    balanceOf[stor13] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), stor13, arg1);
}

function sendFromTeamWallet(address arg1, uint256 arg2) {
    require stor11 == msg.sender
    require not stor5
    require arg1
    require stor12
    require balanceOf[stor12] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require arg2 * 10^decimals <= balanceOf[stor12]
    balanceOf[stor12] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), stor12, arg1);
    return 0
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

function setTeamWallet(address arg1) {
    require stor11 == msg.sender
    require not stor5
    if stor12:
        balanceOf[address(arg1)] = balanceOf[stor12]
        balanceOf[stor12] = 0
        stor12 = arg1
    else:
        stor12 = arg1
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= stor7
        require balanceOf[address(arg1)] + stor7 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + stor7 >= balanceOf[address(arg1)]
        require stor7 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= stor7
        require balanceOf[address(arg1)] + stor7 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += stor7
        emit Transfer(stor7, msg.sender, arg1);
    return 1
}

function setBountyWallet(address arg1) {
    require stor11 == msg.sender
    require not stor5
    if stor14:
        balanceOf[address(arg1)] = balanceOf[stor14]
        balanceOf[stor14] = 0
        stor14 = arg1
    else:
        stor14 = arg1
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= stor9
        require balanceOf[address(arg1)] + stor9 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + stor9 >= balanceOf[address(arg1)]
        require stor9 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= stor9
        require balanceOf[address(arg1)] + stor9 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += stor9
        emit Transfer(stor9, msg.sender, arg1);
    return 1
}

function setAdvisorsWallet(address arg1) {
    require stor11 == msg.sender
    require not stor5
    if stor13:
        balanceOf[address(arg1)] = balanceOf[stor13]
        balanceOf[stor13] = 0
        stor13 = arg1
    else:
        stor13 = arg1
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= stor8
        require balanceOf[address(arg1)] + stor8 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + stor8 >= balanceOf[address(arg1)]
        require stor8 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= stor8
        require balanceOf[address(arg1)] + stor8 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += stor8
        emit Transfer(stor8, msg.sender, arg1);
    return 1
}

function setPlatformWallet(address arg1) {
    require stor11 == msg.sender
    require not stor5
    if stor15:
        balanceOf[address(arg1)] = balanceOf[stor15]
        balanceOf[stor15] = 0
        stor15 = arg1
    else:
        stor15 = arg1
        require not stor5
        require arg1
        require balanceOf[address(msg.sender)] >= stor10
        require balanceOf[address(arg1)] + stor10 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + stor10 >= balanceOf[address(arg1)]
        require stor10 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= stor10
        require balanceOf[address(arg1)] + stor10 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += stor10
        emit Transfer(stor10, msg.sender, arg1);
    return 1
}

function sendToken(address arg1, uint256 arg2) {
    require stor11 == msg.sender
    require not stor5
    require msg.sender
    require arg2 > 0
    require block.timestamp >= stor20
    require block.timestamp <= stor21
    if not arg2 * 10^decimals:
        if not arg2:
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
            require arg2 * 10^decimals <= stor22
            stor22 += -1 * arg2 * 10^decimals
            require stor24 + (arg2 * 10^decimals) >= stor24
            stor24 += arg2 * 10^decimals
            require tokenPerEth
            require fundRaised + (arg2 * 10^decimals / tokenPerEth) >= fundRaised
            fundRaised += arg2 * 10^decimals / tokenPerEth
            if balanceOf[stor14] >= 0:
                require stor11 == msg.sender
                require not stor5
                require arg1
                require stor14
                require balanceOf[stor14] >= 0
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require 0 <= balanceOf[stor14]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                emit Transfer(0, stor14, arg1);
                require arg2 * 10^decimals >= arg2 * 10^decimals
        else:
            require arg2
            require arg2 * stor23 / arg2 == stor23
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
            require arg2 * 10^decimals <= stor22
            stor22 += -1 * arg2 * 10^decimals
            require stor24 + (arg2 * 10^decimals) >= stor24
            stor24 += arg2 * 10^decimals
            require tokenPerEth
            require fundRaised + (arg2 * 10^decimals / tokenPerEth) >= fundRaised
            fundRaised += arg2 * 10^decimals / tokenPerEth
            if balanceOf[stor14] >= 0:
                require stor11 == msg.sender
                require not stor5
                require arg1
                require stor14
                require balanceOf[stor14] >= arg2 * stor23 / 100 * 10^decimals
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                require arg2 * stor23 / 100 * 10^decimals <= balanceOf[stor14]
                balanceOf[stor14] += -1 * arg2 * stor23 / 100 * 10^decimals
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2 * stor23 / 100 * 10^decimals
                emit Transfer((arg2 * stor23 / 100 * 10^decimals), stor14, arg1);
                require arg2 * 10^decimals >= arg2 * 10^decimals
        require tokenSold + (arg2 * 10^decimals) >= tokenSold
        tokenSold += arg2 * 10^decimals
    else:
        require arg2 * 10^decimals
        require arg2 * 10^decimals * stor23 / arg2 * 10^decimals == stor23
        if not arg2:
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
            require arg2 * 10^decimals <= stor22
            stor22 += -1 * arg2 * 10^decimals
            require stor24 + (arg2 * 10^decimals) >= stor24
            stor24 += arg2 * 10^decimals
            require tokenPerEth
            require fundRaised + (arg2 * 10^decimals / tokenPerEth) >= fundRaised
            fundRaised += arg2 * 10^decimals / tokenPerEth
            if balanceOf[stor14] < arg2 * 10^decimals * stor23 / 100:
                require tokenSold + (arg2 * 10^decimals) >= tokenSold
                tokenSold += arg2 * 10^decimals
            else:
                require stor11 == msg.sender
                require not stor5
                require arg1
                require stor14
                require balanceOf[stor14] >= 0
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require 0 <= balanceOf[stor14]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                emit Transfer(0, stor14, arg1);
                require (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100) >= arg2 * 10^decimals
                require tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100) >= tokenSold
                tokenSold = tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100)
        else:
            require arg2
            require arg2 * stor23 / arg2 == stor23
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
            require arg2 * 10^decimals <= stor22
            stor22 += -1 * arg2 * 10^decimals
            require stor24 + (arg2 * 10^decimals) >= stor24
            stor24 += arg2 * 10^decimals
            require tokenPerEth
            require fundRaised + (arg2 * 10^decimals / tokenPerEth) >= fundRaised
            fundRaised += arg2 * 10^decimals / tokenPerEth
            if balanceOf[stor14] < arg2 * 10^decimals * stor23 / 100:
                require tokenSold + (arg2 * 10^decimals) >= tokenSold
                tokenSold += arg2 * 10^decimals
            else:
                require stor11 == msg.sender
                require not stor5
                require arg1
                require stor14
                require balanceOf[stor14] >= arg2 * stor23 / 100 * 10^decimals
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                require arg2 * stor23 / 100 * 10^decimals <= balanceOf[stor14]
                balanceOf[stor14] += -1 * arg2 * stor23 / 100 * 10^decimals
                require balanceOf[address(arg1)] + (arg2 * stor23 / 100 * 10^decimals) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2 * stor23 / 100 * 10^decimals
                emit Transfer((arg2 * stor23 / 100 * 10^decimals), stor14, arg1);
                require (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100) >= arg2 * 10^decimals
                require tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100) >= tokenSold
                tokenSold = tokenSold + (arg2 * 10^decimals) + (arg2 * 10^decimals * stor23 / 100)
    return 1
}



}
