contract main {




// =====================  Runtime code  =====================


const isInitialized = 1


address owner;
address newOwner;
uint256 etherPriceInUSD;
uint256 priceUpdateAt;
mapping of uint8 stor4;
array of struct tiers;
uint256 decimals;

function tiers(uint256 arg1) {
    require arg1 < tiers.length
    return tiers[arg1].field_0, 
           tiers[arg1].field_256,
           tiers[arg1].field_512,
           tiers[arg1].field_768,
           tiers[arg1].field_1024,
           tiers[arg1].field_1280,
           tiers[arg1].field_1536,
           tiers[arg1].field_1792,
           tiers[arg1].field_2048
}

function getSaleEndDate() {
    require 1 <= tiers.length
    require tiers.length - 1 < tiers.length
    return tiers[tiers.length].field_0
}

function decimals() {
    return decimals
}

function sub_6b094113(?) {
    return bool(stor4[arg1])
}

function etherPriceInUSD() {
    return etherPriceInUSD
}

function priceUpdateAt() {
    return priceUpdateAt
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function getDiscount(uint256 arg1) {
    if arg1 >= tiers.length:
        return 0
    return tiers[arg1].field_768
}

function getTokensInUSD(uint256 arg1) {
    if arg1 >= tiers.length:
        return 0
    return tiers[arg1].field_0
}

function setTrustedAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
}

function getUSDAmountByWeis(uint256 arg1) {
    if not arg1:
        return 0
    require etherPriceInUSD * arg1 / arg1 == etherPriceInUSD
    return (etherPriceInUSD * arg1 / 10^18)
}

function sub_6a9d6e20(?) {
    idx = 0
    while idx < tiers.length:
        mem[0] = 5
        if tiers[idx].field_256 <= arg1:
            idx = idx + 1
            continue 
        return idx
    return tiers.length
}

function getRemainingTokens(uint256 arg1) {
    idx = 0
    while idx < tiers.length:
        mem[0] = 5
        if tiers[idx].field_256 <= arg1:
            idx = idx + 1
            continue 
        require idx < tiers.length
        require arg1 <= tiers[idx].field_256
        return (tiers[idx].field_256 - arg1)
    return 0
}

function getMinEtherInvest(uint256 arg1) {
    if arg1 >= tiers.length:
        return 0
    if not tiers[arg1].field_1280:
        if etherPriceInUSD:
            return (0 / etherPriceInUSD)
    else:
        if 10^18 * tiers[arg1].field_1280 / tiers[arg1].field_1280 == 10^18:
            if etherPriceInUSD:
                return (10^18 * tiers[arg1].field_1280 / etherPriceInUSD)
    revert
}

function sub_de766d4f(?) {
    require arg1 < tiers.length
    if arg3 >= tiers[arg1].field_512:
        return 0
    require arg1 < tiers.length
    require arg2 + arg3 >= arg3
    if arg2 + arg3 > tiers[arg1].field_512:
        return 0
    require arg1 < tiers.length
    if not arg2:
        return 0
    require tiers[arg1].field_1024 * arg2 / arg2 == tiers[arg1].field_1024
    return (tiers[arg1].field_1024 * arg2 / 100)
}

function sub_11e6342d(?) {
    require msg.sender == owner
    require arg2 > 0
    require arg3 > 0
    require arg4 > 0
    require arg7 > 0
    require arg8 > 0
    require arg8 > arg7
    require arg9 > 0
    require arg10 > 0
    require arg1 < tiers.length
    tiers[arg1].field_0 = arg2
    tiers[arg1].field_256 = arg3
    tiers[arg1].field_512 = arg4
    tiers[arg1].field_768 = arg5
    tiers[arg1].field_1024 = arg6
    tiers[arg1].field_1280 = arg7
    tiers[arg1].field_1536 = arg8
    tiers[arg1].field_1792 = arg9
    tiers[arg1].field_2048 = arg10
}

function getArrayOfTiers() {
    mem[96 len 1440] = code.data[5354 len 1440]
    idx = 0
    s = 0
    while idx < tiers.length:
        require s < 45
        mem[(32 * s) + 96] = tiers[idx].field_0
        require idx < tiers.length
        require s + 1 < 45
        mem[(32 * s + 1) + 96] = tiers[idx].field_256
        require idx < tiers.length
        require s + 2 < 45
        mem[(32 * s + 2) + 96] = tiers[idx].field_512
        require idx < tiers.length
        require s + 3 < 45
        mem[(32 * s + 3) + 96] = tiers[idx].field_768
        require idx < tiers.length
        require s + 4 < 45
        mem[(32 * s + 4) + 96] = tiers[idx].field_1024
        require idx < tiers.length
        require s + 5 < 45
        mem[(32 * s + 5) + 96] = tiers[idx].field_1280
        require idx < tiers.length
        require s + 6 < 45
        mem[(32 * s + 6) + 96] = tiers[idx].field_1536
        require idx < tiers.length
        require s + 7 < 45
        mem[(32 * s + 7) + 96] = tiers[idx].field_1792
        require idx < tiers.length
        mem[0] = 5
        require s + 8 < 45
        mem[(32 * s + 8) + 96] = tiers[idx].field_2048
        idx = idx + 1
        s = s + 9
        continue 
    return memory
      from 96
       len 1440
}

function setEtherInUSD(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[0] = msg.sender
    mem[32] = 4
    require 1 == bool(stor4[msg.sender])
    require 6 <= arg1.length
    require arg1.length - 6 < arg1.length
    require 46 == mem[arg1.length + 122 len 1]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg1.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    require 100000 * s
    require 100000 * 10^18 / 100000 * s > 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg1.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    etherPriceInUSD = 100000 * s
    priceUpdateAt = block.timestamp
    emit NewPriceTicker(Array(len=arg1.length, data=arg1[all]));
}

function sub_e0e4fbfd(?) {
    if arg1:
        idx = 0
        while idx < tiers.length:
            mem[0] = 5
            if tiers[idx].field_256 <= arg2:
                idx = idx + 1
                continue 
            else:
                if idx >= tiers.length:
                    require arg1
                    require 10^18 * arg1 / arg1 == 10^18
                    revert
                else:
                    if arg1:
                        require 10^18 * arg1 / arg1 == 10^18
                        require tiers[idx].field_0
                        require idx < tiers.length
                        if arg3 >= tiers[idx].field_512:
                            require 10^18 * arg1 / tiers[idx].field_0 >= 10^18 * arg1 / tiers[idx].field_0
                            return 10^18 * arg1 / tiers[idx].field_0, 10^18 * arg1 / tiers[idx].field_0, 0
                        else:
                            require idx < tiers.length
                            require (10^18 * arg1 / tiers[idx].field_0) + arg3 >= arg3
                            if (10^18 * arg1 / tiers[idx].field_0) + arg3 > tiers[idx].field_512:
                                require 10^18 * arg1 / tiers[idx].field_0 >= 10^18 * arg1 / tiers[idx].field_0
                                return 10^18 * arg1 / tiers[idx].field_0, 10^18 * arg1 / tiers[idx].field_0, 0
                            else:
                                require idx < tiers.length
                                if 10^18 * arg1 / tiers[idx].field_0:
                                    require tiers[idx].field_1024 * 10^18 * arg1 / tiers[idx].field_0 / 10^18 * arg1 / tiers[idx].field_0 == tiers[idx].field_1024
                                    require (tiers[idx].field_1024 * 10^18 * arg1 / tiers[idx].field_0 / 100) + (10^18 * arg1 / tiers[idx].field_0) >= 10^18 * arg1 / tiers[idx].field_0
                                    return (tiers[idx].field_1024 * 10^18 * arg1 / tiers[idx].field_0 / 100) + (10^18 * arg1 / tiers[idx].field_0), 
                                           10^18 * arg1 / tiers[idx].field_0,
                                           tiers[idx].field_1024 * 10^18 * arg1 / tiers[idx].field_0 / 100
                                else:
                                    require 10^18 * arg1 / tiers[idx].field_0 >= 10^18 * arg1 / tiers[idx].field_0
                                    return 10^18 * arg1 / tiers[idx].field_0, 10^18 * arg1 / tiers[idx].field_0, 0
                    else:
                        require tiers[idx].field_0
                        require idx < tiers.length
                        if arg3 >= tiers[idx].field_512:
                            require 0 / tiers[idx].field_0 >= 0 / tiers[idx].field_0
                            return 0 / tiers[idx].field_0, 0 / tiers[idx].field_0, 0
                        else:
                            require idx < tiers.length
                            require (0 / tiers[idx].field_0) + arg3 >= arg3
                            if (0 / tiers[idx].field_0) + arg3 > tiers[idx].field_512:
                                require 0 / tiers[idx].field_0 >= 0 / tiers[idx].field_0
                                return 0 / tiers[idx].field_0, 0 / tiers[idx].field_0, 0
                            else:
                                require idx < tiers.length
                                if 0 / tiers[idx].field_0:
                                    require tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 0 / tiers[idx].field_0 == tiers[idx].field_1024
                                    require (tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100) + (0 / tiers[idx].field_0) >= 0 / tiers[idx].field_0
                                    return (tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100) + (0 / tiers[idx].field_0), 
                                           0 / tiers[idx].field_0,
                                           tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100
                                else:
                                    require 0 / tiers[idx].field_0 >= 0 / tiers[idx].field_0
                                    return 0 / tiers[idx].field_0, 0 / tiers[idx].field_0, 0
        if tiers.length >= tiers.length:
            require arg1
            require 10^18 * arg1 / arg1 == 10^18
            revert
        else:
            if arg1:
                require 10^18 * arg1 / arg1 == 10^18
                require tiers[tiers.length].field_0
                require tiers.length < tiers.length
                if arg3 >= tiers[tiers.length].field_512:
                    require 10^18 * arg1 / tiers[tiers.length].field_0 >= 10^18 * arg1 / tiers[tiers.length].field_0
                    return 10^18 * arg1 / tiers[tiers.length].field_0, 10^18 * arg1 / tiers[tiers.length].field_0, 0
                else:
                    require tiers.length < tiers.length
                    require (10^18 * arg1 / tiers[tiers.length].field_0) + arg3 >= arg3
                    if (10^18 * arg1 / tiers[tiers.length].field_0) + arg3 > tiers[tiers.length].field_512:
                        require 10^18 * arg1 / tiers[tiers.length].field_0 >= 10^18 * arg1 / tiers[tiers.length].field_0
                        return 10^18 * arg1 / tiers[tiers.length].field_0, 10^18 * arg1 / tiers[tiers.length].field_0, 0
                    else:
                        require tiers.length < tiers.length
                        if 10^18 * arg1 / tiers[tiers.length].field_0:
                            require tiers[tiers.length].field_1024 * 10^18 * arg1 / tiers[tiers.length].field_0 / 10^18 * arg1 / tiers[tiers.length].field_0 == tiers[tiers.length].field_1024
                            require (tiers[tiers.length].field_1024 * 10^18 * arg1 / tiers[tiers.length].field_0 / 100) + (10^18 * arg1 / tiers[tiers.length].field_0) >= 10^18 * arg1 / tiers[tiers.length].field_0
                            return (tiers[tiers.length].field_1024 * 10^18 * arg1 / tiers[tiers.length].field_0 / 100) + (10^18 * arg1 / tiers[tiers.length].field_0), 
                                   10^18 * arg1 / tiers[tiers.length].field_0,
                                   tiers[tiers.length].field_1024 * 10^18 * arg1 / tiers[tiers.length].field_0 / 100
                        else:
                            require 10^18 * arg1 / tiers[tiers.length].field_0 >= 10^18 * arg1 / tiers[tiers.length].field_0
                            return 10^18 * arg1 / tiers[tiers.length].field_0, 10^18 * arg1 / tiers[tiers.length].field_0, 0
            else:
                require tiers[tiers.length].field_0
                require tiers.length < tiers.length
                if arg3 >= tiers[tiers.length].field_512:
                    require 0 / tiers[tiers.length].field_0 >= 0 / tiers[tiers.length].field_0
                    return 0 / tiers[tiers.length].field_0, 0 / tiers[tiers.length].field_0, 0
                else:
                    require tiers.length < tiers.length
                    require (0 / tiers[tiers.length].field_0) + arg3 >= arg3
                    if (0 / tiers[tiers.length].field_0) + arg3 > tiers[tiers.length].field_512:
                        require 0 / tiers[tiers.length].field_0 >= 0 / tiers[tiers.length].field_0
                        return 0 / tiers[tiers.length].field_0, 0 / tiers[tiers.length].field_0, 0
                    else:
                        require tiers.length < tiers.length
                        if 0 / tiers[tiers.length].field_0:
                            require tiers[tiers.length].field_1024 * 0 / tiers[tiers.length].field_0 / 0 / tiers[tiers.length].field_0 == tiers[tiers.length].field_1024
                            require (tiers[tiers.length].field_1024 * 0 / tiers[tiers.length].field_0 / 100) + (0 / tiers[tiers.length].field_0) >= 0 / tiers[tiers.length].field_0
                            return (tiers[tiers.length].field_1024 * 0 / tiers[tiers.length].field_0 / 100) + (0 / tiers[tiers.length].field_0), 
                                   0 / tiers[tiers.length].field_0,
                                   tiers[tiers.length].field_1024 * 0 / tiers[tiers.length].field_0 / 100
                        else:
                            require 0 / tiers[tiers.length].field_0 >= 0 / tiers[tiers.length].field_0
                            return 0 / tiers[tiers.length].field_0, 0 / tiers[tiers.length].field_0, 0
    else:
        return 0
}

function sub_e7eee094(?) {
    idx = 0
    while idx < tiers.length:
        mem[0] = 5
        if tiers[idx].field_256 <= arg2:
            idx = idx + 1
            continue 
        if arg3:
            if idx != tiers.length:
                t = 0
                s = idx
                t = arg3
                while s < tiers.length:
                    require t + arg2 >= arg2
                    if t + arg2 <= tiers[s].field_256:
                        require s < tiers.length
                        if not t:
                            if s < tiers.length:
                                if arg1 >= tiers[s].field_512:
                                    return 0
                                if s < tiers.length:
                                    if t + arg1 >= arg1:
                                        if t + arg1 > tiers[s].field_512:
                                            return 0
                                        if s < tiers.length:
                                            if not t:
                                                return 0
                                            if tiers[s].field_1024 * t / t == tiers[s].field_1024:
                                                if tiers[s].field_1024 * t / 100 >= 0:
                                                    return 0, tiers[s].field_1024 * t / 100
                        else:
                            if tiers[s].field_0 * t / t == tiers[s].field_0:
                                if tiers[s].field_0 * t / 10^18 >= 0:
                                    if s < tiers.length:
                                        if arg1 >= tiers[s].field_512:
                                            return tiers[s].field_0 * t / 10^18, 0
                                        if s < tiers.length:
                                            if t + arg1 >= arg1:
                                                if t + arg1 > tiers[s].field_512:
                                                    return tiers[s].field_0 * t / 10^18, 0
                                                if s < tiers.length:
                                                    if not t:
                                                        return tiers[s].field_0 * t / 10^18, 0
                                                    if tiers[s].field_1024 * t / t == tiers[s].field_1024:
                                                        if tiers[s].field_1024 * t / 100 >= 0:
                                                            return tiers[s].field_0 * t / 10^18, tiers[s].field_1024 * t / 100
                        revert
                    require s < tiers.length
                    require arg2 <= tiers[s].field_256
                    require tiers[s].field_256 - arg2 <= t
                    require s < tiers.length
                    if not tiers[s].field_256 - arg2:
                        require s < tiers.length
                        mem[0] = 5
                        if arg1 >= tiers[s].field_512:
                            if t - tiers[s].field_256 + arg2:
                                t = tiers[s].field_256 - arg2
                                s = s + 1
                                t = t - tiers[s].field_256 + arg2
                                continue 
                        else:
                            require s < tiers.length
                            mem[0] = 5
                            require tiers[s].field_256 - arg2 + arg1 >= arg1
                            if tiers[s].field_256 - arg2 + arg1 > tiers[s].field_512:
                                if t - tiers[s].field_256 + arg2:
                                    t = tiers[s].field_256 - arg2
                                    s = s + 1
                                    t = t - tiers[s].field_256 + arg2
                                    continue 
                            else:
                                require s < tiers.length
                                mem[0] = 5
                                if not tiers[s].field_256 - arg2:
                                    if t - tiers[s].field_256 + arg2:
                                        t = tiers[s].field_256 - arg2
                                        s = s + 1
                                        t = t - tiers[s].field_256 + arg2
                                        continue 
                                else:
                                    require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / tiers[s].field_256 - arg2 == tiers[s].field_1024
                                    require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100 >= 0
                                    if t - tiers[s].field_256 + arg2:
                                        t = tiers[s].field_256 - arg2
                                        s = s + 1
                                        t = t - tiers[s].field_256 + arg2
                                        continue 
                                    if t - tiers[s].field_256 + arg2 <= 0:
                                        return 0, (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100
                    else:
                        require (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / tiers[s].field_256 - arg2 == tiers[s].field_0
                        require (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 >= 0
                        require s < tiers.length
                        mem[0] = 5
                        if arg1 >= tiers[s].field_512:
                            if t - tiers[s].field_256 + arg2:
                                t = tiers[s].field_256 - arg2
                                s = s + 1
                                t = t - tiers[s].field_256 + arg2
                                continue 
                            if t - tiers[s].field_256 + arg2 <= 0:
                                return (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18, 0
                        else:
                            require s < tiers.length
                            mem[0] = 5
                            require tiers[s].field_256 - arg2 + arg1 >= arg1
                            if tiers[s].field_256 - arg2 + arg1 > tiers[s].field_512:
                                if t - tiers[s].field_256 + arg2:
                                    t = tiers[s].field_256 - arg2
                                    s = s + 1
                                    t = t - tiers[s].field_256 + arg2
                                    continue 
                                if t - tiers[s].field_256 + arg2 <= 0:
                                    return (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18, 0
                            else:
                                require s < tiers.length
                                mem[0] = 5
                                if not tiers[s].field_256 - arg2:
                                    if t - tiers[s].field_256 + arg2:
                                        t = tiers[s].field_256 - arg2
                                        s = s + 1
                                        t = t - tiers[s].field_256 + arg2
                                        continue 
                                    if t - tiers[s].field_256 + arg2 <= 0:
                                        return (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18, 0
                                else:
                                    require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / tiers[s].field_256 - arg2 == tiers[s].field_1024
                                    require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100 >= 0
                                    if t - tiers[s].field_256 + arg2:
                                        t = tiers[s].field_256 - arg2
                                        s = s + 1
                                        t = t - tiers[s].field_256 + arg2
                                        continue 
                                    if t - tiers[s].field_256 + arg2 <= 0:
                                        return (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18, 
                                               (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100
                        ('gt', ('add', ('var', 2), ('mul', -1, ('field', 256, ('stor', ('array', ('mul', 9, ('var', 1)), ('name', 'tiers', 5))))), ('param', 'arg2')), 0)
                    return 0
                return 0
            else:
                return 0
        else:
            return 0
    if arg3:
        if tiers.length != tiers.length:
            s = 0
            idx = tiers.length
            s = arg3
            while idx < tiers.length:
                require s + arg2 >= arg2
                if s + arg2 <= tiers[idx].field_256:
                    require idx < tiers.length
                    if not s:
                        if idx < tiers.length:
                            if arg1 >= tiers[idx].field_512:
                                return 0
                            if idx < tiers.length:
                                if s + arg1 >= arg1:
                                    if s + arg1 > tiers[idx].field_512:
                                        return 0
                                    if idx < tiers.length:
                                        if not s:
                                            return 0
                                        if tiers[idx].field_1024 * s / s == tiers[idx].field_1024:
                                            if tiers[idx].field_1024 * s / 100 >= 0:
                                                return 0, tiers[idx].field_1024 * s / 100
                    else:
                        if tiers[idx].field_0 * s / s == tiers[idx].field_0:
                            if tiers[idx].field_0 * s / 10^18 >= 0:
                                if idx < tiers.length:
                                    if arg1 >= tiers[idx].field_512:
                                        return tiers[idx].field_0 * s / 10^18, 0
                                    if idx < tiers.length:
                                        if s + arg1 >= arg1:
                                            if s + arg1 > tiers[idx].field_512:
                                                return tiers[idx].field_0 * s / 10^18, 0
                                            if idx < tiers.length:
                                                if not s:
                                                    return tiers[idx].field_0 * s / 10^18, 0
                                                if tiers[idx].field_1024 * s / s == tiers[idx].field_1024:
                                                    if tiers[idx].field_1024 * s / 100 >= 0:
                                                        return tiers[idx].field_0 * s / 10^18, tiers[idx].field_1024 * s / 100
                    revert
                require idx < tiers.length
                require arg2 <= tiers[idx].field_256
                require tiers[idx].field_256 - arg2 <= s
                require idx < tiers.length
                if not tiers[idx].field_256 - arg2:
                    require idx < tiers.length
                    mem[0] = 5
                    if arg1 >= tiers[idx].field_512:
                        if s - tiers[idx].field_256 + arg2:
                            s = tiers[idx].field_256 - arg2
                            idx = idx + 1
                            s = s - tiers[idx].field_256 + arg2
                            continue 
                    else:
                        require idx < tiers.length
                        mem[0] = 5
                        require tiers[idx].field_256 - arg2 + arg1 >= arg1
                        if tiers[idx].field_256 - arg2 + arg1 > tiers[idx].field_512:
                            if s - tiers[idx].field_256 + arg2:
                                s = tiers[idx].field_256 - arg2
                                idx = idx + 1
                                s = s - tiers[idx].field_256 + arg2
                                continue 
                        else:
                            require idx < tiers.length
                            mem[0] = 5
                            if not tiers[idx].field_256 - arg2:
                                if s - tiers[idx].field_256 + arg2:
                                    s = tiers[idx].field_256 - arg2
                                    idx = idx + 1
                                    s = s - tiers[idx].field_256 + arg2
                                    continue 
                            else:
                                require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / tiers[idx].field_256 - arg2 == tiers[idx].field_1024
                                require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100 >= 0
                                if s - tiers[idx].field_256 + arg2:
                                    s = tiers[idx].field_256 - arg2
                                    idx = idx + 1
                                    s = s - tiers[idx].field_256 + arg2
                                    continue 
                                if s - tiers[idx].field_256 + arg2 <= 0:
                                    return 0, (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100
                else:
                    require (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / tiers[idx].field_256 - arg2 == tiers[idx].field_0
                    require (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 >= 0
                    require idx < tiers.length
                    mem[0] = 5
                    if arg1 >= tiers[idx].field_512:
                        if s - tiers[idx].field_256 + arg2:
                            s = tiers[idx].field_256 - arg2
                            idx = idx + 1
                            s = s - tiers[idx].field_256 + arg2
                            continue 
                        if s - tiers[idx].field_256 + arg2 <= 0:
                            return (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18, 0
                    else:
                        require idx < tiers.length
                        mem[0] = 5
                        require tiers[idx].field_256 - arg2 + arg1 >= arg1
                        if tiers[idx].field_256 - arg2 + arg1 > tiers[idx].field_512:
                            if s - tiers[idx].field_256 + arg2:
                                s = tiers[idx].field_256 - arg2
                                idx = idx + 1
                                s = s - tiers[idx].field_256 + arg2
                                continue 
                            if s - tiers[idx].field_256 + arg2 <= 0:
                                return (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18, 0
                        else:
                            require idx < tiers.length
                            mem[0] = 5
                            if not tiers[idx].field_256 - arg2:
                                if s - tiers[idx].field_256 + arg2:
                                    s = tiers[idx].field_256 - arg2
                                    idx = idx + 1
                                    s = s - tiers[idx].field_256 + arg2
                                    continue 
                                if s - tiers[idx].field_256 + arg2 <= 0:
                                    return (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18, 0
                            else:
                                require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / tiers[idx].field_256 - arg2 == tiers[idx].field_1024
                                require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100 >= 0
                                if s - tiers[idx].field_256 + arg2:
                                    s = tiers[idx].field_256 - arg2
                                    idx = idx + 1
                                    s = s - tiers[idx].field_256 + arg2
                                    continue 
                                if s - tiers[idx].field_256 + arg2 <= 0:
                                    return (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18, 
                                           (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100
                    ('gt', ('add', ('var', 1), ('mul', -1, ('field', 256, ('stor', ('array', ('mul', 9, ('var', 0)), ('name', 'tiers', 5))))), ('param', 'arg2')), 0)
                return 0
    return 0
}

function getWeis(uint256 arg1, uint256 arg2, uint256 arg3) {
    idx = 0
    while idx < tiers.length:
        mem[0] = 5
        if tiers[idx].field_256 <= arg2:
            idx = idx + 1
            continue 
        if arg3:
            if idx != tiers.length:
                t = 0
                s = idx
                t = arg3
                while s < tiers.length:
                    require t + arg2 >= arg2
                    if t + arg2 <= tiers[s].field_256:
                        if s < tiers.length:
                            if not t:
                                if s < tiers.length:
                                    if arg1 >= tiers[s].field_512:
                                        return 0
                                    if s < tiers.length:
                                        if t + arg1 >= arg1:
                                            if t + arg1 > tiers[s].field_512:
                                                return 0
                                            if s < tiers.length:
                                                if not t:
                                                    return 0
                                                if tiers[s].field_1024 * t / t == tiers[s].field_1024:
                                                    if tiers[s].field_1024 * t / 100 >= 0:
                                                        return 0
                            else:
                                if tiers[s].field_0 * t / t == tiers[s].field_0:
                                    if tiers[s].field_0 * t / 10^18 >= 0:
                                        if s < tiers.length:
                                            if arg1 >= tiers[s].field_512:
                                                if not tiers[s].field_0 * t / 10^18:
                                                    return 0
                                                if 10^18 * tiers[s].field_0 * t / 10^18 / tiers[s].field_0 * t / 10^18 == 10^18:
                                                    if etherPriceInUSD:
                                                        return 10^18 * tiers[s].field_0 * t / 10^18 / etherPriceInUSD, 0
                                            else:
                                                if s < tiers.length:
                                                    if t + arg1 >= arg1:
                                                        if t + arg1 > tiers[s].field_512:
                                                            if not tiers[s].field_0 * t / 10^18:
                                                                return 0
                                                            if 10^18 * tiers[s].field_0 * t / 10^18 / tiers[s].field_0 * t / 10^18 == 10^18:
                                                                if etherPriceInUSD:
                                                                    return 10^18 * tiers[s].field_0 * t / 10^18 / etherPriceInUSD, 0
                                                        else:
                                                            if s < tiers.length:
                                                                if not t:
                                                                    if not tiers[s].field_0 * t / 10^18:
                                                                        return 0
                                                                    if 10^18 * tiers[s].field_0 * t / 10^18 / tiers[s].field_0 * t / 10^18 == 10^18:
                                                                        if etherPriceInUSD:
                                                                            return 10^18 * tiers[s].field_0 * t / 10^18 / etherPriceInUSD, 0
                                                                else:
                                                                    if tiers[s].field_1024 * t / t == tiers[s].field_1024:
                                                                        if tiers[s].field_1024 * t / 100 >= 0:
                                                                            if not tiers[s].field_0 * t / 10^18:
                                                                                return 0
                                                                            if 10^18 * tiers[s].field_0 * t / 10^18 / tiers[s].field_0 * t / 10^18 == 10^18:
                                                                                if etherPriceInUSD:
                                                                                    return 10^18 * tiers[s].field_0 * t / 10^18 / etherPriceInUSD, tiers[s].field_1024 * t / 100
                    else:
                        if s < tiers.length:
                            if arg2 <= tiers[s].field_256:
                                if tiers[s].field_256 - arg2 <= t:
                                    if s < tiers.length:
                                        if not tiers[s].field_256 - arg2:
                                            require s < tiers.length
                                            mem[0] = 5
                                            if arg1 < tiers[s].field_512:
                                                require s < tiers.length
                                                mem[0] = 5
                                                require tiers[s].field_256 - arg2 + arg1 >= arg1
                                                if tiers[s].field_256 - arg2 + arg1 <= tiers[s].field_512:
                                                    require s < tiers.length
                                                    mem[0] = 5
                                                    if tiers[s].field_256 - arg2:
                                                        require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / tiers[s].field_256 - arg2 == tiers[s].field_1024
                                                        require (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100 >= 0
                                            if t - tiers[s].field_256 + arg2:
                                                t = tiers[s].field_256 - arg2
                                                s = s + 1
                                                t = t - tiers[s].field_256 + arg2
                                                continue 
                                            else:
                                                return 0
                                        if (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / tiers[s].field_256 - arg2 == tiers[s].field_0:
                                            if (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 >= 0:
                                                if s < tiers.length:
                                                    mem[0] = 5
                                                    if arg1 >= tiers[s].field_512:
                                                        if t - tiers[s].field_256 + arg2:
                                                            t = tiers[s].field_256 - arg2
                                                            s = s + 1
                                                            t = t - tiers[s].field_256 + arg2
                                                            continue 
                                                        if t - tiers[s].field_256 + arg2 > 0:
                                                            return 0
                                                        if not (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18:
                                                            return 0
                                                        if 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 == 10^18:
                                                            if etherPriceInUSD:
                                                                return 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / etherPriceInUSD, 0
                                                    else:
                                                        if s < tiers.length:
                                                            mem[0] = 5
                                                            if tiers[s].field_256 - arg2 + arg1 >= arg1:
                                                                if tiers[s].field_256 - arg2 + arg1 > tiers[s].field_512:
                                                                    if t - tiers[s].field_256 + arg2:
                                                                        t = tiers[s].field_256 - arg2
                                                                        s = s + 1
                                                                        t = t - tiers[s].field_256 + arg2
                                                                        continue 
                                                                    if t - tiers[s].field_256 + arg2 > 0:
                                                                        return 0
                                                                    if not (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18:
                                                                        return 0
                                                                    if 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 == 10^18:
                                                                        if etherPriceInUSD:
                                                                            return 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / etherPriceInUSD, 0
                                                                else:
                                                                    if s < tiers.length:
                                                                        mem[0] = 5
                                                                        if not tiers[s].field_256 - arg2:
                                                                            if t - tiers[s].field_256 + arg2:
                                                                                t = tiers[s].field_256 - arg2
                                                                                s = s + 1
                                                                                t = t - tiers[s].field_256 + arg2
                                                                                continue 
                                                                            if t - tiers[s].field_256 + arg2 > 0:
                                                                                return 0
                                                                            if not (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18:
                                                                                return 0
                                                                            if 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 == 10^18:
                                                                                if etherPriceInUSD:
                                                                                    return 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / etherPriceInUSD, 0
                                                                        else:
                                                                            if (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / tiers[s].field_256 - arg2 == tiers[s].field_1024:
                                                                                if (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100 >= 0:
                                                                                    if t - tiers[s].field_256 + arg2:
                                                                                        t = tiers[s].field_256 - arg2
                                                                                        s = s + 1
                                                                                        t = t - tiers[s].field_256 + arg2
                                                                                        continue 
                                                                                    if t - tiers[s].field_256 + arg2 > 0:
                                                                                        return 0
                                                                                    if not (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18:
                                                                                        return 0
                                                                                    if 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 == 10^18:
                                                                                        if etherPriceInUSD:
                                                                                            return 10^18 * (tiers[s].field_256 * tiers[s].field_0) - (arg2 * tiers[s].field_0) / 10^18 / etherPriceInUSD, 
                                                                                                   (tiers[s].field_256 * tiers[s].field_1024) - (arg2 * tiers[s].field_1024) / 100
                    revert
                return 0
            else:
                return 0
        else:
            return 0
    if arg3:
        if tiers.length != tiers.length:
            s = 0
            idx = tiers.length
            s = arg3
            while idx < tiers.length:
                require s + arg2 >= arg2
                if s + arg2 <= tiers[idx].field_256:
                    if idx < tiers.length:
                        if not s:
                            if idx < tiers.length:
                                if arg1 >= tiers[idx].field_512:
                                    return 0
                                if idx < tiers.length:
                                    if s + arg1 >= arg1:
                                        if s + arg1 > tiers[idx].field_512:
                                            return 0
                                        if idx < tiers.length:
                                            if not s:
                                                return 0
                                            if tiers[idx].field_1024 * s / s == tiers[idx].field_1024:
                                                if tiers[idx].field_1024 * s / 100 >= 0:
                                                    return 0
                        else:
                            if tiers[idx].field_0 * s / s == tiers[idx].field_0:
                                if tiers[idx].field_0 * s / 10^18 >= 0:
                                    if idx < tiers.length:
                                        if arg1 >= tiers[idx].field_512:
                                            if not tiers[idx].field_0 * s / 10^18:
                                                return 0
                                            if 10^18 * tiers[idx].field_0 * s / 10^18 / tiers[idx].field_0 * s / 10^18 == 10^18:
                                                if etherPriceInUSD:
                                                    return 10^18 * tiers[idx].field_0 * s / 10^18 / etherPriceInUSD, 0
                                        else:
                                            if idx < tiers.length:
                                                if s + arg1 >= arg1:
                                                    if s + arg1 > tiers[idx].field_512:
                                                        if not tiers[idx].field_0 * s / 10^18:
                                                            return 0
                                                        if 10^18 * tiers[idx].field_0 * s / 10^18 / tiers[idx].field_0 * s / 10^18 == 10^18:
                                                            if etherPriceInUSD:
                                                                return 10^18 * tiers[idx].field_0 * s / 10^18 / etherPriceInUSD, 0
                                                    else:
                                                        if idx < tiers.length:
                                                            if not s:
                                                                if not tiers[idx].field_0 * s / 10^18:
                                                                    return 0
                                                                if 10^18 * tiers[idx].field_0 * s / 10^18 / tiers[idx].field_0 * s / 10^18 == 10^18:
                                                                    if etherPriceInUSD:
                                                                        return 10^18 * tiers[idx].field_0 * s / 10^18 / etherPriceInUSD, 0
                                                            else:
                                                                if tiers[idx].field_1024 * s / s == tiers[idx].field_1024:
                                                                    if tiers[idx].field_1024 * s / 100 >= 0:
                                                                        if not tiers[idx].field_0 * s / 10^18:
                                                                            return 0
                                                                        if 10^18 * tiers[idx].field_0 * s / 10^18 / tiers[idx].field_0 * s / 10^18 == 10^18:
                                                                            if etherPriceInUSD:
                                                                                return 10^18 * tiers[idx].field_0 * s / 10^18 / etherPriceInUSD, tiers[idx].field_1024 * s / 100
                else:
                    if idx < tiers.length:
                        if arg2 <= tiers[idx].field_256:
                            if tiers[idx].field_256 - arg2 <= s:
                                if idx < tiers.length:
                                    if not tiers[idx].field_256 - arg2:
                                        require idx < tiers.length
                                        mem[0] = 5
                                        if arg1 < tiers[idx].field_512:
                                            require idx < tiers.length
                                            mem[0] = 5
                                            require tiers[idx].field_256 - arg2 + arg1 >= arg1
                                            if tiers[idx].field_256 - arg2 + arg1 <= tiers[idx].field_512:
                                                require idx < tiers.length
                                                mem[0] = 5
                                                if tiers[idx].field_256 - arg2:
                                                    require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / tiers[idx].field_256 - arg2 == tiers[idx].field_1024
                                                    require (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100 >= 0
                                        if s - tiers[idx].field_256 + arg2:
                                            s = tiers[idx].field_256 - arg2
                                            idx = idx + 1
                                            s = s - tiers[idx].field_256 + arg2
                                            continue 
                                        else:
                                            return 0
                                    if (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / tiers[idx].field_256 - arg2 == tiers[idx].field_0:
                                        if (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 >= 0:
                                            if idx < tiers.length:
                                                mem[0] = 5
                                                if arg1 >= tiers[idx].field_512:
                                                    if s - tiers[idx].field_256 + arg2:
                                                        s = tiers[idx].field_256 - arg2
                                                        idx = idx + 1
                                                        s = s - tiers[idx].field_256 + arg2
                                                        continue 
                                                    if s - tiers[idx].field_256 + arg2 > 0:
                                                        return 0
                                                    if not (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18:
                                                        return 0
                                                    if 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 == 10^18:
                                                        if etherPriceInUSD:
                                                            return 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / etherPriceInUSD, 0
                                                else:
                                                    if idx < tiers.length:
                                                        mem[0] = 5
                                                        if tiers[idx].field_256 - arg2 + arg1 >= arg1:
                                                            if tiers[idx].field_256 - arg2 + arg1 > tiers[idx].field_512:
                                                                if s - tiers[idx].field_256 + arg2:
                                                                    s = tiers[idx].field_256 - arg2
                                                                    idx = idx + 1
                                                                    s = s - tiers[idx].field_256 + arg2
                                                                    continue 
                                                                if s - tiers[idx].field_256 + arg2 > 0:
                                                                    return 0
                                                                if not (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18:
                                                                    return 0
                                                                if 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 == 10^18:
                                                                    if etherPriceInUSD:
                                                                        return 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / etherPriceInUSD, 0
                                                            else:
                                                                if idx < tiers.length:
                                                                    mem[0] = 5
                                                                    if not tiers[idx].field_256 - arg2:
                                                                        if s - tiers[idx].field_256 + arg2:
                                                                            s = tiers[idx].field_256 - arg2
                                                                            idx = idx + 1
                                                                            s = s - tiers[idx].field_256 + arg2
                                                                            continue 
                                                                        if s - tiers[idx].field_256 + arg2 > 0:
                                                                            return 0
                                                                        if not (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18:
                                                                            return 0
                                                                        if 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 == 10^18:
                                                                            if etherPriceInUSD:
                                                                                return 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / etherPriceInUSD, 0
                                                                    else:
                                                                        if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / tiers[idx].field_256 - arg2 == tiers[idx].field_1024:
                                                                            if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100 >= 0:
                                                                                if s - tiers[idx].field_256 + arg2:
                                                                                    s = tiers[idx].field_256 - arg2
                                                                                    idx = idx + 1
                                                                                    s = s - tiers[idx].field_256 + arg2
                                                                                    continue 
                                                                                if s - tiers[idx].field_256 + arg2 > 0:
                                                                                    return 0
                                                                                if not (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18:
                                                                                    return 0
                                                                                if 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 == 10^18:
                                                                                    if etherPriceInUSD:
                                                                                        return 10^18 * (tiers[idx].field_256 * tiers[idx].field_0) - (arg2 * tiers[idx].field_0) / 10^18 / etherPriceInUSD, 
                                                                                               (tiers[idx].field_256 * tiers[idx].field_1024) - (arg2 * tiers[idx].field_1024) / 100
                revert
    return 0
}

function getTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if not arg4:
        return 0
    idx = 0
    while idx < tiers.length:
        mem[0] = 5
        if tiers[idx].field_256 <= arg3:
            idx = idx + 1
            continue 
        require idx < tiers.length
        if arg4 < tiers[idx].field_1280:
            return 0
        require idx < tiers.length
        if arg4 > tiers[idx].field_1536:
            return 0
        t = 0
        t = 0
        s = idx
        t = 0
        while s < tiers.length:
            if not arg4:
                if tiers[s].field_0:
                    if s < tiers.length:
                        if (0 / tiers[s].field_0) + arg3 >= arg3:
                            if (0 / tiers[s].field_0) + arg3 <= tiers[s].field_256:
                                if (0 / tiers[s].field_0) + t >= t:
                                    if s < tiers.length:
                                        if arg5 >= tiers[s].field_512:
                                            if (0 / tiers[s].field_0) + t >= 0:
                                                return (0 / tiers[s].field_0) + t, (0 / tiers[s].field_0) + t, 0
                                        else:
                                            if s < tiers.length:
                                                if (0 / tiers[s].field_0) + arg5 >= arg5:
                                                    if (0 / tiers[s].field_0) + arg5 > tiers[s].field_512:
                                                        if (0 / tiers[s].field_0) + t >= 0:
                                                            return (0 / tiers[s].field_0) + t, (0 / tiers[s].field_0) + t, 0
                                                    else:
                                                        if s < tiers.length:
                                                            if not 0 / tiers[s].field_0:
                                                                if (0 / tiers[s].field_0) + t >= 0:
                                                                    return (0 / tiers[s].field_0) + t, (0 / tiers[s].field_0) + t, 0
                                                            else:
                                                                if tiers[s].field_1024 * 0 / tiers[s].field_0 / 0 / tiers[s].field_0 == tiers[s].field_1024:
                                                                    if tiers[s].field_1024 * 0 / tiers[s].field_0 / 100 >= 0:
                                                                        if tiers[s].field_1024 * 0 / tiers[s].field_0 / 100 >= 0:
                                                                            if (tiers[s].field_1024 * 0 / tiers[s].field_0 / 100) + (0 / tiers[s].field_0) + t >= 0:
                                                                                return (tiers[s].field_1024 * 0 / tiers[s].field_0 / 100) + (0 / tiers[s].field_0) + t, 
                                                                                       (0 / tiers[s].field_0) + t,
                                                                                       tiers[s].field_1024 * 0 / tiers[s].field_0 / 100
                            else:
                                if s < tiers.length:
                                    if arg3 <= tiers[s].field_256:
                                        if s < tiers.length:
                                            if not tiers[s].field_256 - arg3 / 10^18:
                                                if 0 <= arg4:
                                                    if tiers[s].field_256 - arg3 + t >= t:
                                                        if s < tiers.length:
                                                            mem[0] = 5
                                                            if arg5 >= tiers[s].field_512:
                                                                if arg4:
                                                                    t = tiers[s].field_256 - arg3
                                                                    t = 0 / tiers[s].field_0
                                                                    s = s + 1
                                                                    t = tiers[s].field_256 - arg3 + t
                                                                    continue 
                                                                if arg4 > 0:
                                                                    return 0
                                                                if tiers[s].field_256 - arg3 + t >= 0:
                                                                    return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                            else:
                                                                if s < tiers.length:
                                                                    mem[0] = 5
                                                                    if tiers[s].field_256 - arg3 + arg5 >= arg5:
                                                                        if tiers[s].field_256 - arg3 + arg5 > tiers[s].field_512:
                                                                            if arg4:
                                                                                t = tiers[s].field_256 - arg3
                                                                                t = 0 / tiers[s].field_0
                                                                                s = s + 1
                                                                                t = tiers[s].field_256 - arg3 + t
                                                                                continue 
                                                                            if arg4 > 0:
                                                                                return 0
                                                                            if tiers[s].field_256 - arg3 + t >= 0:
                                                                                return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                        else:
                                                                            if s < tiers.length:
                                                                                mem[0] = 5
                                                                                if not tiers[s].field_256 - arg3:
                                                                                    if arg4:
                                                                                        t = tiers[s].field_256 - arg3
                                                                                        t = 0 / tiers[s].field_0
                                                                                        s = s + 1
                                                                                        t = tiers[s].field_256 - arg3 + t
                                                                                        continue 
                                                                                    if arg4 > 0:
                                                                                        return 0
                                                                                    if tiers[s].field_256 - arg3 + t >= 0:
                                                                                        return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                                else:
                                                                                    if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / tiers[s].field_256 - arg3 == tiers[s].field_1024:
                                                                                        if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                            if arg4:
                                                                                                t = tiers[s].field_256 - arg3
                                                                                                t = 0 / tiers[s].field_0
                                                                                                s = s + 1
                                                                                                t = tiers[s].field_256 - arg3 + t
                                                                                                continue 
                                                                                            if arg4 > 0:
                                                                                                return 0
                                                                                            if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                if ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t >= 0:
                                                                                                    return ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t, 
                                                                                                           tiers[s].field_256 - arg3 + t,
                                                                                                           (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100
                                            else:
                                                if tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18 / tiers[s].field_256 - arg3 / 10^18 == tiers[s].field_0:
                                                    if tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18 <= arg4:
                                                        if tiers[s].field_256 - arg3 + t >= t:
                                                            if s < tiers.length:
                                                                mem[0] = 5
                                                                if arg5 >= tiers[s].field_512:
                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                        t = tiers[s].field_256 - arg3
                                                                        t = 0 / tiers[s].field_0
                                                                        s = s + 1
                                                                        t = tiers[s].field_256 - arg3 + t
                                                                        continue 
                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                        return 0
                                                                    if tiers[s].field_256 - arg3 + t >= 0:
                                                                        return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                else:
                                                                    if s < tiers.length:
                                                                        mem[0] = 5
                                                                        if tiers[s].field_256 - arg3 + arg5 >= arg5:
                                                                            if tiers[s].field_256 - arg3 + arg5 > tiers[s].field_512:
                                                                                if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                    t = tiers[s].field_256 - arg3
                                                                                    t = 0 / tiers[s].field_0
                                                                                    s = s + 1
                                                                                    t = tiers[s].field_256 - arg3 + t
                                                                                    continue 
                                                                                if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                    return 0
                                                                                if tiers[s].field_256 - arg3 + t >= 0:
                                                                                    return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                            else:
                                                                                if s < tiers.length:
                                                                                    mem[0] = 5
                                                                                    if not tiers[s].field_256 - arg3:
                                                                                        if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                            t = tiers[s].field_256 - arg3
                                                                                            t = 0 / tiers[s].field_0
                                                                                            s = s + 1
                                                                                            t = tiers[s].field_256 - arg3 + t
                                                                                            continue 
                                                                                        if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                            return 0
                                                                                        if tiers[s].field_256 - arg3 + t >= 0:
                                                                                            return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                                    else:
                                                                                        if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / tiers[s].field_256 - arg3 == tiers[s].field_1024:
                                                                                            if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                                    t = tiers[s].field_256 - arg3
                                                                                                    t = 0 / tiers[s].field_0
                                                                                                    s = s + 1
                                                                                                    t = tiers[s].field_256 - arg3 + t
                                                                                                    continue 
                                                                                                if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                                    return 0
                                                                                                if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                    if ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t >= 0:
                                                                                                        return ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t, 
                                                                                                               tiers[s].field_256 - arg3 + t,
                                                                                                               (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100
            else:
                if 10^18 * arg4 / arg4 == 10^18:
                    if tiers[s].field_0:
                        if s < tiers.length:
                            if (10^18 * arg4 / tiers[s].field_0) + arg3 >= arg3:
                                if (10^18 * arg4 / tiers[s].field_0) + arg3 <= tiers[s].field_256:
                                    if (10^18 * arg4 / tiers[s].field_0) + t >= t:
                                        if s < tiers.length:
                                            if arg5 >= tiers[s].field_512:
                                                if (10^18 * arg4 / tiers[s].field_0) + t >= 0:
                                                    return (10^18 * arg4 / tiers[s].field_0) + t, (10^18 * arg4 / tiers[s].field_0) + t, 0
                                            else:
                                                if s < tiers.length:
                                                    if (10^18 * arg4 / tiers[s].field_0) + arg5 >= arg5:
                                                        if (10^18 * arg4 / tiers[s].field_0) + arg5 > tiers[s].field_512:
                                                            if (10^18 * arg4 / tiers[s].field_0) + t >= 0:
                                                                return (10^18 * arg4 / tiers[s].field_0) + t, (10^18 * arg4 / tiers[s].field_0) + t, 0
                                                        else:
                                                            if s < tiers.length:
                                                                if not 10^18 * arg4 / tiers[s].field_0:
                                                                    if (10^18 * arg4 / tiers[s].field_0) + t >= 0:
                                                                        return (10^18 * arg4 / tiers[s].field_0) + t, (10^18 * arg4 / tiers[s].field_0) + t, 0
                                                                else:
                                                                    if tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 10^18 * arg4 / tiers[s].field_0 == tiers[s].field_1024:
                                                                        if tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 100 >= 0:
                                                                            if tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 100 >= 0:
                                                                                if (tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 100) + (10^18 * arg4 / tiers[s].field_0) + t >= 0:
                                                                                    return (tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 100) + (10^18 * arg4 / tiers[s].field_0) + t, 
                                                                                           (10^18 * arg4 / tiers[s].field_0) + t,
                                                                                           tiers[s].field_1024 * 10^18 * arg4 / tiers[s].field_0 / 100
                                else:
                                    if s < tiers.length:
                                        if arg3 <= tiers[s].field_256:
                                            if s < tiers.length:
                                                if not tiers[s].field_256 - arg3 / 10^18:
                                                    if 0 <= arg4:
                                                        if tiers[s].field_256 - arg3 + t >= t:
                                                            if s < tiers.length:
                                                                mem[0] = 5
                                                                if arg5 >= tiers[s].field_512:
                                                                    if arg4:
                                                                        t = tiers[s].field_256 - arg3
                                                                        t = 10^18 * arg4 / tiers[s].field_0
                                                                        s = s + 1
                                                                        t = tiers[s].field_256 - arg3 + t
                                                                        continue 
                                                                    if arg4 > 0:
                                                                        return 0
                                                                    if tiers[s].field_256 - arg3 + t >= 0:
                                                                        return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                else:
                                                                    if s < tiers.length:
                                                                        mem[0] = 5
                                                                        if tiers[s].field_256 - arg3 + arg5 >= arg5:
                                                                            if tiers[s].field_256 - arg3 + arg5 > tiers[s].field_512:
                                                                                if arg4:
                                                                                    t = tiers[s].field_256 - arg3
                                                                                    t = 10^18 * arg4 / tiers[s].field_0
                                                                                    s = s + 1
                                                                                    t = tiers[s].field_256 - arg3 + t
                                                                                    continue 
                                                                                if arg4 > 0:
                                                                                    return 0
                                                                                if tiers[s].field_256 - arg3 + t >= 0:
                                                                                    return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                            else:
                                                                                if s < tiers.length:
                                                                                    mem[0] = 5
                                                                                    if not tiers[s].field_256 - arg3:
                                                                                        if arg4:
                                                                                            t = tiers[s].field_256 - arg3
                                                                                            t = 10^18 * arg4 / tiers[s].field_0
                                                                                            s = s + 1
                                                                                            t = tiers[s].field_256 - arg3 + t
                                                                                            continue 
                                                                                        if arg4 > 0:
                                                                                            return 0
                                                                                        if tiers[s].field_256 - arg3 + t >= 0:
                                                                                            return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                                    else:
                                                                                        if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / tiers[s].field_256 - arg3 == tiers[s].field_1024:
                                                                                            if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                if arg4:
                                                                                                    t = tiers[s].field_256 - arg3
                                                                                                    t = 10^18 * arg4 / tiers[s].field_0
                                                                                                    s = s + 1
                                                                                                    t = tiers[s].field_256 - arg3 + t
                                                                                                    continue 
                                                                                                if arg4 > 0:
                                                                                                    return 0
                                                                                                if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                    if ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t >= 0:
                                                                                                        return ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t, 
                                                                                                               tiers[s].field_256 - arg3 + t,
                                                                                                               (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100
                                                else:
                                                    if tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18 / tiers[s].field_256 - arg3 / 10^18 == tiers[s].field_0:
                                                        if tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18 <= arg4:
                                                            if tiers[s].field_256 - arg3 + t >= t:
                                                                if s < tiers.length:
                                                                    mem[0] = 5
                                                                    if arg5 >= tiers[s].field_512:
                                                                        if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                            t = tiers[s].field_256 - arg3
                                                                            t = 10^18 * arg4 / tiers[s].field_0
                                                                            s = s + 1
                                                                            t = tiers[s].field_256 - arg3 + t
                                                                            continue 
                                                                        if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                            return 0
                                                                        if tiers[s].field_256 - arg3 + t >= 0:
                                                                            return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                    else:
                                                                        if s < tiers.length:
                                                                            mem[0] = 5
                                                                            if tiers[s].field_256 - arg3 + arg5 >= arg5:
                                                                                if tiers[s].field_256 - arg3 + arg5 > tiers[s].field_512:
                                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                        t = tiers[s].field_256 - arg3
                                                                                        t = 10^18 * arg4 / tiers[s].field_0
                                                                                        s = s + 1
                                                                                        t = tiers[s].field_256 - arg3 + t
                                                                                        continue 
                                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                        return 0
                                                                                    if tiers[s].field_256 - arg3 + t >= 0:
                                                                                        return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                                else:
                                                                                    if s < tiers.length:
                                                                                        mem[0] = 5
                                                                                        if not tiers[s].field_256 - arg3:
                                                                                            if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                                t = tiers[s].field_256 - arg3
                                                                                                t = 10^18 * arg4 / tiers[s].field_0
                                                                                                s = s + 1
                                                                                                t = tiers[s].field_256 - arg3 + t
                                                                                                continue 
                                                                                            if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                                return 0
                                                                                            if tiers[s].field_256 - arg3 + t >= 0:
                                                                                                return tiers[s].field_256 - arg3 + t, tiers[s].field_256 - arg3 + t, 0
                                                                                        else:
                                                                                            if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / tiers[s].field_256 - arg3 == tiers[s].field_1024:
                                                                                                if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18):
                                                                                                        t = tiers[s].field_256 - arg3
                                                                                                        t = 10^18 * arg4 / tiers[s].field_0
                                                                                                        s = s + 1
                                                                                                        t = tiers[s].field_256 - arg3 + t
                                                                                                        continue 
                                                                                                    if arg4 - (tiers[s].field_0 * tiers[s].field_256 - arg3 / 10^18) > 0:
                                                                                                        return 0
                                                                                                    if (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100 >= 0:
                                                                                                        if ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t >= 0:
                                                                                                            return ((tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100) + tiers[s].field_256 - arg3 + t, 
                                                                                                                   tiers[s].field_256 - arg3 + t,
                                                                                                                   (tiers[s].field_256 * tiers[s].field_1024) - (arg3 * tiers[s].field_1024) / 100
            revert
        if arg4 > 0:
            return 0
        if t >= t:
            if t >= 0:
                return t, t, 0
        revert
    if tiers.length < tiers.length:
        if arg4 < tiers[tiers.length].field_1280:
            return 0
        if tiers.length < tiers.length:
            if arg4 > tiers[tiers.length].field_1536:
                return 0
            s = 0
            s = 0
            idx = tiers.length
            s = 0
            while idx < tiers.length:
                if not arg4:
                    if tiers[idx].field_0:
                        if idx < tiers.length:
                            if (0 / tiers[idx].field_0) + arg3 >= arg3:
                                if (0 / tiers[idx].field_0) + arg3 <= tiers[idx].field_256:
                                    if (0 / tiers[idx].field_0) + s >= s:
                                        if idx < tiers.length:
                                            if arg5 >= tiers[idx].field_512:
                                                if (0 / tiers[idx].field_0) + s >= 0:
                                                    return (0 / tiers[idx].field_0) + s, (0 / tiers[idx].field_0) + s, 0
                                            else:
                                                if idx < tiers.length:
                                                    if (0 / tiers[idx].field_0) + arg5 >= arg5:
                                                        if (0 / tiers[idx].field_0) + arg5 > tiers[idx].field_512:
                                                            if (0 / tiers[idx].field_0) + s >= 0:
                                                                return (0 / tiers[idx].field_0) + s, (0 / tiers[idx].field_0) + s, 0
                                                        else:
                                                            if idx < tiers.length:
                                                                if not 0 / tiers[idx].field_0:
                                                                    if (0 / tiers[idx].field_0) + s >= 0:
                                                                        return (0 / tiers[idx].field_0) + s, (0 / tiers[idx].field_0) + s, 0
                                                                else:
                                                                    if tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 0 / tiers[idx].field_0 == tiers[idx].field_1024:
                                                                        if tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100 >= 0:
                                                                            if tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100 >= 0:
                                                                                if (tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100) + (0 / tiers[idx].field_0) + s >= 0:
                                                                                    return (tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100) + (0 / tiers[idx].field_0) + s, 
                                                                                           (0 / tiers[idx].field_0) + s,
                                                                                           tiers[idx].field_1024 * 0 / tiers[idx].field_0 / 100
                                else:
                                    if idx < tiers.length:
                                        if arg3 <= tiers[idx].field_256:
                                            if idx < tiers.length:
                                                if not tiers[idx].field_256 - arg3 / 10^18:
                                                    if 0 <= arg4:
                                                        if tiers[idx].field_256 - arg3 + s >= s:
                                                            if idx < tiers.length:
                                                                mem[0] = 5
                                                                if arg5 >= tiers[idx].field_512:
                                                                    if arg4:
                                                                        s = tiers[idx].field_256 - arg3
                                                                        s = 0 / tiers[idx].field_0
                                                                        idx = idx + 1
                                                                        s = tiers[idx].field_256 - arg3 + s
                                                                        continue 
                                                                    if arg4 > 0:
                                                                        return 0
                                                                    if tiers[idx].field_256 - arg3 + s >= 0:
                                                                        return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                else:
                                                                    if idx < tiers.length:
                                                                        mem[0] = 5
                                                                        if tiers[idx].field_256 - arg3 + arg5 >= arg5:
                                                                            if tiers[idx].field_256 - arg3 + arg5 > tiers[idx].field_512:
                                                                                if arg4:
                                                                                    s = tiers[idx].field_256 - arg3
                                                                                    s = 0 / tiers[idx].field_0
                                                                                    idx = idx + 1
                                                                                    s = tiers[idx].field_256 - arg3 + s
                                                                                    continue 
                                                                                if arg4 > 0:
                                                                                    return 0
                                                                                if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                    return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                            else:
                                                                                if idx < tiers.length:
                                                                                    mem[0] = 5
                                                                                    if not tiers[idx].field_256 - arg3:
                                                                                        if arg4:
                                                                                            s = tiers[idx].field_256 - arg3
                                                                                            s = 0 / tiers[idx].field_0
                                                                                            idx = idx + 1
                                                                                            s = tiers[idx].field_256 - arg3 + s
                                                                                            continue 
                                                                                        if arg4 > 0:
                                                                                            return 0
                                                                                        if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                            return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                    else:
                                                                                        if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / tiers[idx].field_256 - arg3 == tiers[idx].field_1024:
                                                                                            if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                if arg4:
                                                                                                    s = tiers[idx].field_256 - arg3
                                                                                                    s = 0 / tiers[idx].field_0
                                                                                                    idx = idx + 1
                                                                                                    s = tiers[idx].field_256 - arg3 + s
                                                                                                    continue 
                                                                                                if arg4 > 0:
                                                                                                    return 0
                                                                                                if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                    if ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                        return ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s, 
                                                                                                               tiers[idx].field_256 - arg3 + s,
                                                                                                               (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100
                                                else:
                                                    if tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18 / tiers[idx].field_256 - arg3 / 10^18 == tiers[idx].field_0:
                                                        if tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18 <= arg4:
                                                            if tiers[idx].field_256 - arg3 + s >= s:
                                                                if idx < tiers.length:
                                                                    mem[0] = 5
                                                                    if arg5 >= tiers[idx].field_512:
                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                            s = tiers[idx].field_256 - arg3
                                                                            s = 0 / tiers[idx].field_0
                                                                            idx = idx + 1
                                                                            s = tiers[idx].field_256 - arg3 + s
                                                                            continue 
                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                            return 0
                                                                        if tiers[idx].field_256 - arg3 + s >= 0:
                                                                            return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                    else:
                                                                        if idx < tiers.length:
                                                                            mem[0] = 5
                                                                            if tiers[idx].field_256 - arg3 + arg5 >= arg5:
                                                                                if tiers[idx].field_256 - arg3 + arg5 > tiers[idx].field_512:
                                                                                    if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                        s = tiers[idx].field_256 - arg3
                                                                                        s = 0 / tiers[idx].field_0
                                                                                        idx = idx + 1
                                                                                        s = tiers[idx].field_256 - arg3 + s
                                                                                        continue 
                                                                                    if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                        return 0
                                                                                    if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                        return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                else:
                                                                                    if idx < tiers.length:
                                                                                        mem[0] = 5
                                                                                        if not tiers[idx].field_256 - arg3:
                                                                                            if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                                s = tiers[idx].field_256 - arg3
                                                                                                s = 0 / tiers[idx].field_0
                                                                                                idx = idx + 1
                                                                                                s = tiers[idx].field_256 - arg3 + s
                                                                                                continue 
                                                                                            if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                                return 0
                                                                                            if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                        else:
                                                                                            if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / tiers[idx].field_256 - arg3 == tiers[idx].field_1024:
                                                                                                if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                    if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                                        s = tiers[idx].field_256 - arg3
                                                                                                        s = 0 / tiers[idx].field_0
                                                                                                        idx = idx + 1
                                                                                                        s = tiers[idx].field_256 - arg3 + s
                                                                                                        continue 
                                                                                                    if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                                        return 0
                                                                                                    if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                        if ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                            return ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s, 
                                                                                                                   tiers[idx].field_256 - arg3 + s,
                                                                                                                   (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100
                else:
                    if 10^18 * arg4 / arg4 == 10^18:
                        if tiers[idx].field_0:
                            if idx < tiers.length:
                                if (10^18 * arg4 / tiers[idx].field_0) + arg3 >= arg3:
                                    if (10^18 * arg4 / tiers[idx].field_0) + arg3 <= tiers[idx].field_256:
                                        if (10^18 * arg4 / tiers[idx].field_0) + s >= s:
                                            if idx < tiers.length:
                                                if arg5 >= tiers[idx].field_512:
                                                    if (10^18 * arg4 / tiers[idx].field_0) + s >= 0:
                                                        return (10^18 * arg4 / tiers[idx].field_0) + s, (10^18 * arg4 / tiers[idx].field_0) + s, 0
                                                else:
                                                    if idx < tiers.length:
                                                        if (10^18 * arg4 / tiers[idx].field_0) + arg5 >= arg5:
                                                            if (10^18 * arg4 / tiers[idx].field_0) + arg5 > tiers[idx].field_512:
                                                                if (10^18 * arg4 / tiers[idx].field_0) + s >= 0:
                                                                    return (10^18 * arg4 / tiers[idx].field_0) + s, (10^18 * arg4 / tiers[idx].field_0) + s, 0
                                                            else:
                                                                if idx < tiers.length:
                                                                    if not 10^18 * arg4 / tiers[idx].field_0:
                                                                        if (10^18 * arg4 / tiers[idx].field_0) + s >= 0:
                                                                            return (10^18 * arg4 / tiers[idx].field_0) + s, (10^18 * arg4 / tiers[idx].field_0) + s, 0
                                                                    else:
                                                                        if tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 10^18 * arg4 / tiers[idx].field_0 == tiers[idx].field_1024:
                                                                            if tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 100 >= 0:
                                                                                if tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 100 >= 0:
                                                                                    if (tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 100) + (10^18 * arg4 / tiers[idx].field_0) + s >= 0:
                                                                                        return (tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 100) + (10^18 * arg4 / tiers[idx].field_0) + s, 
                                                                                               (10^18 * arg4 / tiers[idx].field_0) + s,
                                                                                               tiers[idx].field_1024 * 10^18 * arg4 / tiers[idx].field_0 / 100
                                    else:
                                        if idx < tiers.length:
                                            if arg3 <= tiers[idx].field_256:
                                                if idx < tiers.length:
                                                    if not tiers[idx].field_256 - arg3 / 10^18:
                                                        if 0 <= arg4:
                                                            if tiers[idx].field_256 - arg3 + s >= s:
                                                                if idx < tiers.length:
                                                                    mem[0] = 5
                                                                    if arg5 >= tiers[idx].field_512:
                                                                        if arg4:
                                                                            s = tiers[idx].field_256 - arg3
                                                                            s = 10^18 * arg4 / tiers[idx].field_0
                                                                            idx = idx + 1
                                                                            s = tiers[idx].field_256 - arg3 + s
                                                                            continue 
                                                                        if arg4 > 0:
                                                                            return 0
                                                                        if tiers[idx].field_256 - arg3 + s >= 0:
                                                                            return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                    else:
                                                                        if idx < tiers.length:
                                                                            mem[0] = 5
                                                                            if tiers[idx].field_256 - arg3 + arg5 >= arg5:
                                                                                if tiers[idx].field_256 - arg3 + arg5 > tiers[idx].field_512:
                                                                                    if arg4:
                                                                                        s = tiers[idx].field_256 - arg3
                                                                                        s = 10^18 * arg4 / tiers[idx].field_0
                                                                                        idx = idx + 1
                                                                                        s = tiers[idx].field_256 - arg3 + s
                                                                                        continue 
                                                                                    if arg4 > 0:
                                                                                        return 0
                                                                                    if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                        return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                else:
                                                                                    if idx < tiers.length:
                                                                                        mem[0] = 5
                                                                                        if not tiers[idx].field_256 - arg3:
                                                                                            if arg4:
                                                                                                s = tiers[idx].field_256 - arg3
                                                                                                s = 10^18 * arg4 / tiers[idx].field_0
                                                                                                idx = idx + 1
                                                                                                s = tiers[idx].field_256 - arg3 + s
                                                                                                continue 
                                                                                            if arg4 > 0:
                                                                                                return 0
                                                                                            if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                        else:
                                                                                            if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / tiers[idx].field_256 - arg3 == tiers[idx].field_1024:
                                                                                                if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                    if arg4:
                                                                                                        s = tiers[idx].field_256 - arg3
                                                                                                        s = 10^18 * arg4 / tiers[idx].field_0
                                                                                                        idx = idx + 1
                                                                                                        s = tiers[idx].field_256 - arg3 + s
                                                                                                        continue 
                                                                                                    if arg4 > 0:
                                                                                                        return 0
                                                                                                    if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                        if ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                            return ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s, 
                                                                                                                   tiers[idx].field_256 - arg3 + s,
                                                                                                                   (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100
                                                    else:
                                                        if tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18 / tiers[idx].field_256 - arg3 / 10^18 == tiers[idx].field_0:
                                                            if tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18 <= arg4:
                                                                if tiers[idx].field_256 - arg3 + s >= s:
                                                                    if idx < tiers.length:
                                                                        mem[0] = 5
                                                                        if arg5 >= tiers[idx].field_512:
                                                                            if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                s = tiers[idx].field_256 - arg3
                                                                                s = 10^18 * arg4 / tiers[idx].field_0
                                                                                idx = idx + 1
                                                                                s = tiers[idx].field_256 - arg3 + s
                                                                                continue 
                                                                            if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                return 0
                                                                            if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                        else:
                                                                            if idx < tiers.length:
                                                                                mem[0] = 5
                                                                                if tiers[idx].field_256 - arg3 + arg5 >= arg5:
                                                                                    if tiers[idx].field_256 - arg3 + arg5 > tiers[idx].field_512:
                                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                            s = tiers[idx].field_256 - arg3
                                                                                            s = 10^18 * arg4 / tiers[idx].field_0
                                                                                            idx = idx + 1
                                                                                            s = tiers[idx].field_256 - arg3 + s
                                                                                            continue 
                                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                            return 0
                                                                                        if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                            return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                    else:
                                                                                        if idx < tiers.length:
                                                                                            mem[0] = 5
                                                                                            if not tiers[idx].field_256 - arg3:
                                                                                                if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                                    s = tiers[idx].field_256 - arg3
                                                                                                    s = 10^18 * arg4 / tiers[idx].field_0
                                                                                                    idx = idx + 1
                                                                                                    s = tiers[idx].field_256 - arg3 + s
                                                                                                    continue 
                                                                                                if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                                    return 0
                                                                                                if tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                    return tiers[idx].field_256 - arg3 + s, tiers[idx].field_256 - arg3 + s, 0
                                                                                            else:
                                                                                                if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / tiers[idx].field_256 - arg3 == tiers[idx].field_1024:
                                                                                                    if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18):
                                                                                                            s = tiers[idx].field_256 - arg3
                                                                                                            s = 10^18 * arg4 / tiers[idx].field_0
                                                                                                            idx = idx + 1
                                                                                                            s = tiers[idx].field_256 - arg3 + s
                                                                                                            continue 
                                                                                                        if arg4 - (tiers[idx].field_0 * tiers[idx].field_256 - arg3 / 10^18) > 0:
                                                                                                            return 0
                                                                                                        if (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100 >= 0:
                                                                                                            if ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s >= 0:
                                                                                                                return ((tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100) + tiers[idx].field_256 - arg3 + s, 
                                                                                                                       tiers[idx].field_256 - arg3 + s,
                                                                                                                       (tiers[idx].field_256 * tiers[idx].field_1024) - (arg3 * tiers[idx].field_1024) / 100
                revert
            if arg4 > 0:
                return 0
            if s >= s:
                if s >= 0:
                    return s, s, 0
    revert
}



}
