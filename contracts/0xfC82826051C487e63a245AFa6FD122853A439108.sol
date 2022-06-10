contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 ownersCount;
uint256 sub_6e57d15b;
address crvTokenAddress;
address crowdTokenAddress;
address sub_daba3ea0Address;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint128 stor7; offset 176
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;
mapping of uint256 contributions;
mapping of address sub_f1805d65;
uint256 count;
uint256 sub_7f88e8c0;
uint256 sub_72ecf3ff;

function owners(address arg1) {
    return bool(stor0[arg1])
}

function count() {
    return count
}

function crowdToken() {
    return crowdTokenAddress
}

function crvToken() {
    return crvTokenAddress
}

function contributions(address arg1) {
    return contributions[arg1]
}

function sub_6e57d15b(?) {
    return sub_6e57d15b
}

function sub_70200b68(?) {
    return bool(uint8(stor7.field_160))
}

function sub_72ecf3ff(?) {
    return sub_72ecf3ff
}

function sub_7f88e8c0(?) {
    return sub_7f88e8c0
}

function sub_80aa8a5f(?) {
    return bool(uint8(stor7.field_168))
}

function sub_81a85f47(?) {
    return bool(uint8(stor7.field_176))
}

function ownersCount() {
    return ownersCount
}

function sub_daba3ea0(?) {
    return sub_daba3ea0Address
}

function sub_f1805d65(?) {
    return sub_f1805d65[arg1]
}

function kill() {
    require stor0[address(msg.sender)]
    selfdestruct(address(stor7.field_0))
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
    ownersCount++
    emit OwnerAdded(arg1);
}

function removeOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1 != msg.sender
    require ownersCount > sub_6e57d15b
    require bool(stor0[address(arg1)]) == 1
    stor0[address(arg1)] = 0
    ownersCount--
    emit OwnerRemoved(arg1);
}

function sub_6416c496(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(crvTokenAddress)
    call crvTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_55e56671(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(crowdTokenAddress)
    call crowdTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b84ca0ca(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(sub_daba3ea0Address)
    call sub_daba3ea0Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0e7f6234(?) payable {
    mem[64] = 96
    require not msg.value
    require stor0[address(msg.sender)]
    require not uint8(stor7.field_160)
    s = 0
    s = 0
    idx = 0
    while idx < count:
        mem[0] = sub_f1805d65[idx]
        mem[32] = 8
        if not contributions[stor9[idx]]:
            mem[mem[64] + 32] = contributions[stor9[idx]]
            mem[mem[64] + 64] = 0
            mem[mem[64]] = 96
            mem[mem[64] + 96] = 3
            mem[mem[64] + 128] = 'CRV'
            emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 3, 'CRV', sub_f1805d65[idx]
        else:
            require contributions[stor9[idx]]
            require contributions[stor9[idx]] * sub_7f88e8c0 / contributions[stor9[idx]] == sub_7f88e8c0
            if not contributions[stor9[idx]] * sub_7f88e8c0:
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 0
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 3
                mem[mem[64] + 128] = 'CRV'
                emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 3, 'CRV', sub_f1805d65[idx]
            else:
                require contributions[stor9[idx]] * sub_7f88e8c0
                require 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / contributions[stor9[idx]] * sub_7f88e8c0 == 100 * 10^6
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / 10^18
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 3
                mem[mem[64] + 128] = 'CRV'
                emit 0xc5e1cde0: Array(len=3, data='CRV'), contributions[stor9[idx]], 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / 10^18, sub_f1805d65[idx]
        s = contributions[stor9[idx]]
        s = sub_f1805d65[idx]
        idx = idx + 1
        continue 
    Mask(96, 0, stor7.field_160) = 1
}

function sub_c3a8afab(?) payable {
    mem[64] = 96
    require not msg.value
    require stor0[address(msg.sender)]
    require not uint8(stor7.field_176)
    s = 0
    s = 0
    idx = 0
    while idx < count:
        mem[0] = sub_f1805d65[idx]
        mem[32] = 8
        if not contributions[stor9[idx]]:
            mem[mem[64] + 32] = contributions[stor9[idx]]
            mem[mem[64] + 64] = 0
            mem[mem[64]] = 96
            mem[mem[64] + 96] = 3
            mem[mem[64] + 128] = 'REI'
            emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 3, 'REI', sub_f1805d65[idx]
        else:
            require contributions[stor9[idx]]
            require contributions[stor9[idx]] * sub_72ecf3ff / contributions[stor9[idx]] == sub_72ecf3ff
            if not contributions[stor9[idx]] * sub_72ecf3ff:
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 0
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 3
                mem[mem[64] + 128] = 'REI'
                emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 3, 'REI', sub_f1805d65[idx]
            else:
                require contributions[stor9[idx]] * sub_72ecf3ff
                require 100 * 10^6 * contributions[stor9[idx]] * sub_72ecf3ff / contributions[stor9[idx]] * sub_72ecf3ff == 100 * 10^6
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 100 * 10^6 * contributions[stor9[idx]] * sub_72ecf3ff / 10^18
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 3
                mem[mem[64] + 128] = 'REI'
                emit 0xc5e1cde0: Array(len=3, data='REI'), contributions[stor9[idx]], 100 * 10^6 * contributions[stor9[idx]] * sub_72ecf3ff / 10^18, sub_f1805d65[idx]
        s = contributions[stor9[idx]]
        s = sub_f1805d65[idx]
        idx = idx + 1
        continue 
    Mask(80, 0, stor7.field_176) = 1
}

function sub_bd7aadd9(?) payable {
    mem[64] = 96
    require not msg.value
    require stor0[address(msg.sender)]
    require not uint8(stor7.field_168)
    s = 0
    s = 0
    idx = 0
    while idx < count:
        mem[0] = sub_f1805d65[idx]
        mem[32] = 8
        if not contributions[stor9[idx]]:
            mem[mem[64] + 32] = contributions[stor9[idx]]
            mem[mem[64] + 64] = 0
            mem[mem[64]] = 96
            mem[mem[64] + 96] = 5
            mem[mem[64] + 128] = 'CROWD'
            emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 5, 'CROWD', sub_f1805d65[idx]
        else:
            require contributions[stor9[idx]]
            require contributions[stor9[idx]] * sub_7f88e8c0 / contributions[stor9[idx]] == sub_7f88e8c0
            if not contributions[stor9[idx]] * sub_7f88e8c0:
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 0
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'CROWD'
                emit 0xc5e1cde0: 96, contributions[stor9[idx]], 0, 5, 'CROWD', sub_f1805d65[idx]
            else:
                require contributions[stor9[idx]] * sub_7f88e8c0
                require 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / contributions[stor9[idx]] * sub_7f88e8c0 == 100 * 10^6
                mem[mem[64] + 32] = contributions[stor9[idx]]
                mem[mem[64] + 64] = 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / 10^18
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'CROWD'
                emit 0xc5e1cde0: Array(len=5, data='CROWD'), contributions[stor9[idx]], 100 * 10^6 * contributions[stor9[idx]] * sub_7f88e8c0 / 10^18, sub_f1805d65[idx]
        s = contributions[stor9[idx]]
        s = sub_f1805d65[idx]
        idx = idx + 1
        continue 
    Mask(88, 0, stor7.field_168) = 1
}



}
