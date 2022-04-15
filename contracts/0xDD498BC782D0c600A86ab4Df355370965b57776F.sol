contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
uint8 stor4; offset 160
uint256 stor5;
uint256 stor6;
uint256 stor8;
address stor9;
uint256 stor10;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = 10^9
    require code.data[4276 len 32] > 0
    require code.data[4320 len 20]
    require code.data[4340 len 32] > 0
    require code.data[4372 len 32] > 0
    require code.data[4372 len 32] < stor0
    stor5 = code.data[4372 len 32]
    stor6 = 0
    stor8 = code.data[4276 len 32]
    stor9 = code.data[4320 len 20]
    stor10 = code.data[4340 len 32]
    return code.data[254 len 4022]
}



// =====================  Runtime code  =====================


const name = 'Test Coin 1'

const decimals = 18

const symbol = 'TC_COIN_1'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
address pendingOwner;
uint256 sub_5a03d679;
uint256 sub_58b10a12;
uint256 weiRaised;
uint256 sub_ee56cf41;
address walletAddress;
uint256 sub_7cbc3214;

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function sub_58b10a12(?) {
    return sub_58b10a12
}

function sub_5a03d679(?) {
    return sub_5a03d679
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7cbc3214(?) {
    return sub_7cbc3214
}

function owner() {
    return owner
}

function isTradingAllowed() {
    return bool(stor4)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function sub_ee56cf41(?) {
    return sub_ee56cf41
}

function stopTrading() {
    require owner == msg.sender
    stor4 = 0
}

function startTrading() {
    require owner == msg.sender
    stor4 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function changeTokenPrice(uint256 arg1) {
    require owner == msg.sender
    sub_ee56cf41 = arg1
    emit TokenPriceChanged(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_6e106e04(?) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 + sub_5a03d679 >= sub_5a03d679
    require arg1 + sub_5a03d679 <= totalSupply
    sub_5a03d679 += arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require stor4
    require msg.value >= sub_7cbc3214
    require sub_ee56cf41
    require (msg.value / sub_ee56cf41) + sub_58b10a12 >= sub_58b10a12
    require (msg.value / sub_ee56cf41) + sub_58b10a12 <= sub_5a03d679
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (msg.value / sub_ee56cf41) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value / sub_ee56cf41
    require (msg.value / sub_ee56cf41) + sub_58b10a12 >= sub_58b10a12
    sub_58b10a12 += msg.value / sub_ee56cf41
    emit TokenSold(address(arg1), msg.value / sub_ee56cf41);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require stor4
    require msg.value >= sub_7cbc3214
    require sub_ee56cf41
    require (msg.value / sub_ee56cf41) + sub_58b10a12 >= sub_58b10a12
    require (msg.value / sub_ee56cf41) + sub_58b10a12 <= sub_5a03d679
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (msg.value / sub_ee56cf41) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / sub_ee56cf41
    require (msg.value / sub_ee56cf41) + sub_58b10a12 >= sub_58b10a12
    sub_58b10a12 += msg.value / sub_ee56cf41
    emit TokenSold(msg.sender, msg.value / sub_ee56cf41);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
