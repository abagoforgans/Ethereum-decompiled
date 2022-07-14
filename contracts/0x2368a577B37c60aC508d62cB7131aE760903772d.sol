contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 sub_54d2fbe9;
uint256 stor8;
uint256 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_54d2fbe9(?) {
    require calldata.size - 4 >= 32
    return sub_54d2fbe9[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function tokenOf(address arg1) {
    require calldata.size - 4 >= 32
    require sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - sub_54d2fbe9[address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function tokenRate() {
    require stor9 + stor8 >= stor9
    if not stor9:
        if stor9 + stor8:
            return (0 / stor9 + stor8)
    else:
        if stor9:
            require 1000 * stor9 / stor9 == 1000
            if stor9 + stor8:
                return (1000 * stor9 / stor9 + stor8)
    revert
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function safeMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    require stor9 + arg2 >= stor9
    stor9 += arg2
    return 1
}

function sub_265eb29a(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'refund value > balance'
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Refund(arg2, arg1);
    return 1
}

function sendCandy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    if not stor3[address(arg1)]:
        require sub_54d2fbe9[address(arg1)] + arg2 >= sub_54d2fbe9[address(arg1)]
        sub_54d2fbe9[address(arg1)] += arg2
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    require stor8 + arg2 >= stor8
    stor8 += arg2
    emit 0x8d4b5c29: arg2, arg1
    return 1
}

function safeBurn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    if sub_54d2fbe9[address(arg1)] > 0:
        if sub_54d2fbe9[address(arg1)] <= arg2:
            sub_54d2fbe9[address(arg1)] = 0
            emit 0x4e6263e5: sub_54d2fbe9[address(arg1)], arg1
        else:
            require arg2 <= sub_54d2fbe9[address(arg1)]
            sub_54d2fbe9[address(arg1)] -= arg2
            emit 0x4e6263e5: arg2, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficient balance'
    require msg.sender
    if not stor3[address(msg.sender)]:
        require sub_54d2fbe9[address(msg.sender)] <= balanceOf[address(msg.sender)]
        if arg2 > balanceOf[address(msg.sender)] - sub_54d2fbe9[address(msg.sender)]:
            revert with 0, 'insufficient token'
    require msg.sender
    if stor3[address(msg.sender)]:
        if sub_54d2fbe9[address(msg.sender)] > 0:
            if sub_54d2fbe9[address(msg.sender)] <= arg2:
                require sub_54d2fbe9[address(msg.sender)] <= sub_54d2fbe9[address(msg.sender)]
                sub_54d2fbe9[address(msg.sender)] = 0
                emit 0xb38b90ed: sub_54d2fbe9[address(msg.sender)], msg.sender, arg1
            else:
                require arg2 <= sub_54d2fbe9[address(msg.sender)]
                sub_54d2fbe9[address(msg.sender)] -= arg2
                emit 0xb38b90ed: arg2, msg.sender, arg1
    else:
        require arg1
        if stor3[address(arg1)]:
            if sub_54d2fbe9[address(msg.sender)] > 0:
                if sub_54d2fbe9[address(msg.sender)] <= arg2:
                    require sub_54d2fbe9[address(msg.sender)] <= sub_54d2fbe9[address(msg.sender)]
                    sub_54d2fbe9[address(msg.sender)] = 0
                    emit 0xb38b90ed: sub_54d2fbe9[address(msg.sender)], msg.sender, arg1
                else:
                    require arg2 <= sub_54d2fbe9[address(msg.sender)]
                    sub_54d2fbe9[address(msg.sender)] -= arg2
                    emit 0xb38b90ed: arg2, msg.sender, arg1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficient balance'
    require msg.sender
    if not stor3[address(msg.sender)]:
        require sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]
        if arg3 > balanceOf[address(arg1)] - sub_54d2fbe9[address(arg1)]:
            revert with 0, 'insufficient token'
    require msg.sender
    if stor3[address(msg.sender)]:
        if sub_54d2fbe9[address(arg1)] > 0:
            if sub_54d2fbe9[address(arg1)] <= arg3:
                require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                sub_54d2fbe9[address(arg1)] = 0
                emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
            else:
                require arg3 <= sub_54d2fbe9[address(arg1)]
                sub_54d2fbe9[address(arg1)] -= arg3
                emit 0xb38b90ed: arg3, arg1, arg2
    else:
        require arg2
        if stor3[address(arg2)]:
            if sub_54d2fbe9[address(arg1)] > 0:
                if sub_54d2fbe9[address(arg1)] <= arg3:
                    require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                    sub_54d2fbe9[address(arg1)] = 0
                    emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
                else:
                    require arg3 <= sub_54d2fbe9[address(arg1)]
                    sub_54d2fbe9[address(arg1)] -= arg3
                    emit 0xb38b90ed: arg3, arg1, arg2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function safeTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender
    require stor3[address(msg.sender)]
    if balanceOf[address(arg1)] >= arg3:
        if not arg1:
            require arg2
            require totalSupply + arg3 >= totalSupply
            totalSupply += arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, 0, arg2);
            require stor9 + arg3 >= stor9
            stor9 += arg3
        else:
            if not arg2:
                require arg1
                require arg3 <= totalSupply
                totalSupply -= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                emit Transfer(arg3, arg1, 0);
            else:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'insufficient balance'
                require msg.sender
                if not stor3[address(msg.sender)]:
                    require sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]
                    if arg3 > balanceOf[address(arg1)] - sub_54d2fbe9[address(arg1)]:
                        revert with 0, 'insufficient token'
                require msg.sender
                if stor3[address(msg.sender)]:
                    if sub_54d2fbe9[address(arg1)] > 0:
                        if sub_54d2fbe9[address(arg1)] <= arg3:
                            require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                            sub_54d2fbe9[address(arg1)] = 0
                            emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
                        else:
                            require arg3 <= sub_54d2fbe9[address(arg1)]
                            sub_54d2fbe9[address(arg1)] -= arg3
                            emit 0xb38b90ed: arg3, arg1, arg2
                else:
                    require arg2
                    if stor3[address(arg2)]:
                        if sub_54d2fbe9[address(arg1)] > 0:
                            if sub_54d2fbe9[address(arg1)] <= arg3:
                                require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                                sub_54d2fbe9[address(arg1)] = 0
                                emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
                            else:
                                require arg3 <= sub_54d2fbe9[address(arg1)]
                                sub_54d2fbe9[address(arg1)] -= arg3
                                emit 0xb38b90ed: arg3, arg1, arg2
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
    else:
        if not arg1:
            require arg2
            require totalSupply + balanceOf[address(arg1)] >= totalSupply
            totalSupply += balanceOf[address(arg1)]
            require balanceOf[address(arg2)] + balanceOf[address(arg1)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], 0, arg2);
            require stor9 + balanceOf[address(arg1)] >= stor9
            stor9 += balanceOf[address(arg1)]
        else:
            if not arg2:
                require arg1
                require balanceOf[address(arg1)] <= totalSupply
                totalSupply -= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = 0
                emit Transfer(balanceOf[address(arg1)], arg1, 0);
            else:
                if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                    revert with 0, 'insufficient balance'
                require msg.sender
                if not stor3[address(msg.sender)]:
                    require sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] > balanceOf[address(arg1)] - sub_54d2fbe9[address(arg1)]:
                        revert with 0, 'insufficient token'
                require msg.sender
                if stor3[address(msg.sender)]:
                    if sub_54d2fbe9[address(arg1)] > 0:
                        if sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]:
                            require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                            sub_54d2fbe9[address(arg1)] = 0
                            emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
                        else:
                            require balanceOf[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                            sub_54d2fbe9[address(arg1)] -= balanceOf[address(arg1)]
                            emit 0xb38b90ed: balanceOf[address(arg1)], arg1, arg2
                else:
                    require arg2
                    if stor3[address(arg2)]:
                        if sub_54d2fbe9[address(arg1)] > 0:
                            if sub_54d2fbe9[address(arg1)] <= balanceOf[address(arg1)]:
                                require sub_54d2fbe9[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                                sub_54d2fbe9[address(arg1)] = 0
                                emit 0xb38b90ed: sub_54d2fbe9[address(arg1)], arg1, arg2
                            else:
                                require balanceOf[address(arg1)] <= sub_54d2fbe9[address(arg1)]
                                sub_54d2fbe9[address(arg1)] -= balanceOf[address(arg1)]
                                emit 0xb38b90ed: balanceOf[address(arg1)], arg1, arg2
                require arg2
                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = 0
                require balanceOf[address(arg2)] + balanceOf[address(arg1)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += balanceOf[address(arg1)]
                emit Transfer(balanceOf[address(arg1)], arg1, arg2);
    return 1
}



}
