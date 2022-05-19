contract main {




// =====================  Runtime code  =====================


const name = 'AnythingAppTokenPreSale'

const MINIMAL_PURCHASE = 250 * 10^18

const LIMIT_PER_USER = 500000 * 10^18


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address ethPriceProviderAddress;
address tokenAddress;
address investorWhiteListAddress;
address beneficiaryAddress;
uint256 tokenPriceUsd;
uint256 totalTokens;
uint256 ethUsdRate;
uint256 collected;
uint256 withdrawn;
uint256 tokensSold;
uint256 investorCount;
uint256 weiRefunded;
uint256 startTime;
uint256 endTime;
uint8 stor15;
mapping of uint8 stor16;
mapping of uint256 deposited;

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function ethUsdRate() {
    return ethUsdRate
}

function tokensSold() {
    return tokensSold
}

function tokenPriceUsd() {
    return tokenPriceUsd
}

function weiRefunded() {
    return weiRefunded
}

function startTime() {
    return startTime
}

function totalTokens() {
    return totalTokens
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function halted() {
    return bool(uint8(stor0.field_160))
}

function refunded(address arg1) {
    return bool(stor16[arg1])
}

function withdrawn() {
    return withdrawn
}

function deposited(address arg1) {
    return deposited[arg1]
}

function investorCount() {
    return investorCount
}

function investorWhiteList() {
    return investorWhiteListAddress
}

function ethPriceProvider() {
    return ethPriceProviderAddress
}

function crowdsaleFinished() {
    return bool(stor15)
}

function token() {
    return tokenAddress
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function halt() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
}

function setNewWhiteList(address arg1) {
    require msg.sender == owner
    require arg1
    investorWhiteListAddress = arg1
}

function setEthPriceProvider(address arg1) {
    require msg.sender == owner
    require arg1
    ethPriceProviderAddress = arg1
}

function receiveEthPrice(uint256 arg1) {
    require msg.sender == ethPriceProviderAddress
    require arg1 > 0
    ethUsdRate = arg1
}

function withdraw() {
    require msg.sender == owner
    require withdrawn <= collected
    call beneficiaryAddress with:
       value collected - withdrawn wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require collected >= withdrawn
    withdrawn = collected
}

function withdrawTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        investorCount++
    if msg.value:
        require msg.value
        require msg.value * ethUsdRate / msg.value == ethUsdRate
    require tokenPriceUsd
    require ext_code.size(investorWhiteListAddress)
    call investorWhiteListAddress.getReferralOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value * ethUsdRate / tokenPriceUsd:
        require msg.value * ethUsdRate / tokenPriceUsd
        require 20 * msg.value * ethUsdRate / tokenPriceUsd / msg.value * ethUsdRate / tokenPriceUsd == 20
    require tokensSold + (msg.value * ethUsdRate / tokenPriceUsd) >= tokensSold
    if 20 * msg.value * ethUsdRate / tokenPriceUsd / 100 <= 0:
        require tokensSold + (msg.value * ethUsdRate / tokenPriceUsd) <= totalTokens
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) >= ext_call.return_data[0]
        require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) <= 500000 * 10^18
        tokensSold += msg.value * ethUsdRate / tokenPriceUsd
    else:
        if not ext_call.return_data[12 len 20]:
            require tokensSold + (msg.value * ethUsdRate / tokenPriceUsd) <= totalTokens
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) >= ext_call.return_data[0]
            require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) <= 500000 * 10^18
            tokensSold += msg.value * ethUsdRate / tokenPriceUsd
        else:
            require 20 * msg.value * ethUsdRate / tokenPriceUsd / 100 >= 0
            require tokensSold + (msg.value * ethUsdRate / tokenPriceUsd) + (20 * msg.value * ethUsdRate / tokenPriceUsd / 100) <= totalTokens
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) >= ext_call.return_data[0]
            require ext_call.return_data[0] + (msg.value * ethUsdRate / tokenPriceUsd) <= 500000 * 10^18
            tokensSold = tokensSold + (msg.value * ethUsdRate / tokenPriceUsd) + (20 * msg.value * ethUsdRate / tokenPriceUsd / 100)
    require collected + msg.value >= collected
    collected += msg.value
    require deposited[address(msg.sender)] + msg.value >= deposited[address(msg.sender)]
    deposited[address(msg.sender)] += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * ethUsdRate / tokenPriceUsd
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit NewContribution(msg.value * ethUsdRate / tokenPriceUsd, msg.value, msg.sender);
    if 20 * msg.value * ethUsdRate / tokenPriceUsd / 100 > 0:
        if address(ext_call.return_data[0]):
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 20 * msg.value * ethUsdRate / tokenPriceUsd / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit NewReferralTransfer((20 * msg.value * ethUsdRate / tokenPriceUsd / 100), msg.sender, address(ext_call.return_data[0]));
}



}
