contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[3675 len 20]
    stor0 = code.data[3675 len 20]
    stor4 = code.data[3727 len 32]
    stor10 = code.data[3759 len 32] + (24 * 3600 * code.data[3791 len 32])
    stor9 = code.data[3759 len 32]
    stor6 = code.data[3823 len 32]
    stor3 = code.data[3695 len 32]
    stor11 = code.data[3855 len 32]
    stor12 = code.data[3899 len 20]
    stor1 = code.data[3675 len 20]
    return code.data[260 len 3403]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address beneficiaryAddress;
uint256 stor1;
address multisigAddress;
uint256 tokenLimitPerWallet;
uint256 hardCap;
uint256 amountRaised;
uint256 totalTokens;
uint256 tokensSold;
uint256 investorCount;
uint256 startTimestamp;
uint256 deadline;
uint256 tokensPerEther;
address tokenRewardAddress;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function deadline() {
    return deadline
}

function beneficiary() {
    return address(beneficiaryAddress)
}

function multisig() {
    return multisigAddress
}

function tokensSold() {
    return tokensSold
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function totalTokens() {
    return totalTokens
}

function owner() {
    return owner
}

function halted() {
    return bool(stor0)
}

function tokenLimitPerWallet() {
    return tokenLimitPerWallet
}

function investorCount() {
    return investorCount
}

function startTimestamp() {
    return startTimestamp
}

function tokensPerEther() {
    return tokensPerEther
}

function hardCap() {
    return hardCap
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function halt() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeMultisigWallet(address arg1) {
    require owner == msg.sender
    require arg1
    multisigAddress = arg1
}

function setSold(uint256 arg1) {
    require owner == msg.sender
    require arg1 + tokensSold >= tokensSold
    tokensSold += arg1
}

function calculateTokenAmount(uint256 arg1) {
    if not arg1:
        return (tokensPerEther * arg1)
    require arg1
    require tokensPerEther * arg1 / arg1 == tokensPerEther
    return (tokensPerEther * arg1)
}

function getTokenBalance(address arg1) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function changeTokenReward(address arg1) {
    require owner == msg.sender
    require arg1
    tokenRewardAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
}

function sendTokensBackToWallet() {
    require owner == msg.sender
    totalTokens = 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigAddress, ext_call.return_data[0]
    require ext_call.success
}

function buyTokens() payable {
    require block.timestamp >= startTimestamp
    require block.timestamp < deadline
    require not stor0
    require msg.value > 0
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] <= tokenLimitPerWallet
    if msg.value:
        require msg.value
        require tokensPerEther * msg.value / msg.value == tokensPerEther
    require totalTokens >= tokensPerEther * msg.value
    require (tokensPerEther * msg.value) + tokensSold >= tokensSold
    require (tokensPerEther * msg.value) + tokensSold <= hardCap
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require (tokensPerEther * msg.value) + tokensSold >= tokensSold
    tokensSold += tokensPerEther * msg.value
    require tokensPerEther * msg.value <= totalTokens
    totalTokens += -1 * tokensPerEther * msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokensPerEther * msg.value
    require ext_call.success
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(msg.sender, msg.value, 1);
}

function _fallback() payable {
    require block.timestamp >= startTimestamp
    require block.timestamp < deadline
    require not stor0
    require block.timestamp >= startTimestamp
    require block.timestamp < deadline
    require not stor0
    require msg.value > 0
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] <= tokenLimitPerWallet
    if msg.value:
        require msg.value
        require tokensPerEther * msg.value / msg.value == tokensPerEther
    require totalTokens >= tokensPerEther * msg.value
    require (tokensPerEther * msg.value) + tokensSold >= tokensSold
    require (tokensPerEther * msg.value) + tokensSold <= hardCap
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require (tokensPerEther * msg.value) + tokensSold >= tokensSold
    tokensSold += tokensPerEther * msg.value
    require tokensPerEther * msg.value <= totalTokens
    totalTokens += -1 * tokensPerEther * msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokensPerEther * msg.value
    require ext_call.success
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
