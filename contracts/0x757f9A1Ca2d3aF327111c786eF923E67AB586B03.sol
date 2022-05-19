contract main {




// =====================  Runtime code  =====================


address owner;
address tknAddress;
address cSaleAddress;
address investorsStorageAddress;
uint256 levelEndDate;
uint256 currentLevel;
uint256 levelTokens;
uint256 tokensSold;
uint256 weiRised;
uint256 ethPrice;
array of address investorsList;
uint8 presalePaused;
uint8 presaleEnded; offset 8
array of uint256 stor12;
uint256 stor25;
uint256 stor26;

function tkn() {
    return tknAddress
}

function investorsList(uint256 arg1) {
    require arg1 < investorsList.length
    return investorsList[arg1]
}

function investorsStorage() {
    return investorsStorageAddress
}

function tokensSold() {
    return tokensSold
}

function levelTokens() {
    return levelTokens
}

function weiRised() {
    return weiRised
}

function owner() {
    return owner
}

function currentLevel() {
    return currentLevel
}

function presalePaused() {
    return bool(presalePaused)
}

function levelEndDate() {
    return levelEndDate
}

function presaleEnded() {
    return bool(presaleEnded)
}

function cSale() {
    return cSaleAddress
}

function ethPrice() {
    return ethPrice
}

function pausePresale(bool arg1) {
    require msg.sender == owner
    presalePaused = uint8(arg1)
}

function setCrowdSaleAddress(address arg1) {
    require msg.sender == owner
    cSaleAddress = arg1
}

function setStorageAddress(address arg1) {
    require msg.sender == owner
    investorsStorageAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setUsdEthValue(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    ethPrice = arg1
    require arg1
    stor25 = 10^16 / arg1
}

function getFunds() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= stor26
    require not presalePaused
    require not presaleEnded
    require currentLevel < 12
    require stor25
    require stor25
    require stor25 * stor12[stor5] / stor25 == stor12[stor5]
    require stor25 * stor12[stor5]
    if msg.value / stor25 * stor12[stor5] >= levelTokens:
        # nil
    else:
        require msg.value / stor25 * stor12[stor5] <= levelTokens
        levelTokens -= msg.value / stor25 * stor12[stor5]
        require weiRised + msg.value >= weiRised
        weiRised += msg.value
        tokensSold += msg.value / stor25 * stor12[stor5]
        require ext_code.size(investorsStorageAddress)
        call investorsStorageAddress.newInvestment(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tknAddress)
        call tknAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / stor25 * stor12[stor5]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit NewInvestment(msg.sender, 10^18 * msg.value / stor25 * stor12[stor5]);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
