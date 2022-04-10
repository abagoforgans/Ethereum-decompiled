contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor6;
uint256 stor8;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor6 = 48 * 24 * 3600
    stor10 = 10^18
    stor11 = 10^17
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2812 len 20]
    stor0 = code.data[2844 len 20]
    stor6 = code.data[2864 len 32]
    require code.data[2864 len 32] + block.timestamp >= block.timestamp
    stor8 = code.data[2864 len 32] + block.timestamp
    return code.data[232 len 2568]
}



// =====================  Runtime code  =====================


const ethBalance = eth.balance(this.address)


address owner;
address tokenAddress;
array of struct deposits;
array of struct payouts;
uint256 lifetimeDeposits;
uint256 lifetimePayouts;
uint256 blocksPerPayPeriod;
uint256 previousPayoutBlock;
uint256 nextPayoutBlock;
uint256 payoutPool;
uint256 stor10;
uint256 minWithdrawalThreshold;

function previousPayoutBlock() {
    return previousPayoutBlock
}

function minWithdrawalThreshold() {
    return minWithdrawalThreshold
}

function lifetimePayouts() {
    return lifetimePayouts
}

function payoutPool() {
    return payoutPool
}

function owner() {
    return owner
}

function payouts(address arg1, uint256 arg2) {
    require arg2 < payouts[arg1].field_0
    return payouts[arg1][arg2].field_0, payouts[arg1][arg2].field_256
}

function nextPayoutBlock() {
    return nextPayoutBlock
}

function lifetimeDeposits() {
    return lifetimeDeposits
}

function deposits(address arg1, uint256 arg2) {
    require arg2 < deposits[arg1].field_0
    return deposits[arg1][arg2].field_0, deposits[arg1][arg2].field_256
}

function blocksPerPayPeriod() {
    return blocksPerPayPeriod
}

function token() {
    return tokenAddress
}

function isNewPayoutPeriod() {
    return block.timestamp >= nextPayoutBlock
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setBlocksPerPayPeriod(uint256 arg1) {
    require owner == msg.sender
    blocksPerPayPeriod = arg1
}

function setMinimumWithdrawal(uint256 arg1) {
    require owner == msg.sender
    minWithdrawalThreshold = arg1
}

function startNewPayoutPeriod() {
    require block.timestamp >= nextPayoutBlock
    previousPayoutBlock = nextPayoutBlock
    require blocksPerPayPeriod + nextPayoutBlock >= nextPayoutBlock
    nextPayoutBlock += blocksPerPayPeriod
    payoutPool = eth.balance(this.address)
}

function isAddressLocked(address arg1) {
    if not payouts[address(arg1)].field_0:
        return 0
    require payouts[address(arg1)].field_0 - 1 < payouts[address(arg1)].field_0
    if payouts[address(arg1)][payouts[address(arg1)].field_0 - 1].field_256 < previousPayoutBlock:
        return payouts[address(arg1)][payouts[address(arg1)].field_0 - 1].field_256 >= previousPayoutBlock
    return (payouts[address(arg1)][payouts[address(arg1)].field_0 - 1].field_256 < nextPayoutBlock)
}

function calculatePayoutForAddress(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require stor10
    return (payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10)
}

function deposit() payable {
    emit onDeposit(msg.value, msg.sender);
    lifetimeDeposits += msg.value
    deposits[address(msg.sender)].field_0++
    if not deposits[address(msg.sender)].field_0 <= deposits[address(msg.sender)].field_0 + 1:
        idx = 2 * deposits[address(msg.sender)].field_0 + 1
        while 2 * deposits[address(msg.sender)].field_0 > idx:
            deposits[address(msg.sender)][idx].field_0 = 0
            deposits[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    deposits[address(msg.sender)][deposits[address(msg.sender)].field_0].field_0 = msg.value
    deposits[address(msg.sender)][deposits[address(msg.sender)].field_0].field_256 = block.timestamp
}

function _fallback() payable {
    emit onDeposit(msg.value, msg.sender);
    lifetimeDeposits += msg.value
    deposits[address(msg.sender)].field_0++
    if not deposits[address(msg.sender)].field_0 <= deposits[address(msg.sender)].field_0 + 1:
        idx = 2 * deposits[address(msg.sender)].field_0 + 1
        while 2 * deposits[address(msg.sender)].field_0 > idx:
            deposits[address(msg.sender)][idx].field_0 = 0
            deposits[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    deposits[address(msg.sender)][deposits[address(msg.sender)].field_0].field_0 = msg.value
    deposits[address(msg.sender)][deposits[address(msg.sender)].field_0].field_256 = block.timestamp
}

function withdraw() {
    require previousPayoutBlock > 0
    if not payouts[address(msg.sender)].field_0:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            if ext_call.success:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if stor10:
                                require payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10 > minWithdrawalThreshold
                                payouts[address(msg.sender)].field_0++
                                if not payouts[address(msg.sender)].field_0 <= payouts[address(msg.sender)].field_0 + 1:
                                    idx = 2 * payouts[address(msg.sender)].field_0 + 1
                                    while 2 * payouts[address(msg.sender)].field_0 > idx:
                                        payouts[address(msg.sender)][idx].field_0 = 0
                                        payouts[address(msg.sender)][idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                payouts[address(msg.sender)][payouts[address(msg.sender)].field_0].field_0 = payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                payouts[address(msg.sender)][payouts[address(msg.sender)].field_0].field_256 = block.timestamp
                                require eth.balance(this.address) >= payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                emit onPayout((payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10), msg.sender);
                                lifetimePayouts += payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                call msg.sender with:
                                   value payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if payouts[address(msg.sender)].field_0 - 1 < payouts[address(msg.sender)].field_0:
            if payouts[address(msg.sender)][payouts[address(msg.sender)].field_0 - 1].field_256 >= previousPayoutBlock:
                require payouts[address(msg.sender)][payouts[address(msg.sender)].field_0 - 1].field_256 >= nextPayoutBlock
            if ext_code.size(tokenAddress):
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                if ext_call.success:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if stor10:
                                    require payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10 > minWithdrawalThreshold
                                    payouts[address(msg.sender)].field_0++
                                    if not payouts[address(msg.sender)].field_0 <= payouts[address(msg.sender)].field_0 + 1:
                                        idx = 2 * payouts[address(msg.sender)].field_0 + 1
                                        while 2 * payouts[address(msg.sender)].field_0 > idx:
                                            payouts[address(msg.sender)][idx].field_0 = 0
                                            payouts[address(msg.sender)][idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    payouts[address(msg.sender)][payouts[address(msg.sender)].field_0].field_0 = payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                    payouts[address(msg.sender)][payouts[address(msg.sender)].field_0].field_256 = block.timestamp
                                    require eth.balance(this.address) >= payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                    emit onPayout((payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10), msg.sender);
                                    lifetimePayouts += payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10
                                    call msg.sender with:
                                       value payoutPool * ext_call.return_data[0] * stor10 / ext_call.return_data[0] / stor10 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert
}



}
