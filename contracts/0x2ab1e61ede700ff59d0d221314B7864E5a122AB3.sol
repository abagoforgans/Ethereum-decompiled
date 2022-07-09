contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 MAX_INVESTORS;
uint8 stor3;
uint8 stor3; offset 8
address stor3;
address baseAddress; offset 16
address sub_f0a0b44eAddress;
uint256 expirationTimestamp;
mapping of uint256 sub_6f7d9b5f;
mapping of uint256 sub_6a02182c;
array of struct stor8;
mapping of uint256 sub_a5e8dbc6;

function baseAddress() {
    return baseAddress
}

function sub_6a02182c(?) {
    return sub_6a02182c[stor4]
}

function MAX_INVESTORS() {
    return MAX_INVESTORS
}

function sub_6f7d9b5f(?) {
    return sub_6f7d9b5f[stor4]
}

function owner() {
    return owner
}

function isCancelled() {
    return bool(uint8(stor3.field_8))
}

function expirationTimestamp() {
    return expirationTimestamp
}

function sub_a5e8dbc6(?) {
    require calldata.size - 4 >= 32
    return sub_a5e8dbc6[address(stor3.field_0)][address(arg1)]
}

function sub_aeb52d16(?) {
    return sub_6f7d9b5f[address(stor3.field_0)]
}

function sub_bbff4cee(?) {
    require calldata.size - 4 >= 32
    return sub_a5e8dbc6[stor4][address(arg1)]
}

function sub_cc768b61(?) {
    return bool(uint8(stor3.field_0))
}

function sub_f0a0b44e(?) {
    return sub_f0a0b44eAddress
}

function sub_f90919fa(?) {
    return sub_6a02182c[address(stor3.field_0)]
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_5e553b98(?) {
    return (sub_6a02182c[stor4] == sub_6f7d9b5f[stor4])
}

function sub_8bfa9118(?) {
    return (sub_6a02182c[address(stor3.field_0)] == sub_6f7d9b5f[address(stor3.field_0)])
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_19887f6c(?) {
    if not stor8[stor4].field_0:
        mem[(32 * stor8[stor4].field_0) + 128] = 32
        mem[(32 * stor8[stor4].field_0) + 160] = stor8[stor4].field_0
        mem[(32 * stor8[stor4].field_0) + 192 len floor32(stor8[stor4].field_0)] = mem[128 len floor32(stor8[stor4].field_0)]
        return memory
          from (32 * stor8[stor4].field_0) + 128
           len (96 * stor8[stor4].field_0) + 64
    mem[128] = address(stor8[stor4].field_0)
    idx = 128
    s = 0
    while (32 * stor8[stor4].field_0) + 96 > idx:
        mem[idx + 32] = address(stor8[stor4][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8[stor4].field_0) + 192 len floor32(stor8[stor4].field_0)] = mem[128 len floor32(stor8[stor4].field_0)]
    return Array(len=stor8[stor4].field_0, data=mem[128 len floor32(stor8[stor4].field_0)], mem[(32 * stor8[stor4].field_0) + floor32(stor8[stor4].field_0) + 192 len (32 * stor8[stor4].field_0) - floor32(stor8[stor4].field_0)]), 
}

function sub_ac042ee6(?) {
    if stor8[address(stor3.field_0)].field_0:
        mem[128] = address(stor8[address(stor3.field_0)].field_0)
        if (32 * stor8[address(stor3.field_0)].field_0) + 32 > 64:
            mem[160] = address(stor8[address(stor3.field_0)].field_256)
            idx = 160
            s = 1
            while (32 * stor8[address(stor3.field_0)].field_0) + 96 > idx:
                mem[idx + 32] = address(stor8[address(stor3.field_0)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor8[address(stor3.field_0)].field_0) + 128] = 32
    mem[(32 * stor8[address(stor3.field_0)].field_0) + 160] = stor8[address(stor3.field_0)].field_0
    mem[(32 * stor8[address(stor3.field_0)].field_0) + 192 len floor32(stor8[address(stor3.field_0)].field_0)] = mem[128 len floor32(stor8[address(stor3.field_0)].field_0)]
    return memory
      from (32 * stor8[address(stor3.field_0)].field_0) + 128
       len (96 * stor8[address(stor3.field_0)].field_0) + 64
}

function cancel() {
    stor1++
    require msg.sender == owner
    if uint8(stor3.field_8):
        revert with 0, 'Already cancelled'
    if uint8(stor3.field_0):
        revert with 0, 'Already swapped'
    mem[160] = baseAddress
    mem[192] = sub_f0a0b44eAddress
    idx = 0
    while idx < 2:
        _17 = mem[(32 * idx) + 160]
        mem[0] = mem[(32 * idx) + 172 len 20]
        mem[32] = 8
        _26 = sha3(mem[(32 * idx) + 172 len 20], 8)
        s = 0
        while s < stor[_26]:
            require s < stor8[address(_17)].field_0
            if not address(_17):
                call address(stor8[address(_17)][s].field_0) with:
                   value sub_a5e8dbc6[address(_17)][address(stor8[address(_17)][s].field_0)] wei
                     gas 2300 * is_zero(value) wei
            else:
                mem[224] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[228] = address(stor8[address(_17)][s].field_0)
                mem[260] = sub_a5e8dbc6[address(_17)][address(stor8[address(_17)][s].field_0)]
                require ext_code.size(address(_17))
                call address(_17).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor8[address(_17)][s].field_0), sub_a5e8dbc6[address(_17)][address(stor8[address(_17)][s].field_0)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(_17)
            mem[32] = 8
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    uint8(stor3.field_8) = 1
    emit Cancel()
    require stor1 + 1 == stor1
}

function sub_95330120(?) {
    if not sub_a5e8dbc6[stor4][address(msg.sender)]:
        revert with 0, 'Allowed only for investors'
    stor1++
    if uint8(stor3.field_0):
        revert with 0, 'Already swapped'
    if sub_a5e8dbc6[stor4][msg.sender]:
        sub_a5e8dbc6[stor4][address(msg.sender)] = 0
    idx = 0
    while idx < stor8[stor4].field_0 - 1:
        require idx < stor8[stor4].field_0
        mem[0] = sha3(sub_f0a0b44eAddress, 8)
        if address(stor8[stor4][idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        require stor8[stor4].field_0 - 1 < stor8[stor4].field_0
        require idx < stor8[stor4].field_0
        address(stor8[stor4][idx].field_0) = address(stor8[stor4][stor8[stor4].field_0].field_0)
        require stor8[stor4].field_0 - 1 < stor8[stor4].field_0
        address(stor8[stor4][stor8[stor4].field_0].field_0) = 0
        stor8[stor4].field_0--
        if stor8[stor4].field_0 > stor8[stor4].field_0 - 1:
            idx = stor8[stor4].field_0 + sha3(sha3(sub_f0a0b44eAddress, 8)) - 1
            while sha3(sha3(sub_f0a0b44eAddress, 8)) + stor8[stor4].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if sub_a5e8dbc6[stor4][msg.sender]:
            require sub_a5e8dbc6[stor4][msg.sender] <= sub_6a02182c[stor4]
            sub_6a02182c[stor4] -= sub_a5e8dbc6[stor4][msg.sender]
            if not sub_f0a0b44eAddress:
                call msg.sender with:
                   value sub_a5e8dbc6[stor4][msg.sender] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(sub_f0a0b44eAddress)
                call sub_f0a0b44eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a5e8dbc6[stor4][msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Refund(sub_a5e8dbc6[stor4][msg.sender], sub_f0a0b44eAddress, msg.sender);
        require stor1 + 1 == stor1
    require stor8[stor4].field_0 - 1 < stor8[stor4].field_0
    address(stor8[stor4][stor8[stor4].field_0].field_0) = address(stor8[stor4][stor8[stor4].field_0].field_0)
    address(stor8[stor4][stor8[stor4].field_0].field_0) = 0
    stor8[stor4].field_0--
    if stor8[stor4].field_0 > stor8[stor4].field_0 - 1:
        idx = stor8[stor4].field_0 - 1
        while stor8[stor4].field_0 > idx:
            stor8[stor4][idx].field_0 = 0
            idx = idx + 1
            continue 
    if sub_a5e8dbc6[stor4][msg.sender]:
        require sub_a5e8dbc6[stor4][msg.sender] <= sub_6a02182c[stor4]
        sub_6a02182c[stor4] -= sub_a5e8dbc6[stor4][msg.sender]
        if not sub_f0a0b44eAddress:
            call msg.sender with:
               value sub_a5e8dbc6[stor4][msg.sender] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(sub_f0a0b44eAddress)
            call sub_f0a0b44eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a5e8dbc6[stor4][msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Refund(sub_a5e8dbc6[stor4][msg.sender], sub_f0a0b44eAddress, msg.sender);
    require stor1 + 1 == stor1
}

function sub_461ec924(?) {
    if not sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)]:
        revert with 0, 'Allowed only for investors'
    stor1++
    if uint8(stor3.field_0):
        revert with 0, 'Already swapped'
    if sub_a5e8dbc6[address(stor3.field_0)][msg.sender]:
        sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)] = 0
    idx = 0
    while idx < stor8[address(stor3.field_0)].field_0 - 1:
        require idx < stor8[address(stor3.field_0)].field_0
        mem[0] = sha3(address(stor3.field_0), 8)
        if address(stor8[address(stor3.field_0)][idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        require stor8[address(stor3.field_0)].field_0 - 1 < stor8[address(stor3.field_0)].field_0
        require idx < stor8[address(stor3.field_0)].field_0
        address(stor8[address(stor3.field_0)][idx].field_0) = address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0)
        require stor8[address(stor3.field_0)].field_0 - 1 < stor8[address(stor3.field_0)].field_0
        address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0) = 0
        stor8[address(stor3.field_0)].field_0--
        if stor8[address(stor3.field_0)].field_0 > stor8[address(stor3.field_0)].field_0 - 1:
            idx = stor8[address(stor3.field_0)].field_0 + sha3(sha3(address(stor3.field_0), 8)) - 1
            while sha3(sha3(address(stor3.field_0), 8)) + stor8[address(stor3.field_0)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if sub_a5e8dbc6[address(stor3.field_0)][msg.sender]:
            require sub_a5e8dbc6[address(stor3.field_0)][msg.sender] <= sub_6a02182c[address(stor3.field_0)]
            sub_6a02182c[address(stor3.field_0)] -= sub_a5e8dbc6[address(stor3.field_0)][msg.sender]
            if not baseAddress:
                call msg.sender with:
                   value sub_a5e8dbc6[address(stor3.field_0)][msg.sender] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(baseAddress)
                call baseAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a5e8dbc6[address(stor3.field_0)][msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Refund(sub_a5e8dbc6[address(stor3.field_0)][msg.sender], baseAddress, msg.sender);
        require stor1 + 1 == stor1
    require stor8[address(stor3.field_0)].field_0 - 1 < stor8[address(stor3.field_0)].field_0
    address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0) = address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0)
    address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0) = 0
    stor8[address(stor3.field_0)].field_0--
    if stor8[address(stor3.field_0)].field_0 > stor8[address(stor3.field_0)].field_0 - 1:
        idx = stor8[address(stor3.field_0)].field_0 - 1
        while stor8[address(stor3.field_0)].field_0 > idx:
            stor8[address(stor3.field_0)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if sub_a5e8dbc6[address(stor3.field_0)][msg.sender]:
        require sub_a5e8dbc6[address(stor3.field_0)][msg.sender] <= sub_6a02182c[address(stor3.field_0)]
        sub_6a02182c[address(stor3.field_0)] -= sub_a5e8dbc6[address(stor3.field_0)][msg.sender]
        if not baseAddress:
            call msg.sender with:
               value sub_a5e8dbc6[address(stor3.field_0)][msg.sender] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a5e8dbc6[address(stor3.field_0)][msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Refund(sub_a5e8dbc6[address(stor3.field_0)][msg.sender], baseAddress, msg.sender);
    require stor1 + 1 == stor1
}

function _fallback() payable {
    stor1++
    if baseAddress:
        if sub_f0a0b44eAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x74596f752063616e206465706f736974206f6e6c792062617365206f722071756f74652063757272656e63,
                        mem[207 len 21]
    if msg.value <= 0:
        revert with 0, 'Currency amount must be positive'
    if sub_6a02182c[0] >= sub_6f7d9b5f[0]:
        revert with 0, 'Limit already reached'
    if block.timestamp > expirationTimestamp:
        revert with 0, 'Contract expired'
    if not sub_a5e8dbc6[0][address(msg.sender)]:
        if stor8[0].field_0 >= MAX_INVESTORS:
            revert with 0, 'Too many investors'
        stor8[0].field_0++
        address(stor8[0][stor8[0].field_0].field_0) = msg.sender
    require msg.value + sub_6a02182c[0] >= sub_6a02182c[0]
    if msg.value + sub_6a02182c[0] <= sub_6f7d9b5f[0]:
        require msg.value + sub_a5e8dbc6[0][address(msg.sender)] >= sub_a5e8dbc6[0][address(msg.sender)]
        sub_a5e8dbc6[0][address(msg.sender)] += msg.value
        require msg.value + sub_6a02182c[0] >= sub_6a02182c[0]
        sub_6a02182c[0] += msg.value
        emit Deposit(msg.value, sub_a5e8dbc6[0][address(msg.sender)], 0, msg.sender);
    else:
        require sub_6f7d9b5f[0] <= msg.value + sub_6a02182c[0]
        call msg.sender with:
           value msg.value + sub_6a02182c[0] - sub_6f7d9b5f[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.value + sub_6a02182c[0] - sub_6f7d9b5f[0] <= msg.value
        require -sub_6a02182c[0] + sub_6f7d9b5f[0] + sub_a5e8dbc6[0][address(msg.sender)] >= sub_a5e8dbc6[0][address(msg.sender)]
        sub_a5e8dbc6[0][address(msg.sender)] = -sub_6a02182c[0] + sub_6f7d9b5f[0] + sub_a5e8dbc6[0][address(msg.sender)]
        require sub_6f7d9b5f[0] >= sub_6a02182c[0]
        sub_6a02182c[0] = sub_6f7d9b5f[0]
        emit Deposit(-sub_6a02182c[0] + sub_6f7d9b5f[0], sub_a5e8dbc6[0][address(msg.sender)], 0, msg.sender);
    if sub_6a02182c[address(stor3.field_0)] == sub_6f7d9b5f[address(stor3.field_0)]:
        if sub_6a02182c[stor4] == sub_6f7d9b5f[stor4]:
            if uint8(stor3.field_0):
                revert with 0, 'Already swapped'
            if uint8(stor3.field_8):
                revert with 0, 'Already cancelled'
            if sub_6a02182c[address(stor3.field_0)] != sub_6f7d9b5f[address(stor3.field_0)]:
                revert with 0, 'Base tokens not filled'
            if sub_6a02182c[stor4] != sub_6f7d9b5f[stor4]:
                revert with 0, 'Quote tokens not filled'
            if block.timestamp > expirationTimestamp:
                revert with 0, 'Contract expired'
            idx = 0
            while idx < stor8[address(stor3.field_0)].field_0:
                require idx < stor8[address(stor3.field_0)].field_0
                if idx + 1 == stor8[address(stor3.field_0)].field_0:
                    if not sub_f0a0b44eAddress:
                        call address(stor8[address(stor3.field_0)][idx].field_0) with:
                           value sub_6a02182c[stor4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                        mem[132] = sub_6a02182c[stor4]
                        require ext_code.size(sub_f0a0b44eAddress)
                        call sub_f0a0b44eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[stor4]
                    emit 0x57dd3e3f: sub_6a02182c[stor4], sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                else:
                    if not sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)]:
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require 0 / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value 0 / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), 0 / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                    else:
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] == sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                mem[0] = baseAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor8[stor4].field_0:
                require idx < stor8[stor4].field_0
                if idx + 1 == stor8[stor4].field_0:
                    if not baseAddress:
                        call address(stor8[stor4][idx].field_0) with:
                           value sub_6a02182c[address(stor3.field_0)] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[stor4][idx].field_0)
                        mem[132] = sub_6a02182c[address(stor3.field_0)]
                        require ext_code.size(baseAddress)
                        call baseAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[address(stor3.field_0)]
                    emit 0x57dd3e3f: sub_6a02182c[address(stor3.field_0)], baseAddress, address(stor8[stor4][idx].field_0)
                else:
                    if not sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)]:
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require 0 / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value 0 / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), 0 / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                    else:
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] == sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                mem[0] = sub_f0a0b44eAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            uint8(stor3.field_0) = 1
            emit Swap(msg.sender);
    require stor1 + 1 == stor1
}

function sub_797a63d3(?) {
    require calldata.size - 4 >= 32
    stor1++
    require ext_code.size(sub_f0a0b44eAddress)
    staticcall sub_f0a0b44eAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe416c6c6f77616e63652073686f756c64206265206e6f74206c657373207468616e20616d6f756e,
                    mem[204 len 24]
    require ext_code.size(sub_f0a0b44eAddress)
    call sub_f0a0b44eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if baseAddress != sub_f0a0b44eAddress:
        if sub_f0a0b44eAddress != sub_f0a0b44eAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x74596f752063616e206465706f736974206f6e6c792062617365206f722071756f74652063757272656e63,
                        mem[207 len 21]
    if arg1 <= 0:
        revert with 0, 'Currency amount must be positive'
    if sub_6a02182c[stor4] >= sub_6f7d9b5f[stor4]:
        revert with 0, 'Limit already reached'
    if block.timestamp > expirationTimestamp:
        revert with 0, 'Contract expired'
    if not sub_a5e8dbc6[stor4][address(msg.sender)]:
        if stor8[stor4].field_0 >= MAX_INVESTORS:
            revert with 0, 'Too many investors'
        stor8[stor4].field_0++
        address(stor8[stor4][stor8[stor4].field_0].field_0) = msg.sender
    require arg1 + sub_6a02182c[stor4] >= sub_6a02182c[stor4]
    if arg1 + sub_6a02182c[stor4] <= sub_6f7d9b5f[stor4]:
        require arg1 + sub_a5e8dbc6[stor4][address(msg.sender)] >= sub_a5e8dbc6[stor4][address(msg.sender)]
        sub_a5e8dbc6[stor4][address(msg.sender)] += arg1
        require arg1 + sub_6a02182c[stor4] >= sub_6a02182c[stor4]
        sub_6a02182c[stor4] += arg1
        emit Deposit(arg1, sub_a5e8dbc6[stor4][address(msg.sender)], sub_f0a0b44eAddress, msg.sender);
    else:
        require sub_6f7d9b5f[stor4] <= arg1 + sub_6a02182c[stor4]
        if not sub_f0a0b44eAddress:
            call msg.sender with:
               value arg1 + sub_6a02182c[stor4] - sub_6f7d9b5f[stor4] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(sub_f0a0b44eAddress)
            call sub_f0a0b44eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 + sub_6a02182c[stor4] - sub_6f7d9b5f[stor4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 + sub_6a02182c[stor4] - sub_6f7d9b5f[stor4] <= arg1
        require -sub_6a02182c[stor4] + sub_6f7d9b5f[stor4] + sub_a5e8dbc6[stor4][address(msg.sender)] >= sub_a5e8dbc6[stor4][address(msg.sender)]
        sub_a5e8dbc6[stor4][address(msg.sender)] = -sub_6a02182c[stor4] + sub_6f7d9b5f[stor4] + sub_a5e8dbc6[stor4][address(msg.sender)]
        require sub_6f7d9b5f[stor4] >= sub_6a02182c[stor4]
        sub_6a02182c[stor4] = sub_6f7d9b5f[stor4]
        emit Deposit(-sub_6a02182c[stor4] + sub_6f7d9b5f[stor4], sub_a5e8dbc6[stor4][address(msg.sender)], sub_f0a0b44eAddress, msg.sender);
    if sub_6a02182c[address(stor3.field_0)] == sub_6f7d9b5f[address(stor3.field_0)]:
        if sub_6a02182c[stor4] == sub_6f7d9b5f[stor4]:
            if uint8(stor3.field_0):
                revert with 0, 'Already swapped'
            if uint8(stor3.field_8):
                revert with 0, 'Already cancelled'
            if sub_6a02182c[address(stor3.field_0)] != sub_6f7d9b5f[address(stor3.field_0)]:
                revert with 0, 'Base tokens not filled'
            if sub_6a02182c[stor4] != sub_6f7d9b5f[stor4]:
                revert with 0, 'Quote tokens not filled'
            if block.timestamp > expirationTimestamp:
                revert with 0, 'Contract expired'
            idx = 0
            while idx < stor8[address(stor3.field_0)].field_0:
                require idx < stor8[address(stor3.field_0)].field_0
                if idx + 1 == stor8[address(stor3.field_0)].field_0:
                    if not sub_f0a0b44eAddress:
                        call address(stor8[address(stor3.field_0)][idx].field_0) with:
                           value sub_6a02182c[stor4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                        mem[132] = sub_6a02182c[stor4]
                        require ext_code.size(sub_f0a0b44eAddress)
                        call sub_f0a0b44eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[stor4]
                    emit 0x57dd3e3f: sub_6a02182c[stor4], sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                else:
                    if not sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)]:
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require 0 / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value 0 / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), 0 / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                    else:
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] == sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                mem[0] = baseAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor8[stor4].field_0:
                require idx < stor8[stor4].field_0
                if idx + 1 == stor8[stor4].field_0:
                    if not baseAddress:
                        call address(stor8[stor4][idx].field_0) with:
                           value sub_6a02182c[address(stor3.field_0)] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[stor4][idx].field_0)
                        mem[132] = sub_6a02182c[address(stor3.field_0)]
                        require ext_code.size(baseAddress)
                        call baseAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[address(stor3.field_0)]
                    emit 0x57dd3e3f: sub_6a02182c[address(stor3.field_0)], baseAddress, address(stor8[stor4][idx].field_0)
                else:
                    if not sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)]:
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require 0 / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value 0 / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), 0 / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                    else:
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] == sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                mem[0] = sub_f0a0b44eAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            uint8(stor3.field_0) = 1
            emit Swap(msg.sender);
    require stor1 + 1 == stor1
}

function sub_82d1e733(?) {
    require calldata.size - 4 >= 32
    stor1++
    require ext_code.size(baseAddress)
    staticcall baseAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe416c6c6f77616e63652073686f756c64206265206e6f74206c657373207468616e20616d6f756e,
                    mem[204 len 24]
    require ext_code.size(baseAddress)
    call baseAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if baseAddress != baseAddress:
        if sub_f0a0b44eAddress != baseAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x74596f752063616e206465706f736974206f6e6c792062617365206f722071756f74652063757272656e63,
                        mem[207 len 21]
    if arg1 <= 0:
        revert with 0, 'Currency amount must be positive'
    if sub_6a02182c[address(stor3.field_0)] >= sub_6f7d9b5f[address(stor3.field_0)]:
        revert with 0, 'Limit already reached'
    if block.timestamp > expirationTimestamp:
        revert with 0, 'Contract expired'
    if not sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)]:
        if stor8[address(stor3.field_0)].field_0 >= MAX_INVESTORS:
            revert with 0, 'Too many investors'
        stor8[address(stor3.field_0)].field_0++
        address(stor8[address(stor3.field_0)][stor8[address(stor3.field_0)].field_0].field_0) = msg.sender
    require arg1 + sub_6a02182c[address(stor3.field_0)] >= sub_6a02182c[address(stor3.field_0)]
    if arg1 + sub_6a02182c[address(stor3.field_0)] <= sub_6f7d9b5f[address(stor3.field_0)]:
        require arg1 + sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)] >= sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)]
        sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)] += arg1
        require arg1 + sub_6a02182c[address(stor3.field_0)] >= sub_6a02182c[address(stor3.field_0)]
        sub_6a02182c[address(stor3.field_0)] += arg1
        emit Deposit(arg1, sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)], baseAddress, msg.sender);
    else:
        require sub_6f7d9b5f[address(stor3.field_0)] <= arg1 + sub_6a02182c[address(stor3.field_0)]
        if not baseAddress:
            call msg.sender with:
               value arg1 + sub_6a02182c[address(stor3.field_0)] - sub_6f7d9b5f[address(stor3.field_0)] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 + sub_6a02182c[address(stor3.field_0)] - sub_6f7d9b5f[address(stor3.field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 + sub_6a02182c[address(stor3.field_0)] - sub_6f7d9b5f[address(stor3.field_0)] <= arg1
        require -sub_6a02182c[address(stor3.field_0)] + sub_6f7d9b5f[address(stor3.field_0)] + sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)] >= sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)]
        sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)] = -sub_6a02182c[address(stor3.field_0)] + sub_6f7d9b5f[address(stor3.field_0)] + sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)]
        require sub_6f7d9b5f[address(stor3.field_0)] >= sub_6a02182c[address(stor3.field_0)]
        sub_6a02182c[address(stor3.field_0)] = sub_6f7d9b5f[address(stor3.field_0)]
        emit Deposit(-sub_6a02182c[address(stor3.field_0)] + sub_6f7d9b5f[address(stor3.field_0)], sub_a5e8dbc6[address(stor3.field_0)][address(msg.sender)], baseAddress, msg.sender);
    if sub_6a02182c[address(stor3.field_0)] == sub_6f7d9b5f[address(stor3.field_0)]:
        if sub_6a02182c[stor4] == sub_6f7d9b5f[stor4]:
            if uint8(stor3.field_0):
                revert with 0, 'Already swapped'
            if uint8(stor3.field_8):
                revert with 0, 'Already cancelled'
            if sub_6a02182c[address(stor3.field_0)] != sub_6f7d9b5f[address(stor3.field_0)]:
                revert with 0, 'Base tokens not filled'
            if sub_6a02182c[stor4] != sub_6f7d9b5f[stor4]:
                revert with 0, 'Quote tokens not filled'
            if block.timestamp > expirationTimestamp:
                revert with 0, 'Contract expired'
            idx = 0
            while idx < stor8[address(stor3.field_0)].field_0:
                require idx < stor8[address(stor3.field_0)].field_0
                if idx + 1 == stor8[address(stor3.field_0)].field_0:
                    if not sub_f0a0b44eAddress:
                        call address(stor8[address(stor3.field_0)][idx].field_0) with:
                           value sub_6a02182c[stor4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                        mem[132] = sub_6a02182c[stor4]
                        require ext_code.size(sub_f0a0b44eAddress)
                        call sub_f0a0b44eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[stor4]
                    emit 0x57dd3e3f: sub_6a02182c[stor4], sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                else:
                    if not sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)]:
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require 0 / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value 0 / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), 0 / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                    else:
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] == sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] > 0
                        require sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] <= sub_6a02182c[stor4]
                        if not sub_f0a0b44eAddress:
                            call address(stor8[address(stor3.field_0)][idx].field_0) with:
                               value sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[address(stor3.field_0)][idx].field_0)
                            mem[132] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                            require ext_code.size(sub_f0a0b44eAddress)
                            call sub_f0a0b44eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[address(stor3.field_0)][idx].field_0), sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]
                        emit 0x57dd3e3f: (sub_6a02182c[stor4] * sub_a5e8dbc6[address(stor3.field_0)][address(stor8[address(stor3.field_0)][idx].field_0)] / sub_6a02182c[address(stor3.field_0)]), sub_f0a0b44eAddress, address(stor8[address(stor3.field_0)][idx].field_0)
                mem[0] = baseAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            idx = 0
            while idx < stor8[stor4].field_0:
                require idx < stor8[stor4].field_0
                if idx + 1 == stor8[stor4].field_0:
                    if not baseAddress:
                        call address(stor8[stor4][idx].field_0) with:
                           value sub_6a02182c[address(stor3.field_0)] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        mem[100] = address(stor8[stor4][idx].field_0)
                        mem[132] = sub_6a02182c[address(stor3.field_0)]
                        require ext_code.size(baseAddress)
                        call baseAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = sub_6a02182c[address(stor3.field_0)]
                    emit 0x57dd3e3f: sub_6a02182c[address(stor3.field_0)], baseAddress, address(stor8[stor4][idx].field_0)
                else:
                    if not sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)]:
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require 0 / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value 0 / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = 0 / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), 0 / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0 / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (0 / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                    else:
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] == sub_6a02182c[address(stor3.field_0)]
                        require sub_6a02182c[stor4] > 0
                        require sub_6a02182c[stor4]
                        require sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] <= sub_6a02182c[address(stor3.field_0)]
                        if not baseAddress:
                            call address(stor8[stor4][idx].field_0) with:
                               value sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            mem[100] = address(stor8[stor4][idx].field_0)
                            mem[132] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                            require ext_code.size(baseAddress)
                            call baseAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor8[stor4][idx].field_0), sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]
                        emit 0x57dd3e3f: (sub_6a02182c[address(stor3.field_0)] * sub_a5e8dbc6[stor4][address(stor8[stor4][idx].field_0)] / sub_6a02182c[stor4]), baseAddress, address(stor8[stor4][idx].field_0)
                mem[0] = sub_f0a0b44eAddress
                mem[32] = 8
                idx = idx + 1
                continue 
            uint8(stor3.field_0) = 1
            emit Swap(msg.sender);
    require stor1 + 1 == stor1
}



}
