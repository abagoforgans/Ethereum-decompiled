contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint8 stor9; offset 160
uint256 stor11;
uint256 stor12;
address stor13;

function _fallback() payable {
    stor9 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = 5000000 * 10^18
    stor1 = 1554
    stor2 = 10000000 * 10^18
    stor3 = 1178
    stor4 = 20000000 * 10^18
    stor5 = 1000
    stor6 = 60 * 10^6
    stor7 = 740
    stor8 = msg.sender
    require address(code.data[4908 len 32])
    stor13 = address(code.data[4908 len 32])
    return code.data[351 len 4557]
}



// =====================  Runtime code  =====================


const currentTime = block.timestamp

const CONTRIBUTION_MAX = 2500 * 10^18

const PUBLIC_START_TIME = (420984 * 24 * 3600)

const END_TIME = (421728 * 24 * 3600)

const EXA = 10^18

const COMPANY_ALLOCATION = 40000000 * 10^18

const CONTRIBUTION_MIN = 10^17


array of uint256 stor1;
uint256 stor7;
address owner;
uint8 stor9; offset 160
address tokenContractAddress;
mapping of uint256 contributors;
uint256 totalWeiRaised;
uint256 totalTokenSold;
address fundingWalletAddress;
mapping of uint8 stor14;
mapping of uint8 stor15;
array of address earlyBirds;
mapping of uint256 earlyBirdInvestments;

function earlyBirds(uint256 arg1) {
    require arg1 < earlyBirds.length
    return address(earlyBirds[arg1])
}

function contributors(address arg1) {
    return contributors[arg1]
}

function tranches(uint256 arg1) {
    require arg1 < 4
    return stor[2 * arg1], stor1[arg1]
}

function totalWeiRaised() {
    return totalWeiRaised
}

function tokenContract() {
    return tokenContractAddress
}

function whitelistOperators(address arg1) {
    return bool(stor14[arg1])
}

function owner() {
    return owner
}

function earlyBirdInvestments(address arg1) {
    return earlyBirdInvestments[arg1]
}

function whitelist(address arg1) {
    return bool(stor15[arg1])
}

function fundingWalletAddress() {
    return fundingWalletAddress
}

function finalized() {
    return bool(stor9)
}

function totalTokenSold() {
    return totalTokenSold
}

function addWhitelistOperator(address arg1) {
    require owner == msg.sender
    stor14[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require 1 == bool(stor14[address(msg.sender)])
    require arg1
    stor15[address(arg1)] = 0
}

function removeWhitelistOperator(address arg1) {
    require owner == msg.sender
    require stor14[address(arg1)]
    stor14[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToWhitelist(address arg1) {
    require 1 == bool(stor14[address(msg.sender)])
    require arg1
    stor15[address(arg1)] = 1
    emit LogWhitelistUpdated(arg1);
}

function getTokensLeft() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function getCurrentTokensPerEther() {
    if block.timestamp < 420984 * 24 * 3600:
        idx = 0
        while idx < 4:
            if totalTokenSold >= stor[2 * idx]:
                idx = idx + 1
                continue 
            require idx < 4
            return stor1[idx]
    return stor7
}

function calculateTokenAmount(uint256 arg1) {
    if block.timestamp < 420984 * 24 * 3600:
        idx = 0
        while idx < 4:
            if totalTokenSold >= stor[2 * idx]:
                idx = idx + 1
                continue 
            require idx < 4
            return (arg1 * stor1[idx])
    return (arg1 * stor7)
}

function finalize() {
    require owner == msg.sender
    require block.timestamp > 421728 * 24 * 3600
    require not stor9
    stor9 = 1
    emit Finalized()
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 1
}

function burnUnsoldTokens() {
    require stor9
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit UnsoldTokensBurnt(ext_call.return_data[0]);
    return 1
}

function addEarlyBird(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + contributors[address(arg1)] >= contributors[address(arg1)]
    require arg2 >= 10^17
    require arg2 + contributors[address(arg1)] <= 2500 * 10^18
    require not tokenContractAddress
    earlyBirds.length++
    if not earlyBirds.length <= earlyBirds.length + 1:
        idx = earlyBirds.length + 1
        while earlyBirds.length > idx:
            uint256(earlyBirds[idx]) = 0
            idx = idx + 1
            continue 
    address(earlyBirds[earlyBirds.length]) = arg1
    earlyBirdInvestments[address(arg1)] = arg2
    stor15[address(arg1)] = 1
}

function _fallback() payable {
    require not stor9
    require block.timestamp <= 421728 * 24 * 3600
    require 1 == bool(stor15[address(msg.sender)])
    require msg.value + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
    require msg.value >= 10^17
    require msg.value + contributors[address(msg.sender)] <= 2500 * 10^18
    require tokenContractAddress
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if block.timestamp < 420984 * 24 * 3600:
        idx = 0
        while idx < 4:
            if totalTokenSold >= stor[2 * idx]:
                idx = idx + 1
                continue 
            require idx < 4
            if msg.value * stor1[idx] <= ext_call.return_data[0]:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * stor1[idx]
                require ext_call.success
                require msg.value + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
                contributors[address(msg.sender)] += msg.value
                totalWeiRaised += msg.value
                totalTokenSold += msg.value * stor1[idx]
                emit LogTokensPurchased(msg.value, msg.value * stor1[idx], (msg.value * stor1[idx]) + totalTokenSold, msg.sender);
                require msg.value * stor1[idx] <= ext_call.return_data[0]
                if ext_call.return_data[0] - (msg.value * stor1[idx]):
                    call fundingWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require not stor9
                    stor9 = 1
                    emit Finalized()
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x4bb278f3 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    call fundingWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
            else:
                if block.timestamp < 420984 * 24 * 3600:
                    idx = 0
                    while idx < 4:
                        if totalTokenSold >= stor[2 * idx]:
                            idx = idx + 1
                            continue 
                        require idx < 4
                        require stor1[idx]
                        require ext_call.return_data[0] / stor1[idx] <= msg.value
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require (ext_call.return_data[0] / stor1[idx]) + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
                        contributors[address(msg.sender)] += ext_call.return_data[0] / stor1[idx]
                        if msg.value - (ext_call.return_data[0] / stor1[idx]) > 0:
                            call msg.sender with:
                               value msg.value - (ext_call.return_data[0] / stor1[idx]) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        totalWeiRaised += ext_call.return_data[0] / stor1[idx]
                        totalTokenSold += ext_call.return_data[0]
                        emit LogTokensPurchased(ext_call.return_data[0] / stor1[idx], ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, msg.sender);
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require not stor9
                        stor9 = 1
                        emit Finalized()
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x4bb278f3 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        call fundingWalletAddress with:
                           value ext_call.return_data[0] / stor1[idx] wei
                             gas 2300 * is_zero(value) wei
                require stor7
                require ext_call.return_data[0] / stor7 <= msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require (ext_call.return_data[0] / stor7) + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
                contributors[address(msg.sender)] += ext_call.return_data[0] / stor7
                if msg.value - (ext_call.return_data[0] / stor7) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / stor7) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                totalWeiRaised += ext_call.return_data[0] / stor7
                totalTokenSold += ext_call.return_data[0]
                emit LogTokensPurchased(ext_call.return_data[0] / stor7, ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, msg.sender);
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require not stor9
                stor9 = 1
                emit Finalized()
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x4bb278f3 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                call fundingWalletAddress with:
                   value ext_call.return_data[0] / stor7 wei
                     gas 2300 * is_zero(value) wei
    if msg.value * stor7 <= ext_call.return_data[0]:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor7
        require ext_call.success
        require msg.value + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += msg.value
        totalWeiRaised += msg.value
        totalTokenSold += msg.value * stor7
        emit LogTokensPurchased(msg.value, msg.value * stor7, (msg.value * stor7) + totalTokenSold, msg.sender);
        require msg.value * stor7 <= ext_call.return_data[0]
        if ext_call.return_data[0] - (msg.value * stor7):
            call fundingWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require not stor9
            stor9 = 1
            emit Finalized()
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x4bb278f3 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            call fundingWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
    else:
        if block.timestamp < 420984 * 24 * 3600:
            idx = 0
            while idx < 4:
                if totalTokenSold >= stor[2 * idx]:
                    idx = idx + 1
                    continue 
                require idx < 4
                require stor1[idx]
                require ext_call.return_data[0] / stor1[idx] <= msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require (ext_call.return_data[0] / stor1[idx]) + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
                contributors[address(msg.sender)] += ext_call.return_data[0] / stor1[idx]
                if msg.value - (ext_call.return_data[0] / stor1[idx]) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / stor1[idx]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                totalWeiRaised += ext_call.return_data[0] / stor1[idx]
                totalTokenSold += ext_call.return_data[0]
                emit LogTokensPurchased(ext_call.return_data[0] / stor1[idx], ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, msg.sender);
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require not stor9
                stor9 = 1
                emit Finalized()
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x4bb278f3 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                call fundingWalletAddress with:
                   value ext_call.return_data[0] / stor1[idx] wei
                     gas 2300 * is_zero(value) wei
        require stor7
        require ext_call.return_data[0] / stor7 <= msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require (ext_call.return_data[0] / stor7) + contributors[address(msg.sender)] >= contributors[address(msg.sender)]
        contributors[address(msg.sender)] += ext_call.return_data[0] / stor7
        if msg.value - (ext_call.return_data[0] / stor7) > 0:
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / stor7) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        totalWeiRaised += ext_call.return_data[0] / stor7
        totalTokenSold += ext_call.return_data[0]
        emit LogTokensPurchased(ext_call.return_data[0] / stor7, ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, msg.sender);
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require not stor9
        stor9 = 1
        emit Finalized()
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x4bb278f3 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        call fundingWalletAddress with:
           value ext_call.return_data[0] / stor7 wei
             gas 2300 * is_zero(value) wei
}

function connectToken(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    require not totalTokenSold
    require not tokenContractAddress
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[0]
    tokenContractAddress = arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args fundingWalletAddress, 40000000 * 10^18
    require ext_call.success
    s = 0
    s = 0
    idx = 0
    while idx < earlyBirds.length:
        require not stor9
        require block.timestamp <= 421728 * 24 * 3600
        require 1 == bool(stor15[address(stor16[idx])])
        require earlyBirdInvestments[address(stor16[idx])] + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
        require earlyBirdInvestments[address(stor16[idx])] >= 10^17
        require earlyBirdInvestments[address(stor16[idx])] + contributors[address(stor16[idx])] <= 2500 * 10^18
        require tokenContractAddress
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address)
        require ext_call.success
        require ext_call.return_data[0] > 0
        if block.timestamp < 420984 * 24 * 3600:
            s = 0
            while s < 4:
                if totalTokenSold >= stor[2 * s]:
                    s = s + 1
                    continue 
                require s < 4
                if earlyBirdInvestments[address(stor16[idx])] * stor1[s] <= ext_call.return_data[0]:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(earlyBirds[idx]), earlyBirdInvestments[address(stor16[idx])] * stor1[s]
                    require ext_call.success
                    require earlyBirdInvestments[address(stor16[idx])] + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
                    mem[0] = address(earlyBirds[idx])
                    mem[32] = 10
                    contributors[address(stor16[idx])] += earlyBirdInvestments[address(stor16[idx])]
                    totalWeiRaised += earlyBirdInvestments[address(stor16[idx])]
                    totalTokenSold += earlyBirdInvestments[address(stor16[idx])] * stor1[s]
                    mem[mem[64]] = earlyBirdInvestments[address(stor16[idx])]
                    mem[mem[64] + 32] = earlyBirdInvestments[address(stor16[idx])] * stor1[s]
                    mem[mem[64] + 64] = (earlyBirdInvestments[address(stor16[idx])] * stor1[s]) + totalTokenSold
                    emit LogTokensPurchased(earlyBirdInvestments[address(stor16[idx])], earlyBirdInvestments[address(stor16[idx])] * stor1[s], (earlyBirdInvestments[address(stor16[idx])] * stor1[s]) + totalTokenSold, address(earlyBirds[idx]));
                    require earlyBirdInvestments[address(stor16[idx])] * stor1[s] <= ext_call.return_data[0]
                    if not ext_call.return_data[0] - (earlyBirdInvestments[address(stor16[idx])] * stor1[s]):
                        require not stor9
                        stor9 = 1
                        emit Finalized()
                        mem[mem[64] + 32] = 0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x4bb278f3 with:
                             gas gas_remaining - 710 wei
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                else:
                    if block.timestamp < 420984 * 24 * 3600:
                        s = 0
                        while s < 4:
                            if totalTokenSold >= stor[2 * s]:
                                s = s + 1
                                continue 
                            require s < 4
                            require stor1[s]
                            require ext_call.return_data[0] / stor1[s] <= earlyBirdInvestments[address(stor16[idx])]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(earlyBirds[idx]), ext_call.return_data[0]
                            require ext_call.success
                            require (ext_call.return_data[0] / stor1[s]) + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
                            mem[0] = address(earlyBirds[idx])
                            mem[32] = 10
                            contributors[address(stor16[idx])] += ext_call.return_data[0] / stor1[s]
                            if earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor1[s]) > 0:
                                call address(earlyBirds[idx]) with:
                                   value earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor1[s]) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            totalWeiRaised += ext_call.return_data[0] / stor1[s]
                            totalTokenSold += ext_call.return_data[0]
                            mem[mem[64] + 64] = ext_call.return_data[0] + totalTokenSold
                            emit LogTokensPurchased(ext_call.return_data[0] / stor1[s], ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, address(earlyBirds[idx]));
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require not stor9
                            stor9 = 1
                            emit Finalized()
                            mem[mem[64] + 32] = 0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x4bb278f3 with:
                                 gas gas_remaining - 710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = earlyBirdInvestments[address(stor16[idx])]
                            s = address(earlyBirds[idx])
                            idx = idx + 1
                            continue 
                    require stor7
                    require ext_call.return_data[0] / stor7 <= earlyBirdInvestments[address(stor16[idx])]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(earlyBirds[idx]), ext_call.return_data[0]
                    require ext_call.success
                    require (ext_call.return_data[0] / stor7) + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
                    mem[0] = address(earlyBirds[idx])
                    mem[32] = 10
                    contributors[address(stor16[idx])] += ext_call.return_data[0] / stor7
                    if earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor7) > 0:
                        call address(earlyBirds[idx]) with:
                           value earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor7) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    totalWeiRaised += ext_call.return_data[0] / stor7
                    totalTokenSold += ext_call.return_data[0]
                    mem[mem[64] + 64] = ext_call.return_data[0] + totalTokenSold
                    emit LogTokensPurchased(ext_call.return_data[0] / stor7, ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, address(earlyBirds[idx]));
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require not stor9
                    stor9 = 1
                    emit Finalized()
                    mem[mem[64] + 32] = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x4bb278f3 with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                s = earlyBirdInvestments[address(stor16[idx])]
                s = address(earlyBirds[idx])
                idx = idx + 1
                continue 
        if earlyBirdInvestments[address(stor16[idx])] * stor7 <= ext_call.return_data[0]:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(earlyBirds[idx]), earlyBirdInvestments[address(stor16[idx])] * stor7
            require ext_call.success
            require earlyBirdInvestments[address(stor16[idx])] + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
            mem[0] = address(earlyBirds[idx])
            mem[32] = 10
            contributors[address(stor16[idx])] += earlyBirdInvestments[address(stor16[idx])]
            totalWeiRaised += earlyBirdInvestments[address(stor16[idx])]
            totalTokenSold += earlyBirdInvestments[address(stor16[idx])] * stor7
            mem[mem[64]] = earlyBirdInvestments[address(stor16[idx])]
            mem[mem[64] + 32] = earlyBirdInvestments[address(stor16[idx])] * stor7
            mem[mem[64] + 64] = (earlyBirdInvestments[address(stor16[idx])] * stor7) + totalTokenSold
            emit LogTokensPurchased(earlyBirdInvestments[address(stor16[idx])], earlyBirdInvestments[address(stor16[idx])] * stor7, (earlyBirdInvestments[address(stor16[idx])] * stor7) + totalTokenSold, address(earlyBirds[idx]));
            require earlyBirdInvestments[address(stor16[idx])] * stor7 <= ext_call.return_data[0]
            if not ext_call.return_data[0] - (earlyBirdInvestments[address(stor16[idx])] * stor7):
                require not stor9
                stor9 = 1
                emit Finalized()
                mem[mem[64] + 32] = 0
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x4bb278f3 with:
                     gas gas_remaining - 710 wei
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
        else:
            if block.timestamp < 420984 * 24 * 3600:
                s = 0
                while s < 4:
                    if totalTokenSold >= stor[2 * s]:
                        s = s + 1
                        continue 
                    require s < 4
                    require stor1[s]
                    require ext_call.return_data[0] / stor1[s] <= earlyBirdInvestments[address(stor16[idx])]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(earlyBirds[idx]), ext_call.return_data[0]
                    require ext_call.success
                    require (ext_call.return_data[0] / stor1[s]) + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
                    mem[0] = address(earlyBirds[idx])
                    mem[32] = 10
                    contributors[address(stor16[idx])] += ext_call.return_data[0] / stor1[s]
                    if earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor1[s]) > 0:
                        call address(earlyBirds[idx]) with:
                           value earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor1[s]) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    totalWeiRaised += ext_call.return_data[0] / stor1[s]
                    totalTokenSold += ext_call.return_data[0]
                    mem[mem[64] + 64] = ext_call.return_data[0] + totalTokenSold
                    emit LogTokensPurchased(ext_call.return_data[0] / stor1[s], ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, address(earlyBirds[idx]));
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require not stor9
                    stor9 = 1
                    emit Finalized()
                    mem[mem[64] + 32] = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x4bb278f3 with:
                         gas gas_remaining - 710 wei
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = earlyBirdInvestments[address(stor16[idx])]
                    s = address(earlyBirds[idx])
                    idx = idx + 1
                    continue 
            require stor7
            require ext_call.return_data[0] / stor7 <= earlyBirdInvestments[address(stor16[idx])]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(earlyBirds[idx]), ext_call.return_data[0]
            require ext_call.success
            require (ext_call.return_data[0] / stor7) + contributors[address(stor16[idx])] >= contributors[address(stor16[idx])]
            mem[0] = address(earlyBirds[idx])
            mem[32] = 10
            contributors[address(stor16[idx])] += ext_call.return_data[0] / stor7
            if earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor7) > 0:
                call address(earlyBirds[idx]) with:
                   value earlyBirdInvestments[address(stor16[idx])] - (ext_call.return_data[0] / stor7) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            totalWeiRaised += ext_call.return_data[0] / stor7
            totalTokenSold += ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[0] + totalTokenSold
            emit LogTokensPurchased(ext_call.return_data[0] / stor7, ext_call.return_data[0], ext_call.return_data[0] + totalTokenSold, address(earlyBirds[idx]));
            require ext_call.return_data[0] <= ext_call.return_data[0]
            require not stor9
            stor9 = 1
            emit Finalized()
            mem[mem[64] + 32] = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x4bb278f3 with:
                 gas gas_remaining - 710 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
        s = earlyBirdInvestments[address(stor16[idx])]
        s = address(earlyBirds[idx])
        idx = idx + 1
        continue 
}



}
