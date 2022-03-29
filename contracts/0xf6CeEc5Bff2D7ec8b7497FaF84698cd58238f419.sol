contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 5642]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;

function pendingContractOwner() {
    return pendingContractOwner
}

function getGame(uint256 arg1) {
    return uint256(game[arg1].field_0), 
           uint256(game[arg1].field_256),
           uint256(game[arg1].field_768),
           uint256(game[arg1].field_1024),
           uint256(game[arg1].field_1280)
}

function contractOwner() {
    return contractOwner
}

function kill() {
    if contractOwner != msg.sender:
    selfdestruct(contractOwner)
}

function _fallback() payable {
    revert
}

function getSettings() {
    return stor2, stor3
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function getBalance(address arg1) {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function gameStart(uint256 arg1) {
    if stor4 == msg.sender:
        require uint256(game[arg1].field_0)
        require not uint256(game[arg1].field_256)
        uint256(game[arg1].field_256) = 1
        emit GameStarted(arg1);
}

function setParams(uint256 arg1, uint256 arg2, address arg3, address arg4) {
    if contractOwner == msg.sender:
        stor2 = arg1
        stor3 = arg2
        stor4 = arg3
        stor5 = arg4
        emit LogSender2(msg.sender, arg4);
}

function bytesToUint2(bytes arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    s = 0
    idx = 1
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] <= 0:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s + (mem[idx + 128 len 1] * 10^(arg1.length + -idx - 1))
            continue 
        s = mem[idx + 128 len 1] - 48
        idx = idx + 1
        s = s - (48 * 10^(arg1.length + -idx - 1)) + (mem[idx + 128 len 1] * 10^(arg1.length + -idx - 1))
        continue 
    return s
}

function gameResult(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if stor4 == msg.sender:
        require uint256(game[arg1].field_0)
        require not uint256(game[arg1].field_768)
        require uint256(game[arg1].field_1024)
        require var19003 < uint256(game[arg1].field_1280)
        mem[32] = 6
        require var19003 < uint256(game[arg1].field_1280)
        mem[0] = sha3(arg1, 6) + 5
        if uint8(stor[(5 * var19003) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024):
            var19003 = var19003 + 1
            continue 
        mem[32] = 6
        require var19003 < uint256(game[arg1].field_1280)
        mem[0] = sha3(arg1, 6) + 5
        if arg2 != uint256(stor[(5 * var19003) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512):
            var19003 = var19003 + 1
            continue 
        require var19003 < uint256(game[arg1].field_1280)
        require address(stor[(5 * var19003) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0)
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
             gas gas_remaining - 50 wei
            args stor4, address(stor[(5 * var19003) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0), uint256(game[arg1].field_1024) - (stor2 * uint256(game[arg1].field_1024) / 100)
        require ext_call.success
        require ext_call.return_data[0]
        uint256(game[arg1].field_768) = arg2
        uint256(game[arg1].field_256) = 200
        emit GameFinished(uint256 rg1, uint256 rg2, string rg3, uint256 rg4, address rg5):
                          arg1,
                          0,
                          160,
                          uint256(game[arg1].field_1024) - (stor2 * uint256(game[arg1].field_1024) / 100),
                          address(stor[(5 * var19003) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0),
                          0,
}

function getGameBid(uint256 arg1, uint256 arg2) {
    require arg2 < uint256(game[arg1].field_1280)
    mem[160] = uint256(stor[sha3((5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3)].field_0)
    idx = 160
    s = 0
    while stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 160] = address(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0)
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 192] = uint256(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256)
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 224] = uint256(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512)
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 288] = bool(uint8(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024))
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 256] = 160
    mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 320] = stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length
    if stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length:
        mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 352] = mem[160]
        mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 384 len floor32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length - 1)] = mem[192 len floor32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length - 1)]
    return address(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0), 
           uint256(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256),
           uint256(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512),
           Array(len=stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length, data=mem[ceil32(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length) + 352 len stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6))) + 3].length]),
           bool(uint8(stor[(5 * arg2) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024))
}

function gameRefund(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if stor4 == msg.sender:
        require uint256(game[arg1].field_0)
        require not uint256(game[arg1].field_768)
        require uint256(game[arg1].field_1024)
        s = 0
        t = 0
        u = 0
        v = 0
        idx = 0
        while idx < uint256(game[arg1].field_1280):
            require idx < uint256(game[arg1].field_1280)
            if uint8(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024):
                mem[0] = arg1
                mem[32] = 6
                s = s
                t = t
                u = u
                v = v
                idx = idx + 1
                continue 
            require idx < uint256(game[arg1].field_1280)
            require idx < uint256(game[arg1].field_1280)
            require idx < uint256(game[arg1].field_1280)
            mem[0] = sha3(arg1, 6) + 5
            mem[mem[64] + 68] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            require ext_code.size(stor5)
            call stor5.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args stor4, address(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0), uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            require ext_call.success
            require ext_call.return_data[0]
            require idx < uint256(game[arg1].field_1280)
            uint8(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024) = 1
            require idx < uint256(game[arg1].field_1280)
            mem[32] = 6
            uint256(game[arg1].field_1024) -= uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256)
            require idx < uint256(game[arg1].field_1280)
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512)
            mem[mem[64] + 64] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            emit GameRefunded(arg1, uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512), uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100));
            mem[0] = arg1
            mem[32] = 6
            s = ext_call.return_data[0]
            t = stor5
            u = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            v = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100
            idx = idx + 1
            continue 
}

function bidRefund(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if stor4 == msg.sender:
        require uint256(game[arg1].field_0)
        require not uint256(game[arg1].field_768)
        require uint256(game[arg1].field_1024)
        s = 0
        t = 0
        u = 0
        v = 0
        idx = 0
        while idx < uint256(game[arg1].field_1280):
            require idx < uint256(game[arg1].field_1280)
            if uint8(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024):
                mem[0] = arg1
                mem[32] = 6
                s = s
                t = t
                u = u
                v = v
                idx = idx + 1
                continue 
            require idx < uint256(game[arg1].field_1280)
            if uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512) != arg2:
                mem[0] = arg1
                mem[32] = 6
                s = s
                t = t
                u = u
                v = v
                idx = idx + 1
                continue 
            require idx < uint256(game[arg1].field_1280)
            require idx < uint256(game[arg1].field_1280)
            require idx < uint256(game[arg1].field_1280)
            mem[0] = sha3(arg1, 6) + 5
            mem[mem[64] + 68] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            require ext_code.size(stor5)
            call stor5.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args stor4, address(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_0), uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            require ext_call.success
            require ext_call.return_data[0]
            require idx < uint256(game[arg1].field_1280)
            uint8(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_1024) = 1
            require idx < uint256(game[arg1].field_1280)
            mem[32] = 6
            uint256(game[arg1].field_1024) -= uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256)
            require idx < uint256(game[arg1].field_1280)
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512)
            mem[mem[64] + 64] = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            emit GameRefunded(arg1, uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_512), uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100));
            mem[0] = arg1
            mem[32] = 6
            s = ext_call.return_data[0]
            t = stor5
            u = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) - (uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100)
            v = uint256(stor[(5 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'game', 6)))].field_256) * stor3 / 100
            idx = idx + 1
            continue 
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = stor4
    mem[ceil32(arg4.length) + 196] = arg2
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining - 50 wei
        args address(arg1), stor4, arg2
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    s = 0
    idx = 1
    s = 0
    while idx < arg4.length:
        require idx < arg4.length
        if mem[idx + 128 len 1] <= 0:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s + (mem[idx + 128 len 1] * 10^(arg4.length + -idx - 1))
            continue 
        s = mem[idx + 128 len 1] - 48
        idx = idx + 1
        s = s - (48 * 10^(arg4.length + -idx - 1)) + (mem[idx + 128 len 1] * 10^(arg4.length + -idx - 1))
        continue 
    uint256(game[s / 10000].field_0) = s / 10000
    uint256(game[s / 10000].field_1024) += arg2
    uint256(game[s / 10000].field_1280)++
    if not uint256(game[s / 10000].field_1280) <= uint256(game[s / 10000].field_1280) + 1:
        mem[0] = sha3(s / 10000, 6) + 5
        t = (5 * uint256(game[s / 10000].field_1280)) + 5
        while sha3(sha3(s / 10000, 6) + 5) + (5 * uint256(game[s / 10000].field_1280)) > t + sha3(mem[0]):
            address(stor[t + sha3(mem[0])]) = 0
            uint256(stor[t + sha3(mem[0]) + 1]) = 0
            uint256(stor[t + sha3(mem[0]) + 2]) = 0
            uint256(stor[t + sha3(mem[0]) + 3]) = 0
            if 31 >= stor[t + sha3(mem[0]) + 3].length:
                uint8(stor[t + sha3(mem[0]) + 4]) = 0
                t = t + 5
                continue 
            mem[0] = t + sha3(mem[0]) + 3
            s = sha3(s + sha3(mem[0]) + 3)
            while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint8(stor[s + sha3(mem[0]) + 4]) = 0
            s = s + 5
            continue 
    address(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_0) = arg1
    uint256(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_256) = arg2
    uint256(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_512) = s - (10000 * s / 10000)
    bool(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_768) = 0
    uint255(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_769) = 0
    Mask(248, 0, stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_776) = mem[ceil32(arg4.length) + 320 len 31]
    t = 0
    while stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6))) + 3].length + 31 / 32 > t:
        uint256(stor[t + sha3((5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6))) + 3)].field_0) = 0
        t = t + 1
        continue 
    uint8(stor[(5 * uint256(game[s / 10000].field_1280)) + ('array', 5, ('map', ('div', ('var', 1), 10000), ('name', 'game', 6)))].field_1024) = 0
    emit GameBidAccepted(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bytes rg5, bool rg6):
                         address(arg1),
                         arg2,
                         s / 10000,
                         s - (10000 * s / 10000),
                         192,
                         bool(ext_call.return_data[0]),
                         0,
}



}
