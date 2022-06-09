contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 currentPrice;
uint8 stor3;
uint256 sub_ab3597f4;
uint256 sub_92fd373a;
uint8 stor6;
mapping of uint256 sub_54ed490d;
uint256 sub_79213465;
mapping of uint256 sub_0f592306;
uint256 sub_ba2c337c;
mapping of address stor11;
mapping of uint256 sub_fd6a1a94;

function sub_0f592306(?) {
    return sub_0f592306[arg1]
}

function isActive() {
    return bool(stor3)
}

function sub_24352a10(?) {
    return sub_24352a10[address(arg1)].field_256
}

function sub_38d8d345(?) {
    require arg2 < sub_24352a10[address(arg1)].field_512
    return stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_24352a10', 12))) + arg2].field_0
}

function sub_54ed490d(?) {
    return sub_54ed490d[address(arg1)]
}

function sub_60546016(?) {
    return sub_24352a10[address(arg1)].field_0
}

function sub_79213465(?) {
    return sub_79213465
}

function owner() {
    return owner
}

function sub_92fd373a(?) {
    return sub_92fd373a
}

function currentPrice() {
    return currentPrice
}

function sub_ab3597f4(?) {
    return sub_ab3597f4
}

function sub_ba2c337c(?) {
    return sub_ba2c337c
}

function sub_d379a5b4(?) {
    return bool(stor6)
}

function sub_fd6a1a94(?) {
    return sub_fd6a1a94[address(arg1)]
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_a4bf754e(?) {
    return (sub_fd6a1a94[address(arg1)] > 0)
}

function sub_1f2c4798(?) {
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function sub_bfe22a01(?) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dcb9aab9(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Referral bonus depth too high.'
    if arg1 > 10:
        revert with 0, 'Referral bonus depth too high.'
    sub_79213465 = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price has to be greater than zero.'
    currentPrice = arg1
    emit 0xbce4e363: arg1
}

function sub_8a9df47f(?) {
    if not currentPrice / 100:
        require 0 <= currentPrice
        return currentPrice
    require currentPrice / 100
    require currentPrice / 100 * sub_ba2c337c / currentPrice / 100 == sub_ba2c337c
    require currentPrice / 100 * sub_ba2c337c <= currentPrice
    return (currentPrice - (currentPrice / 100 * sub_ba2c337c))
}

function sub_68c45a8d(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentage has to be between 0 and 20.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentage has to be between 0 and 20.'
    sub_ba2c337c = arg1
}

function sub_0ebd7fdd(?) {
    require msg.sender == owner
    if arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentage has to be between 0 and 20.'
    if arg2 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentage has to be between 0 and 20.'
    if arg1 < 0:
        revert with 0, 'Invalid depth level'
    if arg1 >= sub_79213465:
        revert with 0, 'Invalid depth level'
    sub_0f592306[arg1] = arg2
}

function withdrawReferralBonus() {
    stor1++
    if sub_54ed490d[address(msg.sender)] <= 0:
        require stor1 == stor1
        return 1
    sub_54ed490d[address(msg.sender)] = 0
    require sub_54ed490d[address(msg.sender)] <= sub_ab3597f4
    sub_ab3597f4 -= sub_54ed490d[address(msg.sender)]
    call msg.sender with:
       value sub_54ed490d[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        require stor1 == stor1
        return 1
    require sub_ab3597f4 + sub_54ed490d[address(msg.sender)] >= sub_ab3597f4
    sub_ab3597f4 += sub_54ed490d[address(msg.sender)]
    require stor1 == stor1
    return 0
}

function sub_247d55a4(?) {
    if not sub_24352a10[address(arg1)].field_512:
        mem[(32 * sub_24352a10[address(arg1)].field_512) + 128] = 32
        mem[(32 * sub_24352a10[address(arg1)].field_512) + 160] = sub_24352a10[address(arg1)].field_512
        mem[(32 * sub_24352a10[address(arg1)].field_512) + 192 len floor32(sub_24352a10[address(arg1)].field_512)] = mem[128 len floor32(sub_24352a10[address(arg1)].field_512)]
        return memory
          from (32 * sub_24352a10[address(arg1)].field_512) + 128
           len (96 * sub_24352a10[address(arg1)].field_512) + 64
    mem[128] = sub_24352a10[address(arg1)][2].field_0
    idx = 128
    s = 0
    while (32 * sub_24352a10[address(arg1)].field_512) + 96 > idx:
        mem[idx + 32] = sub_24352a10[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_24352a10[address(arg1)].field_512) + 192 len floor32(sub_24352a10[address(arg1)].field_512)] = mem[128 len floor32(sub_24352a10[address(arg1)].field_512)]
    return Array(len=sub_24352a10[address(arg1)].field_512, data=mem[128 len floor32(sub_24352a10[address(arg1)].field_512)], mem[(32 * sub_24352a10[address(arg1)].field_512) + floor32(sub_24352a10[address(arg1)].field_512) + 192 len (32 * sub_24352a10[address(arg1)].field_512) - floor32(sub_24352a10[address(arg1)].field_512)]), 
}

function sub_b330445e(?) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1++
    if not stor3:
        revert with 0, 'Buying is currently deactivated.'
    if currentPrice <= 0:
        revert with 0, 'There was no MN price set so far.'
    if msg.value < currentPrice:
        revert with 0, 'Sent amount of ETH was too low.'
    if arg1.length < 30:
        revert with 0, 'Coins target address invalid'
    if arg1.length > 42:
        revert with 0, 'Coins target address invalid'
    require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
    sub_fd6a1a94[address(msg.sender)]++
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xde5f884b: msg.sender, currentPrice, 128, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit 0xde5f884b: msg.sender, currentPrice, 128, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 288 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    require stor1 == stor1
}

function sub_b7e04c37(?) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    stor1++
    if not stor3:
        revert with 0, 'Buying is currently deactivated.'
    if currentPrice <= 0:
        revert with 0, 'There was no MN price set so far.'
    if not stor6:
        if msg.value < currentPrice:
            revert with 0, 'Sent amount of ETH was too low.'
        if arg1.length < 30:
            revert with 0, 'Coins target address invalid'
        if arg1.length > 42:
            revert with 0, 'Coins target address invalid'
        if stor6:
            if sub_fd6a1a94[address(arg2)] > 0:
                if msg.sender == arg2:
                    revert with 0, 'You can't be your own referral.'
                mem[0] = stor11[address(msg.sender)]
                mem[32] = 12
                if not sub_24352a10[stor11[address(msg.sender)]].field_0:
                    require sub_24352a10[address(arg2)].field_0 + 1 >= sub_24352a10[address(arg2)].field_0
                    sub_24352a10[address(arg2)].field_0++
                    sub_24352a10[address(arg2)].field_512++
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_24352a10', 12))) + sub_24352a10[address(arg2)].field_512].field_0 = msg.sender
                    mem[0] = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)] = arg2
                idx = 0
                s = arg2
                while idx < sub_79213465:
                    if sub_fd6a1a94[address(s)] <= 0:
                        if 0 >= currentPrice:
                            revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                        require sub_ab3597f4 >= sub_ab3597f4
                        require sub_92fd373a >= sub_92fd373a
                        require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
                        sub_fd6a1a94[address(msg.sender)]++
                        mem[ceil32(arg1.length) + 128] = msg.sender
                        idx = 0
                        while idx < arg1.length:
                            mem[ceil32(arg1.length) + idx + 288] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        emit 0xde5f884b: msg.sender, currentPrice, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length]), bool(stor6)
                        require stor1 == stor1
                    if msg.sender == address(s):
                        revert with 0, 'Invalid referral structure (you can't be in your own tree)'
                    if not currentPrice / 100:
                        require sub_54ed490d[address(s)] >= sub_54ed490d[address(s)]
                        require sub_24352a10[address(s)].field_256 >= sub_24352a10[address(s)].field_256
                    else:
                        require currentPrice / 100
                        require currentPrice / 100 * sub_0f592306[idx] / currentPrice / 100 == sub_0f592306[idx]
                        require sub_54ed490d[address(s)] + (currentPrice / 100 * sub_0f592306[idx]) >= sub_54ed490d[address(s)]
                        sub_54ed490d[address(s)] += currentPrice / 100 * sub_0f592306[idx]
                        require sub_24352a10[address(s)].field_256 + (currentPrice / 100 * sub_0f592306[idx]) >= sub_24352a10[address(s)].field_256
                        sub_24352a10[address(s)].field_256 += currentPrice / 100 * sub_0f592306[idx]
                        require currentPrice / 100 * sub_0f592306[idx] >= 0
                    mem[0] = address(s)
                    mem[32] = 11
                    idx = idx + 1
                    s = stor11[address(s)]
                    continue 
                if 0 >= currentPrice:
                    revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                require sub_ab3597f4 >= sub_ab3597f4
                require sub_92fd373a >= sub_92fd373a
    else:
        if sub_fd6a1a94[address(arg2)] <= 0:
            if msg.value < currentPrice:
                revert with 0, 'Sent amount of ETH was too low.'
            if arg1.length < 30:
                revert with 0, 'Coins target address invalid'
            if arg1.length > 42:
                revert with 0, 'Coins target address invalid'
            if stor6:
                if sub_fd6a1a94[address(arg2)] > 0:
                    if msg.sender == arg2:
                        revert with 0, 'You can't be your own referral.'
                    mem[0] = stor11[address(msg.sender)]
                    mem[32] = 12
                    if not sub_24352a10[stor11[address(msg.sender)]].field_0:
                        require sub_24352a10[address(arg2)].field_0 + 1 >= sub_24352a10[address(arg2)].field_0
                        sub_24352a10[address(arg2)].field_0++
                        sub_24352a10[address(arg2)].field_512++
                        stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_24352a10', 12))) + sub_24352a10[address(arg2)].field_512].field_0 = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 11
                        stor11[address(msg.sender)] = arg2
                    idx = 0
                    s = arg2
                    while idx < sub_79213465:
                        if sub_fd6a1a94[address(s)] <= 0:
                            if 0 >= currentPrice:
                                revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                            require sub_ab3597f4 >= sub_ab3597f4
                            require sub_92fd373a >= sub_92fd373a
                            require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
                            sub_fd6a1a94[address(msg.sender)]++
                            mem[ceil32(arg1.length) + 128] = msg.sender
                            idx = 0
                            while idx < arg1.length:
                                mem[ceil32(arg1.length) + idx + 288] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            emit 0xde5f884b: msg.sender, currentPrice, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length]), bool(stor6)
                            require stor1 == stor1
                        if msg.sender == address(s):
                            revert with 0, 'Invalid referral structure (you can't be in your own tree)'
                        if not currentPrice / 100:
                            require sub_54ed490d[address(s)] >= sub_54ed490d[address(s)]
                            require sub_24352a10[address(s)].field_256 >= sub_24352a10[address(s)].field_256
                        else:
                            require currentPrice / 100
                            require currentPrice / 100 * sub_0f592306[idx] / currentPrice / 100 == sub_0f592306[idx]
                            require sub_54ed490d[address(s)] + (currentPrice / 100 * sub_0f592306[idx]) >= sub_54ed490d[address(s)]
                            sub_54ed490d[address(s)] += currentPrice / 100 * sub_0f592306[idx]
                            require sub_24352a10[address(s)].field_256 + (currentPrice / 100 * sub_0f592306[idx]) >= sub_24352a10[address(s)].field_256
                            sub_24352a10[address(s)].field_256 += currentPrice / 100 * sub_0f592306[idx]
                            require currentPrice / 100 * sub_0f592306[idx] >= 0
                        mem[0] = address(s)
                        mem[32] = 11
                        idx = idx + 1
                        s = stor11[address(s)]
                        continue 
                    if 0 >= currentPrice:
                        revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                    require sub_ab3597f4 >= sub_ab3597f4
                    require sub_92fd373a >= sub_92fd373a
        else:
            if not currentPrice / 100:
                require 0 <= currentPrice
                if msg.value < currentPrice:
                    revert with 0, 'Sent amount of ETH was too low.'
                if arg1.length < 30:
                    revert with 0, 'Coins target address invalid'
                if arg1.length > 42:
                    revert with 0, 'Coins target address invalid'
                if stor6:
                    if sub_fd6a1a94[address(arg2)] > 0:
                        if msg.sender == arg2:
                            revert with 0, 'You can't be your own referral.'
                        mem[0] = stor11[address(msg.sender)]
                        mem[32] = 12
                        if not sub_24352a10[stor11[address(msg.sender)]].field_0:
                            require sub_24352a10[address(arg2)].field_0 + 1 >= sub_24352a10[address(arg2)].field_0
                            sub_24352a10[address(arg2)].field_0++
                            sub_24352a10[address(arg2)].field_512++
                            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_24352a10', 12))) + sub_24352a10[address(arg2)].field_512].field_0 = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 11
                            stor11[address(msg.sender)] = arg2
                        idx = 0
                        s = arg2
                        while idx < sub_79213465:
                            if sub_fd6a1a94[address(s)] <= 0:
                                if 0 >= currentPrice:
                                    revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                                require sub_ab3597f4 >= sub_ab3597f4
                                require sub_92fd373a >= sub_92fd373a
                                require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
                                sub_fd6a1a94[address(msg.sender)]++
                                mem[ceil32(arg1.length) + 128] = msg.sender
                                idx = 0
                                while idx < arg1.length:
                                    mem[ceil32(arg1.length) + idx + 288] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                emit 0xde5f884b: msg.sender, currentPrice, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length]), bool(stor6)
                                require stor1 == stor1
                            if msg.sender == address(s):
                                revert with 0, 'Invalid referral structure (you can't be in your own tree)'
                            if not currentPrice / 100:
                                require sub_54ed490d[address(s)] >= sub_54ed490d[address(s)]
                                require sub_24352a10[address(s)].field_256 >= sub_24352a10[address(s)].field_256
                            else:
                                require currentPrice / 100
                                require currentPrice / 100 * sub_0f592306[idx] / currentPrice / 100 == sub_0f592306[idx]
                                require sub_54ed490d[address(s)] + (currentPrice / 100 * sub_0f592306[idx]) >= sub_54ed490d[address(s)]
                                sub_54ed490d[address(s)] += currentPrice / 100 * sub_0f592306[idx]
                                require sub_24352a10[address(s)].field_256 + (currentPrice / 100 * sub_0f592306[idx]) >= sub_24352a10[address(s)].field_256
                                sub_24352a10[address(s)].field_256 += currentPrice / 100 * sub_0f592306[idx]
                                require currentPrice / 100 * sub_0f592306[idx] >= 0
                            mem[0] = address(s)
                            mem[32] = 11
                            idx = idx + 1
                            s = stor11[address(s)]
                            continue 
                        if 0 >= currentPrice:
                            revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                        require sub_ab3597f4 >= sub_ab3597f4
                        require sub_92fd373a >= sub_92fd373a
            else:
                require currentPrice / 100
                require currentPrice / 100 * sub_ba2c337c / currentPrice / 100 == sub_ba2c337c
                require currentPrice / 100 * sub_ba2c337c <= currentPrice
                if msg.value < currentPrice - (currentPrice / 100 * sub_ba2c337c):
                    revert with 0, 'Sent amount of ETH was too low.'
                if arg1.length < 30:
                    revert with 0, 'Coins target address invalid'
                if arg1.length > 42:
                    revert with 0, 'Coins target address invalid'
                if stor6:
                    if sub_fd6a1a94[address(arg2)] > 0:
                        if msg.sender == arg2:
                            revert with 0, 'You can't be your own referral.'
                        mem[0] = stor11[address(msg.sender)]
                        mem[32] = 12
                        if not sub_24352a10[stor11[address(msg.sender)]].field_0:
                            require sub_24352a10[address(arg2)].field_0 + 1 >= sub_24352a10[address(arg2)].field_0
                            sub_24352a10[address(arg2)].field_0++
                            sub_24352a10[address(arg2)].field_512++
                            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_24352a10', 12))) + sub_24352a10[address(arg2)].field_512].field_0 = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 11
                            stor11[address(msg.sender)] = arg2
                        idx = 0
                        s = arg2
                        while idx < sub_79213465:
                            if sub_fd6a1a94[address(s)] <= 0:
                                if 0 >= currentPrice - (currentPrice / 100 * sub_ba2c337c):
                                    revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                                require sub_ab3597f4 >= sub_ab3597f4
                                require sub_92fd373a >= sub_92fd373a
                                require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
                                sub_fd6a1a94[address(msg.sender)]++
                                mem[ceil32(arg1.length) + 128] = msg.sender
                                idx = 0
                                while idx < arg1.length:
                                    mem[ceil32(arg1.length) + idx + 288] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                emit 0xde5f884b: msg.sender, currentPrice, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length]), bool(stor6)
                                require stor1 == stor1
                            if msg.sender == address(s):
                                revert with 0, 'Invalid referral structure (you can't be in your own tree)'
                            if not currentPrice / 100:
                                require sub_54ed490d[address(s)] >= sub_54ed490d[address(s)]
                                require sub_24352a10[address(s)].field_256 >= sub_24352a10[address(s)].field_256
                            else:
                                require currentPrice / 100
                                require currentPrice / 100 * sub_0f592306[idx] / currentPrice / 100 == sub_0f592306[idx]
                                require sub_54ed490d[address(s)] + (currentPrice / 100 * sub_0f592306[idx]) >= sub_54ed490d[address(s)]
                                sub_54ed490d[address(s)] += currentPrice / 100 * sub_0f592306[idx]
                                require sub_24352a10[address(s)].field_256 + (currentPrice / 100 * sub_0f592306[idx]) >= sub_24352a10[address(s)].field_256
                                sub_24352a10[address(s)].field_256 += currentPrice / 100 * sub_0f592306[idx]
                                require currentPrice / 100 * sub_0f592306[idx] >= 0
                            mem[0] = address(s)
                            mem[32] = 11
                            idx = idx + 1
                            s = stor11[address(s)]
                            continue 
                        if 0 >= currentPrice - (currentPrice / 100 * sub_ba2c337c):
                            revert with 0, 'Wrong calculation of bonuses/discounts - would be higher than the price itself'
                        require sub_ab3597f4 >= sub_ab3597f4
                        require sub_92fd373a >= sub_92fd373a
    require sub_fd6a1a94[address(msg.sender)] + 1 >= sub_fd6a1a94[address(msg.sender)]
    sub_fd6a1a94[address(msg.sender)]++
    emit 0xde5f884b: msg.sender, currentPrice, Array(len=arg1.length, data=arg1[all]), bool(stor6)
    require stor1 == stor1
}



}
