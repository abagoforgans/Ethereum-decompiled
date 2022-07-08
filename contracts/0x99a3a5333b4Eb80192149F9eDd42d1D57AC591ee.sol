contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_cd68b5a6;
uint256 pointMultiplier;
mapping of struct stor10;
mapping of uint256 sub_07b6bafc;
uint256 ethtotalSupply;
uint256 totalDividendPoints;
uint256 unclaimedDividends;

function name() {
    return name[0 len name.length]
}

function sub_07b6bafc(?) {
    return sub_07b6bafc[arg1]
}

function totalDividendPoints() {
    return totalDividendPoints
}

function decimals() {
    return decimals
}

function unclaimedDividends() {
    return unclaimedDividends
}

function pointMultiplier() {
    return pointMultiplier
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ethtotalSupply() {
    return ethtotalSupply
}

function sub_cd68b5a6(?) {
    return sub_cd68b5a6
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_38e45ca5(?) {
    require msg.sender == owner
    require arg2 > 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendsOwing(address arg1) {
    require stor10[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    return ((totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier)
}

function sub_0f1ea0f4(?) {
    require sub_07b6bafc[address(arg1)] > 0
    sub_07b6bafc[address(arg1)] = 0
    call arg1 with:
       value sub_07b6bafc[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_82b3314d(?) {
    sub_cd68b5a6 = 0
    if sub_cd68b5a6:
        require sub_cd68b5a6
        require pointMultiplier * sub_cd68b5a6 / sub_cd68b5a6 == pointMultiplier
    require stor5 > 0
    require stor5
    require (pointMultiplier * sub_cd68b5a6 / stor5) + totalDividendPoints >= totalDividendPoints
    totalDividendPoints += pointMultiplier * sub_cd68b5a6 / stor5
    require sub_cd68b5a6 + unclaimedDividends >= unclaimedDividends
    unclaimedDividends += sub_cd68b5a6
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function fetchHubPiggy() {
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.piggyBank(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.piggyToWallet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += ext_call.return_data[0]
}

function fetchHubVault() {
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.playerVault(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.vaultToWallet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + sub_cd68b5a6 >= sub_cd68b5a6
    sub_cd68b5a6 += ext_call.return_data[0]
}

function disburse() payable {
    require msg.value / 20 <= msg.value
    require ext_code.size(0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6)
    call 0xd5d10172e8d8b84ac83031c16fe093cba4c84fc6.buyBonds(address arg1) with:
       value msg.value / 20 wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - (msg.value / 20):
        require msg.value - (msg.value / 20)
        require (msg.value * pointMultiplier) - (msg.value / 20 * pointMultiplier) / msg.value - (msg.value / 20) == pointMultiplier
    require stor5 > 0
    require stor5
    require ((msg.value * pointMultiplier) - (msg.value / 20 * pointMultiplier) / stor5) + totalDividendPoints >= totalDividendPoints
    totalDividendPoints += (msg.value * pointMultiplier) - (msg.value / 20 * pointMultiplier) / stor5
    require msg.value - (msg.value / 20) + unclaimedDividends >= unclaimedDividends
    unclaimedDividends = msg.value - (msg.value / 20) + unclaimedDividends
}

function sub_0f420086(?) {
    require stor10[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier) + sub_07b6bafc[address(msg.sender)] >= sub_07b6bafc[address(msg.sender)]
        sub_07b6bafc[address(msg.sender)] += (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
    stor10[address(msg.sender)] = totalDividendPoints
}

function sub_5b64ad0f(?) {
    require stor10[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier > 0:
        require stor10[address(msg.sender)] <= totalDividendPoints
        require pointMultiplier
        if (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier > 0:
            require (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
            unclaimedDividends -= (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
            require ((totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier) + sub_07b6bafc[address(msg.sender)] >= sub_07b6bafc[address(msg.sender)]
            sub_07b6bafc[address(msg.sender)] += (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
        stor10[address(msg.sender)] = totalDividendPoints
    require sub_07b6bafc[msg.sender] > 0
    sub_07b6bafc[msg.sender] = 0
    call msg.sender with:
       value sub_07b6bafc[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require stor10[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier) + sub_07b6bafc[address(arg1)] >= sub_07b6bafc[address(arg1)]
        sub_07b6bafc[address(arg1)] += (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier
    stor10[address(arg1)] = totalDividendPoints
    require stor10[address(msg.sender)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier > 0:
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
        require ((totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier) + sub_07b6bafc[address(msg.sender)] >= sub_07b6bafc[address(msg.sender)]
        sub_07b6bafc[address(msg.sender)] += (totalDividendPoints * balanceOf[address(msg.sender)]) - (stor10[address(msg.sender)] * balanceOf[address(msg.sender)]) / pointMultiplier
    stor10[address(msg.sender)] = totalDividendPoints
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor10[address(arg2)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(arg2)]) - (stor10[address(arg2)] * balanceOf[address(arg2)]) / pointMultiplier > 0:
        require (totalDividendPoints * balanceOf[address(arg2)]) - (stor10[address(arg2)] * balanceOf[address(arg2)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balanceOf[address(arg2)]) - (stor10[address(arg2)] * balanceOf[address(arg2)]) / pointMultiplier
        require ((totalDividendPoints * balanceOf[address(arg2)]) - (stor10[address(arg2)] * balanceOf[address(arg2)]) / pointMultiplier) + sub_07b6bafc[address(arg2)] >= sub_07b6bafc[address(arg2)]
        sub_07b6bafc[address(arg2)] += (totalDividendPoints * balanceOf[address(arg2)]) - (stor10[address(arg2)] * balanceOf[address(arg2)]) / pointMultiplier
    stor10[address(arg2)] = totalDividendPoints
    require stor10[address(arg1)] <= totalDividendPoints
    require pointMultiplier
    if (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier > 0:
        require (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier <= unclaimedDividends
        unclaimedDividends -= (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier
        require ((totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier) + sub_07b6bafc[address(arg1)] >= sub_07b6bafc[address(arg1)]
        sub_07b6bafc[address(arg1)] += (totalDividendPoints * balanceOf[address(arg1)]) - (stor10[address(arg1)] * balanceOf[address(arg1)]) / pointMultiplier
    stor10[address(arg1)] = totalDividendPoints
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
