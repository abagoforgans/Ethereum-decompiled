contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = 0x2e3037aeda3a452c0fbd5f98ba0af0645987f359
    stor1 = msg.sender
    return code.data[104 len 3430]
}



// =====================  Runtime code  =====================


const duration = 190000

const devRatio = 20

const fundingMax = 20000 * 10^18

const startBlock = (1100 * 3600)

const isStarted = block.number >= 1100 * 3600

const ratio = 10^14

const fundingGoal = 500 * 10^18

const tokenAddress = 0x2e3037aeda3a452c0fbd5f98ba0af0645987f359

const minimumPurchase = 10^15

const escrow = 0xdeadaa1e477c1eabd931d44f82a8fcb12d14a3a6


address tokenAddress;
address creatorAddress;
uint256 savedBalance;
uint8 stor3;
mapping of uint256 checkEthBalance;
mapping of uint256 checkSavedEthBalance;

function creator() {
    return creatorAddress
}

function checkSavedEthBalance(address arg1) {
    return checkSavedEthBalance[address(arg1)]
}

function savedBalance() {
    return savedBalance
}

function checkEthBalance(address arg1) {
    return checkEthBalance[address(arg1)]
}

function creatorPaid() {
    return bool(stor3)
}

function Token() {
    return tokenAddress
}

function isSuccessful() {
    return savedBalance >= 500 * 10^18
}

function checkTokSold() {
    return (10^14 * savedBalance / 10^18)
}

function checkTokDev() {
    return (10^14 * savedBalance / 10^18 / 20)
}

function percentOfGoal() {
    return uint16(100 * savedBalance / 500 * 10^18)
}

function checkTokBalance(address arg1) {
    return (10^14 * checkEthBalance[address(arg1)] / 10^18)
}

function checkTokTotal() {
    return ((10^14 * savedBalance / 10^18) + (10^14 * savedBalance / 10^18 / 20))
}

function isComplete() {
    if savedBalance >= 20000 * 10^18:
        return savedBalance >= 20000 * 10^18
    return (block.number > 4150000)
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require block.number >= 1100 * 3600
    require eth.balance(this.address) <= 20000 * 10^18
    require msg.value >= 10^15
    require savedBalance < 20000 * 10^18
    require block.number <= 4150000
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function contribute() payable {
    require block.number >= 1100 * 3600
    require eth.balance(this.address) <= 20000 * 10^18
    require msg.value >= 10^15
    require savedBalance < 20000 * 10^18
    require block.number <= 4150000
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function payMe() {
    if savedBalance < 20000 * 10^18:
        require block.number > 4150000
    require checkEthBalance[address(msg.sender)] > 0
    checkEthBalance[address(msg.sender)] = 0
    if savedBalance < 500 * 10^18:
        call msg.sender with:
           value checkSavedEthBalance[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit PayEther(msg.sender, checkSavedEthBalance[address(msg.sender)], block.timestamp);
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18
        require ext_call.success
        emit PayTokens(msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18, block.timestamp);
}

function payCreator() {
    if savedBalance < 20000 * 10^18:
        require block.number > 4150000
    require not stor3
    stor3 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if savedBalance < 500 * 10^18:
        emit PayTokens(creatorAddress, ext_call.return_data[0], block.timestamp);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args creatorAddress, ext_call.return_data[0]
        require ext_call.success
    else:
        emit PayEther(0xdeadaa1e477c1eabd931d44f82a8fcb12d14a3a6, eth.balance(this.address), block.timestamp);
        call 0xdeadaa1e477c1eabd931d44f82a8fcb12d14a3a6 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        emit PayTokens(creatorAddress, 10^14 * savedBalance / 10^18 / 20, block.timestamp);
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args creatorAddress, 10^14 * savedBalance / 10^18 / 20
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] - (10^14 * savedBalance / 10^18) - (10^14 * savedBalance / 10^18 / 20))
        require ext_call.success
        emit BurnTokens(ext_call.return_data[0] - (10^14 * savedBalance / 10^18) - (10^14 * savedBalance / 10^18 / 20), block.timestamp);
}



}
