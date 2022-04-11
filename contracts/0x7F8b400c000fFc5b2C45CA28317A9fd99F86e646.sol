contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor5;

function _fallback() payable {
    stor0 = 0x25177efe484dd1ef6dd55842a7ad43da6aee7b58
    stor1 = 0x9adbb95c97c1f1d7d9d8abe8cdd2f2043292aa79
    stor5 = 0
    require not msg.value
    return code.data[110 len 3404]
}



// =====================  Runtime code  =====================


const duration = 38

const devRatio = 20

const fundingMax = 2000000 * 10^18

const startBlock = 4059010

const isStarted = block.number >= 4059010

const ratio = 10^14

const fundingGoal = 0

const minimumPurchase = 1


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
    return (10^14 * savedBalance / 10^18)
}

function checkTokDev() {
    return (10^14 * savedBalance / 10^18 / 20)
}

function sub_834dda24(?) {
    tokenAddress = tokenAddress
    creatorAddress = msg.sender
}

function checkTokBalance(address arg1) {
    return (10^14 * checkEthBalance[address(arg1)] / 10^18)
}

function checkTokTotal() {
    return ((10^14 * savedBalance / 10^18) + (10^14 * savedBalance / 10^18 / 20))
}

function isComplete() {
    if savedBalance >= 2000000 * 10^18:
        return savedBalance >= 2000000 * 10^18
    return (block.number > 4059048)
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
    require block.number >= 4059010
    require eth.balance(this.address) <= 2000000 * 10^18
    require msg.value >= 1
    require savedBalance < 2000000 * 10^18
    require block.number <= 4059048
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function contribute() payable {
    require block.number >= 4059010
    require eth.balance(this.address) <= 2000000 * 10^18
    require msg.value >= 1
    require savedBalance < 2000000 * 10^18
    require block.number <= 4059048
    checkEthBalance[address(msg.sender)] += msg.value
    checkSavedEthBalance[address(msg.sender)] += msg.value
    savedBalance += msg.value
    emit Contribution(msg.sender, msg.value, block.timestamp);
}

function payMe() {
    if savedBalance < 2000000 * 10^18:
        require block.number > 4059048
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
            args msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18
        require ext_call.success
        emit PayTokens(msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18, block.timestamp);
}

function payCreator() {
    if savedBalance < 2000000 * 10^18:
        require block.number > 4059048
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
