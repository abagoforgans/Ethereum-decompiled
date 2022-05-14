contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    uint8(stor0.field_0) = 1
    uint8(stor4.field_160) = 1
    require not msg.value
    require code.data[6606 len 32] < 100
    require code.data[6542 len 32] >= code.data[6574 len 32]
    address(stor0.field_8) = msg.sender
    address(stor4.field_0) = code.data[6522 len 20]
    stor1 = code.data[6542 len 32]
    stor2 = code.data[6574 len 32]
    if not code.data[6606 len 32]:
        stor3 = 0
    else:
        require 100 * 10^18 * code.data[6606 len 32] / code.data[6606 len 32] == 100 * 10^18
        stor3 = 100 * 10^18 * code.data[6606 len 32] / 100
    return code.data[385 len 6125]
}



// =====================  Runtime code  =====================


const maxGasPrice = 5 * 10^10

const whitelistContract = 0xf6e386fa4794b58350e7b4cb32b6f86fb0f357d4

const contributionMin = 10^17


uint8 contractStage;
address stor0;
address owner; offset 8
uint256 stor1;
uint256 stor2;
uint256 feePct;
uint8 stor4; offset 160
uint128 stor4; offset 160
address receiverAddress;
uint256 nextCapTime;
uint256 nextContributionCap;
uint256 addressChangeBlock;
uint256 finalBalance;
array of uint256 ethRefundAmount;
address activeTokenAddress;
mapping of struct stor11;
mapping of struct stor12;
uint8 stor13;

function contractStage() {
    return contractStage
}

function receiverAddress() {
    return receiverAddress
}

function finalBalance() {
    return finalBalance
}

function nextContributionCap() {
    return nextContributionCap
}

function ethRefundAmount(uint256 arg1) {
    require arg1 < ethRefundAmount.length
    return ethRefundAmount[arg1]
}

function addressChangeBlock() {
    return addressChangeBlock
}

function activeToken() {
    return activeTokenAddress
}

function owner() {
    return owner
}

function feePct() {
    return feePct
}

function nextCapTime() {
    return nextCapTime
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit ERC223Received(address(arg1), arg2);
}

function toggleWhitelist(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function modifyCap(uint256 arg1) {
    require owner == msg.sender
    require 1 == contractStage
    require stor2 <= arg1
    require stor1 >= arg1
    stor2 = arg1
    nextCapTime = 0
}

function setReceiverAddress(address arg1) {
    require owner == msg.sender
    require 1 == contractStage
    receiverAddress = arg1
    addressChangeBlock = block.number
    emit ReceiverAddressSet(arg1);
}

function checkPoolBalance() {
    if contractStage != 1:
        return stor1, eth.balance(this.address), 0
    require eth.balance(this.address) <= stor1
    return stor1, eth.balance(this.address), stor1 - eth.balance(this.address)
}

function modifyIndividualCap(address arg1, uint256 arg2) {
    require owner == msg.sender
    require 1 == contractStage
    require arg2 <= stor1
    require arg2 >= stor11[address(arg1)].field_256
    stor11[address(arg1)].field_512 = arg2
}

function modifyMaxContractBalance(uint256 arg1) {
    require owner == msg.sender
    require 1 == contractStage
    require arg1 >= 10^17
    require arg1 >= eth.balance(this.address)
    stor1 = arg1
    if arg1 < stor2:
        stor2 = arg1
}

function modifyNextCap(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require 1 == contractStage
    require stor2 <= arg2
    require stor1 >= arg2
    require arg1 > block.timestamp
    nextCapTime = arg1
    nextContributionCap = arg2
}

function checkAvailableTokens(address arg1, address arg2) {
    mem[0] = arg2
    idx = stor11[address(arg1)][3][mem[0]].field_0
    while idx < stor12[address(arg2)].field_256:
        mem[0] = sha3(address(arg2), 12) + 1
        if not stor11[address(arg1)].field_256:
            idx = idx + 1
            continue 
        require stor12[address(arg2)][idx + 1].field_0 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == stor12[address(arg2)][idx + 1].field_0
        require stor12[address(arg2)][idx + 1].field_0 * stor11[address(arg1)].field_256 / 100 * 10^18 >= 0
        idx = idx + 1
        continue 
    return 0
}

function _fallback() payable {
    if contractStage != 1:
        require 2 == contractStage
        if owner != msg.sender:
            require receiverAddress == msg.sender
        require msg.value >= 10^17
        ethRefundAmount.length++
        if not ethRefundAmount.length <= ethRefundAmount.length + 1:
            idx = ethRefundAmount.length + 1
            while ethRefundAmount.length > idx:
                ethRefundAmount[idx] = 0
                idx = idx + 1
                continue 
        ethRefundAmount[ethRefundAmount.length] = msg.value
        emit EthRefundReceived(msg.sender, msg.value);
    else:
        if uint8(stor4.field_160):
            require ext_code.size(0xf6e386fa4794b58350e7b4cb32b6f86fb0f357d4)
            call 0xf6e386fa4794b58350e7b4cb32b6f86fb0f357d4.isPaidUntil(address arg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0] > block.timestamp
        require block.gasprice <= 5 * 10^10
        require eth.balance(this.address) <= stor1
        require msg.value + stor11[address(msg.sender)].field_256 >= stor11[address(msg.sender)].field_256
        require msg.value + stor11[address(msg.sender)].field_256 >= 10^17
        if nextCapTime > 0:
            if nextCapTime < block.timestamp:
                stor2 = nextContributionCap
                nextCapTime = 0
        if stor11[address(msg.sender)].field_512 <= 0:
            require msg.value + stor11[address(msg.sender)].field_256 <= stor2
        else:
            require msg.value + stor11[address(msg.sender)].field_256 <= stor11[address(msg.sender)].field_512
        stor11[address(msg.sender)].field_256 += msg.value
        emit ContributorBalanceChanged(msg.sender, msg.value + stor11[address(msg.sender)].field_256);
}

function checkContributorBalance(address arg1) {
    if 2 == contractStage:
        return stor11[address(arg1)].field_256, 0, 0
    if uint8(stor4.field_160):
        require ext_code.size(0xf6e386fa4794b58350e7b4cb32b6f86fb0f357d4)
        call 0xf6e386fa4794b58350e7b4cb32b6f86fb0f357d4.isPaidUntil(address arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0] < block.timestamp:
            return stor11[address(arg1)].field_256, 0, 0
    if stor11[address(arg1)].field_512 <= 0:
        if eth.balance(this.address) <= stor1:
            if stor11[address(arg1)].field_256 <= stor2:
                if stor2 - stor11[address(arg1)].field_256 <= stor1 - eth.balance(this.address):
                    if stor11[address(arg1)].field_256 <= stor2:
                        return stor11[address(arg1)].field_256, stor2, stor2 - stor11[address(arg1)].field_256
                else:
                    if eth.balance(this.address) <= stor1:
                        return stor11[address(arg1)].field_256, stor2, stor1 - eth.balance(this.address)
    else:
        if eth.balance(this.address) <= stor1:
            if stor11[address(arg1)].field_256 <= stor11[address(arg1)].field_512:
                if stor11[address(arg1)].field_512 - stor11[address(arg1)].field_256 <= stor1 - eth.balance(this.address):
                    if stor11[address(arg1)].field_256 <= stor11[address(arg1)].field_512:
                        return stor11[address(arg1)].field_256, 
                               stor11[address(arg1)].field_512,
                               stor11[address(arg1)].field_512 - stor11[address(arg1)].field_256
                else:
                    if eth.balance(this.address) <= stor1:
                        return stor11[address(arg1)].field_256, stor11[address(arg1)].field_512, stor1 - eth.balance(this.address)
    revert
}

function submitPool(uint256 arg1) {
    require owner == msg.sender
    require not stor13
    stor13 = 1
    require contractStage == 1
    require receiverAddress
    require addressChangeBlock + 6000 >= addressChangeBlock
    require block.number >= addressChangeBlock + 6000
    if arg1:
        require 10^17 <= arg1
        require arg1 <= eth.balance(this.address)
        finalBalance = eth.balance(this.address)
        require 5000 <= gas_remaining
        call receiverAddress with:
           value arg1 wei
             gas gas_remaining - 5000 wei
        require ext_call.success
        if eth.balance(this.address) > 0:
            ethRefundAmount.length++
            if not ethRefundAmount.length <= ethRefundAmount.length + 1:
                idx = ethRefundAmount.length + 1
                while ethRefundAmount.length > idx:
                    ethRefundAmount[idx] = 0
                    idx = idx + 1
                    continue 
            ethRefundAmount[ethRefundAmount.length] = eth.balance(this.address)
        contractStage = 2
        emit PoolSubmitted(receiverAddress, arg1);
    else:
        require 10^17 <= eth.balance(this.address)
        require eth.balance(this.address) <= eth.balance(this.address)
        finalBalance = eth.balance(this.address)
        require 5000 <= gas_remaining
        call receiverAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining - 5000 wei
        require ext_call.success
        if eth.balance(this.address) > 0:
            ethRefundAmount.length++
            if not ethRefundAmount.length <= ethRefundAmount.length + 1:
                idx = ethRefundAmount.length + 1
                while ethRefundAmount.length > idx:
                    ethRefundAmount[idx] = 0
                    idx = idx + 1
                    continue 
            ethRefundAmount[ethRefundAmount.length] = eth.balance(this.address)
        contractStage = 2
        emit PoolSubmitted(receiverAddress, eth.balance(this.address));
    stor13 = 0
}

function enableTokenWithdrawals(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor13
    stor13 = 1
    require 2 == contractStage
    if not arg2:
        activeTokenAddress = arg1
    else:
        require activeTokenAddress
    if not stor12[address(arg1)].field_256:
        stor12[address(arg1)].field_0 = arg1
    require ext_code.size(stor12[address(arg1)].field_0)
    call stor12[address(arg1)].field_0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor12[address(arg1)].field_512 <= ext_call.return_data[0]
    require ext_call.return_data[0] - stor12[address(arg1)].field_512 > 0
    if feePct > 0:
        if not ext_call.return_data[0] - stor12[address(arg1)].field_512:
            require ext_code.size(stor12[address(arg1)].field_0)
            call stor12[address(arg1)].field_0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor0, 0
        else:
            require (ext_call.return_data[0] * feePct) - (stor12[address(arg1)].field_512 * feePct) / ext_call.return_data[0] - stor12[address(arg1)].field_512 == feePct
            require ext_code.size(stor12[address(arg1)].field_0)
            call stor12[address(arg1)].field_0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor0, (ext_call.return_data[0] * feePct) - (stor12[address(arg1)].field_512 * feePct) / 100 * 10^18
        require ext_call.success
        require ext_call.return_data[0]
    require ext_code.size(stor12[address(arg1)].field_0)
    call stor12[address(arg1)].field_0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor12[address(arg1)].field_512 <= ext_call.return_data[0]
    require ext_code.size(stor12[address(arg1)].field_0)
    call stor12[address(arg1)].field_0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor12[address(arg1)].field_512 = ext_call.return_data[0]
    stor12[address(arg1)].field_256++
    if not stor12[address(arg1)].field_256 <= stor12[address(arg1)].field_256 + 1:
        idx = stor12[address(arg1)].field_256 + 1
        while stor12[address(arg1)].field_256 > idx:
            stor12[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if not ext_call.return_data[0] - stor12[address(arg1)].field_512:
        require finalBalance
        stor[stor12[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)))].field_0 = 0 / finalBalance
    else:
        require (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * stor12[address(arg1)].field_512) / ext_call.return_data[0] - stor12[address(arg1)].field_512 == 100 * 10^18
        require finalBalance
        stor[stor12[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)))].field_0 = (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * stor12[address(arg1)].field_512) / finalBalance
    stor13 = 0
}

function withdrawFor(address arg1, address arg2) {
    require owner == msg.sender
    require 2 == contractStage
    require stor11[address(arg1)].field_256 > 0
    require 2 == contractStage
    if arg2:
        if ethRefundAmount.length > stor11[address(arg1)].field_0:
            if not stor11[address(arg1)].field_256:
                require finalBalance
                idx = stor11[address(arg1)].field_0
                while idx < ethRefundAmount.length:
                    mem[0] = 9
                    if not ethRefundAmount[idx]:
                        idx = idx + 1
                        continue 
                    require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                    require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
            else:
                require 100 * 10^18 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == 100 * 10^18
                require finalBalance
                idx = stor11[address(arg1)].field_0
                while idx < ethRefundAmount.length:
                    mem[0] = 9
                    if not ethRefundAmount[idx]:
                        idx = idx + 1
                        continue 
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
            stor11[address(arg1)].field_0 = ethRefundAmount.length
        else:
            require stor12[address(arg2)].field_256 > stor11[address(arg1)][3][address(arg2)].field_0
            if ethRefundAmount.length > stor11[address(arg1)].field_0:
                if not stor11[address(arg1)].field_256:
                    require finalBalance
                    idx = stor11[address(arg1)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                        require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                else:
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == 100 * 10^18
                    require finalBalance
                    idx = stor11[address(arg1)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance
                        require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                stor11[address(arg1)].field_0 = ethRefundAmount.length
        if stor12[address(arg2)].field_256 > stor11[address(arg1)][3][address(arg2)].field_0:
            mem[0] = arg2
            idx = stor11[address(arg1)][3][mem[0]].field_0
            while idx < stor12[address(arg2)].field_256:
                mem[0] = sha3(address(arg2), 12) + 1
                if not stor11[address(arg1)].field_256:
                    idx = idx + 1
                    continue 
                require stor12[address(arg2)][idx + 1].field_0 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == stor12[address(arg2)][idx + 1].field_0
                require stor12[address(arg2)][idx + 1].field_0 * stor11[address(arg1)].field_256 / 100 * 10^18 >= 0
                idx = idx + 1
                continue 
            stor11[address(arg1)][3][address(arg2)].field_0 = stor12[address(arg2)].field_256
    else:
        if ethRefundAmount.length > stor11[address(arg1)].field_0:
            if not stor11[address(arg1)].field_256:
                require finalBalance
                idx = stor11[address(arg1)].field_0
                while idx < ethRefundAmount.length:
                    mem[0] = 9
                    if not ethRefundAmount[idx]:
                        idx = idx + 1
                        continue 
                    require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                    require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
            else:
                require 100 * 10^18 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == 100 * 10^18
                require finalBalance
                idx = stor11[address(arg1)].field_0
                while idx < ethRefundAmount.length:
                    mem[0] = 9
                    if not ethRefundAmount[idx]:
                        idx = idx + 1
                        continue 
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
            stor11[address(arg1)].field_0 = ethRefundAmount.length
        else:
            require stor12[stor10].field_256 > stor11[address(arg1)][3][stor10].field_0
            if ethRefundAmount.length > stor11[address(arg1)].field_0:
                if not stor11[address(arg1)].field_256:
                    require finalBalance
                    idx = stor11[address(arg1)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                        require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                else:
                    require 100 * 10^18 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == 100 * 10^18
                    require finalBalance
                    idx = stor11[address(arg1)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance
                        require 100 * 10^18 * stor11[address(arg1)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                stor11[address(arg1)].field_0 = ethRefundAmount.length
        if stor12[stor10].field_256 > stor11[address(arg1)][3][stor10].field_0:
            mem[0] = activeTokenAddress
            idx = stor11[address(arg1)][3][mem[0]].field_0
            while idx < stor12[stor10].field_256:
                mem[0] = sha3(activeTokenAddress, 12) + 1
                if not stor11[address(arg1)].field_256:
                    idx = idx + 1
                    continue 
                require stor12[stor10][idx + 1].field_0 * stor11[address(arg1)].field_256 / stor11[address(arg1)].field_256 == stor12[stor10][idx + 1].field_0
                require stor12[stor10][idx + 1].field_0 * stor11[address(arg1)].field_256 / 100 * 10^18 >= 0
                idx = idx + 1
                continue 
            stor11[address(arg1)][3][stor10].field_0 = stor12[stor10].field_256
}

function withdraw(address arg1) {
    require stor11[address(msg.sender)].field_256 > 0
    if 1 == contractStage:
        stor11[address(msg.sender)].field_256 = 0
        call msg.sender with:
           value stor11[address(msg.sender)].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit ContributorBalanceChanged(msg.sender, 0);
    else:
        require 2 == contractStage
        if arg1:
            if ethRefundAmount.length > stor11[address(msg.sender)].field_0:
                if not stor11[address(msg.sender)].field_256:
                    require finalBalance
                    idx = stor11[address(msg.sender)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                        require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                else:
                    require 100 * 10^18 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == 100 * 10^18
                    require finalBalance
                    idx = stor11[address(msg.sender)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                stor11[address(msg.sender)].field_0 = ethRefundAmount.length
            else:
                require stor12[address(arg1)].field_256 > stor11[address(msg.sender)][3][address(arg1)].field_0
                if ethRefundAmount.length > stor11[address(msg.sender)].field_0:
                    if not stor11[address(msg.sender)].field_256:
                        require finalBalance
                        idx = stor11[address(msg.sender)].field_0
                        while idx < ethRefundAmount.length:
                            mem[0] = 9
                            if not ethRefundAmount[idx]:
                                idx = idx + 1
                                continue 
                            require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                            require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                            idx = idx + 1
                            continue 
                    else:
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == 100 * 10^18
                        require finalBalance
                        idx = stor11[address(msg.sender)].field_0
                        while idx < ethRefundAmount.length:
                            mem[0] = 9
                            if not ethRefundAmount[idx]:
                                idx = idx + 1
                                continue 
                            require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance
                            require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                            idx = idx + 1
                            continue 
                    stor11[address(msg.sender)].field_0 = ethRefundAmount.length
            if stor12[address(arg1)].field_256 > stor11[address(msg.sender)][3][address(arg1)].field_0:
                mem[0] = arg1
                idx = stor11[address(msg.sender)][3][mem[0]].field_0
                while idx < stor12[address(arg1)].field_256:
                    mem[0] = sha3(address(arg1), 12) + 1
                    if not stor11[address(msg.sender)].field_256:
                        idx = idx + 1
                        continue 
                    require stor12[address(arg1)][idx + 1].field_0 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == stor12[address(arg1)][idx + 1].field_0
                    require stor12[address(arg1)][idx + 1].field_0 * stor11[address(msg.sender)].field_256 / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
                stor11[address(msg.sender)][3][address(arg1)].field_0 = stor12[address(arg1)].field_256
        else:
            if ethRefundAmount.length > stor11[address(msg.sender)].field_0:
                if not stor11[address(msg.sender)].field_256:
                    require finalBalance
                    idx = stor11[address(msg.sender)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                        require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                else:
                    require 100 * 10^18 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == 100 * 10^18
                    require finalBalance
                    idx = stor11[address(msg.sender)].field_0
                    while idx < ethRefundAmount.length:
                        mem[0] = 9
                        if not ethRefundAmount[idx]:
                            idx = idx + 1
                            continue 
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                        idx = idx + 1
                        continue 
                stor11[address(msg.sender)].field_0 = ethRefundAmount.length
            else:
                require stor12[stor10].field_256 > stor11[address(msg.sender)][3][stor10].field_0
                if ethRefundAmount.length > stor11[address(msg.sender)].field_0:
                    if not stor11[address(msg.sender)].field_256:
                        require finalBalance
                        idx = stor11[address(msg.sender)].field_0
                        while idx < ethRefundAmount.length:
                            mem[0] = 9
                            if not ethRefundAmount[idx]:
                                idx = idx + 1
                                continue 
                            require 0 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 0 / finalBalance
                            require 0 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                            idx = idx + 1
                            continue 
                    else:
                        require 100 * 10^18 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == 100 * 10^18
                        require finalBalance
                        idx = stor11[address(msg.sender)].field_0
                        while idx < ethRefundAmount.length:
                            mem[0] = 9
                            if not ethRefundAmount[idx]:
                                idx = idx + 1
                                continue 
                            require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / ethRefundAmount[idx] == 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance
                            require 100 * 10^18 * stor11[address(msg.sender)].field_256 / finalBalance * ethRefundAmount[idx] / 100 * 10^18 >= 0
                            idx = idx + 1
                            continue 
                    stor11[address(msg.sender)].field_0 = ethRefundAmount.length
            if stor12[stor10].field_256 > stor11[address(msg.sender)][3][stor10].field_0:
                mem[0] = activeTokenAddress
                idx = stor11[address(msg.sender)][3][mem[0]].field_0
                while idx < stor12[stor10].field_256:
                    mem[0] = sha3(activeTokenAddress, 12) + 1
                    if not stor11[address(msg.sender)].field_256:
                        idx = idx + 1
                        continue 
                    require stor12[stor10][idx + 1].field_0 * stor11[address(msg.sender)].field_256 / stor11[address(msg.sender)].field_256 == stor12[stor10][idx + 1].field_0
                    require stor12[stor10][idx + 1].field_0 * stor11[address(msg.sender)].field_256 / 100 * 10^18 >= 0
                    idx = idx + 1
                    continue 
                stor11[address(msg.sender)][3][stor10].field_0 = stor12[stor10].field_256
}



}
