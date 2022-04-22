contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address stor21;
uint256 stor24;
uint256 stor25;
uint16 stor26;

function _fallback() payable {
    stor0 = 70000000 * 10^18
    stor1 = 10^14
    stor2 = 1000000 * 10^18
    stor3 = 10
    stor4 = 100
    stor5 = 80
    stor6 = 100
    stor7 = 40
    stor8 = 100
    stor9 = 20
    stor10 = 100
    stor11 = 50
    stor12 = 100
    stor13 = 30
    stor14 = 100
    stor16 = 0x2b0556a6298ea3d35e90f1df32cc126b31f59770
    stor17 = 419940 * 3600
    stor18 = 420660 * 3600
    stor19 = 422340 * 3600
    stor20 = 423540 * 3600
    stor24 = 0
    stor25 = 0
    stor26 = 0
    require not msg.value
    stor15 = msg.sender
    create contract with 0 wei
                    code: code.data[6927 len 7602]
    require create.new_address
    stor21 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).enableManager(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.grantManagerPermission(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, 0, 64, 11, 'mint_tokens'
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.grantManagerPermission(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, 0, 64, 11, 'burn_tokens'
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.grantManagerPermission(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, 0, 64, 16, 'unpause_contract'
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor16
    require ext_call.success
    return code.data[1141 len 5786]
}



// =====================  Runtime code  =====================


#
#  - calculatePurchasedTokens(uint256 arg1, uint256 arg2)
#  - calculateRefundedEth(uint256 arg1, uint256 arg2)
#  - angelBurn(address arg1, uint256 arg2)
#  - _fallback()
#
uint256 icoCap;
uint256 initialTokenPrice;
uint256 landmarkSize;
uint256 landmarkPriceStepNumerator;
uint256 landmarkPriceStepDenominator;
uint256 firstRefundRoundRateNumerator;
uint256 firstRefundRoundRateDenominator;
uint256 secondRefundRoundRateNumerator;
uint256 secondRefundRoundRateDenominator;
uint256 resolveAddressLight;
uint256 initialFundsReleaseDenominator;
uint256 afterFirstRefundRoundFundsReleaseNumerator;
uint256 afterFirstRefundRoundFundsReleaseDenominator;
uint256 angelFoundationShareNumerator;
uint256 angelFoundationShareDenominator;
address angelAdminAddress;
address angelFoundationAddress;
uint256 icoLaunchTimestamp;
uint256 icoFinishTimestamp;
uint256 firstRefundRoundFinishTimestamp;
uint256 secondRefundRoundFinishTimestamp;
address angelTokenAddress;
array of struct investments;
mapping of uint8 stor23;
uint256 totalInvestors;
uint256 totalTokensSold;
uint8 stor26;
uint8 stor26; offset 8

function angelAdminAddress() {
    return angelAdminAddress
}

function firstRefundRoundRateNumerator() {
    return firstRefundRoundRateNumerator
}

function firstRefundRoundRateDenominator() {
    return firstRefundRoundRateDenominator
}

function angelFoundationShareNumerator() {
    return angelFoundationShareNumerator
}

function totalInvestors() {
    return totalInvestors
}

function afterFirstRefundRoundFundsReleaseNumerator() {
    return afterFirstRefundRoundFundsReleaseNumerator
}

function secondRefundRoundRateDenominator() {
    return secondRefundRoundRateDenominator
}

function initialTokenPrice() {
    return initialTokenPrice
}

function secondRefundRoundRateNumerator() {
    return secondRefundRoundRateNumerator
}

function resolveAddressLight(address arg1) {
    return resolveAddressLight
}

function investments(address arg1, uint256 arg2) {
    require arg2 < investments[arg1].field_0
    return investments[arg1][arg2].field_0, 
           investments[arg1][arg2].field_256,
           investments[arg1][arg2].field_512,
           investments[arg1][arg2].field_768,
           investments[arg1][arg2].field_1024
}

function angelFoundationAddress() {
    return angelFoundationAddress
}

function totalTokensSold() {
    return totalTokensSold
}

function landmarkPriceStepDenominator() {
    return landmarkPriceStepDenominator
}

function afterFirstRefundRoundFundsReleaseDenominator() {
    return afterFirstRefundRoundFundsReleaseDenominator
}

function investors(address arg1) {
    return bool(stor23[arg1])
}

function icoFinishTimestamp() {
    return icoFinishTimestamp
}

function landmarkSize() {
    return landmarkSize
}

function angelToken() {
    return angelTokenAddress
}

function secondRefundRoundFinishTimestamp() {
    return secondRefundRoundFinishTimestamp
}

function initialFundsReleaseDenominator() {
    return initialFundsReleaseDenominator
}

function firstRefundRoundFinishTimestamp() {
    return firstRefundRoundFinishTimestamp
}

function icoCap() {
    return icoCap
}

function landmarkPriceStepNumerator() {
    return landmarkPriceStepNumerator
}

function angelFoundationShareDenominator() {
    return angelFoundationShareDenominator
}

function icoLaunchTimestamp() {
    return icoLaunchTimestamp
}

function calculateLandmarkPrice(uint256 arg1) {
    require landmarkSize
    require landmarkPriceStepDenominator
    return (initialTokenPrice + (initialTokenPrice * landmarkPriceStepNumerator / landmarkPriceStepDenominator * arg1 / landmarkSize))
}

function unpauseAngelToken() {
    require block.timestamp >= icoFinishTimestamp
    require not uint8(stor26.field_0)
    uint8(stor26.field_0) = 1
    require ext_code.size(angelTokenAddress)
    call angelTokenAddress.unpauseContract() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function calculateRefundedEthWithDiscount(uint256 arg1) {
    if block.timestamp > firstRefundRoundFinishTimestamp:
        if secondRefundRoundRateDenominator:
            return (arg1 * secondRefundRoundRateNumerator / secondRefundRoundRateDenominator)
    else:
        if firstRefundRoundRateDenominator:
            return (arg1 * firstRefundRoundRateNumerator / firstRefundRoundRateDenominator)
    revert
}

function withdrawFoundationFunds() {
    if angelFoundationAddress != msg.sender:
        require angelAdminAddress == msg.sender
    require block.timestamp > firstRefundRoundFinishTimestamp
    if block.timestamp > secondRefundRoundFinishTimestamp:
        call angelFoundationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require not uint8(stor26.field_8)
        uint8(stor26.field_8) = 1
        require afterFirstRefundRoundFundsReleaseDenominator
        call angelFoundationAddress with:
           value eth.balance(this.address) * afterFirstRefundRoundFundsReleaseNumerator / afterFirstRefundRoundFundsReleaseDenominator wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
