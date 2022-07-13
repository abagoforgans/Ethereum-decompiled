contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint256 sub_03f2acf2;
mapping of uint8 stor10;

function sub_03f2acf2(?) {
    return sub_03f2acf2[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_57135bbf(?) {
    return bool(stor10[arg1])
}

function Allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function FrozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function transfersEnabled() {
    return bool(stor5)
}

function BalanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfers(bool arg1) {
    require arg1 != bool(stor5)
    require stor10[msg.sender]
    stor5 = uint8(arg1)
    return 1
}

function freeze(uint256 arg1) {
    require arg1 > 0
    sub_03f2acf2[msg.sender] += arg1
    emit 0x1a2f6b5e: arg1, msg.sender
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    stor10[address(arg1)] = uint8(arg2)
    emit SetAdmin(arg2, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require arg1
    require owner != arg1
    require stor10[msg.sender]
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    stor10[stor0] = 0
    stor10[arg1] = 1
    owner = arg1
    emit TransferOwnership(arg1);
    return 1
}

function sub_8e7d7da2(?) {
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require arg2 <= sub_03f2acf2[address(arg1)]
    sub_03f2acf2[address(arg1)] -= arg2
    emit 0xba41a578: arg2, arg1
    return 1
}

function sub_d6be0b28(?) {
    require arg1
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require sub_03f2acf2[address(arg1)] + arg2 > sub_03f2acf2[address(arg1)]
    sub_03f2acf2[address(arg1)] += arg2
    emit 0x1a2f6b5e: arg2, arg1
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 + totalSupply > totalSupply
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require owner != arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_6f134878(?) {
    require msg.sender == owner
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[arg1] -= arg2
    balanceOf[msg.sender] += arg2
    emit 0x9fcf8188: arg2, arg1
    emit Transfer(arg2, arg1, msg.sender);
    require balanceOf[arg1] + balanceOf[msg.sender] == balanceOf[arg1] + balanceOf[msg.sender]
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg1 != msg.sender
    require not stor8[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= sub_03f2acf2[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor5
    require owner != arg1
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 > 0
    require arg2 != arg1
    require not stor8[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= sub_03f2acf2[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function transferAndFreeze(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg1 != msg.sender
    require not stor8[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= sub_03f2acf2[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    sub_03f2acf2[address(arg1)] += arg2
    emit 0x1a2f6b5e: arg2, arg1
    return 1
}

function sub_981f1327(?) {
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require arg2 <= sub_03f2acf2[address(arg1)]
    sub_03f2acf2[address(arg1)] -= arg2
    emit 0xba41a578: arg2, arg1
    if arg4 > 0:
        require owner != arg3
        require arg4 > 0
        require stor10[msg.sender]
        require arg4 <= sub_03f2acf2[address(arg3)]
        sub_03f2acf2[address(arg3)] -= arg4
        emit 0xba41a578: arg4, arg3
    if arg6 > 0:
        require owner != arg5
        require arg6 > 0
        require stor10[msg.sender]
        require arg6 <= sub_03f2acf2[address(arg5)]
        sub_03f2acf2[address(arg5)] -= arg6
        emit 0xba41a578: arg6, arg5
    if arg8 > 0:
        require owner != arg7
        require arg8 > 0
        require stor10[msg.sender]
        require arg8 <= sub_03f2acf2[address(arg7)]
        sub_03f2acf2[address(arg7)] -= arg8
        emit 0xba41a578: arg8, arg7
    if arg10 > 0:
        require owner != arg9
        require arg10 > 0
        require stor10[msg.sender]
        require arg10 <= sub_03f2acf2[address(arg9)]
        sub_03f2acf2[address(arg9)] -= arg10
        emit 0xba41a578: arg10, arg9
    return 1
}

function sub_855df11c(?) {
    require arg1
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require sub_03f2acf2[address(arg1)] + arg2 > sub_03f2acf2[address(arg1)]
    sub_03f2acf2[address(arg1)] += arg2
    emit 0x1a2f6b5e: arg2, arg1
    if arg4 > 0:
        require arg3
        require owner != arg3
        require arg4 > 0
        require stor10[msg.sender]
        require sub_03f2acf2[address(arg3)] + arg4 > sub_03f2acf2[address(arg3)]
        sub_03f2acf2[address(arg3)] += arg4
        emit 0x1a2f6b5e: arg4, arg3
    if arg6 > 0:
        require arg5
        require owner != arg5
        require arg6 > 0
        require stor10[msg.sender]
        require sub_03f2acf2[address(arg5)] + arg6 > sub_03f2acf2[address(arg5)]
        sub_03f2acf2[address(arg5)] += arg6
        emit 0x1a2f6b5e: arg6, arg5
    if arg8 > 0:
        require arg7
        require owner != arg7
        require arg8 > 0
        require stor10[msg.sender]
        require sub_03f2acf2[address(arg7)] + arg8 > sub_03f2acf2[address(arg7)]
        sub_03f2acf2[address(arg7)] += arg8
        emit 0x1a2f6b5e: arg8, arg7
    if arg10 > 0:
        require arg9
        require owner != arg9
        require arg10 > 0
        require stor10[msg.sender]
        require sub_03f2acf2[address(arg9)] + arg10 > sub_03f2acf2[address(arg9)]
        sub_03f2acf2[address(arg9)] += arg10
        emit 0x1a2f6b5e: arg10, arg9
    return 1
}

function sub_4fdfadff(?) {
    if owner != msg.sender:
        require stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg1 != msg.sender
    require not stor8[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= sub_03f2acf2[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    sub_03f2acf2[address(arg1)] += arg2
    emit 0x1a2f6b5e: arg2, arg1
    if arg4 > 0:
        if owner != msg.sender:
            require stor5
        require arg3
        require arg4 <= balanceOf[address(msg.sender)]
        require arg4 > 0
        require arg3 != msg.sender
        require not stor8[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg4 >= sub_03f2acf2[address(msg.sender)]
        require balanceOf[address(arg3)] + arg4 > balanceOf[address(arg3)]
        balanceOf[msg.sender] -= arg4
        balanceOf[address(arg3)] += arg4
        emit Transfer(arg4, msg.sender, arg3);
        require balanceOf[address(arg3)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg3)]
        sub_03f2acf2[address(arg3)] += arg4
        emit 0x1a2f6b5e: arg4, arg3
    if arg6 > 0:
        if owner != msg.sender:
            require stor5
        require arg5
        require arg6 <= balanceOf[address(msg.sender)]
        require arg6 > 0
        require arg5 != msg.sender
        require not stor8[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg6 >= sub_03f2acf2[address(msg.sender)]
        require balanceOf[address(arg5)] + arg6 > balanceOf[address(arg5)]
        balanceOf[msg.sender] -= arg6
        balanceOf[address(arg5)] += arg6
        emit Transfer(arg6, msg.sender, arg5);
        require balanceOf[address(arg5)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg5)]
        sub_03f2acf2[address(arg5)] += arg6
        emit 0x1a2f6b5e: arg6, arg5
    if arg8 > 0:
        if owner != msg.sender:
            require stor5
        require arg7
        require arg8 <= balanceOf[address(msg.sender)]
        require arg8 > 0
        require arg7 != msg.sender
        require not stor8[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg8 >= sub_03f2acf2[address(msg.sender)]
        require balanceOf[address(arg7)] + arg8 > balanceOf[address(arg7)]
        balanceOf[msg.sender] -= arg8
        balanceOf[address(arg7)] += arg8
        emit Transfer(arg8, msg.sender, arg7);
        require balanceOf[address(arg7)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg7)]
        sub_03f2acf2[address(arg7)] += arg8
        emit 0x1a2f6b5e: arg8, arg7
    if arg10 > 0:
        if owner != msg.sender:
            require stor5
        require arg9
        require arg10 <= balanceOf[address(msg.sender)]
        require arg10 > 0
        require arg9 != msg.sender
        require not stor8[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
        require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
        balanceOf[msg.sender] -= arg10
        balanceOf[address(arg9)] += arg10
        emit Transfer(arg10, msg.sender, arg9);
        require balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]
        sub_03f2acf2[address(arg9)] += arg10
        emit 0x1a2f6b5e: arg10, arg9
    return 1
}

function sub_e50f55cc(?) {
    require msg.sender == owner
    require owner != arg1
    require arg2 > 0
    require stor10[msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[arg1] -= arg2
    balanceOf[msg.sender] += arg2
    emit 0x9fcf8188: arg2, arg1
    emit Transfer(arg2, arg1, msg.sender);
    require balanceOf[arg1] + balanceOf[msg.sender] == balanceOf[arg1] + balanceOf[msg.sender]
    if arg4 <= 0:
        if arg6 <= 0:
            if arg8 <= 0:
                if arg10 <= 0:
                    return 1
                require msg.sender == owner
                require owner != arg9
                require arg10 > 0
                require stor10[msg.sender]
                require arg10 <= balanceOf[address(arg9)]
                balanceOf[arg9] -= arg10
                balanceOf[msg.sender] += arg10
                emit 0x9fcf8188: arg10, arg9
                emit Transfer(arg10, arg9, msg.sender);
                if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                    return 1
            else:
                require msg.sender == owner
                require owner != arg7
                require arg8 > 0
                require stor10[msg.sender]
                require arg8 <= balanceOf[address(arg7)]
                balanceOf[arg7] -= arg8
                balanceOf[msg.sender] += arg8
                emit 0x9fcf8188: arg8, arg7
                emit Transfer(arg8, arg7, msg.sender);
                if balanceOf[arg7] + balanceOf[msg.sender] == balanceOf[arg7] + balanceOf[msg.sender]:
                    if arg10 <= 0:
                        return 1
                    require msg.sender == owner
                    require owner != arg9
                    require arg10 > 0
                    require stor10[msg.sender]
                    require arg10 <= balanceOf[address(arg9)]
                    balanceOf[arg9] -= arg10
                    balanceOf[msg.sender] += arg10
                    emit 0x9fcf8188: arg10, arg9
                    emit Transfer(arg10, arg9, msg.sender);
                    if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                        return 1
        else:
            require msg.sender == owner
            require owner != arg5
            require arg6 > 0
            require stor10[msg.sender]
            require arg6 <= balanceOf[address(arg5)]
            balanceOf[arg5] -= arg6
            balanceOf[msg.sender] += arg6
            emit 0x9fcf8188: arg6, arg5
            emit Transfer(arg6, arg5, msg.sender);
            if balanceOf[arg5] + balanceOf[msg.sender] == balanceOf[arg5] + balanceOf[msg.sender]:
                if arg8 <= 0:
                    if arg10 <= 0:
                        return 1
                    require msg.sender == owner
                    require owner != arg9
                    require arg10 > 0
                    require stor10[msg.sender]
                    require arg10 <= balanceOf[address(arg9)]
                    balanceOf[arg9] -= arg10
                    balanceOf[msg.sender] += arg10
                    emit 0x9fcf8188: arg10, arg9
                    emit Transfer(arg10, arg9, msg.sender);
                    if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                        return 1
                else:
                    require msg.sender == owner
                    require owner != arg7
                    require arg8 > 0
                    require stor10[msg.sender]
                    require arg8 <= balanceOf[address(arg7)]
                    balanceOf[arg7] -= arg8
                    balanceOf[msg.sender] += arg8
                    emit 0x9fcf8188: arg8, arg7
                    emit Transfer(arg8, arg7, msg.sender);
                    if balanceOf[arg7] + balanceOf[msg.sender] == balanceOf[arg7] + balanceOf[msg.sender]:
                        if arg10 <= 0:
                            return 1
                        require msg.sender == owner
                        require owner != arg9
                        require arg10 > 0
                        require stor10[msg.sender]
                        require arg10 <= balanceOf[address(arg9)]
                        balanceOf[arg9] -= arg10
                        balanceOf[msg.sender] += arg10
                        emit 0x9fcf8188: arg10, arg9
                        emit Transfer(arg10, arg9, msg.sender);
                        if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                            return 1
    else:
        require msg.sender == owner
        require owner != arg3
        require arg4 > 0
        require stor10[msg.sender]
        require arg4 <= balanceOf[address(arg3)]
        balanceOf[arg3] -= arg4
        balanceOf[msg.sender] += arg4
        emit 0x9fcf8188: arg4, arg3
        emit Transfer(arg4, arg3, msg.sender);
        if balanceOf[arg3] + balanceOf[msg.sender] == balanceOf[arg3] + balanceOf[msg.sender]:
            if arg6 <= 0:
                if arg8 <= 0:
                    if arg10 <= 0:
                        return 1
                    require msg.sender == owner
                    require owner != arg9
                    require arg10 > 0
                    require stor10[msg.sender]
                    require arg10 <= balanceOf[address(arg9)]
                    balanceOf[arg9] -= arg10
                    balanceOf[msg.sender] += arg10
                    emit 0x9fcf8188: arg10, arg9
                    emit Transfer(arg10, arg9, msg.sender);
                    if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                        return 1
                else:
                    require msg.sender == owner
                    require owner != arg7
                    require arg8 > 0
                    require stor10[msg.sender]
                    require arg8 <= balanceOf[address(arg7)]
                    balanceOf[arg7] -= arg8
                    balanceOf[msg.sender] += arg8
                    emit 0x9fcf8188: arg8, arg7
                    emit Transfer(arg8, arg7, msg.sender);
                    if balanceOf[arg7] + balanceOf[msg.sender] == balanceOf[arg7] + balanceOf[msg.sender]:
                        if arg10 <= 0:
                            return 1
                        require msg.sender == owner
                        require owner != arg9
                        require arg10 > 0
                        require stor10[msg.sender]
                        require arg10 <= balanceOf[address(arg9)]
                        balanceOf[arg9] -= arg10
                        balanceOf[msg.sender] += arg10
                        emit 0x9fcf8188: arg10, arg9
                        emit Transfer(arg10, arg9, msg.sender);
                        if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                            return 1
            else:
                require msg.sender == owner
                require owner != arg5
                require arg6 > 0
                require stor10[msg.sender]
                require arg6 <= balanceOf[address(arg5)]
                balanceOf[arg5] -= arg6
                balanceOf[msg.sender] += arg6
                emit 0x9fcf8188: arg6, arg5
                emit Transfer(arg6, arg5, msg.sender);
                if balanceOf[arg5] + balanceOf[msg.sender] == balanceOf[arg5] + balanceOf[msg.sender]:
                    if arg8 <= 0:
                        if arg10 <= 0:
                            return 1
                        require msg.sender == owner
                        require owner != arg9
                        require arg10 > 0
                        require stor10[msg.sender]
                        require arg10 <= balanceOf[address(arg9)]
                        balanceOf[arg9] -= arg10
                        balanceOf[msg.sender] += arg10
                        emit 0x9fcf8188: arg10, arg9
                        emit Transfer(arg10, arg9, msg.sender);
                        if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                            return 1
                    else:
                        require msg.sender == owner
                        require owner != arg7
                        require arg8 > 0
                        require stor10[msg.sender]
                        require arg8 <= balanceOf[address(arg7)]
                        balanceOf[arg7] -= arg8
                        balanceOf[msg.sender] += arg8
                        emit 0x9fcf8188: arg8, arg7
                        emit Transfer(arg8, arg7, msg.sender);
                        if balanceOf[arg7] + balanceOf[msg.sender] == balanceOf[arg7] + balanceOf[msg.sender]:
                            if arg10 <= 0:
                                return 1
                            require msg.sender == owner
                            require owner != arg9
                            require arg10 > 0
                            require stor10[msg.sender]
                            require arg10 <= balanceOf[address(arg9)]
                            balanceOf[arg9] -= arg10
                            balanceOf[msg.sender] += arg10
                            emit 0x9fcf8188: arg10, arg9
                            emit Transfer(arg10, arg9, msg.sender);
                            if balanceOf[arg9] + balanceOf[msg.sender] == balanceOf[arg9] + balanceOf[msg.sender]:
                                return 1
    revert
}

function sub_16b1643b(?) {
    if owner != msg.sender:
        require stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg1 != msg.sender
    require not stor8[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= sub_03f2acf2[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    if arg4 <= 0:
        if arg6 <= 0:
            if arg8 <= 0:
                if arg10 <= 0:
                    return 1
                require arg9
                require arg10 <= balanceOf[address(msg.sender)]
                require arg10 > 0
                require arg9 != msg.sender
                require not stor8[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                balanceOf[msg.sender] -= arg10
                balanceOf[address(arg9)] += arg10
                emit Transfer(arg10, msg.sender, arg9);
                if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                    return 1
            else:
                require arg7
                require arg8 <= balanceOf[address(msg.sender)]
                require arg8 > 0
                require arg7 != msg.sender
                require not stor8[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg8 >= sub_03f2acf2[address(msg.sender)]
                require balanceOf[address(arg7)] + arg8 > balanceOf[address(arg7)]
                balanceOf[msg.sender] -= arg8
                balanceOf[address(arg7)] += arg8
                emit Transfer(arg8, msg.sender, arg7);
                if balanceOf[address(arg7)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg7)]:
                    if arg10 <= 0:
                        return 1
                    require arg9
                    require arg10 <= balanceOf[address(msg.sender)]
                    require arg10 > 0
                    require arg9 != msg.sender
                    require not stor8[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                    require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                    balanceOf[msg.sender] -= arg10
                    balanceOf[address(arg9)] += arg10
                    emit Transfer(arg10, msg.sender, arg9);
                    if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                        return 1
        else:
            require arg5
            require arg6 <= balanceOf[address(msg.sender)]
            require arg6 > 0
            require arg5 != msg.sender
            require not stor8[address(msg.sender)]
            require balanceOf[address(msg.sender)] - arg6 >= sub_03f2acf2[address(msg.sender)]
            require balanceOf[address(arg5)] + arg6 > balanceOf[address(arg5)]
            balanceOf[msg.sender] -= arg6
            balanceOf[address(arg5)] += arg6
            emit Transfer(arg6, msg.sender, arg5);
            if balanceOf[address(arg5)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg5)]:
                if arg8 <= 0:
                    if arg10 <= 0:
                        return 1
                    require arg9
                    require arg10 <= balanceOf[address(msg.sender)]
                    require arg10 > 0
                    require arg9 != msg.sender
                    require not stor8[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                    require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                    balanceOf[msg.sender] -= arg10
                    balanceOf[address(arg9)] += arg10
                    emit Transfer(arg10, msg.sender, arg9);
                    if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                        return 1
                else:
                    require arg7
                    require arg8 <= balanceOf[address(msg.sender)]
                    require arg8 > 0
                    require arg7 != msg.sender
                    require not stor8[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg8 >= sub_03f2acf2[address(msg.sender)]
                    require balanceOf[address(arg7)] + arg8 > balanceOf[address(arg7)]
                    balanceOf[msg.sender] -= arg8
                    balanceOf[address(arg7)] += arg8
                    emit Transfer(arg8, msg.sender, arg7);
                    if balanceOf[address(arg7)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg7)]:
                        if arg10 <= 0:
                            return 1
                        require arg9
                        require arg10 <= balanceOf[address(msg.sender)]
                        require arg10 > 0
                        require arg9 != msg.sender
                        require not stor8[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                        require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                        balanceOf[msg.sender] -= arg10
                        balanceOf[address(arg9)] += arg10
                        emit Transfer(arg10, msg.sender, arg9);
                        if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                            return 1
    else:
        require arg3
        require arg4 <= balanceOf[address(msg.sender)]
        require arg4 > 0
        require arg3 != msg.sender
        require not stor8[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg4 >= sub_03f2acf2[address(msg.sender)]
        require balanceOf[address(arg3)] + arg4 > balanceOf[address(arg3)]
        balanceOf[msg.sender] -= arg4
        balanceOf[address(arg3)] += arg4
        emit Transfer(arg4, msg.sender, arg3);
        if balanceOf[address(arg3)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg3)]:
            if arg6 <= 0:
                if arg8 <= 0:
                    if arg10 <= 0:
                        return 1
                    require arg9
                    require arg10 <= balanceOf[address(msg.sender)]
                    require arg10 > 0
                    require arg9 != msg.sender
                    require not stor8[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                    require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                    balanceOf[msg.sender] -= arg10
                    balanceOf[address(arg9)] += arg10
                    emit Transfer(arg10, msg.sender, arg9);
                    if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                        return 1
                else:
                    require arg7
                    require arg8 <= balanceOf[address(msg.sender)]
                    require arg8 > 0
                    require arg7 != msg.sender
                    require not stor8[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg8 >= sub_03f2acf2[address(msg.sender)]
                    require balanceOf[address(arg7)] + arg8 > balanceOf[address(arg7)]
                    balanceOf[msg.sender] -= arg8
                    balanceOf[address(arg7)] += arg8
                    emit Transfer(arg8, msg.sender, arg7);
                    if balanceOf[address(arg7)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg7)]:
                        if arg10 <= 0:
                            return 1
                        require arg9
                        require arg10 <= balanceOf[address(msg.sender)]
                        require arg10 > 0
                        require arg9 != msg.sender
                        require not stor8[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                        require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                        balanceOf[msg.sender] -= arg10
                        balanceOf[address(arg9)] += arg10
                        emit Transfer(arg10, msg.sender, arg9);
                        if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                            return 1
            else:
                require arg5
                require arg6 <= balanceOf[address(msg.sender)]
                require arg6 > 0
                require arg5 != msg.sender
                require not stor8[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg6 >= sub_03f2acf2[address(msg.sender)]
                require balanceOf[address(arg5)] + arg6 > balanceOf[address(arg5)]
                balanceOf[msg.sender] -= arg6
                balanceOf[address(arg5)] += arg6
                emit Transfer(arg6, msg.sender, arg5);
                if balanceOf[address(arg5)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg5)]:
                    if arg8 <= 0:
                        if arg10 <= 0:
                            return 1
                        require arg9
                        require arg10 <= balanceOf[address(msg.sender)]
                        require arg10 > 0
                        require arg9 != msg.sender
                        require not stor8[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                        require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                        balanceOf[msg.sender] -= arg10
                        balanceOf[address(arg9)] += arg10
                        emit Transfer(arg10, msg.sender, arg9);
                        if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                            return 1
                    else:
                        require arg7
                        require arg8 <= balanceOf[address(msg.sender)]
                        require arg8 > 0
                        require arg7 != msg.sender
                        require not stor8[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - arg8 >= sub_03f2acf2[address(msg.sender)]
                        require balanceOf[address(arg7)] + arg8 > balanceOf[address(arg7)]
                        balanceOf[msg.sender] -= arg8
                        balanceOf[address(arg7)] += arg8
                        emit Transfer(arg8, msg.sender, arg7);
                        if balanceOf[address(arg7)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg7)]:
                            if arg10 <= 0:
                                return 1
                            require arg9
                            require arg10 <= balanceOf[address(msg.sender)]
                            require arg10 > 0
                            require arg9 != msg.sender
                            require not stor8[address(msg.sender)]
                            require balanceOf[address(msg.sender)] - arg10 >= sub_03f2acf2[address(msg.sender)]
                            require balanceOf[address(arg9)] + arg10 > balanceOf[address(arg9)]
                            balanceOf[msg.sender] -= arg10
                            balanceOf[address(arg9)] += arg10
                            emit Transfer(arg10, msg.sender, arg9);
                            if balanceOf[address(arg9)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg9)]:
                                return 1
    revert
}



}
