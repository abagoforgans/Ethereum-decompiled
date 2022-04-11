contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor1; offset 160
address stor2;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;

function _fallback() payable {
    stor1 = 0
    stor4 = 0
    stor5 = 0
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[7399 len 20]
    require code.data[7431 len 20]
    require code.data[7451 len 32] > block.timestamp
    stor2 = code.data[7399 len 20]
    stor6 = code.data[7431 len 20]
    stor4 = code.data[7451 len 32]
    stor5 = code.data[7451 len 32] + (336 * 24 * 3600)
    return code.data[243 len 7144]
}



// =====================  Runtime code  =====================


const EXCHANGE_RATE = 200

const DURATION = (336 * 24 * 3600)

const TOKEN_SALE_CAP = 29600000 * 10^18

const ETH_CAP = 148000


address owner;
uint8 isFinalized; offset 160
uint8 isDistributed; offset 168
address newOwnerCandidate;
address stoxAddress;
address trusteeAddress;
uint256 startTime;
uint256 endTime;
address fundingRecipientAddress;
uint256 tokensSold;

function fundingRecipient() {
    return fundingRecipientAddress
}

function stox() {
    return stoxAddress
}

function endTime() {
    return endTime
}

function tokensSold() {
    return tokensSold
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function isDistributed() {
    return bool(isDistributed)
}

function trustee() {
    return trusteeAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function acceptOwnership() {
    if newOwnerCandidate == msg.sender:
        owner = newOwnerCandidate
        newOwnerCandidate = 0
        emit OwnershipTransferred(newOwnerCandidate, 0);
}

function acceptSmartTokenOwnership() {
    require owner == msg.sender
    require ext_code.size(stoxAddress)
    call stoxAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function acceptTrusteeOwnership() {
    require owner == msg.sender
    require ext_code.size(trusteeAddress)
    call trusteeAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferSmartTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(stoxAddress)
    call stoxAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function transferTrusteeOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(trusteeAddress)
    call trusteeAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function distributePartnerTokens() {
    require owner == msg.sender
    require not isDistributed
    require not tokensSold
    require ext_code.size(stoxAddress)
    call stoxAddress.totalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require tokensSold + 14800000 * 10^18 >= tokensSold
    tokensSold += 14800000 * 10^18
    require ext_code.size(stoxAddress)
    call stoxAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0x9065260ef6830f6372f1bde408dec57fe3150530, 14800000 * 10^18
    require ext_call.success
    emit TokensIssued(address rg1, uint256 rg2):
                      14800000 * 10^18,
    emit 0x9065260e: 14800000 * 10^18
    isDistributed = 1
}

function finalize() {
    if tokensSold < 29600000 * 10^18:
        require block.timestamp >= endTime
    require not isFinalized
    create contract with 0 wei
                    code: code.data[4200 len 2901], stoxAddress
    require create.new_address
    trusteeAddress = address(create.new_address)
    if tokensSold:
        require tokensSold
        require 55 * tokensSold / tokensSold == 55
    require ext_code.size(stoxAddress)
    call stoxAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0xbc14105ccddeaadb96ba8dce18b40c45b6bacf58, 55 * tokensSold / 100
    require ext_call.success
    require 55 * tokensSold / 100 <= tokensSold
    require ext_code.size(stoxAddress)
    call stoxAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args trusteeAddress, tokensSold - (55 * tokensSold / 100)
    require ext_call.success
    if tokensSold:
        require tokensSold
        require 25 * tokensSold / tokensSold == 25
    require block.timestamp + (8760 * 24 * 3600) >= block.timestamp
    require ext_code.size(trusteeAddress)
    call trusteeAddress.grant(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6) with:
         gas gas_remaining - 710 wei
        args 0, 489832286, 25 * tokensSold / 100, block.timestamp, block.timestamp, block.timestamp + (8760 * 24 * 3600), 1
    require ext_call.success
    if tokensSold:
        require tokensSold
        require 20 * tokensSold / tokensSold == 20
    require block.timestamp + (17520 * 24 * 3600) >= block.timestamp
    require ext_code.size(trusteeAddress)
    call trusteeAddress.grant(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6) with:
         gas gas_remaining - 710 wei
        args 0, 2457552577, 20 * tokensSold / 100, block.timestamp, block.timestamp, block.timestamp + (17520 * 24 * 3600), 1
    require ext_call.success
    require ext_code.size(stoxAddress)
    call stoxAddress.disableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    isFinalized = 1
}

function create(address arg1) payable {
    require tokensSold < 29600000 * 10^18
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require arg1
    require msg.value > 0
    require isDistributed
    if not msg.value:
        if tokensSold <= 29600000 * 10^18:
            if 200 * msg.value < -tokensSold + 29600000 * 10^18:
                if (200 * msg.value) + tokensSold >= tokensSold:
                    tokensSold += 200 * msg.value
                    if ext_code.size(stoxAddress):
                        call stoxAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 200 * msg.value
                        if ext_call.success:
                            emit TokensIssued((200 * msg.value), arg1);
                            call fundingRecipientAddress with:
                               value 200 * msg.value / 200 wei
                                 gas 2300 * is_zero(value) wei
                            if 200 * msg.value / 200 <= msg.value:
                                if msg.value - (200 * msg.value / 200) <= 0:
                                call msg.sender with:
                                   value msg.value - (200 * msg.value / 200) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if 29600000 * 10^18 >= tokensSold:
                    tokensSold = 29600000 * 10^18
                    if ext_code.size(stoxAddress):
                        call stoxAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 29600000 * 10^18
                        if ext_call.success:
                            emit TokensIssued((-tokensSold + 29600000 * 10^18), arg1);
                            call fundingRecipientAddress with:
                               value -tokensSold + 29600000 * 10^18 / 200 wei
                                 gas 2300 * is_zero(value) wei
                            if -tokensSold + 29600000 * 10^18 / 200 <= msg.value:
                                if msg.value - (-tokensSold + 29600000 * 10^18 / 200) <= 0:
                                call msg.sender with:
                                   value msg.value - (-tokensSold + 29600000 * 10^18 / 200) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if msg.value:
            if 200 * msg.value / msg.value == 200:
                if tokensSold <= 29600000 * 10^18:
                    if 200 * msg.value < -tokensSold + 29600000 * 10^18:
                        if (200 * msg.value) + tokensSold >= tokensSold:
                            tokensSold += 200 * msg.value
                            if ext_code.size(stoxAddress):
                                call stoxAddress.issue(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 200 * msg.value
                                if ext_call.success:
                                    emit TokensIssued((200 * msg.value), arg1);
                                    call fundingRecipientAddress with:
                                       value 200 * msg.value / 200 wei
                                         gas 2300 * is_zero(value) wei
                                    if 200 * msg.value / 200 <= msg.value:
                                        if msg.value - (200 * msg.value / 200) <= 0:
                                        call msg.sender with:
                                           value msg.value - (200 * msg.value / 200) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                    else:
                        if 29600000 * 10^18 >= tokensSold:
                            tokensSold = 29600000 * 10^18
                            if ext_code.size(stoxAddress):
                                call stoxAddress.issue(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), -tokensSold + 29600000 * 10^18
                                if ext_call.success:
                                    emit TokensIssued((-tokensSold + 29600000 * 10^18), arg1);
                                    call fundingRecipientAddress with:
                                       value -tokensSold + 29600000 * 10^18 / 200 wei
                                         gas 2300 * is_zero(value) wei
                                    if -tokensSold + 29600000 * 10^18 / 200 <= msg.value:
                                        if msg.value - (-tokensSold + 29600000 * 10^18 / 200) <= 0:
                                        call msg.sender with:
                                           value msg.value - (-tokensSold + 29600000 * 10^18 / 200) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    revert
}

function _fallback() payable {
    require tokensSold < 29600000 * 10^18
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require tokensSold < 29600000 * 10^18
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.sender
    require msg.value > 0
    require isDistributed
    if not msg.value:
        if tokensSold <= 29600000 * 10^18:
            if 200 * msg.value < -tokensSold + 29600000 * 10^18:
                if (200 * msg.value) + tokensSold >= tokensSold:
                    tokensSold += 200 * msg.value
                    if ext_code.size(stoxAddress):
                        call stoxAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 200 * msg.value
                        if ext_call.success:
                            emit TokensIssued((200 * msg.value), msg.sender);
                            call fundingRecipientAddress with:
                               value 200 * msg.value / 200 wei
                                 gas 2300 * is_zero(value) wei
                            if 200 * msg.value / 200 <= msg.value:
                                if msg.value - (200 * msg.value / 200) <= 0:
                                call msg.sender with:
                                   value msg.value - (200 * msg.value / 200) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if 29600000 * 10^18 >= tokensSold:
                    tokensSold = 29600000 * 10^18
                    if ext_code.size(stoxAddress):
                        call stoxAddress.issue(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 29600000 * 10^18
                        if ext_call.success:
                            emit TokensIssued((-tokensSold + 29600000 * 10^18), msg.sender);
                            call fundingRecipientAddress with:
                               value -tokensSold + 29600000 * 10^18 / 200 wei
                                 gas 2300 * is_zero(value) wei
                            if -tokensSold + 29600000 * 10^18 / 200 <= msg.value:
                                if msg.value - (-tokensSold + 29600000 * 10^18 / 200) <= 0:
                                call msg.sender with:
                                   value msg.value - (-tokensSold + 29600000 * 10^18 / 200) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if msg.value:
            if 200 * msg.value / msg.value == 200:
                if tokensSold <= 29600000 * 10^18:
                    if 200 * msg.value < -tokensSold + 29600000 * 10^18:
                        if (200 * msg.value) + tokensSold >= tokensSold:
                            tokensSold += 200 * msg.value
                            if ext_code.size(stoxAddress):
                                call stoxAddress.issue(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 200 * msg.value
                                if ext_call.success:
                                    emit TokensIssued((200 * msg.value), msg.sender);
                                    call fundingRecipientAddress with:
                                       value 200 * msg.value / 200 wei
                                         gas 2300 * is_zero(value) wei
                                    if 200 * msg.value / 200 <= msg.value:
                                        if msg.value - (200 * msg.value / 200) <= 0:
                                        call msg.sender with:
                                           value msg.value - (200 * msg.value / 200) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                    else:
                        if 29600000 * 10^18 >= tokensSold:
                            tokensSold = 29600000 * 10^18
                            if ext_code.size(stoxAddress):
                                call stoxAddress.issue(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, -tokensSold + 29600000 * 10^18
                                if ext_call.success:
                                    emit TokensIssued((-tokensSold + 29600000 * 10^18), msg.sender);
                                    call fundingRecipientAddress with:
                                       value -tokensSold + 29600000 * 10^18 / 200 wei
                                         gas 2300 * is_zero(value) wei
                                    if -tokensSold + 29600000 * 10^18 / 200 <= msg.value:
                                        if msg.value - (-tokensSold + 29600000 * 10^18 / 200) <= 0:
                                        call msg.sender with:
                                           value msg.value - (-tokensSold + 29600000 * 10^18 / 200) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    revert
}



}
