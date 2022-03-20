contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor3 = 240 * 24 * 3600
    stor5 = 255
    stor6 = 10^6
    stor4 = block.timestamp
    return code.data[41 len 3818]
}



// =====================  Runtime code  =====================


address sub_3751707cAddress;
uint256 stor0;
address stor1;
uint256 stor1;
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

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
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
    return address(accountInfo[arg1][arg2].field_0), uint8(accountInfo[arg1][arg2].field_160)
}

function kill() payable {
    if not address(sub_3751707cAddress):
    call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function currentCycle() payable {
    return ((block.timestamp - startTime / cycleLength) + 1)
}

function getMinimalBalance(uint256 arg1, address arg2) payable {
    if accountsBalances[arg1][address(arg2)] != -1:
        return accountsBalances[arg1][address(arg2)]
    else:
        return 0
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).getNodeAddress(bytes32 rg1) with:
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
    if 26 == arg1:
        return 60
    if arg1 <= 27:
        return 30
    if arg1 <= 36:
        return 20
    if arg1 > cycleLimit:
        return 0
    return 10
}

function getInterest(uint256 arg1, uint256 arg2) payable {
    if arg2 <= 9:
        return (50 * arg1 / 3650)
    if arg2 <= 18:
        return (40 * arg1 / 3650)
    if 26 == arg2:
        return (60 * arg1 / 3650)
    if arg2 <= 27:
        return (30 * arg1 / 3650)
    if arg2 <= 36:
        return (20 * arg1 / 3650)
    if arg2 > cycleLimit:
        return 0
    return (10 * arg1 / 3650)
}

function setStartTime(uint256 arg1) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            startTime = arg1
}

function setCycleLimit(uint256 arg1) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            cycleLimit = arg1
}

function setMinimalRewardedBalance(uint256 arg1) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            minimalRewardedBalance = arg1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        if address(sub_3751707cAddress) != arg1:
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
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function setBannedCycles(uint256[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x6f776e6572000000000000000000000000000000000000000000000000000000, msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            bannedCycles.length = arg1.length
            if not arg1.length:
                idx = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
                while bannedCycles.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
                while bannedCycles.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function sendReward(uint256 arg1, uint256 arg2) payable {
    if arg1 >= (block.timestamp - startTime / cycleLength) + 1:
        return 0
    if 0 == arg1:
        return 0
    idx = 0
    while idx < bannedCycles.length:
        mem[0] = 7
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
    if accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] < minimalRewardedBalance:
        uint8(accountInfo[arg1][arg2].field_160) = 2
        return 0
    if arg1 <= 9:
        emit Reward(50 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
        call address(stor1).getNodeAddress(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x656c636f696e0000000000000000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0xf8b71c64 with:
             gas gas_remaining - 25050 wei
            args address(accountInfo[arg1][arg2].field_0), 50 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
    else:
        if arg1 <= 18:
            emit Reward(40 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
            call address(stor1).getNodeAddress(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args 0x656c636f696e0000000000000000000000000000000000000000000000000000
            require ext_call.success
            call address(ext_call.return_data[0]).0xf8b71c64 with:
                 gas gas_remaining - 25050 wei
                args address(accountInfo[arg1][arg2].field_0), 40 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
        else:
            if 26 == arg1:
                emit Reward(60 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                call address(stor1).getNodeAddress(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 0x656c636f696e0000000000000000000000000000000000000000000000000000
                require ext_call.success
                call address(ext_call.return_data[0]).0xf8b71c64 with:
                     gas gas_remaining - 25050 wei
                    args address(accountInfo[arg1][arg2].field_0), 60 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
            else:
                if arg1 <= 27:
                    emit Reward(30 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                    call address(stor1).getNodeAddress(bytes32 rg1) with:
                         gas gas_remaining - 25050 wei
                        args 0x656c636f696e0000000000000000000000000000000000000000000000000000
                    require ext_call.success
                    call address(ext_call.return_data[0]).0xf8b71c64 with:
                         gas gas_remaining - 25050 wei
                        args address(accountInfo[arg1][arg2].field_0), 30 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
                else:
                    if arg1 <= 36:
                        emit Reward(20 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                        call address(stor1).getNodeAddress(bytes32 rg1) with:
                             gas gas_remaining - 25050 wei
                            args 0x656c636f696e0000000000000000000000000000000000000000000000000000
                        require ext_call.success
                        call address(ext_call.return_data[0]).0xf8b71c64 with:
                             gas gas_remaining - 25050 wei
                            args address(accountInfo[arg1][arg2].field_0), 20 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
                    else:
                        if arg1 > cycleLimit:
                            emit Reward(0, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                            call address(stor1).getNodeAddress(bytes32 rg1) with:
                                 gas gas_remaining - 25050 wei
                                args 0x656c636f696e0000000000000000000000000000000000000000000000000000
                            require ext_call.success
                            call address(ext_call.return_data[0]).0xf8b71c64 with:
                                 gas gas_remaining - 25050 wei
                                args address(accountInfo[arg1][arg2].field_0), 0
                        else:
                            emit Reward(10 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650, arg2, address(accountInfo[arg1][arg2].field_0), arg1);
                            call address(stor1).getNodeAddress(bytes32 rg1) with:
                                 gas gas_remaining - 25050 wei
                                args 0x656c636f696e0000000000000000000000000000000000000000000000000000
                            require ext_call.success
                            call address(ext_call.return_data[0]).0xf8b71c64 with:
                                 gas gas_remaining - 25050 wei
                                args address(accountInfo[arg1][arg2].field_0), 10 * accountsBalances[arg1][address(stor9[arg1][arg2].field_0)] / 3650
    uint8(accountInfo[arg1][arg2].field_160) = 1
    return 1
}

function transfer(address arg1, address arg2) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 0x656c636f696e0000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if startTime != 0:
                call address(stor1).getNodeAddress(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'elcoinDb'
                require ext_call.success
                if (block.timestamp - startTime / cycleLength) + 1 <= cycleLimit:
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 25050 wei
                        args arg1
                    require ext_call.success
                    if accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] != -1:
                        if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)]:
                            if ext_call.return_data[0] != 0:
                                accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] = ext_call.return_data[0]
                            else:
                                accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] = -1
                            if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)]:
                                accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0++
                                if not accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 <= accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1:
                                    idx = accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1
                                    while accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 > idx:
                                        Mask(168, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                address(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_0) = arg1
                                uint8(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_160) = 0
                                Mask(88, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_168) = Mask(88, 168, arg1) >> 168
                        else:
                            if accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] > ext_call.return_data[0]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)] = -1
                                if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg1)]:
                                    accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0++
                                    if not accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 <= accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1:
                                        idx = accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1
                                        while accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 > idx:
                                            Mask(168, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_0) = arg1
                                    uint8(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_168) = Mask(88, 168, arg1) >> 168
                call address(stor1).getNodeAddress(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'elcoinDb'
                require ext_call.success
                if (block.timestamp - startTime / cycleLength) + 1 <= cycleLimit:
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 25050 wei
                        args arg2
                    require ext_call.success
                    if accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] != -1:
                        if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)]:
                            if ext_call.return_data[0] != 0:
                                accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] = ext_call.return_data[0]
                            else:
                                accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] = -1
                            if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)]:
                                accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0++
                                if not accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 <= accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1:
                                    idx = accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1
                                    while accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 > idx:
                                        Mask(168, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                address(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_0) = arg2
                                uint8(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_160) = 0
                                Mask(88, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_168) = Mask(88, 168, arg2) >> 168
                        else:
                            if accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] > ext_call.return_data[0]:
                                if ext_call.return_data[0] != 0:
                                    accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] = ext_call.return_data[0]
                                else:
                                    accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)] = -1
                                if not accountsBalances[(block.timestamp - stor4 / stor3) + 1][address(arg2)]:
                                    accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0++
                                    if not accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 <= accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1:
                                        idx = accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 + 1
                                        while accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0 > idx:
                                            Mask(168, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_0) = arg2
                                    uint8(accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_160) = 0
                                    Mask(88, 0, accountInfo[(block.timestamp - stor4 / stor3) + 1][accountInfo[(block.timestamp - stor4 / stor3) + 1].field_0].field_168) = Mask(88, 168, arg2) >> 168
}



}
