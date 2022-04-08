contract main {


// =======================  Init code  ======================


address stor0;
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor11;

function _fallback() payable {
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor6 = code.data[2875 len 20]
    stor7 = 10^18 * code.data[2895 len 32]
    stor8 = code.data[2927 len 32]
    return code.data[148 len 2715]
}



// =====================  Runtime code  =====================


const name = ''

const symbol = ''


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of address sub_550840b1;
uint256 numFunders;
address beneficiaryAddress;
uint256 tokensForSale;
uint256 tokensPerEth;
uint256 amountRaised;
uint256 tokensSold;
uint8 stor11;

function tokensForSale() {
    return tokensForSale
}

function totalSupply() {
    return totalSupply
}

function beneficiary() {
    return beneficiaryAddress
}

function tokensSold() {
    return tokensSold
}

function sub_550840b1(?) {
    return sub_550840b1[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function numFunders() {
    return numFunders
}

function tokensPerEth() {
    return tokensPerEth
}

function fundingGoalReached() {
    return bool(stor11)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function checkGoalReached() {
    if tokensSold >= tokensForSale:
        stor11 = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function _fallback() payable {
    require not stor11
    require msg.value
    require msg.value
    require tokensPerEth * msg.value / msg.value == tokensPerEth
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require (tokensPerEth * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += tokensPerEth * msg.value
    sub_550840b1[stor5] = msg.sender
    numFunders++
    amountRaised += msg.value
    tokensSold += tokensPerEth * msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
    if tokensSold >= tokensForSale:
        stor11 = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}



}
