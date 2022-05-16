contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = 'AnythingAppTokenPreSale'

const BONUS_LEVEL_3 = 30

const BONUS_LEVEL_1 = 40

const MINIMAL_PURCHASE = 250 * 10^18

const LIMIT_PER_USER = 500000 * 10^18

const BONUS_LEVEL_2 = 35


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
uint256 firstStage;
uint256 secondStage;
uint256 thirdStage;

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

function thirdStage() {
    return thirdStage
}

function secondStage() {
    return secondStage
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

function firstStage() {
    return firstStage
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

function refund() {
    require block.timestamp >= endTime
    require not uint8(stor0.field_160)
    require not stor16[address(msg.sender)]
    require deposited[address(msg.sender)] > 0
    deposited[address(msg.sender)] = 0
    stor16[address(msg.sender)] = 1
    require weiRefunded + deposited[address(msg.sender)] >= weiRefunded
    weiRefunded += deposited[address(msg.sender)]
    call msg.sender with:
       value deposited[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refunded(deposited[address(msg.sender)], msg.sender);
}

function withdraw() {
    require msg.sender == owner
    if withdrawn < 500 * 10^18:
        require withdrawn <= collected
        if collected <= 500 * 10^18:
            call beneficiaryAddress with:
               value collected - withdrawn wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require collected >= withdrawn
            withdrawn = collected
        else:
            require withdrawn <= 500 * 10^18
            call beneficiaryAddress with:
               value -withdrawn + 500 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 500 * 10^18 >= withdrawn
            withdrawn = 500 * 10^18
    else:
        require block.timestamp >= endTime
        call beneficiaryAddress with:
           value collected wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        stor15 = 1
}



}
