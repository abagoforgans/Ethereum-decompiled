contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 commission;
address sub_ff69909eAddress;
uint256 min_payment;
mapping of uint256 buyers;
mapping of address referrals;

function commission(uint256 arg1) {
    require arg1 < commission.length
    return commission[arg1]
}

function owner() {
    return owner
}

function buyers(address arg1) {
    return buyers[arg1]
}

function referrals(address arg1) {
    return referrals[arg1]
}

function min_payment() {
    return min_payment
}

function sub_ff69909e(?) {
    return sub_ff69909eAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6d427fa3(?) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit 0x7a4e22fa: min_payment, arg1
    min_payment = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_18287008(?) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    emit 0xc92ec79b: sub_ff69909eAddress, arg1
    sub_ff69909eAddress = arg1
}

function setCommission(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    require arg1 < commission.length
    emit 0x26cc4fe2: commission[arg1], arg2, arg1
    commission[arg1] = arg2
}

function _fallback() payable {
    if msg.value < min_payment:
        revert with 0, 'Too small amount'
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if not referrals[address(msg.sender)]:
        if not mem[128 len 20]:
            revert with 0, 'Zero address referral'
        if mem[128 len 20] != sub_ff69909eAddress:
            if buyers[address(mem[128 len 20])] <= 0:
                revert with 0, 'The mediator did not make purchases'
        idx = 0
        s = Mask(96, 0, calldata.size), mem[128 len 20]
        while idx < commission.length:
            if commission[idx] <= 0:
                mem[0] = address(s)
                mem[32] = 5
                if referrals[address(s)]:
                    idx = idx + 1
                    s = referrals[address(s)]
                    continue 
                call sub_ff69909eAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                    revert with 0, 'NaN'
                buyers[address(msg.sender)] += msg.value
                referrals[address(msg.sender)] = mem[128 len 20]
                emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, mem[128 len 20]
            else:
                require idx < commission.length
                if not msg.value:
                    call address(s) with:
                         gas 2300 wei
                    if ext_call.success:
                        if 0 > msg.value:
                            revert with 0, 'NaN'
                        mem[ceil32(calldata.size) + 128] = idx
                        mem[ceil32(calldata.size) + 160] = 0
                        emit 0x91d67fa7: idx, 0, msg.sender, address(s)
                    mem[0] = address(s)
                    mem[32] = 5
                    if referrals[address(s)]:
                        idx = idx + 1
                        s = referrals[address(s)]
                        continue 
                    call sub_ff69909eAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                        revert with 0, 'NaN'
                    buyers[address(msg.sender)] += msg.value
                    referrals[address(msg.sender)] = mem[128 len 20]
                    emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, mem[128 len 20]
                else:
                    require msg.value
                    if msg.value * commission[idx] / msg.value != commission[idx]:
                        revert with 0, 'NaN'
                    call address(s) with:
                       value msg.value * commission[idx] / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[0] = address(s)
                        mem[32] = 5
                        if referrals[address(s)]:
                            idx = idx + 1
                            s = referrals[address(s)]
                            continue 
                        call sub_ff69909eAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                            revert with 0, 'NaN'
                        buyers[address(msg.sender)] += msg.value
                        referrals[address(msg.sender)] = mem[128 len 20]
                        emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, mem[128 len 20]
                    else:
                        if msg.value * commission[idx] / 100 > msg.value:
                            revert with 0, 'NaN'
                        mem[ceil32(calldata.size) + 128] = idx
                        mem[ceil32(calldata.size) + 160] = msg.value * commission[idx] / 100
                        emit 0x91d67fa7: idx, msg.value * commission[idx] / 100, msg.sender, address(s)
                        mem[0] = address(s)
                        mem[32] = 5
                        if referrals[address(s)]:
                            idx = idx + 1
                            s = referrals[address(s)]
                            continue 
                        call sub_ff69909eAddress with:
                           value msg.value - (msg.value * commission[idx] / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                            revert with 0, 'NaN'
                        buyers[address(msg.sender)] += msg.value
                        referrals[address(msg.sender)] = mem[128 len 20]
                        emit 0x554e97a0: msg.value, msg.value - (msg.value * commission[idx] / 100), msg.sender, sub_ff69909eAddress, mem[128 len 20]
        call sub_ff69909eAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
            revert with 0, 'NaN'
        buyers[address(msg.sender)] += msg.value
        referrals[address(msg.sender)] = mem[128 len 20]
        emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, mem[128 len 20]
    else:
        mem[0] = msg.sender
        mem[32] = 5
        if not referrals[address(msg.sender)]:
            revert with 0, 'Zero address referral'
        if referrals[address(msg.sender)] == sub_ff69909eAddress:
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while idx < commission.length:
                if commission[idx] <= 0:
                    mem[0] = address(s)
                    mem[32] = 5
                    if referrals[address(s)]:
                        idx = idx + 1
                        s = referrals[address(s)]
                        continue 
                    call sub_ff69909eAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                        revert with 0, 'NaN'
                    buyers[address(msg.sender)] += msg.value
                    referrals[address(msg.sender)] = referrals[address(msg.sender)]
                    emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                else:
                    require idx < commission.length
                    if not msg.value:
                        call address(s) with:
                             gas 2300 wei
                        if ext_call.success:
                            if 0 > msg.value:
                                revert with 0, 'NaN'
                            mem[ceil32(calldata.size) + 128] = idx
                            mem[ceil32(calldata.size) + 160] = 0
                            emit 0x91d67fa7: idx, 0, msg.sender, address(s)
                        mem[0] = address(s)
                        mem[32] = 5
                        if referrals[address(s)]:
                            idx = idx + 1
                            s = referrals[address(s)]
                            continue 
                        call sub_ff69909eAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                            revert with 0, 'NaN'
                        buyers[address(msg.sender)] += msg.value
                        referrals[address(msg.sender)] = referrals[address(msg.sender)]
                        emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                    else:
                        require msg.value
                        if msg.value * commission[idx] / msg.value != commission[idx]:
                            revert with 0, 'NaN'
                        call address(s) with:
                           value msg.value * commission[idx] / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[0] = address(s)
                            mem[32] = 5
                            if referrals[address(s)]:
                                idx = idx + 1
                                s = referrals[address(s)]
                                continue 
                            call sub_ff69909eAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                                revert with 0, 'NaN'
                            buyers[address(msg.sender)] += msg.value
                            referrals[address(msg.sender)] = referrals[address(msg.sender)]
                            emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                        else:
                            if msg.value * commission[idx] / 100 > msg.value:
                                revert with 0, 'NaN'
                            mem[ceil32(calldata.size) + 128] = idx
                            mem[ceil32(calldata.size) + 160] = msg.value * commission[idx] / 100
                            emit 0x91d67fa7: idx, msg.value * commission[idx] / 100, msg.sender, address(s)
                            mem[0] = address(s)
                            mem[32] = 5
                            if referrals[address(s)]:
                                idx = idx + 1
                                s = referrals[address(s)]
                                continue 
                            call sub_ff69909eAddress with:
                               value msg.value - (msg.value * commission[idx] / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                                revert with 0, 'NaN'
                            buyers[address(msg.sender)] += msg.value
                            referrals[address(msg.sender)] = referrals[address(msg.sender)]
                            emit 0x554e97a0: msg.value, msg.value - (msg.value * commission[idx] / 100), msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
        else:
            if buyers[stor5[address(msg.sender)]] <= 0:
                revert with 0, 'The mediator did not make purchases'
            idx = 0
            s = referrals[address(msg.sender)]
            while idx < commission.length:
                if commission[idx] <= 0:
                    mem[0] = address(s)
                    mem[32] = 5
                    if referrals[address(s)]:
                        idx = idx + 1
                        s = referrals[address(s)]
                        continue 
                    call sub_ff69909eAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                        revert with 0, 'NaN'
                    buyers[address(msg.sender)] += msg.value
                    referrals[address(msg.sender)] = referrals[address(msg.sender)]
                    emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                else:
                    require idx < commission.length
                    if not msg.value:
                        call address(s) with:
                             gas 2300 wei
                        if ext_call.success:
                            if 0 > msg.value:
                                revert with 0, 'NaN'
                            mem[ceil32(calldata.size) + 128] = idx
                            mem[ceil32(calldata.size) + 160] = 0
                            emit 0x91d67fa7: idx, 0, msg.sender, address(s)
                        mem[0] = address(s)
                        mem[32] = 5
                        if referrals[address(s)]:
                            idx = idx + 1
                            s = referrals[address(s)]
                            continue 
                        call sub_ff69909eAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                            revert with 0, 'NaN'
                        buyers[address(msg.sender)] += msg.value
                        referrals[address(msg.sender)] = referrals[address(msg.sender)]
                        emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                    else:
                        require msg.value
                        if msg.value * commission[idx] / msg.value != commission[idx]:
                            revert with 0, 'NaN'
                        call address(s) with:
                           value msg.value * commission[idx] / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[0] = address(s)
                            mem[32] = 5
                            if referrals[address(s)]:
                                idx = idx + 1
                                s = referrals[address(s)]
                                continue 
                            call sub_ff69909eAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                                revert with 0, 'NaN'
                            buyers[address(msg.sender)] += msg.value
                            referrals[address(msg.sender)] = referrals[address(msg.sender)]
                            emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
                        else:
                            if msg.value * commission[idx] / 100 > msg.value:
                                revert with 0, 'NaN'
                            mem[ceil32(calldata.size) + 128] = idx
                            mem[ceil32(calldata.size) + 160] = msg.value * commission[idx] / 100
                            emit 0x91d67fa7: idx, msg.value * commission[idx] / 100, msg.sender, address(s)
                            mem[0] = address(s)
                            mem[32] = 5
                            if referrals[address(s)]:
                                idx = idx + 1
                                s = referrals[address(s)]
                                continue 
                            call sub_ff69909eAddress with:
                               value msg.value - (msg.value * commission[idx] / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
                                revert with 0, 'NaN'
                            buyers[address(msg.sender)] += msg.value
                            referrals[address(msg.sender)] = referrals[address(msg.sender)]
                            emit 0x554e97a0: msg.value, msg.value - (msg.value * commission[idx] / 100), msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
        call sub_ff69909eAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
            revert with 0, 'NaN'
        buyers[address(msg.sender)] += msg.value
        referrals[address(msg.sender)] = referrals[address(msg.sender)]
        emit 0x554e97a0: msg.value, msg.value, msg.sender, sub_ff69909eAddress, referrals[address(msg.sender)]
}



}
