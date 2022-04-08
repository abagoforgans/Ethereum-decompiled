contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = 0x190e569be071f40c704e15825f285481cb74b6cc
    stor1 = msg.sender
    return code.data[101 len 3389]
}



// =====================  Runtime code  =====================


const duration = 190000

const devRatio = 20

const fundingMax = 20000 * 10^18

const startBlock = (1100 * 3600)

const isStarted = block.number >= 1100 * 3600

const ratio = 10^14

const fundingGoal = 500 * 10^18

const tokenAddress = 0x190e569be071f40c704e15825f285481cb74b6cc

const minimumPurchase = 10^15

const escrow = 0x50115d25322b638a5b8896178f7c107cffc08144


address tokenAddress;
address creatorAddress;
uint256 savedBalance;
uint8 creatorPaid;
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
    return bool(creatorPaid)
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
    call tokenAddress.balanceOf(address rg1) with:
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
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18
        require ext_call.success
        emit PayTokens(msg.sender, 10^14 * checkEthBalance[address(msg.sender)] / 10^18, block.timestamp);
}

function payCreator() {
    if savedBalance < 20000 * 10^18:
        require block.number > 4150000
    require not creatorPaid
    creatorPaid = 1
    if savedBalance < 500 * 10^18:
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOf(address rg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        emit PayTokens(creatorAddress, ext_call.return_data[0], block.timestamp);
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOf(address rg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args creatorAddress, ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    emit PayEther(0x50115d25322b638a5b8896178f7c107cffc08144, eth.balance(this.address), block.timestamp);
    call 0x50115d25322b638a5b8896178f7c107cffc08144 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit PayTokens(creatorAddress, 10^14 * savedBalance / 10^18 / 20, block.timestamp);
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args creatorAddress, 10^14 * savedBalance / 10^18 / 20
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] - (10^14 * savedBalance / 10^18) - (10^14 * savedBalance / 10^18 / 20))
    require ext_call.success
    emit BurnTokens(ext_call.return_data[0] - (10^14 * savedBalance / 10^18) - (10^14 * savedBalance / 10^18 / 20), block.timestamp);
}



}
