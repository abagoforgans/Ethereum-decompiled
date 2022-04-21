contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor8;
address stor9;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 30400
    stor5 = 0
    stor6 = 30
    require not msg.value
    stor0 = msg.sender
    require code.data[3019 len 32] > 0
    require code.data[3051 len 32] > 0
    require code.data[3095 len 20]
    require code.data[3127 len 20]
    stor4 = code.data[3019 len 32]
    stor6 = code.data[3051 len 32]
    stor9 = code.data[3095 len 20]
    stor8 = code.data[3127 len 20]
    return code.data[262 len 2757]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokensSold;
uint256 weiRaised;
uint256 centsRaised;
uint256 centsPerEther;
uint256 bonusPercent;
uint256 centsPerToken;
uint256 debugLatestPurchaseCentsValue;
address walletAddress;
address stor9;

function centsPerEther() {
    return centsPerEther
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function centsRaised() {
    return centsRaised
}

function owner() {
    return owner
}

function centsPerToken() {
    return centsPerToken
}

function debugLatestPurchaseCentsValue() {
    return debugLatestPurchaseCentsValue
}

function bonusPercent() {
    return bonusPercent
}

function getBonusCoefficient() {
    return (bonusPercent + 100)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
    emit ChangeWallet(address(arg1), arg1);
}

function setBonusPercent(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    bonusPercent = arg1
    emit EventBonusPercentChanged(arg1, arg1);
}

function setCentsPerToken(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    centsPerToken = arg1
    emit EventCentsPerTokenChanged(centsPerToken, arg1);
}

function setCentsPerEther(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    centsPerEther = arg1
    emit EventCentsPerEtherChanged(centsPerEther, arg1);
}

function sub_ef04edba(?) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require ext_code.size(stor9)
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function centsToTokens(uint256 arg1) {
    require centsPerToken
    if not arg1 / centsPerToken:
        return ((100 * arg1 / centsPerToken) + (bonusPercent * arg1 / centsPerToken) / 100)
    require arg1 / centsPerToken
    require (100 * arg1 / centsPerToken) + (bonusPercent * arg1 / centsPerToken) / arg1 / centsPerToken == bonusPercent + 100
    return ((100 * arg1 / centsPerToken) + (bonusPercent * arg1 / centsPerToken) / 100)
}

function withdrawTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(stor9)
    call stor9.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor9)
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function sub_e9281fd4(?) {
    require owner == msg.sender
    require centsPerToken
    if arg2 / centsPerToken:
        require arg2 / centsPerToken
        require (100 * arg2 / centsPerToken) + (bonusPercent * arg2 / centsPerToken) / arg2 / centsPerToken == bonusPercent + 100
    require owner == msg.sender
    require arg1
    require (100 * arg2 / centsPerToken) + (bonusPercent * arg2 / centsPerToken) / 100 > 0
    require ext_code.size(stor9)
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), (100 * arg2 / centsPerToken) + (bonusPercent * arg2 / centsPerToken) / 100
    require ext_call.success
    require arg2 + centsRaised >= centsRaised
    centsRaised += arg2
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require msg.value
    require centsPerEther * msg.value / msg.value == centsPerEther
    debugLatestPurchaseCentsValue = centsPerEther * msg.value / 10^18
    require centsPerToken
    if centsPerEther * msg.value / 10^18 / centsPerToken:
        require centsPerEther * msg.value / 10^18 / centsPerToken
        require (100 * centsPerEther * msg.value / 10^18 / centsPerToken) + (bonusPercent * centsPerEther * msg.value / 10^18 / centsPerToken) / centsPerEther * msg.value / 10^18 / centsPerToken == bonusPercent + 100
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (centsPerEther * msg.value / 10^18) + centsRaised >= centsRaised
    centsRaised += centsPerEther * msg.value / 10^18
    require ext_code.size(stor9)
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, (100 * centsPerEther * msg.value / 10^18 / centsPerToken) + (bonusPercent * centsPerEther * msg.value / 10^18 / centsPerToken) / 100
    require ext_call.success
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require msg.value
    require centsPerEther * msg.value / msg.value == centsPerEther
    debugLatestPurchaseCentsValue = centsPerEther * msg.value / 10^18
    require centsPerToken
    if centsPerEther * msg.value / 10^18 / centsPerToken:
        require centsPerEther * msg.value / 10^18 / centsPerToken
        require (100 * centsPerEther * msg.value / 10^18 / centsPerToken) + (bonusPercent * centsPerEther * msg.value / 10^18 / centsPerToken) / centsPerEther * msg.value / 10^18 / centsPerToken == bonusPercent + 100
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (centsPerEther * msg.value / 10^18) + centsRaised >= centsRaised
    centsRaised += centsPerEther * msg.value / 10^18
    require ext_code.size(stor9)
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), (100 * centsPerEther * msg.value / 10^18 / centsPerToken) + (bonusPercent * centsPerEther * msg.value / 10^18 / centsPerToken) / 100
    require ext_call.success
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
