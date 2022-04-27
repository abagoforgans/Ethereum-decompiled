contract main {


// =======================  Init code  ======================


uint64 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function _fallback() payable {
    stor0.field_160 % 281474976710656 = 0
    stor2 = 0
    stor3 = 1600000 * 10^18
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[4569 len 20]
    require code.data[4569 len 20] != this.address
    require code.data[4697 len 20]
    require code.data[4697 len 20] != this.address
    require code.data[4653 len 32] > 0
    stor8 = code.data[4569 len 20]
    stor1 = 10^18 * code.data[4589 len 32]
    stor6 = code.data[4621 len 32]
    stor7 = code.data[4621 len 32] + (24 * 3600 * code.data[4653 len 32])
    stor9 = code.data[4697 len 20]
    return code.data[339 len 4218]
}



// =====================  Runtime code  =====================


const MIN_CONTRIBUTION = 10^17

const RATE = 2500

const TOKEN_HARDCAP = 33500000 * 10^18

const GAS_LIMIT_IN_WEI = 5 * 10^10


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
uint8 stor0; offset 184
uint8 stor0; offset 192
uint8 stor0; offset 200
uint64 stor0; offset 200
address owner;
uint256 fundingCap;
uint256 soldTokens;
uint256 softCapInTokens;
uint256 weiRaised;
uint256 weiRefunded;
uint256 startTime;
uint256 deadline;
address beneficiaryAddress;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor11;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function weiRefunded() {
    return weiRefunded
}

function soldTokens() {
    return soldTokens
}

function tokenReward() {
    return tokenRewardAddress
}

function softcapReached() {
    return bool(uint8(stor0.field_184))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function fundingCapReached() {
    return bool(uint8(stor0.field_168))
}

function owner() {
    return owner
}

function saleClosed() {
    return bool(uint8(stor0.field_192))
}

function tokenHardcapReached() {
    return bool(uint8(stor0.field_176))
}

function softCapInTokens() {
    return softCapInTokens
}

function fundingCap() {
    return fundingCap
}

function terminate() {
    require owner == msg.sender
    uint8(stor0.field_192) = 1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerSafeWithdrawal() {
    require owner == msg.sender
    require uint8(stor0.field_184)
    require not uint8(stor0.field_200)
    uint8(stor0.field_200) = 1
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(beneficiaryAddress, eth.balance(this.address), 0);
    uint8(stor0.field_200) = 0
}

function refund() {
    require block.timestamp >= deadline
    require not uint8(stor0.field_184)
    require not stor11[address(msg.sender)]
    require ext_code.size(this.address)
    call this.address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    if ext_call.return_data[0] <= eth.balance(this.address):
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor11[address(msg.sender)] = 1
        require ext_call.return_data[0] + weiRefunded >= weiRefunded
        weiRefunded += ext_call.return_data[0]
        emit Refunded(ext_call.return_data[0], msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor11[address(msg.sender)] = 1
        require eth.balance(this.address) + weiRefunded >= weiRefunded
        weiRefunded += eth.balance(this.address)
        emit Refunded(eth.balance(this.address), msg.sender);
}

function buy() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < deadline
    require block.timestamp >= startTime
    require not uint8(stor0.field_192)
    require not uint8(stor0.field_200)
    uint8(stor0.field_200) = 1
    require msg.value >= 10^17
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if msg.value + weiRaised <= fundingCap:
        if soldTokens < 0:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                        require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                else:
                    require 2500 * msg.value / msg.value == 2500
                    if not 2500 * msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        require 2500 * msg.value / 2500 * msg.value == 1
                        require (2500 * msg.value) + soldTokens >= soldTokens
                        soldTokens += 2500 * msg.value
                        if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require 2500 * msg.value / msg.value == 2500
                        if not 2500 * msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require 7500 * msg.value / 2500 * msg.value == 3
                            require (7500 * msg.value) + soldTokens >= soldTokens
                            soldTokens += 7500 * msg.value
                            if (7500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 7500 * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 7500 * msg.value
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require 2500 * msg.value / 2500 * msg.value == 1
                                require (2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2500 * msg.value
                                if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * 2500 * msg.value / 2500 * msg.value == 2
                                require (2 * 2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2 * 2500 * msg.value
                                if (2 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
        else:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                else:
                    require 2500 * msg.value / msg.value == 2500
                    if not 2500 * msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                    else:
                        require 4 * 2500 * msg.value / 2500 * msg.value == 4
                        require (4 * 2500 * msg.value) + soldTokens >= soldTokens
                        soldTokens += 4 * 2500 * msg.value
                        if (4 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 4 * 2500 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 4 * 2500 * msg.value
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (4 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require 2500 * msg.value / msg.value == 2500
                        if not 2500 * msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require 7500 * msg.value / 2500 * msg.value == 3
                            require (7500 * msg.value) + soldTokens >= soldTokens
                            soldTokens += 7500 * msg.value
                            if (7500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 7500 * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 7500 * msg.value
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require 2500 * msg.value / 2500 * msg.value == 1
                                require (2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2500 * msg.value
                                if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * 2500 * msg.value / 2500 * msg.value == 2
                                require (2 * 2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2 * 2500 * msg.value
                                if (2 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
    else:
        require fundingCap <= weiRaised
        require weiRaised - fundingCap <= msg.value
        weiRaised = fundingCap
        call msg.sender with:
           value weiRaised - fundingCap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if soldTokens < 0:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value - weiRaised + fundingCap:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                        require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                else:
                    require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                    if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                        soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                        if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value - weiRaised + fundingCap:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                        if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 3
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens >= soldTokens
                            soldTokens = (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens
                            if (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + (-7500 * weiRaised) + (7500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                                soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                                if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 2
                                require (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                                soldTokens += 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                if (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
        else:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value - weiRaised + fundingCap:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                else:
                    require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                    if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                    else:
                        require 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 4
                        require (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                        soldTokens += 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                        if (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value - weiRaised + fundingCap:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                        if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 3
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens >= soldTokens
                            soldTokens = (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens
                            if (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + (-7500 * weiRaised) + (7500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                                soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                                if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 2
                                require (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                                soldTokens += 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                if (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
    if soldTokens < softCapInTokens:
        if weiRaised == fundingCap:
            uint8(stor0.field_168) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
        if soldTokens == 33500000 * 10^18:
            uint8(stor0.field_176) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
    else:
        if not uint8(stor0.field_184):
            uint8(stor0.field_184) = 1
            emit SoftcapReached(beneficiaryAddress, weiRaised);
        if weiRaised == fundingCap:
            uint8(stor0.field_168) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
        if soldTokens == 33500000 * 10^18:
            uint8(stor0.field_176) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
    uint8(stor0.field_200) = 0
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp < deadline
    require block.timestamp >= startTime
    require not uint8(stor0.field_192)
    require not uint8(stor0.field_200)
    uint8(stor0.field_200) = 1
    require msg.value >= 10^17
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if msg.value + weiRaised <= fundingCap:
        if soldTokens < 0:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                        require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                else:
                    require 2500 * msg.value / msg.value == 2500
                    if not 2500 * msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        require 2500 * msg.value / 2500 * msg.value == 1
                        require (2500 * msg.value) + soldTokens >= soldTokens
                        soldTokens += 2500 * msg.value
                        if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require 2500 * msg.value / msg.value == 2500
                        if not 2500 * msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require 7500 * msg.value / 2500 * msg.value == 3
                            require (7500 * msg.value) + soldTokens >= soldTokens
                            soldTokens += 7500 * msg.value
                            if (7500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 7500 * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 7500 * msg.value
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require 2500 * msg.value / 2500 * msg.value == 1
                                require (2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2500 * msg.value
                                if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * 2500 * msg.value / 2500 * msg.value == 2
                                require (2 * 2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2 * 2500 * msg.value
                                if (2 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
        else:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                else:
                    require 2500 * msg.value / msg.value == 2500
                    if not 2500 * msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                    else:
                        require 4 * 2500 * msg.value / 2500 * msg.value == 4
                        require (4 * 2500 * msg.value) + soldTokens >= soldTokens
                        soldTokens += 4 * 2500 * msg.value
                        if (4 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 4 * 2500 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 4 * 2500 * msg.value
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (4 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require 2500 * msg.value / msg.value == 2500
                        if not 2500 * msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require 7500 * msg.value / 2500 * msg.value == 3
                            require (7500 * msg.value) + soldTokens >= soldTokens
                            soldTokens += 7500 * msg.value
                            if (7500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 7500 * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 7500 * msg.value
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require 2500 * msg.value / 2500 * msg.value == 1
                                require (2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2500 * msg.value
                                if (2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require 2500 * msg.value / msg.value == 2500
                            if not 2500 * msg.value:
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * 2500 * msg.value / 2500 * msg.value == 2
                                require (2 * 2500 * msg.value) + soldTokens >= soldTokens
                                soldTokens += 2 * 2500 * msg.value
                                if (2 * 2500 * msg.value) + soldTokens <= 33500000 * 10^18:
                                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * 2500 * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * 2500 * msg.value
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * 2500 * msg.value) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
    else:
        require fundingCap <= weiRaised
        require weiRaised - fundingCap <= msg.value
        weiRaised = fundingCap
        call msg.sender with:
           value weiRaised - fundingCap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if soldTokens < 0:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value - weiRaised + fundingCap:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                        require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                else:
                    require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                    if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                        soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                        if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value - weiRaised + fundingCap:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                        if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 3
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens >= soldTokens
                            soldTokens = (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens
                            if (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + (-7500 * weiRaised) + (7500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                                soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                                if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 2
                                require (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                                soldTokens += 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                if (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
        else:
            if soldTokens <= 10000000 * 10^18:
                if not msg.value - weiRaised + fundingCap:
                    require soldTokens >= soldTokens
                    if soldTokens <= 33500000 * 10^18:
                        require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                    else:
                        require 33500000 * 10^18 <= soldTokens
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                        require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                        weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                        call msg.sender with:
                           value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require soldTokens - 33500000 * 10^18 <= 0
                        soldTokens = 33500000 * 10^18
                        require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x8da5cb5b with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                else:
                    require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                    if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
                    else:
                        require 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 4
                        require (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                        soldTokens += 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                        if (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 4 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 4 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 4 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (4 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 4 / 2500), 1);
            else:
                if soldTokens <= 20000000 * 10^18:
                    if not msg.value - weiRaised + fundingCap:
                        require soldTokens >= soldTokens
                        if soldTokens <= 33500000 * 10^18:
                            require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                        else:
                            require 33500000 * 10^18 <= soldTokens
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                            require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                            weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                            call msg.sender with:
                               value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require soldTokens - 33500000 * 10^18 <= 0
                            soldTokens = 33500000 * 10^18
                            require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x8da5cb5b with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                    else:
                        require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                        if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                        else:
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 3
                            require (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens >= soldTokens
                            soldTokens = (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens
                            if (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 3 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 3 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 3 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= (7500 * msg.value) - (7500 * weiRaised) + (7500 * fundingCap)
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (7500 * msg.value) + (-7500 * weiRaised) + (7500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 3 / 2500), 1);
                else:
                    if soldTokens > 30000000 * 10^18:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                            else:
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 1
                                require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens >= soldTokens
                                soldTokens = (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens
                                if (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2500 * msg.value) + (-2500 * weiRaised) + (2500 * fundingCap) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2500), 1);
                    else:
                        if not msg.value - weiRaised + fundingCap:
                            require soldTokens >= soldTokens
                            if soldTokens <= 33500000 * 10^18:
                                require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                            else:
                                require 33500000 * 10^18 <= soldTokens
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                call msg.sender with:
                                   value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require soldTokens - 33500000 * 10^18 <= 0
                                soldTokens = 33500000 * 10^18
                                require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x8da5cb5b with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                        else:
                            require (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / msg.value - weiRaised + fundingCap == 2500
                            if not (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap):
                                require soldTokens >= soldTokens
                                if soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 0
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
                            else:
                                require 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) / (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap) == 2
                                require (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens >= soldTokens
                                soldTokens += 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                if (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + soldTokens <= 33500000 * 10^18:
                                    require msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap, 1);
                                else:
                                    require 33500000 * 10^18 <= soldTokens
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= msg.value - weiRaised + fundingCap
                                    require soldTokens - 33500000 * 10^18 / 2 / 2500 <= weiRaised
                                    weiRaised -= soldTokens - 33500000 * 10^18 / 2 / 2500
                                    call msg.sender with:
                                       value soldTokens - 33500000 * 10^18 / 2 / 2500 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require soldTokens - 33500000 * 10^18 <= 2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)
                                    soldTokens = 33500000 * 10^18
                                    require msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500) + balanceOf[address(msg.sender)]
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x8da5cb5b with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * (2500 * msg.value) - (2500 * weiRaised) + (2500 * fundingCap)) + -soldTokens + 33500000 * 10^18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit FundTransfer(msg.sender, msg.value - weiRaised + fundingCap - (soldTokens - 33500000 * 10^18 / 2 / 2500), 1);
    if soldTokens < softCapInTokens:
        if weiRaised == fundingCap:
            uint8(stor0.field_168) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
        if soldTokens == 33500000 * 10^18:
            uint8(stor0.field_176) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
    else:
        if not uint8(stor0.field_184):
            uint8(stor0.field_184) = 1
            emit SoftcapReached(beneficiaryAddress, weiRaised);
        if weiRaised == fundingCap:
            uint8(stor0.field_168) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
        if soldTokens == 33500000 * 10^18:
            uint8(stor0.field_176) = 1
            uint8(stor0.field_192) = 1
            stor0.field_200 % 72057594037927936 = 0
            stor0.field_256 % 1 = 0
            emit CapReached(beneficiaryAddress, weiRaised);
    uint8(stor0.field_200) = 0
}



}
