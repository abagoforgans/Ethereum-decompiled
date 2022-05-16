contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of struct sub_1644829e;

function sub_1644829e(?) {
    return sub_1644829e[address(arg1)][2][0 len sub_1644829e[address(arg1)][2].length].field_0
}

function sub_4b21f044(?) {
    return sub_1644829e[address(arg1)].field_256
}

function sub_653008f9(?) {
    return bool(uint8(sub_1644829e[address(arg1)].field_8))
}

function owner() {
    return owner
}

function sub_9230c068(?) {
    return address(sub_1644829e[address(arg1)].field_768)
}

function sub_b6053aa5(?) {
    return address(sub_1644829e[address(arg1)].field_16)
}

function getLocked(address arg1) {
    return bool(uint8(sub_1644829e[address(arg1)].field_0))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_446040d5(?) {
    require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    sub_1644829e[address(arg1)].field_256 = arg2
    emit 0x941b1c18: address(arg1), arg2
}

function sub_ac39c22f(?) {
    require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    address(sub_1644829e[address(arg1)].field_768) = arg2
    emit 0x78dfab43: address(arg1), arg2
}

function setLocked(address arg1, bool arg2) {
    require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    uint8(sub_1644829e[address(arg1)].field_0) = uint8(arg2)
    emit LogLockSet(arg2, arg1);
}

function sub_f6da7e0a(?) {
    require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    Mask(248, 0, sub_1644829e[address(arg1)].field_8) = Mask(248, 0, arg2)
    emit 0xb0e29bf1: address(arg1), arg2
}

function removeIssuer(address arg1) {
    require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    require address(sub_1644829e[address(arg1)].field_16)
    address(sub_1644829e[address(arg1)].field_16) = 0
    emit IssuerRemoved(arg1);
}

function sub_a256b4d0(?) {
    if owner != msg.sender:
        require msg.sender == address(sub_1644829e[address(arg1)].field_16)
    sub_1644829e[address(arg1)][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0x827f513c: Array(len=arg2.length, data=arg2[all])
}

function addWhitelist(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx].field_0) != arg1:
            idx = idx + 1
            continue 
    stor1.length++
    address(stor1[stor1.length].field_0) = arg1
    emit WhitelistAdded(arg1);
}

function setIssuer(address arg1, address arg2) {
    if address(sub_1644829e[address(arg1)].field_16) != msg.sender:
        require msg.sender == owner
        require not address(sub_1644829e[address(arg1)].field_16)
    else:
        if not address(sub_1644829e[address(arg1)].field_16):
            require msg.sender == owner
            require not address(sub_1644829e[address(arg1)].field_16)
    require arg2
    address(sub_1644829e[address(arg1)].field_16) = arg2
    emit IssuerSet(address(arg1), arg2);
}

function getWhitelists() {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = address(stor1[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function removeWhitelist(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx < stor1.length:
            s = idx
            while s < stor1.length - 1:
                require s + 1 < stor1.length
                require s < stor1.length
                mem[0] = 1
                address(stor1[s].field_0) = address(stor1[s].field_256)
                s = s + 1
                continue 
            require stor1.length - 1 < stor1.length
            address(stor1[stor1.length].field_0) = 0
            stor1.length--
            if stor1.length > stor1.length - 1:
                idx = sha3(1) + stor1.length - 1
                while sha3(1) + stor1.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
        emit WhitelistRemoved(arg1);
}

function isWhiteListed(address arg1) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[100] = arg1
        require ext_code.size(address(stor1[idx].field_0))
        call address(stor1[idx].field_0).0x63a9c3d7 with:
             gas gas_remaining wei
            args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        require idx < stor1.length
        mem[96] = 0xa4d0d5a900000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor1[idx].field_0))
        call address(stor1[idx].field_0).0xa4d0d5a9 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _44 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = mem[_44 + 96]
        _48 = mem[_44 + 96]
        idx = 0
        while idx < _48:
            mem[ceil32(return_data.size) + idx + 192] = mem[_44 + idx + 128]
            idx = idx + 32
            continue 
        if not _48 % 32:
            return 1, 64, mem[ceil32(return_data.size) + 160 len _48 + 32]
        mem[floor32(_48) + ceil32(return_data.size) + 192] = mem[floor32(_48) + ceil32(return_data.size) + -(_48 % 32) + 224 len _48 % 32]
        return 1, 64, mem[ceil32(return_data.size) + 160 len floor32(_48) + 64]
    return 0, 64, 0
}



}
