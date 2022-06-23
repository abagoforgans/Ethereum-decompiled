contract main {




// =====================  Runtime code  =====================


#
#  - submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4)
#  - confirmTransaction(bytes32 arg1)
#  - executeTransaction(bytes32 arg1)
#
const MAX_OWNER_COUNT = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint256 nonce;
mapping of uint8 stor3;
array of address owners;
array of uint256 sub_213dafcd;
uint256 required;
array of address sub_efa8154e;
array of address managers;
mapping of uint8 stor9;
mapping of uint8 stor10;
address custodianAddress;

function sub_00c833f2(?) {
    return managers.length
}

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1])
}

function confirmations(bytes32 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function sub_213dafcd(?) {
    require arg1 < sub_213dafcd.length
    return sub_213dafcd[arg1]
}

function isOwner(address arg1) {
    return bool(stor3[arg1])
}

function custodian() {
    return custodianAddress
}

function getNonce(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    return nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]]
}

function managers(uint256 arg1) {
    require arg1 < managers.length
    return address(managers[arg1])
}

function nonces(bytes32 arg1) {
    return nonce[arg1]
}

function sub_bfda7e30(?) {
    return owners.length
}

function required() {
    return required
}

function sub_efa8154e(?) {
    require arg1 < sub_efa8154e.length
    return address(sub_efa8154e[arg1])
}

function sub_f084b83e(?) {
    return sub_efa8154e.length
}

function isManager(address arg1) {
    return bool(stor10[arg1])
}

function sub_f81fab9f(?) {
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function isAuthorized(address arg1) {
    require stor3[address(arg1)]
    return 1
}

function sub_d7951d60(?) {
    if not stor9[address(arg1)]:
        return 0
    return 1
}

function isCustodian(address arg1) {
    if custodianAddress != arg1:
        return 0
    return 1
}

function checkManager(address arg1) {
    if not stor10[address(arg1)]:
        return 0
    return 1
}

function revokeConfirmation(bytes32 arg1) {
    require stor3[msg.sender]
    require stor1[arg1][msg.sender]
    require not uint8(stor0[arg1].field_1024)
    stor1[arg1][msg.sender] = 0
    emit 0x2dda3297: msg.sender, arg1
}

function changeRequirement(uint256 arg1) {
    require this.address == msg.sender
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit 0x23e1eda7: arg1
}

function getConfirmationCount(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor4[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function addOwner(address arg1) {
    require this.address == msg.sender
    require not stor3[address(arg1)]
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor3[address(arg1)] = 1
    owners.length++
    address(owners[owners.length]) = arg1
    emit 0x8c1bcb6f: arg1
}

function transactions(bytes32 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           stor0[arg1].field_768,
           bool(uint8(stor0[arg1].field_1024))
}

function getOwners() {
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[10757 len 32 * owners.length]
    idx = 0
    while idx < owners.length:
        mem[0] = 4
        require idx < owners.length
        mem[(32 * idx) + 128] = address(owners[idx])
        idx = idx + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function replaceOperator(address arg1, address arg2) {
    require not stor9[address(arg1)]
    require not stor10[address(arg1)]
    require this.address == msg.sender
    require custodianAddress != arg1
    require stor3[address(arg1)]
    require not stor3[address(arg2)]
    require owners.length <= 50
    require required <= owners.length
    require required
    require owners.length
    stor3[address(arg2)] = 1
    stor3[arg1] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx]) = arg2
        emit 0x318f3d02: address(arg1), arg2
    emit 0x318f3d02: address(arg1), arg2
}

function sub_f2f4655e(?) {
    require this.address == msg.sender
    require custodianAddress != arg1
    require stor3[stor11]
    require not stor3[address(arg1)]
    require owners.length <= 50
    require required <= owners.length
    require required
    require owners.length
    stor3[address(arg1)] = 1
    stor3[stor11] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != custodianAddress:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx]) = arg1
        emit 0x318f3d02: custodianAddress, arg1
        custodianAddress = arg1
        emit 0xd134cbd2: arg1
    emit 0x318f3d02: custodianAddress, arg1
    custodianAddress = arg1
    emit 0xd134cbd2: arg1
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor5[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor5[idx]].field_1024):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor5[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(bytes32 arg1) {
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[10757 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor4[idx])]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 4
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx])
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[10757 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * owners.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function removeOwner(address arg1) {
    require this.address == msg.sender
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx]) = address(owners[owners.length])
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(4) - 1
            while sha3(4) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require this.address == msg.sender
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            require owners.length
            required = owners.length
            emit 0x23e1eda7: owners.length
        emit 0xc3a670a1: arg1
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            uint256(owners[idx]) = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require this.address == msg.sender
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        require owners.length
        required = owners.length
        emit 0x23e1eda7: owners.length
    emit 0xc3a670a1: arg1
}

function getTransactionHashes(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    if sub_213dafcd.length:
        mem[128 len 32 * sub_213dafcd.length] = code.data[10757 len 32 * sub_213dafcd.length]
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor5[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor5[idx]].field_1024):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor5[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        require idx < sub_213dafcd.length
        mem[0] = 5
        require s < sub_213dafcd.length
        mem[(32 * s) + 128] = sub_213dafcd[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_213dafcd.length) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * sub_213dafcd.length) + 160 len 32 * arg2 - arg1] = code.data[10757 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < sub_213dafcd.length
        require idx - arg1 < mem[(32 * sub_213dafcd.length) + 128]
        mem[(32 * sub_213dafcd.length) + (32 * idx - arg1) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 192] = mem[(32 * sub_213dafcd.length) + 128]
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * sub_213dafcd.length) + 128])] = mem[(32 * sub_213dafcd.length) + 160 len floor32(mem[(32 * sub_213dafcd.length) + 128])]
    return Array(len=mem[(32 * sub_213dafcd.length) + 128], data=mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * sub_213dafcd.length) + 128]]), 
}

function replaceManager(address arg1, address arg2) {
    require this.address == msg.sender
    require stor10[address(arg1)]
    require not stor10[address(arg2)]
    stor10[address(arg2)] = 1
    managers.length++
    address(managers[managers.length]) = arg2
    stor10[arg1] = 0
    idx = 0
    while idx < managers.length - 1:
        require idx < managers.length
        mem[0] = 8
        if address(managers[idx]) != arg1:
            idx = idx + 1
            continue 
        require sub_efa8154e.length - 1 < managers.length
        require idx < managers.length
        address(managers[idx]) = address(managers[stor7.length])
        managers.length--
        if managers.length > managers.length - 1:
            idx = managers.length + sha3(8) - 1
            while sha3(8) + managers.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require 0 <= managers.length
        require stor3[address(arg1)]
        require not stor3[address(arg2)]
        require owners.length <= 50
        require required <= owners.length
        require required
        require owners.length
        stor3[address(arg2)] = 1
        stor3[arg1] = 0
        idx = 0
        while idx < owners.length - 1:
            require idx < owners.length
            mem[0] = 4
            if address(owners[idx]) != arg1:
                idx = idx + 1
                continue 
            require idx < owners.length
            address(owners[idx]) = arg2
            emit 0x318f3d02: address(arg1), arg2
            emit 0xad6d823e: address(arg1), arg2
        emit 0x318f3d02: address(arg1), arg2
        emit 0xad6d823e: address(arg1), arg2
    managers.length--
    if managers.length > managers.length - 1:
        idx = managers.length - 1
        while managers.length > idx:
            uint256(managers[idx]) = 0
            idx = idx + 1
            continue 
    require 0 <= managers.length
    require stor3[address(arg1)]
    require not stor3[address(arg2)]
    require owners.length <= 50
    require required <= owners.length
    require required
    require owners.length
    stor3[address(arg2)] = 1
    stor3[arg1] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx]) = arg2
        emit 0x318f3d02: address(arg1), arg2
        emit 0xad6d823e: address(arg1), arg2
    emit 0x318f3d02: address(arg1), arg2
    emit 0xad6d823e: address(arg1), arg2
}

function sub_980bff15(?) {
    require this.address == msg.sender
    require stor9[address(arg1)]
    require not stor9[address(arg2)]
    stor9[address(arg2)] = 1
    sub_efa8154e.length++
    address(sub_efa8154e[sub_efa8154e.length]) = arg2
    stor9[arg1] = 0
    idx = 0
    while idx < sub_efa8154e.length - 1:
        require idx < sub_efa8154e.length
        mem[0] = 7
        if address(sub_efa8154e[idx]) != arg1:
            idx = idx + 1
            continue 
        require sub_efa8154e.length - 1 < sub_efa8154e.length
        require idx < sub_efa8154e.length
        address(sub_efa8154e[idx]) = address(sub_efa8154e[sub_efa8154e.length])
        sub_efa8154e.length--
        if sub_efa8154e.length > sub_efa8154e.length - 1:
            idx = sub_efa8154e.length + sha3(7) - 1
            while sha3(7) + sub_efa8154e.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require 0 <= sub_efa8154e.length
        require stor3[address(arg1)]
        require not stor3[address(arg2)]
        require owners.length <= 50
        require required <= owners.length
        require required
        require owners.length
        stor3[address(arg2)] = 1
        stor3[arg1] = 0
        idx = 0
        while idx < owners.length - 1:
            require idx < owners.length
            mem[0] = 4
            if address(owners[idx]) != arg1:
                idx = idx + 1
                continue 
            require idx < owners.length
            address(owners[idx]) = arg2
            emit 0x318f3d02: address(arg1), arg2
            emit 0xb8737403: address(arg1), arg2
        emit 0x318f3d02: address(arg1), arg2
        emit 0xb8737403: address(arg1), arg2
    sub_efa8154e.length--
    if sub_efa8154e.length > sub_efa8154e.length - 1:
        idx = sub_efa8154e.length - 1
        while sub_efa8154e.length > idx:
            uint256(sub_efa8154e[idx]) = 0
            idx = idx + 1
            continue 
    require 0 <= sub_efa8154e.length
    require stor3[address(arg1)]
    require not stor3[address(arg2)]
    require owners.length <= 50
    require required <= owners.length
    require required
    require owners.length
    stor3[address(arg2)] = 1
    stor3[arg1] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx]) = arg2
        emit 0x318f3d02: address(arg1), arg2
        emit 0xb8737403: address(arg1), arg2
    emit 0x318f3d02: address(arg1), arg2
    emit 0xb8737403: address(arg1), arg2
}

function isConfirmed(bytes32 arg1) {
    mem[64] = ceil32(stor0[arg1][2].length) + 128
    mem[96] = stor0[arg1][2].length
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor4[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require 0 < stor0[arg1][2].length
    if Mask(8, 248, mem[128]) != 0xf200000000000000000000000000000000000000000000000000000000000000:
        require 0 < stor0[arg1][2].length
        if 0x9800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            require 1 < stor0[arg1][2].length
            if 0xb00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                require 2 < stor0[arg1][2].length
                if Mask(8, 248, mem[130]) == 0xff00000000000000000000000000000000000000000000000000000000000000:
                    require 3 < stor0[arg1][2].length
                    if 0x1500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                        if s >= required:
                            idx = 0
                            t = 0
                            while idx < sub_efa8154e.length:
                                mem[0] = address(sub_efa8154e[idx])
                                mem[32] = sha3(arg1, 1)
                                if not stor1[arg1][address(stor7[idx])]:
                                    idx = idx + 1
                                    t = t
                                    continue 
                                if t + 1 != 2:
                                    idx = idx + 1
                                    t = t + 1
                                    continue 
                                return 1
        require 0 < stor0[arg1][2].length
        if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            require 1 < stor0[arg1][2].length
            if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                require 2 < stor0[arg1][2].length
                if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                    require 3 < stor0[arg1][2].length
                    if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                        if s >= required:
                            idx = 0
                            while idx < sub_efa8154e.length:
                                require idx < managers.length
                                mem[0] = address(managers[idx])
                                mem[32] = sha3(arg1, 1)
                                if not stor1[arg1][address(stor8[idx])]:
                                    idx = idx + 1
                                    continue 
                                return 1
    else:
        require 1 < stor0[arg1][2].length
        if Mask(8, 248, mem[129]) != 0xf400000000000000000000000000000000000000000000000000000000000000:
            require 0 < stor0[arg1][2].length
            if 0x9800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                require 1 < stor0[arg1][2].length
                if 0xb00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                    require 2 < stor0[arg1][2].length
                    if Mask(8, 248, mem[130]) == 0xff00000000000000000000000000000000000000000000000000000000000000:
                        require 3 < stor0[arg1][2].length
                        if 0x1500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                            if s >= required:
                                idx = 0
                                t = 0
                                while idx < sub_efa8154e.length:
                                    mem[0] = address(sub_efa8154e[idx])
                                    mem[32] = sha3(arg1, 1)
                                    if not stor1[arg1][address(stor7[idx])]:
                                        idx = idx + 1
                                        t = t
                                        continue 
                                    if t + 1 != 2:
                                        idx = idx + 1
                                        t = t + 1
                                        continue 
                                    return 1
            require 0 < stor0[arg1][2].length
            if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                require 1 < stor0[arg1][2].length
                if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                    require 2 < stor0[arg1][2].length
                    if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                        require 3 < stor0[arg1][2].length
                        if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                            if s >= required:
                                idx = 0
                                while idx < sub_efa8154e.length:
                                    require idx < managers.length
                                    mem[0] = address(managers[idx])
                                    mem[32] = sha3(arg1, 1)
                                    if not stor1[arg1][address(stor8[idx])]:
                                        idx = idx + 1
                                        continue 
                                    return 1
        else:
            require 2 < stor0[arg1][2].length
            if Mask(8, 248, mem[130]) != 0x6500000000000000000000000000000000000000000000000000000000000000:
                require 0 < stor0[arg1][2].length
                if 0x9800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                    require 1 < stor0[arg1][2].length
                    if 0xb00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                        require 2 < stor0[arg1][2].length
                        if Mask(8, 248, mem[130]) == 0xff00000000000000000000000000000000000000000000000000000000000000:
                            require 3 < stor0[arg1][2].length
                            if 0x1500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                if s >= required:
                                    idx = 0
                                    t = 0
                                    while idx < sub_efa8154e.length:
                                        mem[0] = address(sub_efa8154e[idx])
                                        mem[32] = sha3(arg1, 1)
                                        if not stor1[arg1][address(stor7[idx])]:
                                            idx = idx + 1
                                            t = t
                                            continue 
                                        if t + 1 != 2:
                                            idx = idx + 1
                                            t = t + 1
                                            continue 
                                        return 1
                require 0 < stor0[arg1][2].length
                if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                    require 1 < stor0[arg1][2].length
                    if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                        require 2 < stor0[arg1][2].length
                        if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                            require 3 < stor0[arg1][2].length
                            if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                if s >= required:
                                    idx = 0
                                    while idx < sub_efa8154e.length:
                                        require idx < managers.length
                                        mem[0] = address(managers[idx])
                                        mem[32] = sha3(arg1, 1)
                                        if not stor1[arg1][address(stor8[idx])]:
                                            idx = idx + 1
                                            continue 
                                        return 1
            else:
                require 3 < stor0[arg1][2].length
                if 0x5e00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                    if s >= required:
                        idx = 0
                        t = 0
                        while idx < sub_efa8154e.length:
                            mem[0] = address(sub_efa8154e[idx])
                            mem[32] = sha3(arg1, 1)
                            if not stor1[arg1][address(stor7[idx])]:
                                idx = idx + 1
                                t = t
                                continue 
                            if t + 1 != 2:
                                idx = idx + 1
                                t = t + 1
                                continue 
                            return 1
                    require 0 < stor0[arg1][2].length
                    if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                        require 1 < stor0[arg1][2].length
                        if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                            require 2 < stor0[arg1][2].length
                            if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                require 3 < stor0[arg1][2].length
                                if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                    if s >= required:
                                        idx = 0
                                        while idx < sub_efa8154e.length:
                                            require idx < managers.length
                                            mem[0] = address(managers[idx])
                                            mem[32] = sha3(arg1, 1)
                                            if not stor1[arg1][address(stor8[idx])]:
                                                idx = idx + 1
                                                continue 
                                            return 1
                else:
                    require 0 < stor0[arg1][2].length
                    if Mask(8, 248, mem[128]) != 0x9800000000000000000000000000000000000000000000000000000000000000:
                        require 0 < stor0[arg1][2].length
                        if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                            require 1 < stor0[arg1][2].length
                            if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                                require 2 < stor0[arg1][2].length
                                if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                    require 3 < stor0[arg1][2].length
                                    if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                        if s >= required:
                                            idx = 0
                                            while idx < sub_efa8154e.length:
                                                require idx < managers.length
                                                mem[0] = address(managers[idx])
                                                mem[32] = sha3(arg1, 1)
                                                if not stor1[arg1][address(stor8[idx])]:
                                                    idx = idx + 1
                                                    continue 
                                                return 1
                    else:
                        require 1 < stor0[arg1][2].length
                        if Mask(8, 248, mem[129]) != 0xb00000000000000000000000000000000000000000000000000000000000000:
                            require 0 < stor0[arg1][2].length
                            if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                                require 1 < stor0[arg1][2].length
                                if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                                    require 2 < stor0[arg1][2].length
                                    if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                        require 3 < stor0[arg1][2].length
                                        if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                            if s >= required:
                                                idx = 0
                                                while idx < sub_efa8154e.length:
                                                    require idx < managers.length
                                                    mem[0] = address(managers[idx])
                                                    mem[32] = sha3(arg1, 1)
                                                    if not stor1[arg1][address(stor8[idx])]:
                                                        idx = idx + 1
                                                        continue 
                                                    return 1
                        else:
                            require 2 < stor0[arg1][2].length
                            if Mask(8, 248, mem[130]) != 0xff00000000000000000000000000000000000000000000000000000000000000:
                                require 0 < stor0[arg1][2].length
                                if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                                    require 1 < stor0[arg1][2].length
                                    if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                                        require 2 < stor0[arg1][2].length
                                        if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                            require 3 < stor0[arg1][2].length
                                            if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                                if s >= required:
                                                    idx = 0
                                                    while idx < sub_efa8154e.length:
                                                        require idx < managers.length
                                                        mem[0] = address(managers[idx])
                                                        mem[32] = sha3(arg1, 1)
                                                        if not stor1[arg1][address(stor8[idx])]:
                                                            idx = idx + 1
                                                            continue 
                                                        return 1
                            else:
                                require 3 < stor0[arg1][2].length
                                if Mask(8, 248, mem[131]) != 0x1500000000000000000000000000000000000000000000000000000000000000:
                                    require 0 < stor0[arg1][2].length
                                    if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                                        require 1 < stor0[arg1][2].length
                                        if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                                            require 2 < stor0[arg1][2].length
                                            if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                                require 3 < stor0[arg1][2].length
                                                if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            require idx < managers.length
                                                            mem[0] = address(managers[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor8[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                else:
                                    if s < required:
                                        require 0 < stor0[arg1][2].length
                                        if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                                            require 1 < stor0[arg1][2].length
                                            if 0xa500000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                                                require 2 < stor0[arg1][2].length
                                                if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                                    require 3 < stor0[arg1][2].length
                                                    if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                                        if s >= required:
                                                            idx = 0
                                                            while idx < sub_efa8154e.length:
                                                                require idx < managers.length
                                                                mem[0] = address(managers[idx])
                                                                mem[32] = sha3(arg1, 1)
                                                                if not stor1[arg1][address(stor8[idx])]:
                                                                    idx = idx + 1
                                                                    continue 
                                                                return 1
                                    else:
                                        idx = 0
                                        t = 0
                                        while idx < sub_efa8154e.length:
                                            mem[0] = address(sub_efa8154e[idx])
                                            mem[32] = sha3(arg1, 1)
                                            if not stor1[arg1][address(stor7[idx])]:
                                                idx = idx + 1
                                                t = t
                                                continue 
                                            if t + 1 != 2:
                                                idx = idx + 1
                                                t = t + 1
                                                continue 
                                            return 1
                                        require 0 < stor0[arg1][2].length
                                        if 0xbf00000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                                            require 1 < stor0[arg1][2].length
                                            if Mask(8, 248, mem[129]) != 0xa500000000000000000000000000000000000000000000000000000000000000:
                                                require 0 < stor0[arg1][2].length
                                                if Mask(8, 248, mem[128]) != 0x100000000000000000000000000000000000000000000000000000000000000:
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            mem[0] = address(sub_efa8154e[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor7[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                                        return 0
                                                    else:
                                                        return 0
                                                require 1 < stor0[arg1][2].length
                                                if Mask(8, 248, mem[129]) != 0xd800000000000000000000000000000000000000000000000000000000000000:
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            mem[0] = address(sub_efa8154e[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor7[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                                        return 0
                                                    else:
                                                        return 0
                                                require 2 < stor0[arg1][2].length
                                                if Mask(8, 248, mem[130]) != 0x7100000000000000000000000000000000000000000000000000000000000000:
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            mem[0] = address(sub_efa8154e[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor7[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                                        return 0
                                                    else:
                                                        return 0
                                                require 3 < stor0[arg1][2].length
                                                if Mask(8, 248, mem[131]) != 0x5f00000000000000000000000000000000000000000000000000000000000000:
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            mem[0] = address(sub_efa8154e[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor7[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
                                                        return 0
                                                    else:
                                                        return 0
                                                if s < required:
                                                    return 0
                                                idx = 0
                                                while idx < sub_efa8154e.length:
                                                    mem[0] = address(sub_efa8154e[idx])
                                                    mem[32] = sha3(arg1, 1)
                                                    if not stor1[arg1][address(stor7[idx])]:
                                                        idx = idx + 1
                                                        continue 
                                                    return 1
                                                if s < required:
                                                    return 0
                                                if var66001 >= sub_efa8154e.length:
                                                    return 0
                                                mem[0] = address(sub_efa8154e[var66001])
                                                mem[32] = sha3(arg1, 1)
                                                if not stor1[arg1][address(stor7[var66001])]:
                                                    var66001 = var66001 + 1
                                                    continue 
                                                return 1
                                            require 2 < stor0[arg1][2].length
                                            if 0x5400000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[130]):
                                                require 3 < stor0[arg1][2].length
                                                if 0x3800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[131]):
                                                    if s >= required:
                                                        idx = 0
                                                        while idx < sub_efa8154e.length:
                                                            require idx < managers.length
                                                            mem[0] = address(managers[idx])
                                                            mem[32] = sha3(arg1, 1)
                                                            if not stor1[arg1][address(stor8[idx])]:
                                                                idx = idx + 1
                                                                continue 
                                                            return 1
    require 0 < stor0[arg1][2].length
    if Mask(8, 248, mem[128]) != 0x100000000000000000000000000000000000000000000000000000000000000:
        if s >= required:
            idx = 0
            while idx < sub_efa8154e.length:
                mem[0] = address(sub_efa8154e[idx])
                mem[32] = sha3(arg1, 1)
                if not stor1[arg1][address(stor7[idx])]:
                    idx = idx + 1
                    continue 
                return 1
    else:
        require 1 < stor0[arg1][2].length
        if Mask(8, 248, mem[129]) != 0xd800000000000000000000000000000000000000000000000000000000000000:
            if s >= required:
                idx = 0
                while idx < sub_efa8154e.length:
                    mem[0] = address(sub_efa8154e[idx])
                    mem[32] = sha3(arg1, 1)
                    if not stor1[arg1][address(stor7[idx])]:
                        idx = idx + 1
                        continue 
                    return 1
        else:
            require 2 < stor0[arg1][2].length
            if Mask(8, 248, mem[130]) != 0x7100000000000000000000000000000000000000000000000000000000000000:
                if s >= required:
                    idx = 0
                    while idx < sub_efa8154e.length:
                        mem[0] = address(sub_efa8154e[idx])
                        mem[32] = sha3(arg1, 1)
                        if not stor1[arg1][address(stor7[idx])]:
                            idx = idx + 1
                            continue 
                        return 1
            else:
                require 3 < stor0[arg1][2].length
                if Mask(8, 248, mem[131]) != 0x5f00000000000000000000000000000000000000000000000000000000000000:
                    if s >= required:
                        idx = 0
                        while idx < sub_efa8154e.length:
                            mem[0] = address(sub_efa8154e[idx])
                            mem[32] = sha3(arg1, 1)
                            if not stor1[arg1][address(stor7[idx])]:
                                idx = idx + 1
                                continue 
                            return 1
                else:
                    if s >= required:
                        idx = 0
                        while idx < sub_efa8154e.length:
                            mem[0] = address(sub_efa8154e[idx])
                            mem[32] = sha3(arg1, 1)
                            if not stor1[arg1][address(stor7[idx])]:
                                idx = idx + 1
                                continue 
                            return 1
                        if s >= required:
                            idx = 0
                            while idx < sub_efa8154e.length:
                                mem[0] = address(sub_efa8154e[idx])
                                mem[32] = sha3(arg1, 1)
                                if not stor1[arg1][address(stor7[idx])]:
                                    idx = idx + 1
                                    continue 
                                return 1
    return 0
}



}
