contract main {


// =======================  Init code  ======================


address stor0;
address stor5;
uint256 stor6;
uint256 stor7;
uint8 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[2225 len 20]
    stor6 = 10^18 * code.data[2245 len 32]
    stor7 = code.data[2277 len 32]
    return code.data[148 len 2065]
}



// =====================  Runtime code  =====================


const name = ''

const symbol = ''


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address sub_550840b1;
uint256 numFunders;
address beneficiaryAddress;
uint256 tokensForSale;
uint256 tokensPerEth;
uint256 amountRaised;
uint256 tokensSold;
uint8 fundingGoalReached;

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
    return bool(fundingGoalReached)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function checkGoalReached() {
    if tokensSold >= tokensForSale:
        fundingGoalReached = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require not fundingGoalReached
    require msg.value
    require msg.value
    require tokensPerEth * msg.value / msg.value == tokensPerEth
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require (tokensPerEth * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += tokensPerEth * msg.value
    sub_550840b1[stor4] = msg.sender
    numFunders++
    amountRaised += msg.value
    tokensSold += tokensPerEth * msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
    if tokensSold >= tokensForSale:
        fundingGoalReached = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}



}
