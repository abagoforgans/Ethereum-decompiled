contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_9ebfad6d;
uint256 sub_cd457ae7;
uint8 stor6; offset 160
uint128 stor6; offset 160
address issuerAddress;
mapping of uint8 stor7;
mapping of uint256 balances;
mapping of uint256 allowed;
address owner;
address newOwner;
mapping of uint8 stor12;
mapping of uint256 sub_57bd7811;
mapping of uint256 sub_1a3476d5;

function name() payable {
    return name[0 len name.length]
}

function sub_161551e4(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function sub_1a3476d5(?) payable {
    require calldata.size - 4 >= 32
    return sub_1a3476d5[address(arg1)]
}

function issuer() payable {
    return issuerAddress
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function transferAllowed() payable {
    return bool(uint8(stor6.field_160))
}

function sub_57bd7811(?) payable {
    require calldata.size - 4 >= 32
    return sub_57bd7811[address(arg1)]
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9ebfad6d(?) payable {
    return sub_9ebfad6d
}

function sub_cd457ae7(?) payable {
    return sub_cd457ae7
}

function newOwner() payable {
    return newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnerChanged(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setIssuer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    issuerAddress = arg1
    emit SetIssuer(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unfreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == issuerAddress
    if stor12[address(arg1)]:
        stor12[address(arg1)] = 0
        emit 0x96c4d592: arg1
}

function freeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == issuerAddress
    if not stor12[address(arg1)]:
        stor12[address(arg1)] = 1
        emit 0x37f015ac: arg1
}

function sub_3642e5cd(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == issuerAddress
    if arg1 != bool(stor7[msg.sender]):
        stor7[msg.sender] = uint8(arg1)
        emit 0xb062282c: msg.sender, arg1
}

function sub_d4cab60d(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == issuerAddress
    if arg1 != bool(uint8(stor6.field_160)):
        Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
        emit TransferAllowed(arg1);
}

function issue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == issuerAddress
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    balances[address(arg1)] += arg2
    emit IssueTokens(arg2, arg1);
}

function sub_2c50da98(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == issuerAddress
    require arg2 + sub_9ebfad6d >= sub_9ebfad6d
    sub_9ebfad6d += arg2
    sub_57bd7811[address(arg1)] += arg2
    require balances[address(arg1)] >= arg2 + sub_57bd7811[address(arg1)]
    emit 0x2cee732e: arg2, arg1
}

function sub_cfc6f363(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == issuerAddress
    require arg2 + sub_cd457ae7 >= sub_cd457ae7
    sub_cd457ae7 += arg2
    sub_1a3476d5[address(arg1)] += arg2
    require balances[address(arg1)] >= arg2 + sub_1a3476d5[address(arg1)]
    emit 0xc4880f24: arg2, arg1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowed[msg.sender][address(arg1)] >= allowed[msg.sender][address(arg1)]
    allowed[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowed[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < allowed[msg.sender][address(arg1)]:
        allowed[msg.sender][address(arg1)] -= arg2
    else:
        allowed[msg.sender][address(arg1)] = 0
    emit Approval(allowed[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require arg1 <= balances[address(msg.sender)]
        totalSupply -= arg1
        balances[address(msg.sender)] -= arg1
        emit BurnTokens(arg1, msg.sender);
        if balances[address(msg.sender)] < sub_57bd7811[address(msg.sender)]:
            sub_57bd7811[address(msg.sender)] = balances[address(msg.sender)]
            sub_9ebfad6d = sub_9ebfad6d - sub_57bd7811[address(msg.sender)] + balances[address(msg.sender)]
            emit 0x45efcce4: (sub_57bd7811[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
        if balances[address(msg.sender)] < sub_1a3476d5[address(msg.sender)]:
            sub_1a3476d5[address(msg.sender)] = balances[address(msg.sender)]
            sub_cd457ae7 = sub_cd457ae7 - sub_1a3476d5[address(msg.sender)] + balances[address(msg.sender)]
            emit 0xfa1e1d5f: (sub_1a3476d5[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
}

function burnAll() payable {
    if balances[msg.sender]:
        require balances[msg.sender] <= balances[address(msg.sender)]
        totalSupply -= balances[msg.sender]
        balances[address(msg.sender)] -= balances[msg.sender]
        emit BurnTokens(balances[msg.sender], msg.sender);
        if balances[address(msg.sender)] < sub_57bd7811[address(msg.sender)]:
            sub_57bd7811[address(msg.sender)] = balances[address(msg.sender)]
            sub_9ebfad6d = sub_9ebfad6d - sub_57bd7811[address(msg.sender)] + balances[address(msg.sender)]
            emit 0x45efcce4: (sub_57bd7811[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
        if balances[address(msg.sender)] < sub_1a3476d5[address(msg.sender)]:
            sub_1a3476d5[address(msg.sender)] = balances[address(msg.sender)]
            sub_cd457ae7 = sub_cd457ae7 - sub_1a3476d5[address(msg.sender)] + balances[address(msg.sender)]
            emit 0xfa1e1d5f: (sub_1a3476d5[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor6.field_160):
        if issuerAddress != arg1:
            require stor7[address(arg2)]
    else:
        if stor12[address(arg1)]:
            if issuerAddress != arg1:
                require stor7[address(arg2)]
        else:
            if stor12[address(arg2)]:
                if issuerAddress != arg1:
                    require stor7[address(arg2)]
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][msg.sender]
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require balances[arg1] >= arg3
    balances[address(arg1)] = balances[arg1] - arg3
    require allowed[address(arg1)][msg.sender] >= arg3
    allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if stor7[address(arg2)]:
        require ext_code.size(arg2)
        call arg2.0x525345d5 with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        if balances[address(arg2)]:
            if balances[address(arg1)] < sub_57bd7811[address(arg1)]:
                sub_57bd7811[address(arg1)] = balances[address(arg1)]
                sub_9ebfad6d = sub_9ebfad6d - sub_57bd7811[address(arg1)] + balances[address(arg1)]
                emit 0x45efcce4: (sub_57bd7811[address(arg1)] - balances[address(arg1)]), arg1
            if balances[address(arg1)] < sub_1a3476d5[address(arg1)]:
                sub_1a3476d5[address(arg1)] = balances[address(arg1)]
                sub_cd457ae7 = sub_cd457ae7 - sub_1a3476d5[address(arg1)] + balances[address(arg1)]
                emit 0xfa1e1d5f: (sub_1a3476d5[address(arg1)] - balances[address(arg1)]), arg1
        else:
            if arg3 <= sub_57bd7811[address(arg1)]:
                if arg3:
                    sub_57bd7811[address(arg1)] -= arg3
                    sub_9ebfad6d -= arg3
                    emit 0x45efcce4: arg3, arg1
                if arg3 <= sub_1a3476d5[address(arg1)]:
                    if arg3:
                        sub_1a3476d5[address(arg1)] -= arg3
                        sub_cd457ae7 -= arg3
                        emit 0xfa1e1d5f: arg3, arg1
                else:
                    if sub_1a3476d5[address(arg1)]:
                        sub_1a3476d5[address(arg1)] = 0
                        sub_cd457ae7 -= sub_1a3476d5[address(arg1)]
                        emit 0xfa1e1d5f: sub_1a3476d5[address(arg1)], arg1
            else:
                if sub_57bd7811[address(arg1)]:
                    sub_57bd7811[address(arg1)] = 0
                    sub_9ebfad6d -= sub_57bd7811[address(arg1)]
                    emit 0x45efcce4: sub_57bd7811[address(arg1)], arg1
                if arg3 <= sub_1a3476d5[address(arg1)]:
                    if arg3:
                        sub_1a3476d5[address(arg1)] -= arg3
                        sub_cd457ae7 -= arg3
                        emit 0xfa1e1d5f: arg3, arg1
                else:
                    if sub_1a3476d5[address(arg1)]:
                        sub_1a3476d5[address(arg1)] = 0
                        sub_cd457ae7 -= sub_1a3476d5[address(arg1)]
                        emit 0xfa1e1d5f: sub_1a3476d5[address(arg1)], arg1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor6.field_160):
        if issuerAddress != msg.sender:
            require stor7[address(arg1)]
    else:
        if stor12[address(msg.sender)]:
            if issuerAddress != msg.sender:
                require stor7[address(arg1)]
        else:
            if stor12[address(arg1)]:
                if issuerAddress != msg.sender:
                    require stor7[address(arg1)]
    require arg1
    require arg2 <= balances[msg.sender]
    require balances[msg.sender] >= arg2
    balances[msg.sender] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if stor7[address(arg1)]:
        require ext_code.size(arg1)
        call arg1.0x525345d5 with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if balances[address(arg1)]:
            if balances[address(msg.sender)] < sub_57bd7811[address(msg.sender)]:
                sub_57bd7811[address(msg.sender)] = balances[address(msg.sender)]
                sub_9ebfad6d = sub_9ebfad6d - sub_57bd7811[address(msg.sender)] + balances[address(msg.sender)]
                emit 0x45efcce4: (sub_57bd7811[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
            if balances[address(msg.sender)] < sub_1a3476d5[address(msg.sender)]:
                sub_1a3476d5[address(msg.sender)] = balances[address(msg.sender)]
                sub_cd457ae7 = sub_cd457ae7 - sub_1a3476d5[address(msg.sender)] + balances[address(msg.sender)]
                emit 0xfa1e1d5f: (sub_1a3476d5[address(msg.sender)] - balances[address(msg.sender)]), msg.sender
        else:
            if arg2 <= sub_57bd7811[address(msg.sender)]:
                if arg2:
                    sub_57bd7811[address(msg.sender)] -= arg2
                    sub_9ebfad6d -= arg2
                    emit 0x45efcce4: arg2, msg.sender
                if arg2 <= sub_1a3476d5[address(msg.sender)]:
                    if arg2:
                        sub_1a3476d5[address(msg.sender)] -= arg2
                        sub_cd457ae7 -= arg2
                        emit 0xfa1e1d5f: arg2, msg.sender
                else:
                    if sub_1a3476d5[address(msg.sender)]:
                        sub_1a3476d5[address(msg.sender)] = 0
                        sub_cd457ae7 -= sub_1a3476d5[address(msg.sender)]
                        emit 0xfa1e1d5f: sub_1a3476d5[address(msg.sender)], msg.sender
            else:
                if sub_57bd7811[address(msg.sender)]:
                    sub_57bd7811[address(msg.sender)] = 0
                    sub_9ebfad6d -= sub_57bd7811[address(msg.sender)]
                    emit 0x45efcce4: sub_57bd7811[address(msg.sender)], msg.sender
                if arg2 <= sub_1a3476d5[address(msg.sender)]:
                    if arg2:
                        sub_1a3476d5[address(msg.sender)] -= arg2
                        sub_cd457ae7 -= arg2
                        emit 0xfa1e1d5f: arg2, msg.sender
                else:
                    if sub_1a3476d5[address(msg.sender)]:
                        sub_1a3476d5[address(msg.sender)] = 0
                        sub_cd457ae7 -= sub_1a3476d5[address(msg.sender)]
                        emit 0xfa1e1d5f: sub_1a3476d5[address(msg.sender)], msg.sender
    return 1
}



}
