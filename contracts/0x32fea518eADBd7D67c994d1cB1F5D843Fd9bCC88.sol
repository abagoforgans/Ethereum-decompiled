contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor5;

function _fallback() payable {
    stor0 = 0xc44d0d8ebf3a4bfbfc9736d2e7b1d9d9144ba2a2
    stor1 = 0x9adbb95c97c1f1d7d9d8abe8cdd2f2043292aa79
    stor5 = 0
    require not msg.value
    return code.data[110 len 3425]
}



// =====================  Runtime code  =====================


const duration = 38

const devRatio = 40

const fundingMax = 2000000 * 10^18

const startBlock = 4058898

const isStarted = block.number >= 4058898

const ratio = 500 * 10^18

const fundingGoal = 0

const minimumPurchase = 10^15


address tokenAddress;
address escrowAddress;
address tokenAddress;
address creatorAddress;
uint256 savedBalance;
uint8 stor5;
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

function tokenAddress() {
    return tokenAddress
}

function creatorPaid() {
    return bool(stor5)
}

function Token() {
    return tokenAddress
}

function escrow() {
    return escrowAddress
}

function percentOfGoal() {
    revert
}

function isSuccessful() {
    return savedBalance >= 0
}

function checkTokSold() {
    return (500 * 10^18 * savedBalance / 10^18)
}

function checkTokDev() {
    return (500 * 10^18 * savedBalance / 10^18 / 40)
}

function sub_834dda24(?) {
    tokenAddress = tokenAddress
    creatorAddress = msg.sender
}

function checkTokBalance(address arg1) {
    return (500 * 10^18 * checkEthBalance[address(arg1)] / 10^18)
}

function checkTokTotal() {
    return ((500 * 10^18 * savedBalance / 10^18) + (500 * 10^18 * savedBalance / 10^18 / 40))
}

function isComplete() {
    if savedBalance >= 2000000 * 10^18:
        return savedBalance >= 2000000 * 10^18
    return (block.number > 4058936)
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
    require block.number >= 4058898
    require eth.balance(this.address) <= 2000000 * 10^18
    require msg.value >= 10^15
    require savedBalance < 2000000 * 10^18
    require block.number <= 4058936
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function contribute() payable {
    require block.number >= 4058898
    require eth.balance(this.address) <= 2000000 * 10^18
    require msg.value >= 10^15
    require savedBalance < 2000000 * 10^18
    require block.number <= 4058936
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function payMe() {
    if savedBalance < 2000000 * 10^18:
        require block.number > 4058936
    require checkEthBalance[address(msg.sender)] > 0
    checkEthBalance[address(msg.sender)] = 0
    if savedBalance < 0:
        call msg.sender with:
           value checkSavedEthBalance[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit PayEther(msg.sender, checkSavedEthBalance[address(msg.sender)], block.timestamp);
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 500 * 10^18 * checkEthBalance[address(msg.sender)] / 10^18
        require ext_call.success
        emit PayTokens(msg.sender, 500 * 10^18 * checkEthBalance[address(msg.sender)] / 10^18, block.timestamp);
}

function payCreator() {
    if savedBalance < 2000000 * 10^18:
        require block.number > 4058936
    require not stor5
    stor5 = 1
    if savedBalance < 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    emit PayEther(escrowAddress, eth.balance(this.address), block.timestamp);
    call escrowAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit PayTokens(creatorAddress, 500 * 10^18 * savedBalance / 10^18 / 40, block.timestamp);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args creatorAddress, 500 * 10^18 * savedBalance / 10^18 / 40
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] - (500 * 10^18 * savedBalance / 10^18) - (500 * 10^18 * savedBalance / 10^18 / 40))
    require ext_call.success
    emit BurnTokens(ext_call.return_data[0] - (500 * 10^18 * savedBalance / 10^18) - (500 * 10^18 * savedBalance / 10^18 / 40), block.timestamp);
}



}
