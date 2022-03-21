contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 240 * 24 * 3600
    stor4 = 255
    stor5 = 10^6
    stor3 = block.timestamp
    return code.data[41 len 3924]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 name;
uint256 cycleLength;
uint256 startTime;
uint256 cycleLimit;
uint256 minimalRewardedBalance;
array of uint256 bannedCycles;
mapping of uint256 accountsBalances;
array of struct accountInfo;

function name() payable {
    return name
}

function bannedCycles(uint256 arg1) payable {
    require arg1 < bannedCycles.length
    return bannedCycles[arg1]
}

function accountsUsed(uint256 arg1, uint256 arg2) payable {
    require arg2 < accountInfo[arg1].field_0
    return address(accountInfo[arg1][arg2].field_0), uint8(accountInfo[arg1][arg2].field_160)
}

function getRewardsCount(uint256 arg1) payable {
    return accountInfo[arg1].field_0
}

function startTime() payable {
    return startTime
}

function minimalRewardedBalance() payable {
    return minimalRewardedBalance
}

function accountsBalances(uint256 arg1, address arg2) payable {
    return accountsBalances[arg1][arg2]
}

function cycleLength() payable {
    return cycleLength
}

function cycleLimit() payable {
    return cycleLimit
}

function getAccountInfo(uint256 arg1, uint256 arg2) payable {
    require arg2 < accountInfo[arg1].field_0
    require arg2 < accountInfo[arg1].field_0
    return address(accountInfo[arg1][arg2].field_0), 
           uint8(accountInfo[arg1][arg2].field_0),
           accountsBalances[arg1][address(stor8[arg1][arg2].field_0)]
}

function kill() payable {
    if not address(stor0):
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function remove() payable {
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function currentCycle() payable {
    if startTime <= block.timestamp:
        return ((block.timestamp - startTime / cycleLength) + 1)
    else:
        return 0
}

function getMinimalBalance(uint256 arg1, address arg2) payable {
    if accountsBalances[arg1][address(arg2)] != -1:
        return accountsBalances[arg1][address(arg2)]
    else:
        return 0
}

function getAddress(bytes32 arg1) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getRate(uint256 arg1) payable {
    if arg1 <= 9:
        return 50
    if arg1 <= 18:
        return 40
    if arg1 <= 27:
        return 30
    if arg1 > 35:
        if 36 == arg1:
            return 40
        if arg1 > cycleLimit:
            return 0
        if arg1 % 36 != 0:
            return 10
    return 20
}

function setStartTime(uint256 arg1) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            startTime = arg1
}

function setCycleLimit(uint256 arg1) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            cycleLimit = arg1
}

function setMinimalRewardedBalance(uint256 arg1) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            minimalRewardedBalance = arg1
}

function getInterest(uint256 arg1, uint256 arg2) payable {
    if arg2 <= 9:
        return (50 * arg1 / 3650)
    if arg2 <= 18:
        return (40 * arg1 / 3650)
    if arg2 <= 27:
        return (30 * arg1 / 3650)
    if arg2 > 35:
        if 36 == arg2:
            return (40 * arg1 / 3650)
        if arg2 > cycleLimit:
            return 0
        if arg2 % 36 != 0:
            return (10 * arg1 / 3650)
    return (20 * arg1 / 3650)
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor0) != 0:
        return 0
    call arg1.getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.addNode(bytes32 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setBannedCycles(uint256[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            bannedCycles.length = arg1.length
            if not arg1.length:
                idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                while bannedCycles.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
                while bannedCycles.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function sendReward(uint256 arg1, uint256 arg2) payable {
    if startTime <= block.timestamp:
        if arg1 >= (block.timestamp - startTime / cycleLength) + 1:
            return 0
    else:
        if arg1 >= 0:
            return 0
    if 0 == arg1:
        return 0
    idx = 0
    while idx < bannedCycles.length:
        mem[0] = 6
        if bannedCycles[idx] != arg1:
            idx = idx + 1
            continue 
        else:
            return 0
    if arg2 >= accountInfo[arg1].field_0:
        return 0
    require arg2 < accountInfo[arg1].field_0
    if uint8(accountInfo[arg1][arg2].field_160):
        return 0
    if accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] < minimalRewardedBalance:
        uint8(accountInfo[arg1][arg2].field_160) = 2
        return 0
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e0000000000000000000000000000000000000000000000000000
    require ext_call.success
    if arg1 <= 9:
        call address(ext_call.return_data[0]).0xf8b71c64 with:
             gas gas_remaining - 25050 wei
            args address(accountInfo[arg1][arg2].field_0), 50 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
        if ext_call.return_data[0]:
            emit Reward(50 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
            uint8(accountInfo[arg1][arg2].field_160) = 1
    else:
        if arg1 <= 18:
            call address(ext_call.return_data[0]).0xf8b71c64 with:
                 gas gas_remaining - 25050 wei
                args address(accountInfo[arg1][arg2].field_0), 40 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
            if ext_call.return_data[0]:
                emit Reward(40 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                uint8(accountInfo[arg1][arg2].field_160) = 1
        else:
            if arg1 <= 27:
                call address(ext_call.return_data[0]).0xf8b71c64 with:
                     gas gas_remaining - 25050 wei
                    args address(accountInfo[arg1][arg2].field_0), 30 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
                if ext_call.return_data[0]:
                    emit Reward(30 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                    uint8(accountInfo[arg1][arg2].field_160) = 1
            else:
                if arg1 <= 35:
                    call address(ext_call.return_data[0]).0xf8b71c64 with:
                         gas gas_remaining - 25050 wei
                        args address(accountInfo[arg1][arg2].field_0), 20 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
                    if ext_call.return_data[0]:
                        emit Reward(20 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                        uint8(accountInfo[arg1][arg2].field_160) = 1
                else:
                    if 36 == arg1:
                        call address(ext_call.return_data[0]).0xf8b71c64 with:
                             gas gas_remaining - 25050 wei
                            args address(accountInfo[arg1][arg2].field_0), 40 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
                        if ext_call.return_data[0]:
                            emit Reward(40 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                            uint8(accountInfo[arg1][arg2].field_160) = 1
                    else:
                        if arg1 > cycleLimit:
                            call address(ext_call.return_data[0]).0xf8b71c64 with:
                                 gas gas_remaining - 25050 wei
                                args address(accountInfo[arg1][arg2].field_0), 0
                            if ext_call.return_data[0]:
                                emit Reward(0, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                                uint8(accountInfo[arg1][arg2].field_160) = 1
                        else:
                            if arg1 % 36 != 0:
                                call address(ext_call.return_data[0]).0xf8b71c64 with:
                                     gas gas_remaining - 25050 wei
                                    args address(accountInfo[arg1][arg2].field_0), 10 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
                                if ext_call.return_data[0]:
                                    emit Reward(10 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                                    uint8(accountInfo[arg1][arg2].field_160) = 1
                            else:
                                call address(ext_call.return_data[0]).0xf8b71c64 with:
                                     gas gas_remaining - 25050 wei
                                    args address(accountInfo[arg1][arg2].field_0), 20 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650
                                if ext_call.return_data[0]:
                                    emit Reward(20 * accountsBalances[arg1][address(stor8[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                                    uint8(accountInfo[arg1][arg2].field_160) = 1
    return 1
}

function transfer(address arg1, address arg2) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x656c636f696e0000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if startTime != 0:
                call address(stor0).getNodeAddress(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'elcoinDb'
                require ext_call.success
                if startTime <= block.timestamp:
                    if (block.timestamp - startTime / cycleLength) + 1 <= cycleLimit:
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 25050 wei
                            args arg1
                        require ext_call.success
                        if accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] != -1:
                            if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] = -1
                                if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)]:
                                    accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0++
                                    if not accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 <= accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1:
                                        idx = accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1
                                        while accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 > idx:
                                            Mask(168, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_0) = arg1
                                    uint8(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_168) = Mask(88, 168, arg1) >> 168
                            else:
                                if accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] > ext_call.return_data[0]:
                                    if ext_call.return_data[0] != 0:
                                        accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] = ext_call.return_data[0]
                                    else:
                                        accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)] = -1
                                    if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg1)]:
                                        accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0++
                                        if not accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 <= accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1:
                                            idx = accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1
                                            while accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 > idx:
                                                Mask(168, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_0) = arg1
                                        uint8(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_160) = 0
                                        Mask(88, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_168) = Mask(88, 168, arg1) >> 168
                else:
                    if 0 <= cycleLimit:
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 25050 wei
                            args arg1
                        require ext_call.success
                        if accountsBalances[0][address(arg1)] != -1:
                            if not accountsBalances[0][address(arg1)]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[0][address(arg1)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[0][address(arg1)] = -1
                                if not accountsBalances[0][address(arg1)]:
                                    accountInfo[0].field_0++
                                    if not accountInfo[0].field_0 <= accountInfo[0].field_0 + 1:
                                        idx = accountInfo[0].field_0 + 1
                                        while accountInfo[0].field_0 > idx:
                                            Mask(168, 0, accountInfo[0][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[0][accountInfo[0].field_0].field_0) = arg1
                                    uint8(accountInfo[0][accountInfo[0].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[0][accountInfo[0].field_0].field_168) = Mask(88, 168, arg1) >> 168
                            else:
                                if accountsBalances[0][address(arg1)] > ext_call.return_data[0]:
                                    if ext_call.return_data[0] != 0:
                                        accountsBalances[0][address(arg1)] = ext_call.return_data[0]
                                    else:
                                        accountsBalances[0][address(arg1)] = -1
                                    if not accountsBalances[0][address(arg1)]:
                                        accountInfo[0].field_0++
                                        if not accountInfo[0].field_0 <= accountInfo[0].field_0 + 1:
                                            idx = accountInfo[0].field_0 + 1
                                            while accountInfo[0].field_0 > idx:
                                                Mask(168, 0, accountInfo[0][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accountInfo[0][accountInfo[0].field_0].field_0) = arg1
                                        uint8(accountInfo[0][accountInfo[0].field_0].field_160) = 0
                                        Mask(88, 0, accountInfo[0][accountInfo[0].field_0].field_168) = Mask(88, 168, arg1) >> 168
                call address(stor0).getNodeAddress(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'elcoinDb'
                require ext_call.success
                if startTime <= block.timestamp:
                    if (block.timestamp - startTime / cycleLength) + 1 <= cycleLimit:
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 25050 wei
                            args arg2
                        require ext_call.success
                        if accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] != -1:
                            if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] = -1
                                if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)]:
                                    accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0++
                                    if not accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 <= accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1:
                                        idx = accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1
                                        while accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 > idx:
                                            Mask(168, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_0) = arg2
                                    uint8(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_168) = Mask(88, 168, arg2) >> 168
                            else:
                                if accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] > ext_call.return_data[0]:
                                    if ext_call.return_data[0] != 0:
                                        accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] = ext_call.return_data[0]
                                    else:
                                        accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)] = -1
                                    if not accountsBalances[(block.timestamp - stor3 / stor2) + 1][address(arg2)]:
                                        accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0++
                                        if not accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 <= accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1:
                                            idx = accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 + 1
                                            while accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0 > idx:
                                                Mask(168, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_0) = arg2
                                        uint8(accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_160) = 0
                                        Mask(88, 0, accountInfo[(block.timestamp - stor3 / stor2) + 1][accountInfo[(block.timestamp - stor3 / stor2) + 1].field_0].field_168) = Mask(88, 168, arg2) >> 168
                else:
                    if 0 <= cycleLimit:
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 25050 wei
                            args arg2
                        require ext_call.success
                        if accountsBalances[0][address(arg2)] != -1:
                            if not accountsBalances[0][address(arg2)]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[0][address(arg2)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[0][address(arg2)] = -1
                                if not accountsBalances[0][address(arg2)]:
                                    accountInfo[0].field_0++
                                    if not accountInfo[0].field_0 <= accountInfo[0].field_0 + 1:
                                        idx = accountInfo[0].field_0 + 1
                                        while accountInfo[0].field_0 > idx:
                                            Mask(168, 0, accountInfo[0][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[0][accountInfo[0].field_0].field_0) = arg2
                                    uint8(accountInfo[0][accountInfo[0].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[0][accountInfo[0].field_0].field_168) = Mask(88, 168, arg2) >> 168
                            else:
                                if accountsBalances[0][address(arg2)] > ext_call.return_data[0]:
                                    if ext_call.return_data[0] != 0:
                                        accountsBalances[0][address(arg2)] = ext_call.return_data[0]
                                    else:
                                        accountsBalances[0][address(arg2)] = -1
                                    if not accountsBalances[0][address(arg2)]:
                                        accountInfo[0].field_0++
                                        if not accountInfo[0].field_0 <= accountInfo[0].field_0 + 1:
                                            idx = accountInfo[0].field_0 + 1
                                            while accountInfo[0].field_0 > idx:
                                                Mask(168, 0, accountInfo[0][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accountInfo[0][accountInfo[0].field_0].field_0) = arg2
                                        uint8(accountInfo[0][accountInfo[0].field_0].field_160) = 0
                                        Mask(88, 0, accountInfo[0][accountInfo[0].field_0].field_168) = Mask(88, 168, arg2) >> 168
}



}
