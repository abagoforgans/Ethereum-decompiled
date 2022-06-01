contract main {




// =====================  Runtime code  =====================


uint256 name;
address creatorAddress;
uint256 allowance;
array of struct owners;
array of struct log;
array of struct stor5;
array of struct stor6;
uint256 approvalsreq;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function creator() {
    return creatorAddress
}

function name() {
    return name
}

function approvalsreq() {
    return approvalsreq
}

function getLog(uint256 arg1) {
    require arg1 < log.length
    return address(log[arg1].field_256), uint256(log[arg1].field_0)
}

function getTxnNum() {
    return stor5.length
}

function getTokenTxnNum() {
    return stor6.length
}

function getLogsNum() {
    return log.length
}

function allowance() {
    return allowance
}

function _fallback() payable {
    allowance += msg.value
}

function topBalance() payable {
    require 0 < msg.value
    allowance += msg.value
    log.length++
    if log.length > log.length + 1:
        idx = 2 * log.length + 1
        while 2 * log.length > idx:
            uint256(log[idx].field_0) = 0
            address(log[idx].field_256) = 0
            idx = idx + 2
            continue 
    require log.length < log.length
    uint256(log[log.length].field_0) = msg.value
    address(log[log.length].field_256) = msg.sender
    emit topUpBalance(msg.value);
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function confirmTransaction(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    require arg1 < stor5.length
    idx = 0
    s = 0
    while uint8(idx) < uint256(stor5[arg1].field_1280):
        mem[0] = (7 * arg1) + sha3(5) + 5
        if address(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5) + uint8(idx)].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require not s
    uint256(stor5[arg1].field_1280)++
    uint256(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5) + uint256(stor5[arg1].field_1280)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5) + uint256(stor5[arg1].field_1280)].field_0))
    if uint256(stor5[arg1].field_1280) == approvalsreq:
        uint8(stor5[arg1].field_1024) = 1
    emit TxnConfirmed(arg1);
    return 1
}

function confirmTokenTransaction(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    require arg1 < stor6.length
    idx = 0
    s = 0
    while uint8(idx) < uint256(stor6[arg1].field_1024):
        mem[0] = (6 * arg1) + sha3(6) + 4
        if address(stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 4) + uint8(idx)].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require not s
    uint256(stor6[arg1].field_1024)++
    uint256(stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 4) + uint256(stor6[arg1].field_1024)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 4) + uint256(stor6[arg1].field_1024)].field_0))
    if uint256(stor6[arg1].field_1024) == approvalsreq:
        uint8(stor6[arg1].field_1280) = 1
    emit tokenTxnConfirmed(arg1, msg.sender);
    return 1
}

function getTokenTxn(uint256 arg1) {
    require arg1 < stor6.length
    if uint256(stor6[arg1].field_1024):
        mem[128] = address(stor[sha3((6 * arg1) + ('name', 'stor6', 6) + 4)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor6[arg1].field_1024)) + 96 > idx:
            mem[idx + 32] = address(stor[s + sha3((6 * arg1) + ('name', 'stor6', 6) + 4)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require uint8(stor6[arg1].field_1280) <= 2
    mem[(32 * uint256(stor6[arg1].field_1024)) + 384 len floor32(uint256(stor6[arg1].field_1024))] = mem[128 len floor32(uint256(stor6[arg1].field_1024))]
    return uint256(stor6[arg1].field_0), 
           address(stor6[arg1].field_256),
           address(stor6[arg1].field_512),
           uint256(stor6[arg1].field_768),
           Array(len=uint256(stor6[arg1].field_1024), data=mem[128 len floor32(uint256(stor6[arg1].field_1024))], mem[(32 * uint256(stor6[arg1].field_1024)) + floor32(uint256(stor6[arg1].field_1024)) + 384 len (32 * uint256(stor6[arg1].field_1024)) - floor32(uint256(stor6[arg1].field_1024))]),
           uint8(stor6[arg1].field_1280),
           address(stor6[arg1].field_1280)
}

function executeTokenTxn(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    require arg1 < stor6.length
    require uint8(stor6[arg1].field_1280) <= 2
    require uint8(stor6[arg1].field_1280) == 1
    require ext_code.size(address(stor6[arg1].field_256))
    call address(stor6[arg1].field_256).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= uint256(stor6[arg1].field_768)
    require ext_code.size(address(stor6[arg1].field_256))
    call address(stor6[arg1].field_256).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor6[arg1].field_512), uint256(stor6[arg1].field_768)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor6[arg1].field_1280) = 2
    emit tokenTxnExecuted(address(stor6[arg1].field_256), uint256(stor6[arg1].field_768), address(stor6[arg1].field_512));
    return 1
}

function submitTokenTransaction(address arg1, address arg2, uint256 arg3) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    stor6.length++
    if stor6.length > stor6.length + 1:
        mem[0] = 6
        idx = (6 * stor6.length) + 6
        while sha3(6) + (6 * stor6.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            mem[0] = idx + sha3(mem[0]) + 4
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            Mask(168, 0, stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    require stor6.length < stor6.length
    uint256(stor6[stor6.length].field_0) = stor6.length
    address(stor6[stor6.length].field_256) = arg1
    address(stor6[stor6.length].field_512) = arg2
    uint256(stor6[stor6.length].field_768) = arg3
    uint256(stor6[stor6.length].field_1024)++
    uint256(stor[uint256(stor6[stor6.length].field_1024) + sha3(('name', 'stor6', 6) + (6 * stor6.length) + 4)].field_0) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor6[stor6.length].field_1024) + sha3(('name', 'stor6', 6) + (6 * stor6.length) + 4)].field_0))
    if uint256(stor6[stor6.length].field_1024) == approvalsreq:
        require stor6.length < stor6.length
        uint8(stor6[stor6.length].field_1280) = 1
    emit TxnSumbitted(stor6.length);
    return 1
}

function executeTxn(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    require arg1 < stor5.length
    require uint8(stor5[arg1].field_1024) <= 2
    require uint8(stor5[arg1].field_1024) == 1
    require allowance >= uint256(stor5[arg1].field_512)
    mem[64] = ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 128
    mem[96] = stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length
    mem[128] = uint256(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 3)].field_0)
    idx = 128
    s = 0
    while stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 128 len ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)] = mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)]
    if not stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length % 32:
        call address(stor5[arg1].field_256).mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 128 len 4] with:
           value uint256(stor5[arg1].field_512) wei
             gas gas_remaining wei
            args mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 132 len stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length - 4]
    else:
        mem[floor32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 128] = mem[floor32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + -stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length % 32 + 160 len stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length % 32]
        call address(stor5[arg1].field_256).mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 128 len 4] with:
           value uint256(stor5[arg1].field_512) wei
             gas gas_remaining wei
            args mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 132 len floor32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 28]
    require ext_call.success
    uint8(stor5[arg1].field_1024) = 2
    allowance -= uint256(stor5[arg1].field_512)
    return 1
}

function getTxn(uint256 arg1) {
    require arg1 < stor5.length
    mem[128] = uint256(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 3)].field_0)
    idx = 128
    s = 0
    while stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(stor5[arg1].field_1280):
        mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 160] = address(stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_0)
        idx = ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 160
        s = 0
        while ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + (32 * uint256(stor5[arg1].field_1280)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require uint8(stor5[arg1].field_1024) <= 2
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + (32 * uint256(stor5[arg1].field_1280)) + 416 len ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)] = mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)]
    mem[stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + (32 * uint256(stor5[arg1].field_1280)) + 416] = uint256(stor5[arg1].field_1280)
    mem[stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + (32 * uint256(stor5[arg1].field_1280)) + 448 len floor32(uint256(stor5[arg1].field_1280))] = mem[ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 160 len floor32(uint256(stor5[arg1].field_1280))]
    return uint256(stor5[arg1].field_0), 
           address(stor5[arg1].field_256),
           uint256(stor5[arg1].field_512),
           Array(len=stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length, data=mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)], mem[(2 * ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length)) + (32 * uint256(stor5[arg1].field_1280)) + 416 len (32 * uint256(stor5[arg1].field_1280)) + stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + -ceil32(stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length) + 32]),
           uint8(stor5[arg1].field_1024),
           stor[(7 * arg1) + ('name', 'stor5', 5) + 3].length + 256,
           address(stor5[arg1].field_1536)
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    stor5.length++
    if stor5.length > stor5.length + 1:
        mem[0] = 5
        idx = (7 * stor5.length) + 7
        while sha3(5) + (7 * stor5.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            address(stor[idx + sha3(mem[0]) + 6]) = 0
            idx = idx + 7
            continue 
    require stor5.length < stor5.length
    uint256(stor5[stor5.length].field_0) = stor5.length
    address(stor5[stor5.length].field_256) = arg1
    uint256(stor5[stor5.length].field_512) = arg2
    uint256(stor5[stor5.length].field_768) = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        uint256(stor[s + sha3((7 * stor5.length) + ('name', 'stor5', 5) + 3)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while stor[(7 * stor5.length) + ('name', 'stor5', 5) + 3].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((7 * stor5.length) + ('name', 'stor5', 5) + 3)].field_0) = 0
        idx = idx + 1
        continue 
    require stor5.length < stor5.length
    address(stor5[stor5.length].field_1536) = msg.sender
    uint256(stor5[stor5.length].field_1280)++
    uint256(stor[sha3(('name', 'stor5', 5) + (7 * stor5.length) + 5) + uint256(stor5[stor5.length].field_1280)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3(('name', 'stor5', 5) + (7 * stor5.length) + 5) + uint256(stor5[stor5.length].field_1280)].field_0))
    if uint256(stor5[stor5.length].field_1280) == approvalsreq:
        require stor5.length < stor5.length
        uint8(stor5[stor5.length].field_1024) = 1
    emit TxnSumbitted(stor5.length);
    return 1
}



}
