contract main {




// =====================  Runtime code  =====================


const name = 'DOU Token'

const team4Address = 0x7fb80e0bc908e02a6e7b0ca438370af31b739445

const team3Address = 0x998d65fb3caf5da8be56890414d9fc42a1a8952b

const privateSell1LockEndTime = 1526597770

const decimals = 18

const team1LockEndTime = 1526597770

const initialToken = 500000000 * 10^18

const team1Address = 0x2cfd5263896aa51085ffabf0183da67f26e5789c

const rescueAddress = 0x83af23a1794886f5c680ba3448d7e43dbf851658

const team4LockEndTime = 1526597770

const privateSell2LockEndTime = 1526597770

const maxDestroyThreshold = 250000000 * 10^18

const publicSellLockEndTime = 1526568970

const privateSell1Token = 62500000 * 10^18

const team4Token = 50000000 * 10^18

const team3Token = 50000000 * 10^18

const team2LockEndTime = 1526597770

const symbol = 'DOU'

const team2Address = 0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc

const privateSell2Address = 0xfa4a129f698c9c1c3545caf994d8b3b24e234ccf

const team3LockEndTime = 1526597770

const privateSell1Address = 0x4ee26f915f55d9833e7adb5a07f010819d84682a

const maxBurnThreshold = 31250000 * 10^18

const publicSellToken = 175000000 * 10^18

const team2Token = 50000000 * 10^18

const team1Token = 50000000 * 10^18

const privateSell2Token = 62500000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalToken;
address owner;
mapping of uint8 stor4;
uint256 destroyedToken;

function totalSupply() {
    return totalToken
}

function destroyedToken() {
    return destroyedToken
}

function totalToken() {
    return totalToken
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x83af23a1794886f5c680ba3448d7e43dbf851658, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require 31250000 * 10^18 >= arg1
    require destroyedToken + arg1 >= destroyedToken
    require 250000000 * 10^18 >= destroyedToken + arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalToken
    totalToken -= arg1
    require destroyedToken + arg1 >= destroyedToken
    destroyedToken += arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unlock() {
    require msg.sender == owner
    if not stor4[0x4ee26f915f55d9833e7adb5a07f010819d84682a]:
        if not stor4[0xfa4a129f698c9c1c3545caf994d8b3b24e234ccf]:
            if not stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c]:
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
            else:
                if block.timestamp >= 1526597770:
                    stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c] = 0
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
        else:
            if block.timestamp >= 1526597770:
                stor4[0xfa4a129f698c9c1c3545caf994d8b3b24e234ccf] = 0
            if not stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c]:
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
            else:
                if block.timestamp >= 1526597770:
                    stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c] = 0
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
    else:
        if block.timestamp >= 1526597770:
            stor4[0x4ee26f915f55d9833e7adb5a07f010819d84682a] = 0
        if not stor4[0xfa4a129f698c9c1c3545caf994d8b3b24e234ccf]:
            if not stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c]:
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
            else:
                if block.timestamp >= 1526597770:
                    stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c] = 0
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
        else:
            if block.timestamp >= 1526597770:
                stor4[0xfa4a129f698c9c1c3545caf994d8b3b24e234ccf] = 0
            if not stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c]:
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
            else:
                if block.timestamp >= 1526597770:
                    stor4[0x2cfd5263896aa51085ffabf0183da67f26e5789c] = 0
                if not stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc]:
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                else:
                    if block.timestamp >= 1526597770:
                        stor4[0x86bea0b293de7975aa9dd49b8a52c0e10bd243dc] = 0
                    if not stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b]:
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
                    else:
                        if block.timestamp >= 1526597770:
                            stor4[0x998d65fb3caf5da8be56890414d9fc42a1a8952b] = 0
                        if stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445]:
                            if block.timestamp >= 1526597770:
                                stor4[0x7fb80e0bc908e02a6e7b0ca438370af31b739445] = 0
}



}
