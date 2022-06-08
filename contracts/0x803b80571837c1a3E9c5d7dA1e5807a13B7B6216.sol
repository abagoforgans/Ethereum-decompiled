contract main {




// =====================  Runtime code  =====================


#
#  - contribute(uint8 arg1, bytes32 arg2, bytes32 arg3)
#
const sub_bf55bcc0(?) = 500 * 10^6


uint256 tokensSold;
uint256 sub_03130c46;
address owner;
uint8 currentState; offset 160
address newOwner;
address allocatorAddress;
address sub_ec7d2695Address;
address pricingStrategyAddress;
address crowdsaleAgentAddress;
uint256 startDate;
uint256 endDate;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 hardCap;
uint256 maxSaleSupply;
uint256 usdCollected;
mapping of uint256 sub_cc53f98c;
array of address contributors;

function sub_03130c46(?) {
    return sub_03130c46
}

function crowdsaleAgent() {
    return crowdsaleAgentAddress
}

function startDate() {
    return startDate
}

function currentState() {
    require currentState <= 6
    return currentState
}

function sub_28febac6(?) {
    return bool(uint8(stor10.field_8))
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return contributors[arg1]
}

function usdCollected() {
    return usdCollected
}

function tokensSold() {
    return tokensSold
}

function signers(address arg1) {
    return bool(stor12[arg1])
}

function sub_7570ac98(?) {
    return bool(uint8(stor10.field_16))
}

function pricingStrategy() {
    return pricingStrategyAddress
}

function owner() {
    return owner
}

function sub_aa4bdf95(?) {
    return bool(uint8(stor10.field_24))
}

function allocator() {
    return allocatorAddress
}

function sub_ace9325c(?) {
    return bool(stor13[arg1])
}

function maxSaleSupply() {
    return maxSaleSupply
}

function finalized() {
    return bool(uint8(stor10.field_0))
}

function endDate() {
    return endDate
}

function sub_cc53f98c(?) {
    return sub_cc53f98c[arg1]
}

function newOwner() {
    return newOwner
}

function whitelisted(address arg1) {
    return bool(stor11[arg1])
}

function sub_ec7d2695(?) {
    return sub_ec7d2695Address
}

function hardCap() {
    return hardCap
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function hardCapReached() {
    if hardCap != usdCollected:
        return 0
    return 1
}

function addSigner(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 1
}

function removeSigner(address arg1) {
    require msg.sender == owner
    stor12[address(arg1)] = 0
}

function setCrowdsaleAgent(address arg1) {
    require msg.sender == owner
    crowdsaleAgentAddress = arg1
}

function setPricingStrategy(address arg1) {
    require msg.sender == owner
    pricingStrategyAddress = arg1
}

function addExternalContributor(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function removeExternalContributor(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 0
}

function getUnsoldTokensAmount() {
    require tokensSold <= maxSaleSupply
    return (maxSaleSupply - tokensSold)
}

function sub_e6b2c87c(?) {
    require msg.sender == owner
    require arg1 < arg2
    startDate = arg1
    endDate = arg2
}

function updateWhitelist(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
}

function isHardCapAchieved(uint256 arg1) {
    require arg1 + usdCollected >= usdCollected
    if hardCap > arg1 + usdCollected:
        return 0
    return 1
}

function verify(address arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_c6b0f661(?) {
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x28a801c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f487f015(?) {
    require arg1 < arg2
    require arg1 <= arg2
    mem[96] = arg2 - arg1
    if arg2 - arg1:
        mem[128 len 32 * arg2 - arg1] = code.data[6862 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < contributors.length
        mem[0] = 18
        require idx < arg2 - arg1
        mem[(32 * idx) + 128] = contributors[idx]
        idx = idx + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
    mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
    return 32, mem[(32 * arg2 - arg1) + 160 len (32 * arg2 - arg1) + 32]
}

function getState() {
    if uint8(stor10.field_0):
        return 5
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0x392e53cd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 1
    require ext_code.size(sub_ec7d2695Address)
    call sub_ec7d2695Address.0x392e53cd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 1
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x392e53cd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 1
    if block.timestamp < startDate:
        return 2
    if block.timestamp <= endDate:
        require usdCollected >= usdCollected
        if hardCap > usdCollected:
            return 3
    return 4
}

function updateState() {
    if uint8(stor10.field_0):
        require currentState <= 6
        if currentState != 5:
            if crowdsaleAgentAddress:
                require ext_code.size(crowdsaleAgentAddress)
                call crowdsaleAgentAddress.0xe7221785 with:
                     gas gas_remaining wei
                    args 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            currentState = 5
    else:
        require ext_code.size(allocatorAddress)
        call allocatorAddress.0x392e53cd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require currentState <= 6
            if currentState != 1:
                if crowdsaleAgentAddress:
                    require ext_code.size(crowdsaleAgentAddress)
                    call crowdsaleAgentAddress.0xe7221785 with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                currentState = 1
        else:
            require ext_code.size(sub_ec7d2695Address)
            call sub_ec7d2695Address.0x392e53cd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require currentState <= 6
                if currentState != 1:
                    if crowdsaleAgentAddress:
                        require ext_code.size(crowdsaleAgentAddress)
                        call crowdsaleAgentAddress.0xe7221785 with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    currentState = 1
            else:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x392e53cd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require currentState <= 6
                    if currentState != 1:
                        if crowdsaleAgentAddress:
                            require ext_code.size(crowdsaleAgentAddress)
                            call crowdsaleAgentAddress.0xe7221785 with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        currentState = 1
                else:
                    if block.timestamp < startDate:
                        require currentState <= 6
                        if currentState != 2:
                            if crowdsaleAgentAddress:
                                require ext_code.size(crowdsaleAgentAddress)
                                call crowdsaleAgentAddress.0xe7221785 with:
                                     gas gas_remaining wei
                                    args 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            currentState = 2
                    else:
                        if block.timestamp > endDate:
                            require currentState <= 6
                            if currentState != 4:
                                if crowdsaleAgentAddress:
                                    require ext_code.size(crowdsaleAgentAddress)
                                    call crowdsaleAgentAddress.0xe7221785 with:
                                         gas gas_remaining wei
                                        args 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                currentState = 4
                        else:
                            require usdCollected >= usdCollected
                            require currentState <= 6
                            if hardCap > usdCollected:
                                if currentState != 3:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 3
                            else:
                                if currentState != 4:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 4
}

function externalContribution(address arg1, uint256 arg2) payable {
    require stor13[msg.sender]
    if uint8(stor10.field_0):
        require currentState <= 6
        if currentState != 5:
            if crowdsaleAgentAddress:
                require ext_code.size(crowdsaleAgentAddress)
                call crowdsaleAgentAddress.0xe7221785 with:
                     gas gas_remaining wei
                    args 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            currentState = 5
    else:
        require ext_code.size(allocatorAddress)
        call allocatorAddress.0x392e53cd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require currentState <= 6
            if currentState != 1:
                if crowdsaleAgentAddress:
                    require ext_code.size(crowdsaleAgentAddress)
                    call crowdsaleAgentAddress.0xe7221785 with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                currentState = 1
        else:
            require ext_code.size(sub_ec7d2695Address)
            call sub_ec7d2695Address.0x392e53cd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require currentState <= 6
                if currentState != 1:
                    if crowdsaleAgentAddress:
                        require ext_code.size(crowdsaleAgentAddress)
                        call crowdsaleAgentAddress.0xe7221785 with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    currentState = 1
            else:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x392e53cd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require currentState <= 6
                    if currentState != 1:
                        if crowdsaleAgentAddress:
                            require ext_code.size(crowdsaleAgentAddress)
                            call crowdsaleAgentAddress.0xe7221785 with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        currentState = 1
                else:
                    if block.timestamp < startDate:
                        require currentState <= 6
                        if currentState != 2:
                            if crowdsaleAgentAddress:
                                require ext_code.size(crowdsaleAgentAddress)
                                call crowdsaleAgentAddress.0xe7221785 with:
                                     gas gas_remaining wei
                                    args 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            currentState = 2
                    else:
                        if block.timestamp > endDate:
                            require currentState <= 6
                            if currentState != 4:
                                if crowdsaleAgentAddress:
                                    require ext_code.size(crowdsaleAgentAddress)
                                    call crowdsaleAgentAddress.0xe7221785 with:
                                         gas gas_remaining wei
                                        args 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                currentState = 4
                        else:
                            require usdCollected >= usdCollected
                            require currentState <= 6
                            if hardCap > usdCollected:
                                if currentState != 3:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 3
                            else:
                                if currentState != 4:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 4
    require currentState <= 6
    require currentState == 3
    require arg2 + sub_cc53f98c[address(arg1)] >= sub_cc53f98c[address(arg1)]
    require ext_code.size(allocatorAddress)
    if arg2 + sub_cc53f98c[address(arg1)] > 500 * 10^6:
        call allocatorAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x28a801c7 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call allocatorAddress.0x60659a92 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x6a9d6e20 with:
         gas gas_remaining wei
        args tokensSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x5127ad4c with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0], tokensSold, arg2, sub_03130c46
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + tokensSold >= tokensSold
    tokensSold += ext_call.return_data[0]
    require ext_call.return_data[64] + sub_03130c46 >= sub_03130c46
    sub_03130c46 += ext_call.return_data[64]
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0xb78b52df with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        require ext_code.size(sub_ec7d2695Address)
        call sub_ec7d2695Address.0xd264e05e with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not sub_cc53f98c[address(arg1)]:
        contributors.length++
        contributors[contributors.length] = arg1
    require arg2 + sub_cc53f98c[address(arg1)] >= sub_cc53f98c[address(arg1)]
    sub_cc53f98c[address(arg1)] += arg2
    require arg2 + usdCollected >= usdCollected
    usdCollected += arg2
    require ext_code.size(crowdsaleAgentAddress)
    call crowdsaleAgentAddress.onContribution(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, ext_call.return_data[32], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Contribution(address(arg1), arg2, ext_call.return_data[32], ext_call.return_data[64]);
}

function _fallback() payable {
    require block.timestamp > startDate
    require block.timestamp < endDate
    if not uint8(stor10.field_8):
        require uint8(stor10.field_24)
    else:
        if not uint8(stor10.field_24):
            if uint8(stor10.field_8):
                require stor11[msg.sender]
    if uint8(stor10.field_0):
        require currentState <= 6
        if currentState != 5:
            if crowdsaleAgentAddress:
                require ext_code.size(crowdsaleAgentAddress)
                call crowdsaleAgentAddress.0xe7221785 with:
                     gas gas_remaining wei
                    args 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            currentState = 5
    else:
        require ext_code.size(allocatorAddress)
        call allocatorAddress.0x392e53cd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require currentState <= 6
            if currentState != 1:
                if crowdsaleAgentAddress:
                    require ext_code.size(crowdsaleAgentAddress)
                    call crowdsaleAgentAddress.0xe7221785 with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                currentState = 1
        else:
            require ext_code.size(sub_ec7d2695Address)
            call sub_ec7d2695Address.0x392e53cd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require currentState <= 6
                if currentState != 1:
                    if crowdsaleAgentAddress:
                        require ext_code.size(crowdsaleAgentAddress)
                        call crowdsaleAgentAddress.0xe7221785 with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    currentState = 1
            else:
                require ext_code.size(pricingStrategyAddress)
                call pricingStrategyAddress.0x392e53cd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require currentState <= 6
                    if currentState != 1:
                        if crowdsaleAgentAddress:
                            require ext_code.size(crowdsaleAgentAddress)
                            call crowdsaleAgentAddress.0xe7221785 with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        currentState = 1
                else:
                    if block.timestamp < startDate:
                        require currentState <= 6
                        if currentState != 2:
                            if crowdsaleAgentAddress:
                                require ext_code.size(crowdsaleAgentAddress)
                                call crowdsaleAgentAddress.0xe7221785 with:
                                     gas gas_remaining wei
                                    args 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            currentState = 2
                    else:
                        if block.timestamp > endDate:
                            require currentState <= 6
                            if currentState != 4:
                                if crowdsaleAgentAddress:
                                    require ext_code.size(crowdsaleAgentAddress)
                                    call crowdsaleAgentAddress.0xe7221785 with:
                                         gas gas_remaining wei
                                        args 4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                currentState = 4
                        else:
                            require usdCollected >= usdCollected
                            require currentState <= 6
                            if hardCap > usdCollected:
                                if currentState != 3:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 3
                            else:
                                if currentState != 4:
                                    if crowdsaleAgentAddress:
                                        require ext_code.size(crowdsaleAgentAddress)
                                        call crowdsaleAgentAddress.0xe7221785 with:
                                             gas gas_remaining wei
                                            args 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    currentState = 4
    require currentState <= 6
    require currentState == 3
    require msg.value + sub_cc53f98c[address(msg.sender)] >= sub_cc53f98c[address(msg.sender)]
    require ext_code.size(allocatorAddress)
    if msg.value + sub_cc53f98c[address(msg.sender)] > 500 * 10^6:
        call allocatorAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x28a801c7 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call allocatorAddress.0x60659a92 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x6a9d6e20 with:
         gas gas_remaining wei
        args tokensSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pricingStrategyAddress)
    call pricingStrategyAddress.0x5127ad4c with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), ext_call.return_data[0], tokensSold, msg.value, sub_03130c46
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + tokensSold >= tokensSold
    tokensSold += ext_call.return_data[0]
    require ext_call.return_data[64] + sub_03130c46 >= sub_03130c46
    sub_03130c46 += ext_call.return_data[64]
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0xb78b52df with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        require ext_code.size(sub_ec7d2695Address)
        call sub_ec7d2695Address.0xd264e05e with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not sub_cc53f98c[address(msg.sender)]:
        contributors.length++
        contributors[contributors.length] = msg.sender
    require msg.value + sub_cc53f98c[address(msg.sender)] >= sub_cc53f98c[address(msg.sender)]
    sub_cc53f98c[address(msg.sender)] += msg.value
    require msg.value + usdCollected >= usdCollected
    usdCollected += msg.value
    require ext_code.size(crowdsaleAgentAddress)
    call crowdsaleAgentAddress.onContribution(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), msg.value, ext_call.return_data[32], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Contribution(address(msg.sender), msg.value, ext_call.return_data[32], ext_call.return_data[64]);
}



}
