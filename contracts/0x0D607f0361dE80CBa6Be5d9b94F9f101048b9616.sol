contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e39270e8Address;
uint8 stor2; offset 160
uint128 stor2; offset 160
address sub_0cb61f6cAddress;
uint256 totalBonus;
uint256 sub_0c7134c0;
mapping of uint256 sub_a43906f5;
array of address sub_032d476a;

function sub_032d476a(?) {
    require arg1 < sub_032d476a.length
    return sub_032d476a[arg1]
}

function sub_0c7134c0(?) {
    return sub_0c7134c0
}

function sub_0cb61f6c(?) {
    return sub_0cb61f6cAddress
}

function sub_55959daf(?) {
    return bool(uint8(stor2.field_160))
}

function owner() {
    return owner
}

function sub_a43906f5(?) {
    return sub_a43906f5[arg1]
}

function totalBonus() {
    return totalBonus
}

function getUserCount() {
    return sub_032d476a.length
}

function sub_e39270e8(?) {
    return sub_e39270e8Address
}

function _fallback() payable {
    revert
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

function sub_df00c5b3(?) {
    require msg.sender == owner
    if uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can be called only if list isn't finalized'
    Mask(96, 0, stor2.field_160) = 1
}

function returnTokens() {
    require msg.sender == owner
    require ext_code.size(sub_e39270e8Address)
    call sub_e39270e8Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e39270e8Address)
    call sub_e39270e8Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_0cb61f6cAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addManyUsers(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    if uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Adding users allowed only when list isn't finalized'
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_recipients and _amounts arrays have different number of elements'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if sub_a43906f5[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'User bonus shouldn't exist before adding'
        mem[32] = 5
        sub_a43906f5[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        require totalBonus + cd[((32 * idx) + arg2 + 36)] >= totalBonus
        totalBonus += cd[((32 * idx) + arg2 + 36)]
        sub_032d476a.length++
        mem[0] = 6
        sub_032d476a[sub_032d476a.length] = address(cd[((32 * idx) + arg1 + 36)])
        require 1 <= sub_032d476a.length + 1
        mem[96] = sub_032d476a.length
        mem[128] = cd[((32 * idx) + arg2 + 36)]
        emit 0x340d9579: sub_032d476a.length, cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function sub_cea6bcf9(?) {
    require msg.sender == owner
    if not uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Payment can be called only after list is finalized'
    if arg1 <= 0:
        revert with 0, 'Batch size should not be 0'
    require sub_0c7134c0 + arg1 >= sub_0c7134c0
    require 1 <= sub_0c7134c0 + arg1
    if sub_0c7134c0 + arg1 - 1 < sub_032d476a.length:
        if sub_0c7134c0 > sub_0c7134c0 + arg1 - 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'idFrom shouldn't be greater than idTo'
        idx = sub_0c7134c0
        s = 0
        while idx <= sub_0c7134c0 + arg1 - 1:
            require idx < sub_032d476a.length
            mem[32] = 5
            if sub_a43906f5[stor6[idx]] <= 0:
                if idx < sub_032d476a.length:
                    mem[0] = 6
                    mem[96] = idx
                    mem[128] = sub_a43906f5[stor6[idx]]
                    emit 0x2d0f5055: idx, sub_a43906f5[stor6[idx]], sub_032d476a[idx]
                    if s + sub_a43906f5[stor6[idx]] >= s:
                        idx = idx + 1
                        s = s + sub_a43906f5[stor6[idx]]
                        continue 
            else:
                if idx < sub_032d476a.length:
                    mem[32] = 5
                    sub_a43906f5[stor6[idx]] = 0
                    if sub_a43906f5[stor6[idx]] <= totalBonus:
                        totalBonus -= sub_a43906f5[stor6[idx]]
                        if idx < sub_032d476a.length:
                            mem[132] = sub_a43906f5[stor6[idx]]
                            require ext_code.size(sub_e39270e8Address)
                            call sub_e39270e8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_032d476a[idx], sub_a43906f5[stor6[idx]]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if idx < sub_032d476a.length:
                                mem[0] = 6
                                mem[96] = idx
                                mem[128] = sub_a43906f5[stor6[idx]]
                                emit 0x4884c163: idx, sub_a43906f5[stor6[idx]], sub_032d476a[idx]
                                if s + sub_a43906f5[stor6[idx]] >= s:
                                    idx = idx + 1
                                    s = s + sub_a43906f5[stor6[idx]]
                                    continue 
            revert
        sub_0c7134c0 += arg1
    else:
        require 1 <= sub_032d476a.length
        if sub_032d476a.length - 1 >= sub_032d476a.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'idTo should be less than user count'
        if sub_0c7134c0 > sub_032d476a.length - 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'idFrom shouldn't be greater than idTo'
        idx = sub_0c7134c0
        s = 0
        while idx <= sub_032d476a.length - 1:
            require idx < sub_032d476a.length
            mem[32] = 5
            if sub_a43906f5[stor6[idx]] <= 0:
                if idx < sub_032d476a.length:
                    mem[0] = 6
                    mem[96] = idx
                    mem[128] = sub_a43906f5[stor6[idx]]
                    emit 0x2d0f5055: idx, sub_a43906f5[stor6[idx]], sub_032d476a[idx]
                    if s + sub_a43906f5[stor6[idx]] >= s:
                        idx = idx + 1
                        s = s + sub_a43906f5[stor6[idx]]
                        continue 
            else:
                if idx < sub_032d476a.length:
                    mem[32] = 5
                    sub_a43906f5[stor6[idx]] = 0
                    if sub_a43906f5[stor6[idx]] <= totalBonus:
                        totalBonus -= sub_a43906f5[stor6[idx]]
                        if idx < sub_032d476a.length:
                            mem[132] = sub_a43906f5[stor6[idx]]
                            require ext_code.size(sub_e39270e8Address)
                            call sub_e39270e8Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_032d476a[idx], sub_a43906f5[stor6[idx]]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if idx < sub_032d476a.length:
                                mem[0] = 6
                                mem[96] = idx
                                mem[128] = sub_a43906f5[stor6[idx]]
                                emit 0x4884c163: idx, sub_a43906f5[stor6[idx]], sub_032d476a[idx]
                                if s + sub_a43906f5[stor6[idx]] >= s:
                                    idx = idx + 1
                                    s = s + sub_a43906f5[stor6[idx]]
                                    continue 
            revert
        require sub_032d476a.length >= sub_032d476a.length - 1
        sub_0c7134c0 = sub_032d476a.length
    return s
}



}
