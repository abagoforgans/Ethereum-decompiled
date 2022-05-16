contract main {




// =====================  Runtime code  =====================


array of address sub_3c8d830d;
array of address tokens;
address owner;
address pendingOwner;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of address addressBySymbol;
mapping of struct sub_afdbfec3;

function getAddressBySymbol(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return addressBySymbol[arg1[all]]
}

function sub_3c8d830d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3c8d830d.length
    return address(sub_3c8d830d[arg1])
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return address(tokens[arg1])
}

function owner() {
    return owner
}

function sub_afdbfec3(?) {
    return uint256(sub_afdbfec3[arg1][0 len sub_afdbfec3[arg1].length].field_0)
}

function sub_de50fcec(?) {
    return uint256(sub_afdbfec3[address(arg1)][0 len sub_afdbfec3[address(arg1)].length].field_0)
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require owner != arg1
    pendingOwner = arg1
}

function sub_2aaf0ed4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor4[address(arg1)]:
        revert with 0, 'agency already exists'
    sub_3c8d830d.length++
    address(sub_3c8d830d[sub_3c8d830d.length]) = arg1
    stor4[address(arg1)] = sub_3c8d830d.length
    emit 0xca590715: arg1
}

function sub_b26a27a1(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_3c8d830d.length:
        mem[0] = address(sub_3c8d830d[idx])
        mem[32] = 4
        stor4[address(stor0[idx])] = 0
        idx = idx + 1
        continue 
    sub_3c8d830d.length = 0
    if sub_3c8d830d.length > 0:
        idx = 0
        while sub_3c8d830d.length > idx:
            uint256(sub_3c8d830d[idx]) = 0
            idx = idx + 1
            continue 
    emit 0xda8e0cfe 
}

function areAllTokensRegistered(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        if stor5[address(cd[((32 * idx) + arg1 + 36)])] != 0:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_decb7e7b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'bad agency'
    if not stor4[address(arg1)]:
        revert with 0, 'agency not exists'
    if sub_3c8d830d.length != stor4[address(arg1)]:
        require sub_3c8d830d.length - 1 < sub_3c8d830d.length
        require stor4[address(arg1)] - 1 < sub_3c8d830d.length
        address(sub_3c8d830d[stor4[address(arg1)]]) = address(sub_3c8d830d[sub_3c8d830d.length])
        stor4[address(stor0[stor0.length])] = stor4[address(arg1)]
    sub_3c8d830d.length--
    if sub_3c8d830d.length > sub_3c8d830d.length - 1:
        idx = sub_3c8d830d.length - 1
        while sub_3c8d830d.length > idx:
            uint256(sub_3c8d830d[idx]) = 0
            idx = idx + 1
            continue 
    stor4[address(arg1)] = 0
    emit 0xbb6c1f60: arg1
}

function registerToken(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    if not arg1:
        revert with 0, 'bad address'
    if arg2.length <= 0:
        revert with 0, 'empty symbol'
    if addressBySymbol[arg2[all]]:
        revert with 0, 'symbol registered'
    if Mask(255, 1, uint256(sub_afdbfec3[address(arg1)].field_0) and (256 * not bool(sub_afdbfec3[address(arg1)].field_0)) - 1):
        revert with 0, 'address registered'
    tokens.length++
    address(tokens[tokens.length]) = arg1
    stor5[address(arg1)] = tokens.length
    uint256(sub_afdbfec3[address(arg1)].field_0) = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uint256(sub_afdbfec3[address(arg1)][s].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while sub_afdbfec3[address(arg1)].length + 31 / 32 > idx:
        uint256(sub_afdbfec3[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
    addressBySymbol[arg2[all]] = arg1
    emit TokenRegistered(Array(len=arg2.length, data=arg2[all]), arg1);
}

function unregisterToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'bad token address '
    if not stor5[address(arg1)]:
        revert with 0, 'token not found'
    if tokens.length != stor5[address(arg1)]:
        require tokens.length - 1 < tokens.length
        require stor5[address(arg1)] - 1 < tokens.length
        address(tokens[stor5[address(arg1)]]) = address(tokens[tokens.length])
        stor5[address(stor1[stor1.length])] = stor5[address(arg1)]
    tokens.length--
    if tokens.length > tokens.length - 1:
        idx = tokens.length - 1
        while tokens.length > idx:
            uint256(tokens[idx]) = 0
            idx = idx + 1
            continue 
    mem[96] = uint256(sub_afdbfec3[address(arg1)].field_0)
    idx = 96
    s = 0
    while sub_afdbfec3[address(arg1)].length + 96 > idx + 32:
        mem[idx + 32] = uint256(sub_afdbfec3[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_afdbfec3[address(arg1)].length + 96] = 6
    stor[sha3(mem[96 len stor7[address(arg1)].length + 32])] = 0
    uint256(sub_afdbfec3[address(arg1)].field_0) = 0
    if 31 < sub_afdbfec3[address(arg1)].length:
        idx = 0
        while sub_afdbfec3[address(arg1)].length + 31 / 32 > idx:
            uint256(sub_afdbfec3[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor5[address(arg1)] = 0
    if not bool(sub_afdbfec3[address(arg1)].field_0):
        emit TokenUnregistered(Array(len=sub_afdbfec3[address(arg1)].field_0 % 128, data=Mask(248, 8, uint256(sub_afdbfec3[address(arg1)].field_0))), arg1);
    else:
        if bool(sub_afdbfec3[address(arg1)].field_0) != 1:
            emit TokenUnregistered(mem[96 len -96], arg1);
        else:
            idx = 0
            s = 0
            while idx < uint255(sub_afdbfec3[address(arg1)].field_1):
                mem[idx + 160] = uint256(sub_afdbfec3[address(arg1)][s].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            emit TokenUnregistered(Array(len=2 * Mask(256, -1, uint255(sub_afdbfec3[address(arg1)].field_1)), data=mem[160 len ceil32(uint255(sub_afdbfec3[address(arg1)].field_1))]), arg1);
}



}
