contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
address sub_98eaa386Address;
address sub_af15d786Address;
uint256 feeMultiplier;
uint256 sub_917b546c;
uint256 sub_5b193332;
uint8 decimals;
mapping of uint8 stor10;
array of uint256 name;
array of uint256 symbol;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isReservedAccount(address arg1) {
    return bool(stor10[address(arg1)])
}

function decimals() {
    return decimals
}

function sub_5b193332(?) {
    return sub_5b193332
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_917b546c(?) {
    return sub_917b546c
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_98eaa386(?) {
    return sub_98eaa386Address
}

function sub_af15d786(?) {
    return sub_af15d786Address
}

function sub_b744d7e9(?) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function feeMultiplier() {
    return feeMultiplier
}

function _fallback() payable {
    revert
}

function sub_4bea1fc7(?) {
    require msg.sender == owner
    stor10[address(arg1)] = 1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    feeMultiplier = arg1
    sub_917b546c = arg2
    sub_5b193332 = arg3
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    if stor10[address(arg1)]:
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
    else:
        if stor10[address(arg2)]:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
        else:
            if not sub_af15d786Address:
                if not arg3:
                    require sub_917b546c
                    if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                        require 0 / sub_917b546c > 0
                        require arg3 > 0 / sub_917b546c
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c)
                        require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                        balanceOf[stor4] += 0 / sub_917b546c
                    else:
                        require sub_5b193332 * 10^decimals > 0
                        require arg3 > sub_5b193332 * 10^decimals
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                        require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                        balanceOf[stor4] += sub_5b193332 * 10^decimals
                else:
                    require arg3
                    require arg3 * feeMultiplier / arg3 == feeMultiplier
                    require sub_917b546c
                    if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                        require arg3 * feeMultiplier / sub_917b546c > 0
                        require arg3 > arg3 * feeMultiplier / sub_917b546c
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c)
                        require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                        balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                    else:
                        require sub_5b193332 * 10^decimals > 0
                        require arg3 > sub_5b193332 * 10^decimals
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                        require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                        balanceOf[stor4] += sub_5b193332 * 10^decimals
            else:
                if not arg3:
                    require sub_917b546c
                    if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                        if balanceOf[stor5] < 0 / sub_917b546c:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 > 0 / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 > arg3 * feeMultiplier / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require arg3 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg3 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                    else:
                        if balanceOf[stor5] < sub_5b193332 * 10^decimals:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 > 0 / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 > arg3 * feeMultiplier / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require arg3 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg3 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                else:
                    require arg3
                    require arg3 * feeMultiplier / arg3 == feeMultiplier
                    require sub_917b546c
                    if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                        if balanceOf[stor5] < arg3 * feeMultiplier / sub_917b546c:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 > 0 / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 > arg3 * feeMultiplier / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require arg3 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg3 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                    else:
                        if balanceOf[stor5] < sub_5b193332 * 10^decimals:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 > 0 / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 > arg3 * feeMultiplier / sub_917b546c
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 > sub_5b193332 * 10^decimals
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg3:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg3
                                require arg3 * feeMultiplier / arg3 == feeMultiplier
                                require sub_917b546c
                                if arg3 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg3 * feeMultiplier / sub_917b546c > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require arg3 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg3 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg3 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg3 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg3 <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] -= arg3
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    if stor10[address(msg.sender)]:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    else:
        if stor10[address(arg1)]:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
        else:
            if not sub_af15d786Address:
                if not arg2:
                    require sub_917b546c
                    if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                        require 0 / sub_917b546c > 0
                        require arg2 > 0 / sub_917b546c
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c)
                        require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                        balanceOf[stor4] += 0 / sub_917b546c
                    else:
                        require sub_5b193332 * 10^decimals > 0
                        require arg2 > sub_5b193332 * 10^decimals
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                        require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                        balanceOf[stor4] += sub_5b193332 * 10^decimals
                else:
                    require arg2
                    require arg2 * feeMultiplier / arg2 == feeMultiplier
                    require sub_917b546c
                    if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                        require arg2 * feeMultiplier / sub_917b546c > 0
                        require arg2 > arg2 * feeMultiplier / sub_917b546c
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c)
                        require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                        balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                    else:
                        require sub_5b193332 * 10^decimals > 0
                        require arg2 > sub_5b193332 * 10^decimals
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                        require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                        balanceOf[stor4] += sub_5b193332 * 10^decimals
            else:
                if not arg2:
                    require sub_917b546c
                    if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                        if balanceOf[stor5] < 0 / sub_917b546c:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 > 0 / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 > arg2 * feeMultiplier / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require arg2 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg2 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                    else:
                        if balanceOf[stor5] < sub_5b193332 * 10^decimals:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 > 0 / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 > arg2 * feeMultiplier / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require arg2 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg2 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                else:
                    require arg2
                    require arg2 * feeMultiplier / arg2 == feeMultiplier
                    require sub_917b546c
                    if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                        if balanceOf[stor5] < arg2 * feeMultiplier / sub_917b546c:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 > 0 / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 > arg2 * feeMultiplier / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require arg2 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg2 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                    else:
                        if balanceOf[stor5] < sub_5b193332 * 10^decimals:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 > 0 / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_917b546c)
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 > arg2 * feeMultiplier / sub_917b546c
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeMultiplier / sub_917b546c)
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 > sub_5b193332 * 10^decimals
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_5b193332 * 10^decimals)
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                        else:
                            if not arg2:
                                require sub_917b546c
                                if 0 / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require 0 / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require 0 / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= 0 / sub_917b546c
                                    require balanceOf[stor4] + (0 / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += 0 / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
                            else:
                                require arg2
                                require arg2 * feeMultiplier / arg2 == feeMultiplier
                                require sub_917b546c
                                if arg2 * feeMultiplier / sub_917b546c <= sub_5b193332 * 10^decimals:
                                    require arg2 * feeMultiplier / sub_917b546c > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require arg2 * feeMultiplier / sub_917b546c <= balanceOf[stor5]
                                    balanceOf[stor5] -= arg2 * feeMultiplier / sub_917b546c
                                    require balanceOf[stor4] + (arg2 * feeMultiplier / sub_917b546c) >= balanceOf[stor4]
                                    balanceOf[stor4] += arg2 * feeMultiplier / sub_917b546c
                                else:
                                    require sub_5b193332 * 10^decimals > 0
                                    require arg2 <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] -= arg2
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    require sub_5b193332 * 10^decimals <= balanceOf[stor5]
                                    balanceOf[stor5] += -1 * sub_5b193332 * 10^decimals
                                    require balanceOf[stor4] + (sub_5b193332 * 10^decimals) >= balanceOf[stor4]
                                    balanceOf[stor4] += sub_5b193332 * 10^decimals
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
