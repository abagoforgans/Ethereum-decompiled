contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
address tokenAddr;
uint256 stor2;
uint256 stor3; offset 1
uint256 stor3;
uint256 stor4;
mapping of uint8 stor5;
array of struct peerMessageCount;

function tokenAddr() {
    return tokenAddr
}

function trusted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function isLocked() {
    return bool(stor0)
}

function getPeerMessageCount(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return peerMessageCount[address(arg2)][8][address(arg1)].field_0
}

function killContract() {
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe6f776e6572206f6e6c79000000000000000000000000000000000000000000
    if stor0:
        revert with 0, 'unlocked only'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function lock() {
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe6f776e6572206f6e6c79000000000000000000000000000000000000000000
    stor0 = 1
}

function tune(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe6f776e6572206f6e6c79000000000000000000000000000000000000000000
    stor4 = arg1
}

function getFee(address arg1) {
    require calldata.size - 4 >= 32
    if peerMessageCount[msg.sender][8][address(arg1)].field_0:
        return peerMessageCount[arg1].field_256
    return peerMessageCount[arg1].field_512
}

function setTrust(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 10, 0xfe6f776e6572206f6e6c79000000000000000000000000000000000000000000
    stor5[address(arg1)] = uint8(arg2)
}

function withdraw() {
    peerMessageCount[msg.sender].field_768 = 0
    call msg.sender with:
       value peerMessageCount[msg.sender].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getFee(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'trusted only'
    if peerMessageCount[address(arg1)][8][address(arg2)].field_0:
        return peerMessageCount[arg2].field_256
    return peerMessageCount[arg2].field_512
}

function sub_b4150ee7(?) {
    call 0x0 with:
       value uint255(stor3.field_1) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint256(stor3.field_0) >= uint255(stor3.field_1)
    uint256(stor3.field_0) = 0
    call tokenAddr with:
       value uint256(stor3.field_0) - uint255(stor3.field_1) wei
         gas stor4 wei
    require ext_call.success
}

function register(uint256 arg1, uint256 arg2, bytes arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    peerMessageCount[msg.sender].field_256 = arg1
    peerMessageCount[msg.sender].field_512 = arg2
    peerMessageCount[msg.sender][6][].field_0 = Array(len=arg3.length, data=arg3[all])
    peerMessageCount[msg.sender][7][].field_0 = Array(len=arg4.length, data=arg4[all])
    peerMessageCount[msg.sender].field_0 = 1
}

function sub_88a0c3a0(?) {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    mem[32] = 6
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if arg3:
        mem[128 len 32 * arg3] = code.data[5680 len 32 * arg3]
    s = 0
    idx = arg2
    while idx < peerMessageCount[address(arg1)].field_1024:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6) + 9
        require s < arg3
        mem[(32 * s) + 128] = peerMessageCount[address(arg1)][9][idx].field_0
        if s + 1 < arg3:
            s = s + 1
            idx = idx + 1
            continue 
        mem[(32 * arg3) + 128] = idx
        s = 0
        while s < 32 * arg3:
            mem[s + (32 * arg3) + 224] = mem[s + 128]
            s = s + 32
            continue 
        return idx, Array(len=arg3, data=mem[(32 * arg3) + 224 len 32 * arg3])
    mem[(32 * arg3) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
    return idx, 
           Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)])
}

function sub_d4931de9(?) {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    mem[32] = 6
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if arg3:
        mem[128 len 32 * arg3] = code.data[5680 len 32 * arg3]
    s = 0
    idx = arg2
    while idx < peerMessageCount[address(arg1)].field_1280:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6) + 10
        require s < arg3
        mem[(32 * s) + 128] = peerMessageCount[address(arg1)][10][idx].field_0
        if s + 1 < arg3:
            s = s + 1
            idx = idx + 1
            continue 
        mem[(32 * arg3) + 128] = idx
        s = 0
        while s < 32 * arg3:
            mem[s + (32 * arg3) + 224] = mem[s + 128]
            s = s + 32
            continue 
        return idx, Array(len=arg3, data=mem[(32 * arg3) + 224 len 32 * arg3])
    mem[(32 * arg3) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
    return idx, 
           Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)])
}

function sendMessage(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'trusted only'
    if bool(peerMessageCount[address(arg1)].field_0) != 1:
        revert with 0, 'sender is not registered'
    if bool(peerMessageCount[arg2].field_0) != 1:
        revert with 0, 'recipient is not registered'
    if 108 >= calldata.size:
        emit InviteEvent(arg2, arg1);
        if msg.value:
            require msg.value
            require 30 * msg.value / msg.value == 30
        require (30 * msg.value / 100) + uint256(stor3.field_0) >= uint256(stor3.field_0)
        uint256(stor3.field_0) += 30 * msg.value / 100
        require msg.value >= 30 * msg.value / 100
        require msg.value - (30 * msg.value / 100) + peerMessageCount[arg2].field_768 >= peerMessageCount[arg2].field_768
        peerMessageCount[arg2].field_768 = msg.value - (30 * msg.value / 100) + peerMessageCount[arg2].field_768
        require peerMessageCount[arg2][8][address(arg1)].field_0 + 1 >= peerMessageCount[arg2][8][address(arg1)].field_0
        peerMessageCount[arg2][8][address(arg1)].field_0++
        mem[ceil32(arg5.length) + 128] = 0
    else:
        if msg.value < peerMessageCount[arg2].field_256:
            revert with 0, 'fee is insufficient'
        if not peerMessageCount[address(arg1)][8][address(arg2)].field_0:
            if msg.value < peerMessageCount[arg2].field_512:
                revert with 0, 'spam fee is insufficient'
        require stor2 + 1 >= stor2
        stor2++
        peerMessageCount[arg2][9][peerMessageCount[arg2].field_1024].field_0 = stor2 + 1
        peerMessageCount[address(arg1)][10][peerMessageCount[address(arg1)].field_1280].field_0 = stor2 + 1
        require peerMessageCount[arg2].field_1024 + 1 >= peerMessageCount[arg2].field_1024
        peerMessageCount[arg2].field_1024++
        require peerMessageCount[address(arg1)].field_1280 + 1 >= peerMessageCount[address(arg1)].field_1280
        peerMessageCount[address(arg1)].field_1280++
        mem[ceil32(arg5.length) + 128] = arg1
        mem[ceil32(arg5.length) + 160] = arg2
        emit 0x7c38abbd: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], peerMessageCount[address(arg1)].field_1280, peerMessageCount[arg2].field_1024, arg3, arg4, Array(len=arg5.length, data=arg5[all]), stor2, stor2, stor2
        mem[ceil32(arg5.length) + 128] = stor2
        emit MessageTxEvent(address arg1, uint256 arg2, uint256 arg3):
                            Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                            mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)],
                            arg1,
                            peerMessageCount[address(arg1)].field_1280,
        mem[ceil32(arg5.length) + 128] = stor2
        emit MessageRxEvent(address arg1, uint256 arg2, uint256 arg3):
                            Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                            mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)],
                            arg2,
                            peerMessageCount[arg2].field_1024,
        if msg.value:
            require msg.value
            require 30 * msg.value / msg.value == 30
        require (30 * msg.value / 100) + uint256(stor3.field_0) >= uint256(stor3.field_0)
        uint256(stor3.field_0) += 30 * msg.value / 100
        require msg.value >= 30 * msg.value / 100
        require msg.value - (30 * msg.value / 100) + peerMessageCount[arg2].field_768 >= peerMessageCount[arg2].field_768
        peerMessageCount[arg2].field_768 = msg.value - (30 * msg.value / 100) + peerMessageCount[arg2].field_768
        require peerMessageCount[arg2][8][address(arg1)].field_0 + 1 >= peerMessageCount[arg2][8][address(arg1)].field_0
        peerMessageCount[arg2][8][address(arg1)].field_0++
        mem[ceil32(arg5.length) + 128] = stor2
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function sendMessage(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if bool(peerMessageCount[address(msg.sender)].field_0) != 1:
        revert with 0, 'sender is not registered'
    if bool(peerMessageCount[arg1].field_0) != 1:
        revert with 0, 'recipient is not registered'
    if 88 >= calldata.size:
        emit InviteEvent(arg1, msg.sender);
        if msg.value:
            require msg.value
            require 30 * msg.value / msg.value == 30
        require (30 * msg.value / 100) + uint256(stor3.field_0) >= uint256(stor3.field_0)
        uint256(stor3.field_0) += 30 * msg.value / 100
        require msg.value >= 30 * msg.value / 100
        require msg.value - (30 * msg.value / 100) + peerMessageCount[arg1].field_768 >= peerMessageCount[arg1].field_768
        peerMessageCount[arg1].field_768 = msg.value - (30 * msg.value / 100) + peerMessageCount[arg1].field_768
        require peerMessageCount[arg1][8][address(msg.sender)].field_0 + 1 >= peerMessageCount[arg1][8][address(msg.sender)].field_0
        peerMessageCount[arg1][8][address(msg.sender)].field_0++
        mem[ceil32(arg4.length) + 128] = 0
    else:
        if msg.value < peerMessageCount[arg1].field_256:
            revert with 0, 'fee is insufficient'
        if not peerMessageCount[address(msg.sender)][8][address(arg1)].field_0:
            if msg.value < peerMessageCount[arg1].field_512:
                revert with 0, 'spam fee is insufficient'
        require stor2 + 1 >= stor2
        stor2++
        peerMessageCount[arg1][9][peerMessageCount[arg1].field_1024].field_0 = stor2 + 1
        peerMessageCount[address(msg.sender)][10][peerMessageCount[address(msg.sender)].field_1280].field_0 = stor2 + 1
        require peerMessageCount[arg1].field_1024 + 1 >= peerMessageCount[arg1].field_1024
        peerMessageCount[arg1].field_1024++
        require peerMessageCount[address(msg.sender)].field_1280 + 1 >= peerMessageCount[address(msg.sender)].field_1280
        peerMessageCount[address(msg.sender)].field_1280++
        mem[ceil32(arg4.length) + 128] = msg.sender
        mem[ceil32(arg4.length) + 160] = arg1
        emit 0x7c38abbd: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], peerMessageCount[address(msg.sender)].field_1280, peerMessageCount[arg1].field_1024, arg2, arg3, Array(len=arg4.length, data=arg4[all]), stor2, stor2, stor2
        mem[ceil32(arg4.length) + 128] = stor2
        emit MessageTxEvent(address arg1, uint256 arg2, uint256 arg3):
                            Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                            mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                            msg.sender,
                            peerMessageCount[address(msg.sender)].field_1280,
        mem[ceil32(arg4.length) + 128] = stor2
        emit MessageRxEvent(address arg1, uint256 arg2, uint256 arg3):
                            Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                            mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                            arg1,
                            peerMessageCount[arg1].field_1024,
        if msg.value:
            require msg.value
            require 30 * msg.value / msg.value == 30
        require (30 * msg.value / 100) + uint256(stor3.field_0) >= uint256(stor3.field_0)
        uint256(stor3.field_0) += 30 * msg.value / 100
        require msg.value >= 30 * msg.value / 100
        require msg.value - (30 * msg.value / 100) + peerMessageCount[arg1].field_768 >= peerMessageCount[arg1].field_768
        peerMessageCount[arg1].field_768 = msg.value - (30 * msg.value / 100) + peerMessageCount[arg1].field_768
        require peerMessageCount[arg1][8][address(msg.sender)].field_0 + 1 >= peerMessageCount[arg1][8][address(msg.sender)].field_0
        peerMessageCount[arg1][8][address(msg.sender)].field_0++
        mem[ceil32(arg4.length) + 128] = stor2
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function accounts(address arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 6
    mem[96] = peerMessageCount[arg1][6].length
    mem[128] = peerMessageCount[arg1][6].field_0
    idx = 128
    s = 0
    while peerMessageCount[arg1][6].length + 96 > idx:
        mem[idx + 32] = peerMessageCount[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 160
    mem[ceil32(peerMessageCount[arg1][6].length) + 128] = peerMessageCount[arg1][7].length
    mem[0] = sha3(arg1, 6) + 7
    mem[ceil32(peerMessageCount[arg1][6].length) + 160] = peerMessageCount[arg1][7].field_0
    idx = ceil32(peerMessageCount[arg1][6].length) + 160
    s = 0
    while ceil32(peerMessageCount[arg1][6].length) + peerMessageCount[arg1][7].length + 128 > idx:
        mem[idx + 32] = peerMessageCount[arg1][s + 7].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 160] = bool(peerMessageCount[arg1].field_0)
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 192] = peerMessageCount[arg1].field_256
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 224] = peerMessageCount[arg1].field_512
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 256] = peerMessageCount[arg1].field_768
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 288] = peerMessageCount[arg1].field_1024
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 320] = peerMessageCount[arg1].field_1280
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 352] = 256
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 416] = peerMessageCount[arg1][6].length
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 448 len ceil32(peerMessageCount[arg1][6].length)] = mem[128 len ceil32(peerMessageCount[arg1][6].length)]
    mem[ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 384] = peerMessageCount[arg1][6].length + 288
    mem[peerMessageCount[arg1][6].length + ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 448] = peerMessageCount[arg1][7].length
    mem[peerMessageCount[arg1][6].length + ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 480 len ceil32(peerMessageCount[arg1][7].length)] = mem[ceil32(peerMessageCount[arg1][6].length) + 160 len ceil32(peerMessageCount[arg1][7].length)]
    if not peerMessageCount[arg1][7].length % 32:
        return bool(peerMessageCount[arg1].field_0), 
               peerMessageCount[arg1].field_256,
               peerMessageCount[arg1].field_512,
               peerMessageCount[arg1].field_768,
               peerMessageCount[arg1].field_1024,
               peerMessageCount[arg1].field_1280,
               Array(len=peerMessageCount[arg1][6].length, data=mem[128 len ceil32(peerMessageCount[arg1][6].length)], mem[(2 * ceil32(peerMessageCount[arg1][6].length)) + ceil32(peerMessageCount[arg1][7].length) + 448 len peerMessageCount[arg1][7].length + peerMessageCount[arg1][6].length + -ceil32(peerMessageCount[arg1][6].length) + 32]),
               peerMessageCount[arg1][6].length + 288
    mem[floor32(peerMessageCount[arg1][7].length) + peerMessageCount[arg1][6].length + ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + 480] = mem[floor32(peerMessageCount[arg1][7].length) + peerMessageCount[arg1][6].length + ceil32(peerMessageCount[arg1][6].length) + ceil32(peerMessageCount[arg1][7].length) + -peerMessageCount[arg1][7].length % 32 + 512 len peerMessageCount[arg1][7].length % 32]
    return bool(peerMessageCount[arg1].field_0), 
           peerMessageCount[arg1].field_256,
           peerMessageCount[arg1].field_512,
           peerMessageCount[arg1].field_768,
           peerMessageCount[arg1].field_1024,
           peerMessageCount[arg1].field_1280,
           Array(len=peerMessageCount[arg1][6].length, data=mem[128 len ceil32(peerMessageCount[arg1][6].length)], mem[(2 * ceil32(peerMessageCount[arg1][6].length)) + ceil32(peerMessageCount[arg1][7].length) + 448 len floor32(peerMessageCount[arg1][7].length) + peerMessageCount[arg1][6].length + -ceil32(peerMessageCount[arg1][6].length) + 64]),
           peerMessageCount[arg1][6].length + 288
}



}
