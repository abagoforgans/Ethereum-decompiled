contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor8;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[7100 len 32]
    stor2 = code.data[7132 len 32]
    stor3 = code.data[7176 len 20]
    create contract with 0 wei
                    code: code.data[3597 len 3503]
    require create.new_address
    stor8 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return code.data[306 len 3291]
}



// =====================  Runtime code  =====================


const TOKEN_RATE = 1000

const OWNER_TOKENS_PERCENT = 100


address owner;
uint256 startTime;
uint256 endTime;
address ownerWallet;
mapping of uint256 registeredInDay;
uint256 totalUsdAmount;
uint256 stor7;
uint256 stor7;
uint256 bonusMultiplier;
uint8 stor8; offset 160
uint8 stor8; offset 168
address tokenAddress;
uint256 distributedCount;
uint256 distributedTokens;

function totalUsdAmount() {
    return totalUsdAmount
}

function endTime() {
    return endTime
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1])
}

function distributedCount() {
    return distributedCount
}

function distributedTokens() {
    return distributedTokens
}

function startTime() {
    return startTime
}

function registeredInDay(address arg1) {
    return registeredInDay[arg1]
}

function owner() {
    return owner
}

function ownerWallet() {
    return ownerWallet
}

function bonusMultiplier() {
    return uint256(bonusMultiplier)
}

function finalized() {
    return bool(uint8(stor8.field_160))
}

function participantsCount() {
    return participants.length
}

function distributed() {
    return bool(uint8(stor8.field_168))
}

function token() {
    return tokenAddress
}

function registered(address arg1) {
    return (registeredInDay[address(arg1)] > 0)
}

function setOwnerWallet(address arg1) {
    require owner == msg.sender
    require arg1
    ownerWallet = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor8.field_160)
    require block.timestamp > endTime
    uint8(stor8.field_160) = 1
    emit Finalized()
}

function computeTotalEthAmount() {
    s = 0
    idx = 0
    s = 0
    while idx < participants.length:
        require distributedCount + idx < participants.length
        mem[0] = 5
        s = address(stor[('name', 'participants', 5) + stor9 + idx])
        idx = idx + 1
        s = eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) + s
        continue 
    return (eth.balance(stor[_6 + stor9 + stor5.length]) * participants.length)
}

function setTotalUsdAmount(uint256 arg1) {
    require owner == msg.sender
    totalUsdAmount = arg1
    if arg1 > 10 * 10^6:
        uint256(bonusMultiplier) = 20
    else:
        if totalUsdAmount > 5 * 10^6:
            uint256(bonusMultiplier) = 15
        else:
            if totalUsdAmount > 10^6:
                uint256(bonusMultiplier) = 10
            else:
                if totalUsdAmount > 100000:
                    uint256(bonusMultiplier) = 5
                else:
                    if totalUsdAmount > 10000:
                        uint256(bonusMultiplier) = 2
                    else:
                        if not totalUsdAmount:
                            uint256(bonusMultiplier) = 0
}

function _fallback() payable {
    require not uint8(stor8.field_160)
    require startTime <= block.timestamp
    require block.timestamp <= endTime
    require not registeredInDay[address(msg.sender)]
    require startTime <= block.timestamp
    registeredInDay[address(msg.sender)] = (block.timestamp - startTime / 24 * 3600) + 1
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            uint256(participants[idx]) = 0
            idx = idx + 1
            continue 
    address(participants[participants.length]) = msg.sender
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function registerParticipant() payable {
    require not uint8(stor8.field_160)
    require startTime <= block.timestamp
    require block.timestamp <= endTime
    require not registeredInDay[address(msg.sender)]
    require startTime <= block.timestamp
    registeredInDay[address(msg.sender)] = (block.timestamp - startTime / 24 * 3600) + 1
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            uint256(participants[idx]) = 0
            idx = idx + 1
            continue 
    address(participants[participants.length]) = msg.sender
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function participantBonus(address arg1) {
    require registeredInDay[address(arg1)] > 0
    if registeredInDay[address(arg1)] <= 1:
        if 6 * uint256(bonusMultiplier) / 6 == uint256(bonusMultiplier):
            return (6 * uint256(bonusMultiplier))
    else:
        if registeredInDay[address(arg1)] <= 3:
            if 5 * uint256(bonusMultiplier) / 5 == uint256(bonusMultiplier):
                return (5 * uint256(bonusMultiplier))
        else:
            if registeredInDay[address(arg1)] <= 7:
                if Mask(254, 0, stor7) == uint256(bonusMultiplier):
                    return (4 * uint256(bonusMultiplier))
            else:
                if registeredInDay[address(arg1)] <= 10:
                    if 3 * uint256(bonusMultiplier) / 3 == uint256(bonusMultiplier):
                        return (3 * uint256(bonusMultiplier))
                else:
                    if registeredInDay[address(arg1)] <= 14:
                        if uint255(stor7) == uint256(bonusMultiplier):
                            return (2 * uint256(bonusMultiplier))
                    else:
                        if registeredInDay[address(arg1)] > 21:
                            return 0
                        if uint256(bonusMultiplier) == uint256(bonusMultiplier):
                            return uint256(bonusMultiplier)
    revert
}

function distribute(uint256 arg1) {
    require owner == msg.sender
    require uint8(stor8.field_160)
    require not uint8(stor8.field_168)
    require arg1 > 0
    require arg1 + distributedCount <= participants.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1:
        require distributedCount + idx < participants.length
        mem[0] = address(stor[('name', 'participants', 5) + stor9 + idx])
        mem[32] = 4
        require registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] > 0
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] <= 1:
            require 6 * uint256(bonusMultiplier) / 6 == uint256(bonusMultiplier)
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (6000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == (6 * uint256(bonusMultiplier)) + 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (6000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (6000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (6000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (6000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = 6 * uint256(bonusMultiplier)
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] <= 3:
            require 5 * uint256(bonusMultiplier) / 5 == uint256(bonusMultiplier)
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (5000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == (5 * uint256(bonusMultiplier)) + 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (5000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (5000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (5000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (5000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = 5 * uint256(bonusMultiplier)
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] <= 7:
            require Mask(254, 0, stor7) == uint256(bonusMultiplier)
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 4 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == (4 * uint256(bonusMultiplier)) + 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 4 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 4 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 4 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 4 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = 4 * uint256(bonusMultiplier)
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] <= 10:
            require 3 * uint256(bonusMultiplier) / 3 == uint256(bonusMultiplier)
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (3000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == (3 * uint256(bonusMultiplier)) + 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (3000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (3000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (3000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (3000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = 3 * uint256(bonusMultiplier)
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] <= 14:
            require uint255(stor7) == uint256(bonusMultiplier)
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 2 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == (2 * uint256(bonusMultiplier)) + 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 2 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 2 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 2 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * 2 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
            s = 2 * uint256(bonusMultiplier)
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        if registeredInDay[address(stor[('name', 'stor5', 5) + stor9 + idx])] > 21:
            if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
            if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
                require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
                require 100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 100
            mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
            mem[132] = 100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(stor[('name', 'participants', 5) + stor9 + idx]), 100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / 100
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            distributedTokens += 100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / 100
            s = 100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / 100
            s = 0
            s = address(stor[('name', 'participants', 5) + stor9 + idx])
            idx = idx + 1
            continue 
        require uint256(bonusMultiplier) == uint256(bonusMultiplier)
        if eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
            require eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
            require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) / eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == 1000
        if 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])):
            require 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))
            require (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 1000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx])) == uint256(bonusMultiplier) + 100
        mem[100] = address(stor[('name', 'participants', 5) + stor9 + idx])
        mem[132] = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(stor[('name', 'participants', 5) + stor9 + idx]), (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        distributedTokens += (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
        s = (100000 * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) + (1000 * uint256(bonusMultiplier) * eth.balance(address(stor[('name', 'participants', 5) + stor9 + idx]))) / 100
        s = uint256(bonusMultiplier)
        s = address(stor[('name', 'participants', 5) + stor9 + idx])
        idx = idx + 1
        continue 
    distributedCount += arg1
    if participants.length == arg1 + distributedCount:
        if distributedTokens:
            require distributedTokens
            require 100 * distributedTokens / distributedTokens == 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args ownerWallet, 100 * distributedTokens / 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3f4ba83a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint8(stor8.field_168) = 1
        emit Distributed()
}



}
