contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor7;
uint256 stor14;

function _fallback() payable {
    stor14 = 0
    mem[96 len -12135] = code.data[12631 len -12135]
    mem[64] = -12039
    stor0 = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    stor3 = mem[192]
    stor4 = mem[224]
    stor5 = mem[256]
    s = 0
    idx = 0
    while idx < mem[mem[288] + 96]:
        if stor7 >= 20:
            s = s
            idx = idx + 1
            continue 
        stor7++
        require idx < mem[mem[288] + 96]
        mem[0] = stor7
        mem[32] = 6
        stor6[stor7] = mem[(32 * idx) + mem[288] + 128]
        s = stor7
        idx = idx + 1
        continue 
    return code.data[496 len 12135]
}



// =====================  Runtime code  =====================


#
#  - getMarketMakers()
#  - orderMatch(uint256 arg1, uint256 arg2, int256 arg3, uint256 arg4, uint256 arg5, address arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, int256 arg10)
#  - orderMatchTest(uint256 arg1, uint256 arg2, int256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, uint256 arg8, int256 arg9)
#
uint256 expiration;
array of struct underlying;
uint256 margin;
uint256 realityID;
uint256 factHash;
address ethAddr;
mapping of uint256 stor6;
uint256 numOptions;
uint8 expired;
mapping of struct stor9;
uint256 numPositions;
uint256 numPositionsExpired;
mapping of address stor13;
uint256 numMarketMakers;
mapping of uint256 stor15;
mapping of struct account;
uint256 numAccounts;
mapping of uint256 accountID;

function expiration() payable {
    return expiration
}

function numOptions() payable {
    return numOptions
}

function expired() payable {
    return expired
}

function numPositions() payable {
    return numPositions
}

function underlying() payable {
    return underlying[0 len underlying.length].field_0
}

function getAccountID(address arg1) payable {
    return accountID[address(arg1)]
}

function numAccounts() payable {
    return numAccounts
}

function margin() payable {
    return margin
}

function factHash() payable {
    return factHash
}

function realityID() payable {
    return realityID
}

function numPositionsExpired() payable {
    return numPositionsExpired
}

function ethAddr() payable {
    return ethAddr
}

function getAccount(uint256 arg1) payable {
    return account[arg1].field_0
}

function numMarketMakers() payable {
    return numMarketMakers
}

function _fallback() payable {
  stop
}

function min(uint256 arg1, uint256 arg2) payable {
    if arg1 >= arg2:
        return arg2
    return arg1
}

function getMoneyness(int256 arg1, uint256 arg2, uint256 arg3) payable {
    if arg1 < 0:
        if arg2 >= -arg1:
            return 0
        if -arg1 - arg2 >= arg3:
            return arg3
        return (-arg1 - arg2)
    if arg2 <= arg1:
        return 0
    if arg2 - arg1 >= arg3:
        return arg3
    return (arg2 - arg1)
}

function getOptionChain() payable {
    mem[160] = uint256(underlying.field_0)
    idx = 160
    s = 0
    while underlying.length + 128 > idx:
        mem[idx + 32] = underlying[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return expiration, Array(len=underlying.length, data=mem[160 len underlying.length]), margin, realityID, factHash, ethAddr
}

function addFunds() payable {
    if accountID[address(msg.sender)] > 0:
        account[stor18[address(msg.sender)]].field_256 += msg.value
    else:
        numAccounts++
        account[stor17 + 1].field_0 = msg.sender or Mask(96, 160, account[stor17 + 1].field_0)
        account[stor17 + 1].field_256 += msg.value
        accountID[address(msg.sender)] = numAccounts + 1
    emit Deposit(msg.value, account[stor18[address(msg.sender)]].field_256, msg.sender);
}

function getMarketMakerFunds() payable {
    mem[128] = 6
    idx = 1
    while idx <= numMarketMakers:
        mem[0] = address(stor13[idx])
        mem[32] = 18
        if accountID[address(stor13[idx])] <= 0:
            require idx - 1 < mem[128]
            mem[(32 * idx - 1) + 160] = 0
        else:
            mem[0] = accountID[address(stor13[idx])]
            mem[32] = 16
            require idx - 1 < mem[128]
            mem[(32 * idx - 1) + 160] = account[stor18[address(stor13[idx])]].field_256
        idx = idx + 1
        continue 
    require 0 < mem[128]
    require 1 < mem[128]
    require 2 < mem[128]
    require 3 < mem[128]
    require 4 < mem[128]
    require 5 < mem[128]
    return mem[160], mem[192], mem[224], mem[256], mem[288], mem[320]
}

function getMarket(address arg1) payable {
    mem[1024] = 20
    mem[1056] = 20
    mem[1728] = 20
    if expired:
        return 128, 
               800,
               1472,
               2144,
               20,
               mem[384 len 640],
               20,
               mem[1088 len 608] >> 4864,
               20,
               None,
               mem[1088 len 640],
               20,
               mem[1760 len 640]
    idx = 0
    s = 0
    while idx < numOptions:
        require s < 20
        mem[(32 * s) + 384] = idx
        require s < mem[1024]
        mem[(32 * s) + 1056] = stor6[idx]
        require s < mem[1056]
        mem[(32 * s) + 1088] = stor9[address(arg1)][idx].field_0
        mem[0] = arg1
        mem[32] = 9
        require s < mem[1728]
        mem[(32 * s) + 1760] = stor9[address(arg1)].field_256
        idx = idx + 1
        s = s + 1
        continue 
    mem[2400] = 128
    mem[2528] = 20
    mem[2560 len 640] = mem[384 len 640]
    mem[2432] = 800
    mem[3200] = mem[1024]
    mem[3232 len 32 * mem[1024]] = mem[1056 len 32 * mem[1024]]
    mem[2464] = (32 * mem[1024]) + 832
    mem[(32 * mem[1024]) + 3232] = mem[1056]
    mem[(32 * mem[1024]) + 3264 len 32 * mem[1056]] = mem[1088 len 32 * mem[1056]]
    mem[2496] = (32 * mem[1056]) + (32 * mem[1024]) + 864
    mem[(32 * mem[1056]) + (32 * mem[1024]) + 3264] = mem[1728]
    mem[(32 * mem[1056]) + (32 * mem[1024]) + 3296 len 32 * mem[1728]] = mem[1760 len 32 * mem[1728]]
    return 128, 
           800,
           (32 * mem[1024]) + 832,
           (32 * mem[1056]) + (32 * mem[1024]) + 864,
           20,
           mem[384 len 640],
           mem[1024],
           mem[3232 len (32 * mem[1728]) + (32 * mem[1056]) + (32 * mem[1024]) + 64]
}

function expire(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    if not expired:
        signer = erecover(sha3(factHash, arg5), arg2 << 248, arg3, arg4) 
        require erecover.result
        if address(signer) == ethAddr:
            if arg1:
                s = 0
                idx = arg1
                while idx <= arg1:
                    mem[0] = account[idx].field_0
                    mem[32] = 9
                    if stor9[stor16[idx].field_0].field_512:
                        s = s
                        idx = idx + 1
                        continue 
                    mem[0] = account[idx].field_0
                    mem[32] = 9
                    t = 0
                    s = 0
                    t = underlying[sha3(mem[0 len 64])].field_0 / 10^18
                    while s < numOptions:
                        mem[0] = s
                        mem[32] = sha3(account[idx].field_0, 9)
                        if stor6[s] < 0:
                            if arg5 >= -stor6[s]:
                                t = 0
                                s = s + 1
                                t = t
                                continue 
                            if -stor6[s] - arg5 >= margin:
                                t = margin
                                s = s + 1
                                t = t + (margin * stor9[stor16[idx].field_0][s].field_0 / 10^18)
                                continue 
                            t = -stor6[s] - arg5
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[stor16[idx].field_0][s].field_0) - (arg5 * stor9[stor16[idx].field_0][s].field_0) / 10^18)
                            continue 
                        if arg5 <= stor6[s]:
                            t = 0
                            s = s + 1
                            t = t
                            continue 
                        if arg5 - stor6[s] >= margin:
                            t = margin
                            s = s + 1
                            t = t + (margin * stor9[stor16[idx].field_0][s].field_0 / 10^18)
                            continue 
                        t = arg5 - stor6[s]
                        s = s + 1
                        t = t + ((arg5 * stor9[stor16[idx].field_0][s].field_0) - (stor6[s] * stor9[stor16[idx].field_0][s].field_0) / 10^18)
                        continue 
                    stor9[stor16[idx].field_0].field_512 = 1
                    call account[idx].field_0 with:
                       value account[idx].field_256 + t wei
                         gas gas_remaining - 34050 wei
                    account[idx].field_256 = 0
                    if stor9[stor16[idx].field_0].field_520 == 1:
                        numPositionsExpired++
                    mem[0] = idx
                    mem[32] = 16
                    emit Expire(msg.sender, account[idx].field_0);
                    s = t
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 1
                while idx <= numAccounts:
                    mem[0] = account[idx].field_0
                    mem[32] = 9
                    if stor9[stor16[idx].field_0].field_512:
                        s = s
                        idx = idx + 1
                        continue 
                    mem[0] = account[idx].field_0
                    mem[32] = 9
                    t = 0
                    s = 0
                    t = underlying[sha3(mem[0 len 64])].field_0 / 10^18
                    while s < numOptions:
                        mem[0] = s
                        mem[32] = sha3(account[idx].field_0, 9)
                        if stor6[s] < 0:
                            if arg5 >= -stor6[s]:
                                t = 0
                                s = s + 1
                                t = t
                                continue 
                            if -stor6[s] - arg5 >= margin:
                                t = margin
                                s = s + 1
                                t = t + (margin * stor9[stor16[idx].field_0][s].field_0 / 10^18)
                                continue 
                            t = -stor6[s] - arg5
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[stor16[idx].field_0][s].field_0) - (arg5 * stor9[stor16[idx].field_0][s].field_0) / 10^18)
                            continue 
                        if arg5 <= stor6[s]:
                            t = 0
                            s = s + 1
                            t = t
                            continue 
                        if arg5 - stor6[s] >= margin:
                            t = margin
                            s = s + 1
                            t = t + (margin * stor9[stor16[idx].field_0][s].field_0 / 10^18)
                            continue 
                        t = arg5 - stor6[s]
                        s = s + 1
                        t = t + ((arg5 * stor9[stor16[idx].field_0][s].field_0) - (stor6[s] * stor9[stor16[idx].field_0][s].field_0) / 10^18)
                        continue 
                    stor9[stor16[idx].field_0].field_512 = 1
                    call account[idx].field_0 with:
                       value account[idx].field_256 + t wei
                         gas gas_remaining - 34050 wei
                    account[idx].field_256 = 0
                    if stor9[stor16[idx].field_0].field_520 == 1:
                        numPositionsExpired++
                    mem[0] = idx
                    mem[32] = 16
                    emit Expire(msg.sender, account[idx].field_0);
                    s = t
                    idx = idx + 1
                    continue 
            if numPositionsExpired == numPositions:
                expired = 1
}

function marketMaker(string arg1) payable {
    require msg.value <= 0
    if stor15[address(msg.sender)] > 0:
        uint256(stor13[stor15[address(msg.sender)]][1][]) = Array(len=arg1.length, data=arg1[all])
    else:
        if accountID[address(stor13[0])] <= 0:
            if numMarketMakers >= 6:
                idx = 2
                s = 0
                while idx <= numMarketMakers:
                    mem[0] = address(stor13[idx])
                    mem[32] = 18
                    if accountID[address(stor13[idx])] > 0:
                        mem[0] = accountID[address(stor13[idx])]
                        mem[32] = 16
                        if account[stor18[address(stor13[idx])]].field_256 > 0:
                            idx = idx + 1
                            s = s
                            continue 
                    if s:
                        mem[0] = address(stor13[idx])
                        mem[32] = 18
                        if accountID[address(stor13[s])] <= 0:
                            if accountID[address(stor13[idx])] <= 0:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = accountID[address(stor13[idx])]
                            mem[32] = 16
                            if account[stor18[address(stor13[idx])]].field_256 >= 0:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if accountID[address(stor13[idx])] <= 0:
                                if 0 >= account[stor18[address(stor13[s])]].field_256:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[0] = accountID[address(stor13[idx])]
                                mem[32] = 16
                                if account[stor18[address(stor13[idx])]].field_256 >= account[stor18[address(stor13[s])]].field_256:
                                    idx = idx + 1
                                    s = s
                                    continue 
                    idx = idx + 1
                    s = idx
                    continue 
                require s > 0
                stor15[address(stor13[s])] = 0
                uint256(stor13[s]) = msg.sender or Mask(96, 160, uint256(stor13[s]))
                uint256(stor13[s][1][]) = Array(len=arg1.length, data=arg1[all])
                stor15[address(msg.sender)] = s
            else:
                numMarketMakers++
                require numMarketMakers + 1 > 0
                stor15[address(stor13[stor14 + 1])] = 0
                uint256(stor13[stor14 + 1]) = msg.sender or Mask(96, 160, uint256(stor13[stor14 + 1]))
                uint256(stor13[stor14 + 1][1][]) = Array(len=arg1.length, data=arg1[all])
                stor15[address(msg.sender)] = numMarketMakers + 1
        else:
            if numMarketMakers >= 6:
                idx = 2
                s = 0
                while idx <= numMarketMakers:
                    mem[0] = address(stor13[idx])
                    mem[32] = 18
                    if accountID[address(stor13[idx])] <= 0:
                        if 0 > account[stor18[address(stor13[0])]].field_256:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[0] = accountID[address(stor13[idx])]
                        mem[32] = 16
                        if account[stor18[address(stor13[idx])]].field_256 > account[stor18[address(stor13[0])]].field_256:
                            idx = idx + 1
                            s = s
                            continue 
                    if s:
                        mem[0] = address(stor13[idx])
                        mem[32] = 18
                        if accountID[address(stor13[s])] <= 0:
                            if accountID[address(stor13[idx])] <= 0:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = accountID[address(stor13[idx])]
                            mem[32] = 16
                            if account[stor18[address(stor13[idx])]].field_256 >= 0:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if accountID[address(stor13[idx])] <= 0:
                                if 0 >= account[stor18[address(stor13[s])]].field_256:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                mem[0] = accountID[address(stor13[idx])]
                                mem[32] = 16
                                if account[stor18[address(stor13[idx])]].field_256 >= account[stor18[address(stor13[s])]].field_256:
                                    idx = idx + 1
                                    s = s
                                    continue 
                    idx = idx + 1
                    s = idx
                    continue 
                require s > 0
                stor15[address(stor13[s])] = 0
                uint256(stor13[s]) = msg.sender or Mask(96, 160, uint256(stor13[s]))
                uint256(stor13[s][1][]) = Array(len=arg1.length, data=arg1[all])
                stor15[address(msg.sender)] = s
            else:
                numMarketMakers++
                require numMarketMakers + 1 > 0
                stor15[address(stor13[stor14 + 1])] = 0
                uint256(stor13[stor14 + 1]) = msg.sender or Mask(96, 160, uint256(stor13[stor14 + 1]))
                uint256(stor13[stor14 + 1][1][]) = Array(len=arg1.length, data=arg1[all])
                stor15[address(msg.sender)] = numMarketMakers + 1
        emit NewMarketMaker(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function getMaxLossAfterTrade(address arg1, uint256 arg2, int256 arg3, int256 arg4) payable {
    if stor9[address(arg1)].field_512:
        return 0
    if numOptions <= 0:
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < numOptions:
        if stor6[idx] >= 0:
            u = 0
            v = 0
            while u < numOptions:
                mem[0] = u
                mem[32] = sha3(address(arg1), 9)
                if stor6[u] < 0:
                    if stor6[idx] >= -stor6[u]:
                        if u != arg2:
                            u = u + 1
                            v = v
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if stor6[idx] >= -stor6[u]:
                                u = u + 1
                                v = v
                                continue 
                            if -stor6[u] - stor6[idx] >= margin:
                                u = u + 1
                                v = v + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                            continue 
                        if stor6[idx] <= stor6[u]:
                            u = u + 1
                            v = v
                            continue 
                        if stor6[idx] - stor6[u] >= margin:
                            u = u + 1
                            v = v + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if -stor6[u] - stor6[idx] >= margin:
                        if u != arg2:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if stor6[idx] >= -stor6[u]:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            if -stor6[u] - stor6[idx] >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                            continue 
                        if stor6[idx] <= stor6[u]:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        if stor6[idx] - stor6[u] >= margin:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if u != arg2:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        if -stor6[u] - stor6[idx] >= margin:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                        continue 
                    if stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    if stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if stor6[idx] <= stor6[u]:
                    if u != arg2:
                        u = u + 1
                        v = v
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v
                            continue 
                        if -stor6[u] - stor6[idx] >= margin:
                            u = u + 1
                            v = v + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                        continue 
                    if stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v
                        continue 
                    if stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if stor6[idx] - stor6[u] >= margin:
                    if u != arg2:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        if -stor6[u] - stor6[idx] >= margin:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                        continue 
                    if stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                        continue 
                    if stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if u != arg2:
                    u = u + 1
                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                    continue 
                mem[0] = u
                mem[32] = 6
                if stor6[u] < 0:
                    if stor6[idx] >= -stor6[u]:
                        u = u + 1
                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    if -stor6[u] - stor6[idx] >= margin:
                        u = u + 1
                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) / 10^18)
                    continue 
                if stor6[idx] <= stor6[u]:
                    u = u + 1
                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                    continue 
                if stor6[idx] - stor6[u] >= margin:
                    u = u + 1
                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                    continue 
                u = u + 1
                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                continue 
        else:
            u = 0
            v = 0
            while u < numOptions:
                mem[0] = u
                mem[32] = sha3(address(arg1), 9)
                if stor6[u] < 0:
                    if -stor6[idx] >= -stor6[u]:
                        if u != arg2:
                            u = u + 1
                            v = v
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if -stor6[idx] >= -stor6[u]:
                                u = u + 1
                                v = v
                                continue 
                            if -stor6[u] + stor6[idx] >= margin:
                                u = u + 1
                                v = v + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                            continue 
                        if -stor6[idx] <= stor6[u]:
                            u = u + 1
                            v = v
                            continue 
                        if -stor6[idx] - stor6[u] >= margin:
                            u = u + 1
                            v = v + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if -stor6[u] + stor6[idx] >= margin:
                        if u != arg2:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if -stor6[idx] >= -stor6[u]:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            if -stor6[u] + stor6[idx] >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                            continue 
                        if -stor6[idx] <= stor6[u]:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        if -stor6[idx] - stor6[u] >= margin:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if u != arg2:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if -stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        if -stor6[u] + stor6[idx] >= margin:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                        continue 
                    if -stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    if -stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if -stor6[idx] <= stor6[u]:
                    if u != arg2:
                        u = u + 1
                        v = v
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if -stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v
                            continue 
                        if -stor6[u] + stor6[idx] >= margin:
                            u = u + 1
                            v = v + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                        continue 
                    if -stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v
                        continue 
                    if -stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if -stor6[idx] - stor6[u] >= margin:
                    if u != arg2:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if -stor6[idx] >= -stor6[u]:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        if -stor6[u] + stor6[idx] >= margin:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                        continue 
                    if -stor6[idx] <= stor6[u]:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                        continue 
                    if -stor6[idx] - stor6[u] >= margin:
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if u != arg2:
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                    continue 
                mem[0] = u
                mem[32] = 6
                if stor6[u] < 0:
                    if -stor6[idx] >= -stor6[u]:
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    if -stor6[u] + stor6[idx] >= margin:
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) / 10^18)
                    continue 
                if -stor6[idx] <= stor6[u]:
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                    continue 
                if -stor6[idx] - stor6[u] >= margin:
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                    continue 
                u = u + 1
                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (stor6[u] * arg3) / 10^18)
                continue 
        if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v >= s:
            if t:
                mem[0] = idx
                mem[32] = 6
                if stor6[idx] >= 0:
                    u = 0
                    v = 0
                    while u < numOptions:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if stor6[u] < 0:
                            if stor6[idx] + margin >= -stor6[u]:
                                if u != arg2:
                                    u = u + 1
                                    v = v
                                    continue 
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] + margin >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                        u = u + 1
                                        v = v + (arg3 * margin / 10^18)
                                        continue 
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                                    continue 
                                if stor6[idx] + margin <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                if stor6[idx] + margin - stor6[u] >= margin:
                                    u = u + 1
                                    v = v + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                                continue 
                            if -stor6[u] - stor6[idx] - margin >= margin:
                                if u != arg2:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] + margin >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                        continue 
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                                    continue 
                                if stor6[idx] + margin <= stor6[u]:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                if stor6[idx] + margin - stor6[u] >= margin:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                                continue 
                            if u != arg2:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] + margin >= -stor6[u]:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                if -stor6[u] - stor6[idx] - margin >= margin:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                                continue 
                            if stor6[idx] + margin <= stor6[u]:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            if stor6[idx] + margin - stor6[u] >= margin:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                            continue 
                        if stor6[idx] + margin <= stor6[u]:
                            if u != arg2:
                                u = u + 1
                                v = v
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] + margin >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                if -stor6[u] - stor6[idx] - margin >= margin:
                                    u = u + 1
                                    v = v + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                                continue 
                            if stor6[idx] + margin <= stor6[u]:
                                u = u + 1
                                v = v
                                continue 
                            if stor6[idx] + margin - stor6[u] >= margin:
                                u = u + 1
                                v = v + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                            continue 
                        if stor6[idx] + margin - stor6[u] >= margin:
                            if u != arg2:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] + margin >= -stor6[u]:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                if -stor6[u] - stor6[idx] - margin >= margin:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                                continue 
                            if stor6[idx] + margin <= stor6[u]:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            if stor6[idx] + margin - stor6[u] >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                            continue 
                        if u != arg2:
                            u = u + 1
                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if stor6[idx] + margin >= -stor6[u]:
                                u = u + 1
                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            if -stor6[u] - stor6[idx] - margin >= margin:
                                u = u + 1
                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                            continue 
                        if stor6[idx] + margin <= stor6[u]:
                            u = u + 1
                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        if stor6[idx] + margin - stor6[u] >= margin:
                            u = u + 1
                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v >= s:
                        s = stor6[idx] + margin
                        s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = stor6[idx] + margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                    t = t
                    continue 
                if -stor6[idx] <= margin:
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if 0 >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u != arg2:
                                    u = u + 1
                                    v = v
                                    continue 
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if 0 >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                else:
                                    if 0 <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                if -stor6[u] >= margin:
                                    u = u + 1
                                    v = v + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + (-1 * arg3 * stor6[u] / 10^18)
                                continue 
                        else:
                            if 0 <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u != arg2:
                                    u = u + 1
                                    v = v
                                    continue 
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if 0 >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                else:
                                    if 0 <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                if -stor6[u] >= margin:
                                    u = u + 1
                                    v = v + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + (-1 * arg3 * stor6[u] / 10^18)
                                continue 
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if -stor6[u] >= margin:
                            if u != arg2:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if 0 >= -stor6[u]:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                            else:
                                if 0 <= stor6[u]:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                            if -stor6[u] >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (-1 * arg3 * stor6[u] / 10^18)
                            continue 
                        if u != arg2:
                            u = u + 1
                            v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if 0 >= -stor6[u]:
                                u = u + 1
                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                continue 
                        else:
                            if 0 <= stor6[u]:
                                u = u + 1
                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                continue 
                        if -stor6[u] >= margin:
                            u = u + 1
                            v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18) + (-1 * arg3 * stor6[u] / 10^18)
                        continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v >= s:
                        s = 0
                        s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = 0
                    s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                    t = t
                    continue 
                mem[0] = idx
                mem[32] = 6
                u = 0
                v = 0
                while u < numOptions:
                    mem[0] = u
                    mem[32] = sha3(address(arg1), 9)
                    if stor6[u] < 0:
                        if -stor6[idx] - margin >= -stor6[u]:
                            if u != arg2:
                                u = u + 1
                                v = v
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] - margin >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                if -stor6[u] + stor6[idx] + margin >= margin:
                                    u = u + 1
                                    v = v + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                                continue 
                            if -stor6[idx] - margin <= stor6[u]:
                                u = u + 1
                                v = v
                                continue 
                            if -stor6[idx] - margin - stor6[u] >= margin:
                                u = u + 1
                                v = v + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                            continue 
                        if -stor6[u] + stor6[idx] + margin >= margin:
                            if u != arg2:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] - margin >= -stor6[u]:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                if -stor6[u] + stor6[idx] + margin >= margin:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                    continue 
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                                continue 
                            if -stor6[idx] - margin <= stor6[u]:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            if -stor6[idx] - margin - stor6[u] >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                            continue 
                        if u != arg2:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if -stor6[idx] - margin >= -stor6[u]:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            if -stor6[u] + stor6[idx] + margin >= margin:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                            continue 
                        if -stor6[idx] - margin <= stor6[u]:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        if -stor6[idx] - margin - stor6[u] >= margin:
                            u = u + 1
                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if -stor6[idx] - margin <= stor6[u]:
                        if u != arg2:
                            u = u + 1
                            v = v
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if -stor6[idx] - margin >= -stor6[u]:
                                u = u + 1
                                v = v
                                continue 
                            if -stor6[u] + stor6[idx] + margin >= margin:
                                u = u + 1
                                v = v + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                            continue 
                        if -stor6[idx] - margin <= stor6[u]:
                            u = u + 1
                            v = v
                            continue 
                        if -stor6[idx] - margin - stor6[u] >= margin:
                            u = u + 1
                            v = v + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if -stor6[idx] - margin - stor6[u] >= margin:
                        if u != arg2:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        mem[0] = u
                        mem[32] = 6
                        if stor6[u] < 0:
                            if -stor6[idx] - margin >= -stor6[u]:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            if -stor6[u] + stor6[idx] + margin >= margin:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                            continue 
                        if -stor6[idx] - margin <= stor6[u]:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                            continue 
                        if -stor6[idx] - margin - stor6[u] >= margin:
                            u = u + 1
                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                        continue 
                    if u != arg2:
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    mem[0] = u
                    mem[32] = 6
                    if stor6[u] < 0:
                        if -stor6[idx] - margin >= -stor6[u]:
                            u = u + 1
                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                            continue 
                        if -stor6[u] + stor6[idx] + margin >= margin:
                            u = u + 1
                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[u] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                        continue 
                    if -stor6[idx] - margin <= stor6[u]:
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                        continue 
                    if -stor6[idx] - margin - stor6[u] >= margin:
                        u = u + 1
                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    u = u + 1
                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[u] * arg3) / 10^18)
                    continue 
                if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v >= s:
                    s = -stor6[idx] - margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = -stor6[idx] - margin
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                t = t
                continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx] >= 0:
            s = 0
            t = 0
            while s < numOptions:
                mem[0] = s
                mem[32] = sha3(address(arg1), 9)
                if stor6[s] < 0:
                    if stor6[idx] + margin >= -stor6[s]:
                        if s != arg2:
                            s = s + 1
                            t = t
                            continue 
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if stor6[idx] + margin >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            if -stor6[s] - stor6[idx] - margin >= margin:
                                s = s + 1
                                t = t + (arg3 * margin / 10^18)
                                continue 
                            s = s + 1
                            t = t + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                            continue 
                        if stor6[idx] + margin <= stor6[s]:
                            s = s + 1
                            t = t
                            continue 
                        if stor6[idx] + margin - stor6[s] >= margin:
                            s = s + 1
                            t = t + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                        continue 
                    if -stor6[s] - stor6[idx] - margin >= margin:
                        if s != arg2:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if stor6[idx] + margin >= -stor6[s]:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            if -stor6[s] - stor6[idx] - margin >= margin:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                                continue 
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                            continue 
                        if stor6[idx] + margin <= stor6[s]:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        if stor6[idx] + margin - stor6[s] >= margin:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                        continue 
                    if s != arg2:
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if stor6[idx] + margin >= -stor6[s]:
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                            continue 
                        if -stor6[s] - stor6[idx] - margin >= margin:
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                        continue 
                    if stor6[idx] + margin <= stor6[s]:
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                        continue 
                    if stor6[idx] + margin - stor6[s] >= margin:
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                    continue 
                if stor6[idx] + margin <= stor6[s]:
                    if s != arg2:
                        s = s + 1
                        t = t
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if stor6[idx] + margin >= -stor6[s]:
                            s = s + 1
                            t = t
                            continue 
                        if -stor6[s] - stor6[idx] - margin >= margin:
                            s = s + 1
                            t = t + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                        continue 
                    if stor6[idx] + margin <= stor6[s]:
                        s = s + 1
                        t = t
                        continue 
                    if stor6[idx] + margin - stor6[s] >= margin:
                        s = s + 1
                        t = t + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                    continue 
                if stor6[idx] + margin - stor6[s] >= margin:
                    if s != arg2:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if stor6[idx] + margin >= -stor6[s]:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        if -stor6[s] - stor6[idx] - margin >= margin:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                        continue 
                    if stor6[idx] + margin <= stor6[s]:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    if stor6[idx] + margin - stor6[s] >= margin:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                    continue 
                if s != arg2:
                    s = s + 1
                    t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                    continue 
                mem[0] = s
                mem[32] = 6
                if stor6[s] < 0:
                    if stor6[idx] + margin >= -stor6[s]:
                        s = s + 1
                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                        continue 
                    if -stor6[s] - stor6[idx] - margin >= margin:
                        s = s + 1
                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[s] * arg3) - (stor6[idx] * arg3) - (margin * arg3) / 10^18)
                    continue 
                if stor6[idx] + margin <= stor6[s]:
                    s = s + 1
                    t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                    continue 
                if stor6[idx] + margin - stor6[s] >= margin:
                    s = s + 1
                    t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + ((stor6[idx] * arg3) + (margin * arg3) - (stor6[s] * arg3) / 10^18)
                continue 
            if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v:
                s = stor6[idx] + margin
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                t = 1
                continue 
            s = stor6[idx] + margin
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
            t = 1
            continue 
        if -stor6[idx] <= margin:
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if 0 >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s != arg2:
                            s = s + 1
                            t = t
                            continue 
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if 0 >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                        else:
                            if 0 <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                        if -stor6[s] >= margin:
                            s = s + 1
                            t = t + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + (-1 * arg3 * stor6[s] / 10^18)
                        continue 
                else:
                    if 0 <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s != arg2:
                            s = s + 1
                            t = t
                            continue 
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if 0 >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                        else:
                            if 0 <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                        if -stor6[s] >= margin:
                            s = s + 1
                            t = t + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + (-1 * arg3 * stor6[s] / 10^18)
                        continue 
                mem[0] = s
                mem[32] = sha3(address(arg1), 9)
                if -stor6[s] >= margin:
                    if s != arg2:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if 0 >= -stor6[s]:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                    else:
                        if 0 <= stor6[s]:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                    if -stor6[s] >= margin:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (-1 * arg3 * stor6[s] / 10^18)
                    continue 
                if s != arg2:
                    s = s + 1
                    t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                    continue 
                mem[0] = s
                mem[32] = 6
                if stor6[s] < 0:
                    if 0 >= -stor6[s]:
                        s = s + 1
                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                        continue 
                else:
                    if 0 <= stor6[s]:
                        s = s + 1
                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                        continue 
                if -stor6[s] >= margin:
                    s = s + 1
                    t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18) + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18) + (-1 * arg3 * stor6[s] / 10^18)
                continue 
            if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v:
                s = 0
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
                t = 1
                continue 
            s = 0
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
            t = 1
            continue 
        mem[0] = idx
        mem[32] = 6
        s = 0
        t = 0
        while s < numOptions:
            mem[0] = s
            mem[32] = sha3(address(arg1), 9)
            if stor6[s] < 0:
                if -stor6[idx] - margin >= -stor6[s]:
                    if s != arg2:
                        s = s + 1
                        t = t
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if -stor6[idx] - margin >= -stor6[s]:
                            s = s + 1
                            t = t
                            continue 
                        if -stor6[s] + stor6[idx] + margin >= margin:
                            s = s + 1
                            t = t + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                        continue 
                    if -stor6[idx] - margin <= stor6[s]:
                        s = s + 1
                        t = t
                        continue 
                    if -stor6[idx] - margin - stor6[s] >= margin:
                        s = s + 1
                        t = t + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
                    continue 
                if -stor6[s] + stor6[idx] + margin >= margin:
                    if s != arg2:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    mem[0] = s
                    mem[32] = 6
                    if stor6[s] < 0:
                        if -stor6[idx] - margin >= -stor6[s]:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        if -stor6[s] + stor6[idx] + margin >= margin:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                            continue 
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                        continue 
                    if -stor6[idx] - margin <= stor6[s]:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    if -stor6[idx] - margin - stor6[s] >= margin:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
                    continue 
                if s != arg2:
                    s = s + 1
                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                    continue 
                mem[0] = s
                mem[32] = 6
                if stor6[s] < 0:
                    if -stor6[idx] - margin >= -stor6[s]:
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                        continue 
                    if -stor6[s] + stor6[idx] + margin >= margin:
                        s = s + 1
                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                    continue 
                if -stor6[idx] - margin <= stor6[s]:
                    s = s + 1
                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                    continue 
                if -stor6[idx] - margin - stor6[s] >= margin:
                    s = s + 1
                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
                continue 
            if -stor6[idx] - margin <= stor6[s]:
                if s != arg2:
                    s = s + 1
                    t = t
                    continue 
                mem[0] = s
                mem[32] = 6
                if stor6[s] < 0:
                    if -stor6[idx] - margin >= -stor6[s]:
                        s = s + 1
                        t = t
                        continue 
                    if -stor6[s] + stor6[idx] + margin >= margin:
                        s = s + 1
                        t = t + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                    continue 
                if -stor6[idx] - margin <= stor6[s]:
                    s = s + 1
                    t = t
                    continue 
                if -stor6[idx] - margin - stor6[s] >= margin:
                    s = s + 1
                    t = t + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
                continue 
            if -stor6[idx] - margin - stor6[s] >= margin:
                if s != arg2:
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                    continue 
                mem[0] = s
                mem[32] = 6
                if stor6[s] < 0:
                    if -stor6[idx] - margin >= -stor6[s]:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                        continue 
                    if -stor6[s] + stor6[idx] + margin >= margin:
                        s = s + 1
                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                        continue 
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                    continue 
                if -stor6[idx] - margin <= stor6[s]:
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                    continue 
                if -stor6[idx] - margin - stor6[s] >= margin:
                    s = s + 1
                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
                continue 
            if s != arg2:
                s = s + 1
                t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                continue 
            mem[0] = s
            mem[32] = 6
            if stor6[s] < 0:
                if -stor6[idx] - margin >= -stor6[s]:
                    s = s + 1
                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                    continue 
                if -stor6[s] + stor6[idx] + margin >= margin:
                    s = s + 1
                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                    continue 
                s = s + 1
                t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[s] * arg3) + (stor6[idx] * arg3) + (margin * arg3) / 10^18)
                continue 
            if -stor6[idx] - margin <= stor6[s]:
                s = s + 1
                t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                continue 
            if -stor6[idx] - margin - stor6[s] >= margin:
                s = s + 1
                t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + (arg3 * margin / 10^18)
                continue 
            s = s + 1
            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18) + ((-1 * stor6[idx] * arg3) - (margin * arg3) - (stor6[s] * arg3) / 10^18)
            continue 
        if (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v:
            s = -stor6[idx] - margin
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + v
            t = 1
            continue 
        s = -stor6[idx] - margin
        s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
        idx = idx + 1
        s = (stor9[address(arg1)].field_256 / 10^18) + (arg4 / 10^18) + t
        t = 1
        continue 
    return s
}

function getFunds(address arg1, bool arg2) payable {
    if accountID[address(arg1)] <= 0:
        return 0
    if not arg2:
        return account[stor18[address(arg1)]].field_256
    if stor9[address(arg1)].field_512:
        return account[stor18[address(arg1)]].field_256
    if numOptions <= 0:
        return account[stor18[address(arg1)]].field_256
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < numOptions:
        if stor6[idx] >= 0:
            u = 0
            v = 0
            while u < numOptions:
                if stor6[u] < 0:
                    if stor6[idx] >= -stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] - stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[u] - stor6[idx] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                else:
                    if stor6[idx] <= stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] - stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if stor6[idx] - stor6[u] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
        else:
            u = 0
            v = 0
            while u < numOptions:
                if stor6[u] < 0:
                    if -stor6[idx] >= -stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] + stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if -stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[u] + stor6[idx] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                else:
                    if -stor6[idx] <= stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] + stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if -stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[idx] - stor6[u] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
        if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
            if t:
                mem[0] = idx
                mem[32] = 6
                if stor6[idx] >= 0:
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if stor6[idx] + margin >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] + margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] - stor6[idx] - margin >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                        else:
                            if stor6[idx] + margin <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] + margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if stor6[idx] + margin - stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                        s = stor6[idx] + margin
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = stor6[idx] + margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = t
                    continue 
                if -stor6[idx] <= margin:
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if 0 >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if 0 >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if 0 <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                        else:
                            if 0 <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if 0 >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if 0 <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                        s = 0
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = 0
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = t
                    continue 
                mem[0] = idx
                mem[32] = 6
                u = 0
                v = 0
                while u < numOptions:
                    if stor6[u] < 0:
                        if -stor6[idx] - margin >= -stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] - margin >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[u] + stor6[idx] + margin >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                    else:
                        if -stor6[idx] - margin <= stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] - margin >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[idx] - margin - stor6[u] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                    s = -stor6[idx] - margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = -stor6[idx] - margin
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = t
                continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx] >= 0:
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if stor6[idx] + margin >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if stor6[idx] + margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if stor6[idx] + margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if stor6[idx] + margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] - stor6[idx] - margin >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                else:
                    if stor6[idx] + margin <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if stor6[idx] + margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if stor6[idx] + margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if stor6[idx] + margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if stor6[idx] + margin - stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
            if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                s = stor6[idx] + margin
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = 1
                continue 
            s = stor6[idx] + margin
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            t = 1
            continue 
        if -stor6[idx] <= margin:
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if 0 >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if 0 >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if 0 <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                else:
                    if 0 <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if 0 >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if 0 <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
            if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                s = 0
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = 1
                continue 
            s = 0
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            t = 1
            continue 
        mem[0] = idx
        mem[32] = 6
        s = 0
        t = 0
        while s < numOptions:
            if stor6[s] < 0:
                if -stor6[idx] - margin >= -stor6[s]:
                    mem[0] = s
                    mem[32] = sha3(address(arg1), 9)
                    if s:
                        s = s + 1
                        t = t
                        continue 
                    else:
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if -stor6[idx] - margin >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[s] + stor6[idx] + margin >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                        else:
                            if -stor6[idx] - margin <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[idx] - margin - stor6[s] >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                else:
                    if -stor6[s] + stor6[idx] + margin >= margin:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                    else:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
            else:
                if -stor6[idx] - margin <= stor6[s]:
                    mem[0] = s
                    mem[32] = sha3(address(arg1), 9)
                    if s:
                        s = s + 1
                        t = t
                        continue 
                    else:
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if -stor6[idx] - margin >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[s] + stor6[idx] + margin >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                        else:
                            if -stor6[idx] - margin <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[idx] - margin - stor6[s] >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                else:
                    if -stor6[idx] - margin - stor6[s] >= margin:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                    else:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
        if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
            s = -stor6[idx] - margin
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + v
            t = 1
            continue 
        s = -stor6[idx] - margin
        s = (stor9[address(arg1)].field_256 / 10^18) + t
        idx = idx + 1
        s = (stor9[address(arg1)].field_256 / 10^18) + t
        t = 1
        continue 
    return (account[stor18[address(arg1)]].field_256 + s)
}

function withdrawFunds(uint256 arg1) payable {
    if accountID[address(msg.sender)] > 0:
        if accountID[address(msg.sender)] > 0:
            if stor9[address(msg.sender)].field_512:
                if arg1 <= account[stor18[address(msg.sender)]].field_256:
                    if arg1 > 0:
                        account[stor18[address(msg.sender)]].field_256 -= arg1
                        call msg.sender with:
                           value arg1 wei
                             gas gas_remaining - 34050 wei
                        emit Withdraw(arg1, account[stor18[address(msg.sender)]].field_256, msg.sender);
            else:
                if numOptions <= 0:
                    if arg1 <= account[stor18[address(msg.sender)]].field_256:
                        if arg1 > 0:
                            account[stor18[address(msg.sender)]].field_256 -= arg1
                            call msg.sender with:
                               value arg1 wei
                                 gas gas_remaining - 34050 wei
                            emit Withdraw(arg1, account[stor18[address(msg.sender)]].field_256, msg.sender);
                else:
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < numOptions:
                        if stor6[idx] >= 0:
                            u = 0
                            v = 0
                            while u < numOptions:
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        mem[0] = u
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if u:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] >= -stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if stor6[idx] <= stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if stor6[idx] - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] - stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] - stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        mem[0] = u
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if u:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] >= -stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if stor6[idx] <= stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if stor6[idx] - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] - stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] - stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                        else:
                            u = 0
                            v = 0
                            while u < numOptions:
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        mem[0] = u
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if u:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if -stor6[idx] >= -stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[u] + stor6[idx] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if -stor6[idx] <= stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[idx] - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if -stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if -stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        mem[0] = u
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if u:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if -stor6[idx] >= -stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[u] + stor6[idx] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if -stor6[idx] <= stor6[u]:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    if -stor6[idx] - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if -stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] >= -stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if -stor6[idx] <= stor6[u]:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                        if (stor9[address(msg.sender)].field_256 / 10^18) + v >= s:
                            if t:
                                mem[0] = idx
                                mem[32] = 6
                                if stor6[idx] >= 0:
                                    u = 0
                                    v = 0
                                    while u < numOptions:
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if stor6[idx] + margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if stor6[idx] + margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if stor6[idx] + margin >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                        else:
                                                            if stor6[idx] + margin <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if stor6[idx] + margin >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                                    u = u + 1
                                                                    v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                        else:
                                                            if stor6[idx] + margin <= stor6[u]:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) - (stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if stor6[idx] + margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if stor6[idx] + margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if stor6[idx] + margin >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                        else:
                                                            if stor6[idx] + margin <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if stor6[idx] + margin >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                                    u = u + 1
                                                                    v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                        else:
                                                            if stor6[idx] + margin <= stor6[u]:
                                                                u = u + 1
                                                                v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + ((stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                    continue 
                                    if (stor9[address(msg.sender)].field_256 / 10^18) + v >= s:
                                        s = stor6[idx] + margin
                                        s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    s = stor6[idx] + margin
                                    s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                    idx = idx + 1
                                    s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                    t = t
                                    continue 
                                if -stor6[idx] <= margin:
                                    u = 0
                                    v = 0
                                    while u < numOptions:
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if 0 >= -stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if 0 <= stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if 0 >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                        else:
                                                            if 0 <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if 0 >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                        else:
                                                            if 0 <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if 0 >= -stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if 0 <= stor6[u]:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            if -stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if 0 >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                        else:
                                                            if 0 <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = sha3(address(msg.sender), 9)
                                                    if u:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        mem[0] = u
                                                        mem[32] = 6
                                                        if stor6[u] < 0:
                                                            if 0 >= -stor6[u]:
                                                                u = u + 1
                                                                v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                        else:
                                                            if 0 <= stor6[u]:
                                                                u = u + 1
                                                                v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                continue 
                                                            else:
                                                                if -stor6[u] >= margin:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                                                else:
                                                                    u = u + 1
                                                                    v = v + (-1 * stor9[address(msg.sender)][u].field_0 * stor6[u] / 10^18)
                                                                    continue 
                                    if (stor9[address(msg.sender)].field_256 / 10^18) + v >= s:
                                        s = 0
                                        s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    s = 0
                                    s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                    idx = idx + 1
                                    s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                    t = t
                                    continue 
                                mem[0] = idx
                                mem[32] = 6
                                u = 0
                                v = 0
                                while u < numOptions:
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] - margin >= -stor6[u]:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                else:
                                                    if -stor6[idx] - margin <= stor6[u]:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if -stor6[idx] - margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                    else:
                                                        if -stor6[idx] - margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if -stor6[idx] - margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                    else:
                                                        if -stor6[idx] - margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[u] * stor9[address(msg.sender)][u].field_0) + (stor6[idx] * stor9[address(msg.sender)][u].field_0) + (margin * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            mem[0] = u
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if u:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = 6
                                                if stor6[u] < 0:
                                                    if -stor6[idx] - margin >= -stor6[u]:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                else:
                                                    if -stor6[idx] - margin <= stor6[u]:
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    else:
                                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        else:
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if -stor6[idx] - margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                    else:
                                                        if -stor6[idx] - margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + (stor9[address(msg.sender)][u].field_0 * margin / 10^18)
                                                                continue 
                                            else:
                                                mem[0] = u
                                                mem[32] = sha3(address(msg.sender), 9)
                                                if u:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    mem[0] = u
                                                    mem[32] = 6
                                                    if stor6[u] < 0:
                                                        if -stor6[idx] - margin >= -stor6[u]:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                    else:
                                                        if -stor6[idx] - margin <= stor6[u]:
                                                            u = u + 1
                                                            v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                                            else:
                                                                u = u + 1
                                                                v = v + ((-1 * stor6[idx] * stor9[address(msg.sender)][u].field_0) - (margin * stor9[address(msg.sender)][u].field_0) - (stor6[u] * stor9[address(msg.sender)][u].field_0) / 10^18)
                                                                continue 
                                if (stor9[address(msg.sender)].field_256 / 10^18) + v >= s:
                                    s = -stor6[idx] - margin
                                    s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                s = -stor6[idx] - margin
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                idx = idx + 1
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                t = t
                                continue 
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx] >= 0:
                            s = 0
                            t = 0
                            while s < numOptions:
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if stor6[idx] + margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if stor6[idx] + margin >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] + margin <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] + margin - stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if stor6[idx] + margin >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                                            s = s + 1
                                                            t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] + margin <= stor6[s]:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] + margin - stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) - (stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if stor6[idx] + margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if stor6[idx] + margin >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] + margin <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] + margin - stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if stor6[idx] + margin >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                                            s = s + 1
                                                            t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                else:
                                                    if stor6[idx] + margin <= stor6[s]:
                                                        s = s + 1
                                                        t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        if stor6[idx] + margin - stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + ((stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                            continue 
                            if (stor9[address(msg.sender)].field_256 / 10^18) + t >= (stor9[address(msg.sender)].field_256 / 10^18) + v:
                                s = stor6[idx] + margin
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                                idx = idx + 1
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                t = 1
                                continue 
                            s = stor6[idx] + margin
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                            idx = idx + 1
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                            t = 1
                            continue 
                        if -stor6[idx] <= margin:
                            s = 0
                            t = 0
                            while s < numOptions:
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if 0 >= -stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                            else:
                                                if 0 <= stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if 0 >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if 0 <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if 0 >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                else:
                                                    if 0 <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if 0 >= -stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                            else:
                                                if 0 <= stor6[s]:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    if -stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if 0 >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                else:
                                                    if 0 <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = sha3(address(msg.sender), 9)
                                            if s:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                mem[0] = s
                                                mem[32] = 6
                                                if stor6[s] < 0:
                                                    if 0 >= -stor6[s]:
                                                        s = s + 1
                                                        t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                else:
                                                    if 0 <= stor6[s]:
                                                        s = s + 1
                                                        t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                        continue 
                                                    else:
                                                        if -stor6[s] >= margin:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                                                        else:
                                                            s = s + 1
                                                            t = t + (-1 * stor9[address(msg.sender)][s].field_0 * stor6[s] / 10^18)
                                                            continue 
                            if (stor9[address(msg.sender)].field_256 / 10^18) + t >= (stor9[address(msg.sender)].field_256 / 10^18) + v:
                                s = 0
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                                idx = idx + 1
                                s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                                t = 1
                                continue 
                            s = 0
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                            idx = idx + 1
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                            t = 1
                            continue 
                        mem[0] = idx
                        mem[32] = 6
                        s = 0
                        t = 0
                        while s < numOptions:
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    mem[0] = s
                                    mem[32] = sha3(address(msg.sender), 9)
                                    if s:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        mem[0] = s
                                        mem[32] = 6
                                        if stor6[s] < 0:
                                            if -stor6[idx] - margin >= -stor6[s]:
                                                s = s + 1
                                                t = t
                                                continue 
                                            else:
                                                if -stor6[s] + stor6[idx] + margin >= margin:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[s]:
                                                s = s + 1
                                                t = t
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[s] >= margin:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if -stor6[idx] - margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if -stor6[idx] - margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if -stor6[idx] - margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                            else:
                                                if -stor6[idx] - margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[s] * stor9[address(msg.sender)][s].field_0) + (stor6[idx] * stor9[address(msg.sender)][s].field_0) + (margin * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    mem[0] = s
                                    mem[32] = sha3(address(msg.sender), 9)
                                    if s:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        mem[0] = s
                                        mem[32] = 6
                                        if stor6[s] < 0:
                                            if -stor6[idx] - margin >= -stor6[s]:
                                                s = s + 1
                                                t = t
                                                continue 
                                            else:
                                                if -stor6[s] + stor6[idx] + margin >= margin:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[s]:
                                                s = s + 1
                                                t = t
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[s] >= margin:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                                else:
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if -stor6[idx] - margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if -stor6[idx] - margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + (stor9[address(msg.sender)][s].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = s
                                        mem[32] = sha3(address(msg.sender), 9)
                                        if s:
                                            s = s + 1
                                            t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            mem[0] = s
                                            mem[32] = 6
                                            if stor6[s] < 0:
                                                if -stor6[idx] - margin >= -stor6[s]:
                                                    s = s + 1
                                                    t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                            else:
                                                if -stor6[idx] - margin <= stor6[s]:
                                                    s = s + 1
                                                    t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        s = s + 1
                                                        t = t + ((-1 * stor6[idx] * stor9[address(msg.sender)][s].field_0) - (margin * stor9[address(msg.sender)][s].field_0) - (stor6[s] * stor9[address(msg.sender)][s].field_0) / 10^18)
                                                        continue 
                        if (stor9[address(msg.sender)].field_256 / 10^18) + t >= (stor9[address(msg.sender)].field_256 / 10^18) + v:
                            s = -stor6[idx] - margin
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                            idx = idx + 1
                            s = (stor9[address(msg.sender)].field_256 / 10^18) + v
                            t = 1
                            continue 
                        s = -stor6[idx] - margin
                        s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                        idx = idx + 1
                        s = (stor9[address(msg.sender)].field_256 / 10^18) + t
                        t = 1
                        continue 
                    if arg1 <= account[stor18[address(msg.sender)]].field_256 + s:
                        if arg1 > 0:
                            account[stor18[address(msg.sender)]].field_256 -= arg1
                            call msg.sender with:
                               value arg1 wei
                                 gas gas_remaining - 34050 wei
                            emit Withdraw(arg1, account[stor18[address(msg.sender)]].field_256, msg.sender);
}

function getFundsAndAvailable(address arg1) payable {
    if accountID[address(arg1)] <= 0:
        if accountID[address(arg1)] <= 0:
            return 0
        if stor9[address(arg1)].field_512:
            return 0, account[stor18[address(arg1)]].field_256
        if numOptions <= 0:
            return 0, account[stor18[address(arg1)]].field_256
        s = 0
        s = 0
        idx = 0
        s = 0
        t = 0
        while idx < numOptions:
            if stor6[idx] >= 0:
                u = 0
                v = 0
                while u < numOptions:
                    if stor6[u] < 0:
                        if stor6[idx] >= -stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[u] - stor6[idx] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                    else:
                        if stor6[idx] <= stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if stor6[idx] - stor6[u] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
            else:
                u = 0
                v = 0
                while u < numOptions:
                    if stor6[u] < 0:
                        if -stor6[idx] >= -stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[u] + stor6[idx] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                    else:
                        if -stor6[idx] <= stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[idx] - stor6[u] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
            if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                if t:
                    mem[0] = idx
                    mem[32] = 6
                    if stor6[idx] >= 0:
                        u = 0
                        v = 0
                        while u < numOptions:
                            if stor6[u] < 0:
                                if stor6[idx] + margin >= -stor6[u]:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                else:
                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] + margin >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] + margin >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[u]:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                            else:
                                if stor6[idx] + margin <= stor6[u]:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                else:
                                    if stor6[idx] + margin - stor6[u] >= margin:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] + margin >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if stor6[idx] + margin >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] - stor6[idx] - margin >= margin:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                            else:
                                                if stor6[idx] + margin <= stor6[u]:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    if stor6[idx] + margin - stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                        continue 
                        if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                            s = stor6[idx] + margin
                            s = (stor9[address(arg1)].field_256 / 10^18) + v
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        s = stor6[idx] + margin
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        t = t
                        continue 
                    if -stor6[idx] <= margin:
                        u = 0
                        v = 0
                        while u < numOptions:
                            if stor6[u] < 0:
                                if 0 >= -stor6[u]:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                else:
                                    if -stor6[u] >= margin:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if 0 >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if 0 <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if 0 >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                            else:
                                                if 0 <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                            else:
                                if 0 <= stor6[u]:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                else:
                                    if -stor6[u] >= margin:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if 0 >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                            else:
                                                if 0 <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = sha3(address(arg1), 9)
                                        if u:
                                            u = u + 1
                                            v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                            continue 
                                        else:
                                            mem[0] = u
                                            mem[32] = 6
                                            if stor6[u] < 0:
                                                if 0 >= -stor6[u]:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                            else:
                                                if 0 <= stor6[u]:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    if -stor6[u] >= margin:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                                                    else:
                                                        u = u + 1
                                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                        continue 
                        if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                            s = 0
                            s = (stor9[address(arg1)].field_256 / 10^18) + v
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        s = 0
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        t = t
                        continue 
                    mem[0] = idx
                    mem[32] = 6
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if -stor6[idx] - margin >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] + stor6[idx] + margin >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if -stor6[idx] - margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] + stor6[idx] + margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if -stor6[idx] - margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] + stor6[idx] + margin >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                        else:
                            if -stor6[idx] - margin <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[idx] - margin - stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if -stor6[idx] - margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] + stor6[idx] + margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if -stor6[idx] - margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] + stor6[idx] + margin >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if -stor6[idx] - margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[idx] - margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                        s = -stor6[idx] - margin
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = -stor6[idx] - margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = t
                    continue 
            mem[0] = idx
            mem[32] = 6
            if stor6[idx] >= 0:
                s = 0
                t = 0
                while s < numOptions:
                    if stor6[s] < 0:
                        if stor6[idx] + margin >= -stor6[s]:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                        else:
                            if -stor6[s] - stor6[idx] - margin >= margin:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if stor6[idx] + margin >= -stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] - stor6[idx] - margin >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if stor6[idx] + margin >= -stor6[s]:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] - stor6[idx] - margin >= margin:
                                                s = s + 1
                                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[s]:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[s] >= margin:
                                                s = s + 1
                                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                    else:
                        if stor6[idx] + margin <= stor6[s]:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                        else:
                            if stor6[idx] + margin - stor6[s] >= margin:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if stor6[idx] + margin >= -stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] - stor6[idx] - margin >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if stor6[idx] + margin >= -stor6[s]:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] - stor6[idx] - margin >= margin:
                                                s = s + 1
                                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[s]:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[s] >= margin:
                                                s = s + 1
                                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                                continue 
                if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                    s = stor6[idx] + margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + t
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = 1
                    continue 
                s = stor6[idx] + margin
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                t = 1
                continue 
            if -stor6[idx] <= margin:
                s = 0
                t = 0
                while s < numOptions:
                    if stor6[s] < 0:
                        if 0 >= -stor6[s]:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                        else:
                            if -stor6[s] >= margin:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if 0 >= -stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if 0 <= stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if 0 >= -stor6[s]:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                    else:
                                        if 0 <= stor6[s]:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                    else:
                        if 0 <= stor6[s]:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t
                                            continue 
                        else:
                            if -stor6[s] >= margin:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if 0 >= -stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if 0 <= stor6[s]:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = s
                                mem[32] = sha3(address(arg1), 9)
                                if s:
                                    s = s + 1
                                    t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                    continue 
                                else:
                                    mem[0] = s
                                    mem[32] = 6
                                    if stor6[s] < 0:
                                        if 0 >= -stor6[s]:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                    else:
                                        if 0 <= stor6[s]:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            if -stor6[s] >= margin:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                                            else:
                                                s = s + 1
                                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                                continue 
                if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                    s = 0
                    s = (stor9[address(arg1)].field_256 / 10^18) + t
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = 1
                    continue 
                s = 0
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                t = 1
                continue 
            mem[0] = idx
            mem[32] = 6
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if -stor6[idx] - margin >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] + stor6[idx] + margin >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if -stor6[idx] - margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] + stor6[idx] + margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if -stor6[idx] - margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] + stor6[idx] + margin >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                else:
                    if -stor6[idx] - margin <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[idx] - margin - stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if -stor6[idx] - margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] + stor6[idx] + margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if -stor6[idx] - margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] + stor6[idx] + margin >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
            if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                s = -stor6[idx] - margin
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = 1
                continue 
            s = -stor6[idx] - margin
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            t = 1
            continue 
        return 0, account[stor18[address(arg1)]].field_256 + s
    if accountID[address(arg1)] <= 0:
        return account[stor18[address(arg1)]].field_256, 0
    if stor9[address(arg1)].field_512:
        return account[stor18[address(arg1)]].field_256, account[stor18[address(arg1)]].field_256
    if numOptions <= 0:
        return account[stor18[address(arg1)]].field_256, account[stor18[address(arg1)]].field_256
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < numOptions:
        if stor6[idx] >= 0:
            u = 0
            v = 0
            while u < numOptions:
                if stor6[u] < 0:
                    if stor6[idx] >= -stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] - stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[u] - stor6[idx] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                else:
                    if stor6[idx] <= stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] - stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if stor6[idx] - stor6[u] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] - stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
        else:
            u = 0
            v = 0
            while u < numOptions:
                if stor6[u] < 0:
                    if -stor6[idx] >= -stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] + stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if -stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[u] + stor6[idx] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                else:
                    if -stor6[idx] <= stor6[u]:
                        mem[0] = u
                        mem[32] = sha3(address(arg1), 9)
                        if u:
                            u = u + 1
                            v = v
                            continue 
                        else:
                            mem[0] = u
                            mem[32] = 6
                            if stor6[u] < 0:
                                if -stor6[idx] >= -stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[u] + stor6[idx] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                            else:
                                if -stor6[idx] <= stor6[u]:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    if -stor6[idx] - stor6[u] >= margin:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        u = u + 1
                                        v = v
                                        continue 
                    else:
                        if -stor6[idx] - stor6[u] >= margin:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] >= -stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                else:
                                    if -stor6[idx] <= stor6[u]:
                                        u = u + 1
                                        v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[idx] - stor6[u] >= margin:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
        if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
            if t:
                mem[0] = idx
                mem[32] = 6
                if stor6[idx] >= 0:
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if stor6[idx] + margin >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] + margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] - stor6[idx] - margin >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) - (stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                        else:
                            if stor6[idx] + margin <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if stor6[idx] + margin >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] - stor6[idx] - margin >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if stor6[idx] + margin <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if stor6[idx] + margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if stor6[idx] + margin - stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if stor6[idx] + margin >= -stor6[u]:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] - stor6[idx] - margin >= margin:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                        else:
                                            if stor6[idx] + margin <= stor6[u]:
                                                u = u + 1
                                                v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                if stor6[idx] + margin - stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + ((stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                    continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                        s = stor6[idx] + margin
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = stor6[idx] + margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = t
                    continue 
                if -stor6[idx] <= margin:
                    u = 0
                    v = 0
                    while u < numOptions:
                        if stor6[u] < 0:
                            if 0 >= -stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if 0 >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if 0 <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                        else:
                            if 0 <= stor6[u]:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if 0 >= -stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                                    else:
                                        if 0 <= stor6[u]:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            if -stor6[u] >= margin:
                                                u = u + 1
                                                v = v
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v
                                                continue 
                            else:
                                if -stor6[u] >= margin:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = sha3(address(arg1), 9)
                                    if u:
                                        u = u + 1
                                        v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                        continue 
                                    else:
                                        mem[0] = u
                                        mem[32] = 6
                                        if stor6[u] < 0:
                                            if 0 >= -stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                        else:
                                            if 0 <= stor6[u]:
                                                u = u + 1
                                                v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                continue 
                                            else:
                                                if -stor6[u] >= margin:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                                                else:
                                                    u = u + 1
                                                    v = v + (-1 * stor9[address(arg1)][u].field_0 * stor6[u] / 10^18)
                                                    continue 
                    if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                        s = 0
                        s = (stor9[address(arg1)].field_256 / 10^18) + v
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = 0
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    t = t
                    continue 
                mem[0] = idx
                mem[32] = 6
                u = 0
                v = 0
                while u < numOptions:
                    if stor6[u] < 0:
                        if -stor6[idx] - margin >= -stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] - margin >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[u] + stor6[idx] + margin >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[u] * stor9[address(arg1)][u].field_0) + (stor6[idx] * stor9[address(arg1)][u].field_0) + (margin * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                    else:
                        if -stor6[idx] - margin <= stor6[u]:
                            mem[0] = u
                            mem[32] = sha3(address(arg1), 9)
                            if u:
                                u = u + 1
                                v = v
                                continue 
                            else:
                                mem[0] = u
                                mem[32] = 6
                                if stor6[u] < 0:
                                    if -stor6[idx] - margin >= -stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[u] + stor6[idx] + margin >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                                else:
                                    if -stor6[idx] - margin <= stor6[u]:
                                        u = u + 1
                                        v = v
                                        continue 
                                    else:
                                        if -stor6[idx] - margin - stor6[u] >= margin:
                                            u = u + 1
                                            v = v
                                            continue 
                                        else:
                                            u = u + 1
                                            v = v
                                            continue 
                        else:
                            if -stor6[idx] - margin - stor6[u] >= margin:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + (stor9[address(arg1)][u].field_0 * margin / 10^18)
                                                continue 
                            else:
                                mem[0] = u
                                mem[32] = sha3(address(arg1), 9)
                                if u:
                                    u = u + 1
                                    v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                    continue 
                                else:
                                    mem[0] = u
                                    mem[32] = 6
                                    if stor6[u] < 0:
                                        if -stor6[idx] - margin >= -stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[u] + stor6[idx] + margin >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                    else:
                                        if -stor6[idx] - margin <= stor6[u]:
                                            u = u + 1
                                            v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                            continue 
                                        else:
                                            if -stor6[idx] - margin - stor6[u] >= margin:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                                            else:
                                                u = u + 1
                                                v = v + ((-1 * stor6[idx] * stor9[address(arg1)][u].field_0) - (margin * stor9[address(arg1)][u].field_0) - (stor6[u] * stor9[address(arg1)][u].field_0) / 10^18)
                                                continue 
                if (stor9[address(arg1)].field_256 / 10^18) + v >= s:
                    s = -stor6[idx] - margin
                    s = (stor9[address(arg1)].field_256 / 10^18) + v
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = -stor6[idx] - margin
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = t
                continue 
        mem[0] = idx
        mem[32] = 6
        if stor6[idx] >= 0:
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if stor6[idx] + margin >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if stor6[idx] + margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if stor6[idx] + margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if stor6[idx] + margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] - stor6[idx] - margin >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) - (stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                else:
                    if stor6[idx] + margin <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if stor6[idx] + margin >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] - stor6[idx] - margin >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if stor6[idx] + margin <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if stor6[idx] + margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if stor6[idx] + margin - stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if stor6[idx] + margin >= -stor6[s]:
                                        s = s + 1
                                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] - stor6[idx] - margin >= margin:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                else:
                                    if stor6[idx] + margin <= stor6[s]:
                                        s = s + 1
                                        t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        if stor6[idx] + margin - stor6[s] >= margin:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + ((stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                            continue 
            if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                s = stor6[idx] + margin
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = 1
                continue 
            s = stor6[idx] + margin
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            t = 1
            continue 
        if -stor6[idx] <= margin:
            s = 0
            t = 0
            while s < numOptions:
                if stor6[s] < 0:
                    if 0 >= -stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if 0 >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if 0 <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                else:
                    if 0 <= stor6[s]:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if 0 >= -stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                            else:
                                if 0 <= stor6[s]:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    if -stor6[s] >= margin:
                                        s = s + 1
                                        t = t
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t
                                        continue 
                    else:
                        if -stor6[s] >= margin:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                            continue 
                        else:
                            mem[0] = s
                            mem[32] = sha3(address(arg1), 9)
                            if s:
                                s = s + 1
                                t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                continue 
                            else:
                                mem[0] = s
                                mem[32] = 6
                                if stor6[s] < 0:
                                    if 0 >= -stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                else:
                                    if 0 <= stor6[s]:
                                        s = s + 1
                                        t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                        continue 
                                    else:
                                        if -stor6[s] >= margin:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
                                        else:
                                            s = s + 1
                                            t = t + (-1 * stor9[address(arg1)][s].field_0 * stor6[s] / 10^18)
                                            continue 
            if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
                s = 0
                s = (stor9[address(arg1)].field_256 / 10^18) + t
                idx = idx + 1
                s = (stor9[address(arg1)].field_256 / 10^18) + v
                t = 1
                continue 
            s = 0
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            t = 1
            continue 
        mem[0] = idx
        mem[32] = 6
        s = 0
        t = 0
        while s < numOptions:
            if stor6[s] < 0:
                if -stor6[idx] - margin >= -stor6[s]:
                    mem[0] = s
                    mem[32] = sha3(address(arg1), 9)
                    if s:
                        s = s + 1
                        t = t
                        continue 
                    else:
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if -stor6[idx] - margin >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[s] + stor6[idx] + margin >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                        else:
                            if -stor6[idx] - margin <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[idx] - margin - stor6[s] >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                else:
                    if -stor6[s] + stor6[idx] + margin >= margin:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                    else:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[s] * stor9[address(arg1)][s].field_0) + (stor6[idx] * stor9[address(arg1)][s].field_0) + (margin * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
            else:
                if -stor6[idx] - margin <= stor6[s]:
                    mem[0] = s
                    mem[32] = sha3(address(arg1), 9)
                    if s:
                        s = s + 1
                        t = t
                        continue 
                    else:
                        mem[0] = s
                        mem[32] = 6
                        if stor6[s] < 0:
                            if -stor6[idx] - margin >= -stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[s] + stor6[idx] + margin >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                        else:
                            if -stor6[idx] - margin <= stor6[s]:
                                s = s + 1
                                t = t
                                continue 
                            else:
                                if -stor6[idx] - margin - stor6[s] >= margin:
                                    s = s + 1
                                    t = t
                                    continue 
                                else:
                                    s = s + 1
                                    t = t
                                    continue 
                else:
                    if -stor6[idx] - margin - stor6[s] >= margin:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + (stor9[address(arg1)][s].field_0 * margin / 10^18)
                                        continue 
                    else:
                        mem[0] = s
                        mem[32] = sha3(address(arg1), 9)
                        if s:
                            s = s + 1
                            t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                            continue 
                        else:
                            mem[0] = s
                            mem[32] = 6
                            if stor6[s] < 0:
                                if -stor6[idx] - margin >= -stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[s] + stor6[idx] + margin >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                            else:
                                if -stor6[idx] - margin <= stor6[s]:
                                    s = s + 1
                                    t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                    continue 
                                else:
                                    if -stor6[idx] - margin - stor6[s] >= margin:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
                                    else:
                                        s = s + 1
                                        t = t + ((-1 * stor6[idx] * stor9[address(arg1)][s].field_0) - (margin * stor9[address(arg1)][s].field_0) - (stor6[s] * stor9[address(arg1)][s].field_0) / 10^18)
                                        continue 
        if (stor9[address(arg1)].field_256 / 10^18) + t >= (stor9[address(arg1)].field_256 / 10^18) + v:
            s = -stor6[idx] - margin
            s = (stor9[address(arg1)].field_256 / 10^18) + t
            idx = idx + 1
            s = (stor9[address(arg1)].field_256 / 10^18) + v
            t = 1
            continue 
        s = -stor6[idx] - margin
        s = (stor9[address(arg1)].field_256 / 10^18) + t
        idx = idx + 1
        s = (stor9[address(arg1)].field_256 / 10^18) + t
        t = 1
        continue 
    return account[stor18[address(arg1)]].field_256, account[stor18[address(arg1)]].field_256 + s
}



}
