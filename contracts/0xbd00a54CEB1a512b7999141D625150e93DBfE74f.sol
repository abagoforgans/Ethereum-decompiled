contract main {




// =====================  Runtime code  =====================


const sub_cf2c936e(?) = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_e644f043;
mapping of uint256 sub_f50aacbb;
array of struct admins;
address ownerPool;
uint256 required;
uint256 transactionCount;
uint256 sub_a811c050;
uint256 sub_7a5053da;

function admins(uint256 arg1) {
    require arg1 < admins.length
    return address(admins[arg1].field_0)
}

function isAdmin(address arg1) {
    return bool(stor3[arg1])
}

function ownerPool() {
    return ownerPool
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function sub_7a5053da(?) {
    return sub_7a5053da
}

function sub_a811c050(?) {
    return sub_a811c050
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function sub_e644f043(?) {
    return sub_e644f043[arg1]
}

function sub_e8a422bc(?) {
    return bool(stor2[arg1][arg2])
}

function sub_f50aacbb(?) {
    return sub_f50aacbb[arg1]
}

function _fallback() payable {
    revert
}

function sub_319f1701(?) {
    require stor3[msg.sender]
    require arg1
    ownerPool = arg1
}

function sub_83ff9cdf(?) {
    require this.address == msg.sender
    require arg1 > 0
    sub_7a5053da = arg1
    emit 0x2d64757d: arg1
}

function sub_ee9f2173(?) {
    require this.address == msg.sender
    require arg1 > 0
    sub_a811c050 = arg1
    emit 0x9c2ad54e: arg1
}

function changeRequirement(uint256 arg1) {
    require this.address == msg.sender
    require admins.length <= 50
    require arg1 <= admins.length
    require arg1
    require admins.length
    required = arg1
    emit RequirementChange(arg1);
}

function getRejectionCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function addAdmin(address arg1) {
    require this.address == msg.sender
    require not stor3[address(arg1)]
    require arg1
    require admins.length + 1 <= 50
    require required <= admins.length + 1
    require required
    require admins.length + 1
    stor3[address(arg1)] = 1
    admins.length++
    address(admins[admins.length].field_0) = arg1
    emit AdminAddition(arg1);
}

function transactions(uint256 arg1) {
    mem[128] = stor0[arg1][5].field_0
    idx = 128
    s = 0
    while stor0[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           address(stor0[arg1].field_256),
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           Array(len=stor0[arg1][5].length, data=mem[128 len stor0[arg1][5].length]),
           bool(uint8(stor0[arg1].field_1536)),
           bool(uint8(stor0[arg1].field_1544)),
           bool(uint8(stor0[arg1].field_1552))
}

function getAdmins() {
    if not admins.length:
        mem[(32 * admins.length) + 128] = 32
        mem[(32 * admins.length) + 160] = admins.length
        mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
        return memory
          from (32 * admins.length) + 128
           len (96 * admins.length) + 64
    mem[128] = address(admins.field_0)
    idx = 128
    s = 0
    while (32 * admins.length) + 96 > idx:
        mem[idx + 32] = address(admins[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
    return Array(len=admins.length, data=mem[128 len floor32(admins.length)], mem[(32 * admins.length) + floor32(admins.length) + 192 len (32 * admins.length) - floor32(admins.length)]), 
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_1536):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_1536):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_1536):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(uint256 arg1) {
    if admins.length:
        mem[128 len 32 * admins.length] = code.data[8280 len 32 * admins.length]
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < admins.length
        mem[0] = 6
        require s < admins.length
        mem[(32 * s) + 128] = address(admins[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * admins.length) + 128] = s
    if s:
        mem[(32 * admins.length) + 160 len 32 * s] = code.data[8280 len 32 * s]
    t = 0
    while t < s:
        require t < admins.length
        require t < s
        mem[(32 * admins.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * admins.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * admins.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * admins.length) + 160 len floor32(s)], mem[(32 * admins.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    t = 0
    while idx < admins.length:
        require idx < admins.length
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor1[arg1][address(stor6[idx].field_0)]:
            if not stor2[arg1][address(stor6[idx].field_0)]:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if not stor2[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    if t >= required:
        return 1
    if s >= required:
        address(stor0[arg1].field_0) = 0
        address(stor0[arg1].field_256) = 0
        stor0[arg1].field_512 = 0
        stor0[arg1].field_768 = 0
        stor0[arg1].field_1024 = 0
        stor0[arg1].field_1280 = 0
        if 31 < stor0[arg1][5].length:
            idx = 0
            while stor0[arg1][5].length + 31 / 32 > idx:
                stor0[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
        stor0[arg1].field_1536 % 16777216 = 0
    return 0
}

function removeAdmin(address arg1) {
    require this.address == msg.sender
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < admins.length - 1:
        require idx < admins.length
        mem[0] = 6
        if address(admins[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require admins.length - 1 < admins.length
        require idx < admins.length
        address(admins[idx].field_0) = address(admins[admins.length].field_0)
        admins.length--
        if admins.length > admins.length - 1:
            idx = admins.length + sha3(6) - 1
            while sha3(6) + admins.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > admins.length:
            require this.address == msg.sender
            require admins.length <= 50
            require admins.length <= admins.length
            require admins.length
            required = admins.length
            emit RequirementChange(admins.length);
        emit AdminRemoval(arg1);
    admins.length--
    if admins.length > admins.length - 1:
        idx = admins.length - 1
        while admins.length > idx:
            admins[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > admins.length:
        require this.address == msg.sender
        require admins.length <= 50
        require admins.length <= admins.length
        require admins.length
        required = admins.length
        emit RequirementChange(admins.length);
    emit AdminRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[8280 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_1536):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_1536):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_1536):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[8280 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * transactionCount) + (32 * idx - arg1) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function executeTransaction(uint256 arg1) {
    require stor3[msg.sender]
    if not stor1[arg1][msg.sender]:
        require stor2[arg1][address(msg.sender)]
    require not uint8(stor0[arg1].field_1536)
    idx = 0
    s = 0
    t = 0
    while idx < admins.length:
        require idx < admins.length
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor1[arg1][address(stor6[idx].field_0)]:
            if not stor2[arg1][address(stor6[idx].field_0)]:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if not stor2[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    if t >= required:
        uint8(stor0[arg1].field_1536) = 1
        mem[128] = stor0[arg1][5].field_0
        idx = 128
        s = 0
        while stor0[arg1][5].length + 96 > idx:
            mem[idx + 32] = stor0[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[128 len 4] with:
           value stor0[arg1].field_1024 wei
             gas gas_remaining - 34710 wei
            args mem[132 len stor0[arg1][5].length - 4]
        if not ext_call.success:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_1536) = 0
        else:
            if uint8(stor0[arg1].field_1552):
                sub_f50aacbb[address(stor0[arg1].field_256)]--
            else:
                if uint8(stor0[arg1].field_1544):
                    sub_e644f043[address(stor0[arg1].field_256)]--
            emit Execution(arg1);
    else:
        if s >= required:
            address(stor0[arg1].field_0) = 0
            address(stor0[arg1].field_256) = 0
            stor0[arg1].field_512 = 0
            stor0[arg1].field_768 = 0
            stor0[arg1].field_1024 = 0
            stor0[arg1].field_1280 = 0
            if 31 < stor0[arg1][5].length:
                idx = 0
                while stor0[arg1][5].length + 31 / 32 > idx:
                    stor0[arg1][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[arg1].field_1536 % 16777216 = 0
}

function sub_b481860c(?) {
    require stor3[msg.sender]
    require address(stor0[arg1].field_0)
    if stor1[arg1][msg.sender]:
        require stor2[arg1][address(msg.sender)]
    require arg2 <= 2
    require arg2 <= 2
    if arg2 != 1:
        require arg2 == 2
    if arg2 != 1:
        stor0[arg1].field_768++
        stor2[arg1][msg.sender] = 1
    else:
        stor0[arg1].field_512++
        stor1[arg1][msg.sender] = 1
    require arg2 <= 2
    emit 0xcc66c27f: arg2, msg.sender, arg1
    require stor3[msg.sender]
    if not stor1[arg1][msg.sender]:
        require stor2[arg1][address(msg.sender)]
    require not uint8(stor0[arg1].field_1536)
    idx = 0
    s = 0
    t = 0
    while idx < admins.length:
        require idx < admins.length
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor1[arg1][address(stor6[idx].field_0)]:
            if not stor2[arg1][address(stor6[idx].field_0)]:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if not stor2[arg1][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    if t >= required:
        uint8(stor0[arg1].field_1536) = 1
        mem[128] = stor0[arg1][5].field_0
        idx = 128
        s = 0
        while stor0[arg1][5].length + 96 > idx:
            mem[idx + 32] = stor0[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[128 len 4] with:
           value stor0[arg1].field_1024 wei
             gas gas_remaining - 34710 wei
            args mem[132 len stor0[arg1][5].length - 4]
        if not ext_call.success:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_1536) = 0
        else:
            if uint8(stor0[arg1].field_1552):
                sub_f50aacbb[address(stor0[arg1].field_256)]--
            else:
                if uint8(stor0[arg1].field_1544):
                    sub_e644f043[address(stor0[arg1].field_256)]--
            emit Execution(arg1);
    else:
        if s >= required:
            address(stor0[arg1].field_0) = 0
            address(stor0[arg1].field_256) = 0
            stor0[arg1].field_512 = 0
            stor0[arg1].field_768 = 0
            stor0[arg1].field_1024 = 0
            stor0[arg1].field_1280 = 0
            if 31 < stor0[arg1][5].length:
                idx = 0
                while stor0[arg1][5].length + 31 / 32 > idx:
                    stor0[arg1][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[arg1].field_1536 % 16777216 = 0
}

function revokeConfirmation(uint256 arg1) {
    require stor3[msg.sender]
    if not stor1[arg1][msg.sender]:
        require stor2[arg1][address(msg.sender)]
    require not uint8(stor0[arg1].field_1536)
    if not uint8(stor0[arg1].field_1544):
        if uint8(stor0[arg1].field_1552):
            if msg.sender == address(stor0[arg1].field_256):
                require ext_code.size(ownerPool)
                call ownerPool.0xa22918b9 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_f50aacbb[msg.sender]--
                address(stor0[arg1].field_0) = 0
                address(stor0[arg1].field_256) = 0
                stor0[arg1].field_512 = 0
                stor0[arg1].field_768 = 0
                stor0[arg1].field_1024 = 0
                stor0[arg1].field_1280 = 0
                if 31 < stor0[arg1][5].length:
                    idx = 0
                    while stor0[arg1][5].length + 31 / 32 > idx:
                        stor0[arg1][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                stor0[arg1].field_1536 % 16777216 = 0
    else:
        if msg.sender == address(stor0[arg1].field_256):
            sub_e644f043[msg.sender]--
            address(stor0[arg1].field_0) = 0
            address(stor0[arg1].field_256) = 0
            stor0[arg1].field_512 = 0
            stor0[arg1].field_768 = 0
            stor0[arg1].field_1024 = 0
            stor0[arg1].field_1280 = 0
            if 31 < stor0[arg1][5].length:
                idx = 0
                while stor0[arg1][5].length + 31 / 32 > idx:
                    stor0[arg1][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[arg1].field_1536 % 16777216 = 0
        else:
            if uint8(stor0[arg1].field_1552):
                if msg.sender == address(stor0[arg1].field_256):
                    require ext_code.size(ownerPool)
                    call ownerPool.0xa22918b9 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_f50aacbb[msg.sender]--
                    address(stor0[arg1].field_0) = 0
                    address(stor0[arg1].field_256) = 0
                    stor0[arg1].field_512 = 0
                    stor0[arg1].field_768 = 0
                    stor0[arg1].field_1024 = 0
                    stor0[arg1].field_1280 = 0
                    if 31 < stor0[arg1][5].length:
                        idx = 0
                        while stor0[arg1][5].length + 31 / 32 > idx:
                            stor0[arg1][idx + 5].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor0[arg1].field_1536 % 16777216 = 0
    stor1[arg1][msg.sender] = 0
    emit Revocation(msg.sender, arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    idx = 0
    s = 0
    while idx < 4:
        require idx < arg3.length
        idx = idx + 1
        s = Mask(8, 248, mem[idx + 128]) / 2^(8 * idx) xor s
        continue 
    if 4 * Mask(32, 222, Mask(8, 248, _5) / 2^32) != 0x1785f53c00000000000000000000000000000000000000000000000000000000:
        if 4 * Mask(32, 222, Mask(8, 248, _5) / 2^32) != 0x173825d900000000000000000000000000000000000000000000000000000000:
            require arg1
            address(stor0[stor9].field_0) = arg1
            address(stor0[stor9].field_256) = 0
            stor0[stor9].field_512 % 1 = 0
            stor0[stor9].field_512 = 1
            stor0[stor9].field_768 = 0
            stor0[stor9].field_1024 = arg2
            stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
            uint8(stor0[stor9].field_1536) = 0
            uint8(stor0[stor9].field_1544) = 0
            Mask(240, 0, stor0[stor9].field_1552) = 0
            Mask(232, 0, stor0[stor9].field_1560) = 0
            Mask(232, 0, stor0[stor9].field_1560) = 0
            transactionCount++
            emit Submission(transactionCount);
        else:
            if ownerPool != arg1:
                require arg1
                address(stor0[stor9].field_0) = arg1
                address(stor0[stor9].field_256) = 0
                stor0[stor9].field_512 % 1 = 0
                stor0[stor9].field_512 = 1
                stor0[stor9].field_768 = 0
                stor0[stor9].field_1024 = arg2
                stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
                uint8(stor0[stor9].field_1536) = 0
                uint8(stor0[stor9].field_1544) = 0
                Mask(240, 0, stor0[stor9].field_1552) = 0
                Mask(232, 0, stor0[stor9].field_1560) = 0
                Mask(232, 0, stor0[stor9].field_1560) = 0
                transactionCount++
                emit Submission(transactionCount);
            else:
                require sub_f50aacbb[msg.sender] < sub_a811c050
                sub_f50aacbb[msg.sender]++
                require arg1
                mem[ceil32(arg3.length) + 128] = arg1
                mem[ceil32(arg3.length) + 160] = msg.sender
                mem[ceil32(arg3.length) + 192] = 1
                address(stor0[stor9].field_0) = arg1
                address(stor0[stor9].field_256) = msg.sender
                stor0[stor9].field_512 = 1
                stor0[stor9].field_768 = 0
                stor0[stor9].field_1024 = arg2
                stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
                uint8(stor0[stor9].field_1536) = 0
                uint8(stor0[stor9].field_1544) = 0
                Mask(240, 0, stor0[stor9].field_1552) = 1
                Mask(232, 0, stor0[stor9].field_1560) = 0
                Mask(232, 0, stor0[stor9].field_1560) = 0
                transactionCount++
                emit Submission(transactionCount);
                idx = 0
                s = 0
                while idx < 20:
                    require idx + 16 < arg3.length
                    _13381 = mem[idx + 144]
                    idx = idx + 1
                    s = Mask(8, 248, mem[idx + 144]) / 2^(8 * idx) xor s
                    continue 
                mem[ceil32(arg3.length) + 452] = transactionCount
                require ext_code.size(ownerPool)
                call ownerPool.0x27024bc6 with:
                     gas gas_remaining wei
                    args Mask(160, 96, 20 * Mask(8, 248, _13381) / 0x10000000000000000000000000000000000000000), transactionCount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if this.address == arg1:
            require sub_e644f043[msg.sender] < sub_7a5053da
            sub_e644f043[msg.sender]++
            require arg1
            address(stor0[stor9].field_0) = arg1
            address(stor0[stor9].field_256) = msg.sender
            stor0[stor9].field_512 = 1
            stor0[stor9].field_768 = 0
            stor0[stor9].field_1024 = arg2
            stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
            uint8(stor0[stor9].field_1536) = 0
            uint8(stor0[stor9].field_1544) = 1
            Mask(240, 0, stor0[stor9].field_1552) = 0
            Mask(232, 0, stor0[stor9].field_1560) = 0
            Mask(232, 0, stor0[stor9].field_1560) = 0
            transactionCount++
            emit Submission(transactionCount);
        else:
            if 4 * Mask(32, 222, Mask(8, 248, _5) / 2^32) != 0x173825d900000000000000000000000000000000000000000000000000000000:
                require arg1
                address(stor0[stor9].field_0) = arg1
                address(stor0[stor9].field_256) = 0
                stor0[stor9].field_512 % 1 = 0
                stor0[stor9].field_512 = 1
                stor0[stor9].field_768 = 0
                stor0[stor9].field_1024 = arg2
                stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
                uint8(stor0[stor9].field_1536) = 0
                uint8(stor0[stor9].field_1544) = 0
                Mask(240, 0, stor0[stor9].field_1552) = 0
                Mask(232, 0, stor0[stor9].field_1560) = 0
                Mask(232, 0, stor0[stor9].field_1560) = 0
                transactionCount++
                emit Submission(transactionCount);
            else:
                if ownerPool != arg1:
                    require arg1
                    address(stor0[stor9].field_0) = arg1
                    address(stor0[stor9].field_256) = 0
                    stor0[stor9].field_512 % 1 = 0
                    stor0[stor9].field_512 = 1
                    stor0[stor9].field_768 = 0
                    stor0[stor9].field_1024 = arg2
                    stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
                    uint8(stor0[stor9].field_1536) = 0
                    uint8(stor0[stor9].field_1544) = 0
                    Mask(240, 0, stor0[stor9].field_1552) = 0
                    Mask(232, 0, stor0[stor9].field_1560) = 0
                    Mask(232, 0, stor0[stor9].field_1560) = 0
                    transactionCount++
                    emit Submission(transactionCount);
                else:
                    require sub_f50aacbb[msg.sender] < sub_a811c050
                    sub_f50aacbb[msg.sender]++
                    require arg1
                    mem[ceil32(arg3.length) + 128] = arg1
                    mem[ceil32(arg3.length) + 160] = msg.sender
                    mem[ceil32(arg3.length) + 192] = 1
                    address(stor0[stor9].field_0) = arg1
                    address(stor0[stor9].field_256) = msg.sender
                    stor0[stor9].field_512 = 1
                    stor0[stor9].field_768 = 0
                    stor0[stor9].field_1024 = arg2
                    stor0[stor9][5][].field_0 = Array(len=arg3.length, data=arg3[all])
                    uint8(stor0[stor9].field_1536) = 0
                    uint8(stor0[stor9].field_1544) = 0
                    Mask(240, 0, stor0[stor9].field_1552) = 1
                    Mask(232, 0, stor0[stor9].field_1560) = 0
                    Mask(232, 0, stor0[stor9].field_1560) = 0
                    transactionCount++
                    emit Submission(transactionCount);
                    idx = 0
                    s = 0
                    while idx < 20:
                        require idx + 16 < arg3.length
                        _13416 = mem[idx + 144]
                        idx = idx + 1
                        s = Mask(8, 248, mem[idx + 144]) / 2^(8 * idx) xor s
                        continue 
                    mem[ceil32(arg3.length) + 452] = transactionCount
                    require ext_code.size(ownerPool)
                    call ownerPool.0x27024bc6 with:
                         gas gas_remaining wei
                        args Mask(160, 96, 20 * Mask(8, 248, _13416) / 0x10000000000000000000000000000000000000000), transactionCount
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require stor3[msg.sender]
    require address(stor0[stor9].field_0)
    if stor1[stor9][msg.sender]:
        require stor2[stor9][address(msg.sender)]
    stor0[stor9].field_512++
    stor1[stor9][msg.sender] = 1
    emit 0xcc66c27f: 1, msg.sender, transactionCount
    require stor3[msg.sender]
    if not stor1[stor9][msg.sender]:
        require stor2[stor9][address(msg.sender)]
    require not uint8(stor0[stor9].field_1536)
    idx = 0
    s = 0
    t = 0
    while idx < admins.length:
        require idx < admins.length
        mem[0] = address(admins[idx].field_0)
        mem[32] = sha3(transactionCount, 2)
        if not stor1[stor9][address(stor6[idx].field_0)]:
            if not stor2[stor9][address(stor6[idx].field_0)]:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if not stor2[stor9][address(stor6[idx].field_0)]:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    if t >= required:
        uint8(stor0[stor9].field_1536) = 1
        mem[ceil32(arg3.length) + 448] = stor0[stor9][5].field_0
        idx = ceil32(arg3.length) + 448
        s = 0
        while ceil32(arg3.length) + stor0[stor9][5].length + 416 > idx:
            mem[idx + 32] = stor0[stor9][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[stor9].field_0).mem[ceil32(arg3.length) + 448 len 4] with:
           value stor0[stor9].field_1024 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 452 len stor0[stor9][5].length - 4]
        if not ext_call.success:
            emit ExecutionFailure(transactionCount);
            uint8(stor0[stor9].field_1536) = 0
        else:
            if uint8(stor0[stor9].field_1552):
                sub_f50aacbb[address(stor0[stor9].field_256)]--
            else:
                if uint8(stor0[stor9].field_1544):
                    sub_e644f043[address(stor0[stor9].field_256)]--
            emit Execution(transactionCount);
    else:
        if s >= required:
            address(stor0[stor9].field_0) = 0
            address(stor0[stor9].field_256) = 0
            stor0[stor9].field_512 = 0
            stor0[stor9].field_768 = 0
            stor0[stor9].field_1024 = 0
            stor0[stor9].field_1280 = 0
            if 31 < stor0[stor9][5].length:
                idx = 0
                while stor0[stor9][5].length + 31 / 32 > idx:
                    stor0[stor9][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[stor9].field_1536 % 16777216 = 0
    return transactionCount
}



}
