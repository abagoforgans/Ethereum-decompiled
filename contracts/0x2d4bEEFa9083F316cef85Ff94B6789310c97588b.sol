contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 3515]
}



// =====================  Runtime code  =====================


address curatorAddress;
address devAddress;
address defaultMintingAddress;
uint256 usdAmount;
uint256 xaurCoined;
uint256 goldBought;
address tokenAddress;

function defaultMintingAddress() {
    return defaultMintingAddress
}

function xaurCoined() {
    return xaurCoined
}

function dev() {
    return devAddress
}

function goldBought() {
    return goldBought
}

function tokenAddress() {
    return tokenAddress
}

function curator() {
    return curatorAddress
}

function usdAmount() {
    return usdAmount
}

function killContract() {
    if msg.sender == devAddress:
        selfdestruct(devAddress)
    return 1
}

function _fallback() {
    revert 
}

function getRealUsdAmount() {
    return (usdAmount / 100 * 10^6)
}

function getRealXaurCoined() {
    return (xaurCoined / 100 * 10^6)
}

function getRealGoldBought() {
    return (goldBought / 100 * 10^6)
}

function setUsdAmount(uint256 arg1) {
    if curatorAddress != msg.sender:
        return 0
    usdAmount = arg1
    return 1
}

function setXaurCoined(uint256 arg1) {
    if curatorAddress != msg.sender:
        return 0
    xaurCoined = arg1
    return 1
}

function setGoldBought(uint256 arg1) {
    if curatorAddress != msg.sender:
        return 0
    goldBought = arg1
    return 1
}

function setMintingCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function setTokenContract(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    tokenAddress = arg1
    return 0
}

function setDefaultMintingAddress(address arg1) {
    if curatorAddress != msg.sender:
        return 0
    defaultMintingAddress = arg1
    return 1
}

function doCoinage() {
    if curatorAddress != msg.sender:
        return 0
    if not usdAmount:
        return 0
    if not xaurCoined:
        return 0
    if not goldBought:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.doCoinage(address[] rg1, uint256[] rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining - 50 wei
        args 160, 224, usdAmount, xaurCoined, goldBought, 1, defaultMintingAddress, 1, xaurCoined
    require ext_call.success
    emit MintMade(usdAmount, xaurCoined, goldBought);
    usdAmount = 0
    xaurCoined = 0
    goldBought = 0
    return 1
}



}
