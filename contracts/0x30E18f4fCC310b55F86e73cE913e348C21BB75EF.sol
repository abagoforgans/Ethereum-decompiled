contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 3586]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;

function authorizedLoggers(address arg1) {
    return bool(stor1[arg1])
}

function isAuthorized(address arg1) {
    return bool(stor1[address(arg1)])
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function authorize(address arg1) {
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit LoggerAuthorized(arg1);
}

function getEventsCount(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getEvent(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 416 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require arg2 < stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 384 len arg1.length % 32]]
    _53 = sha3(sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 384 len arg1.length % 32]), 2))
    require uint8(stor[(5 * arg2) + _53 + 3].field_160) <= 2
    mem[ceil32(arg1.length) + 608] = uint256(stor[sha3((5 * arg2) + _53 + 4)].field_0)
    idx = ceil32(arg1.length) + 608
    s = 0
    while ceil32(arg1.length) + stor[(5 * arg2) + _53 + 4].length + 576 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg2) + _53 + 4) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 608] = uint256(stor[(5 * arg2) + _53 + 1].field_0)
    mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 640] = address(stor[(5 * arg2) + _53 + 3].field_0)
    require uint8(stor[(5 * arg2) + _53 + 3].field_160) <= 2
    mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 672] = uint8(stor[(5 * arg2) + _53 + 3].field_160)
    mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 704] = 128
    mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 736] = stor[(5 * arg2) + _53 + 4].length
    if stor[(5 * arg2) + _53 + 4].length:
        mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 768] = mem[ceil32(arg1.length) + 608]
        mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 800 len floor32(stor[(5 * arg2) + _53 + 4].length - 1)] = mem[ceil32(arg1.length) + 640 len floor32(stor[(5 * arg2) + _53 + 4].length - 1)]
    return uint256(stor[(5 * arg2) + _53 + 1].field_0), 
           address(stor[(5 * arg2) + _53 + 3].field_0),
           uint8(stor[(5 * arg2) + _53 + 3].field_0),
           Array(len=stor[(5 * arg2) + _53 + 4].length, data=mem[ceil32(arg1.length) + ceil32(stor[(5 * arg2) + _53 + 4].length) + 768 len stor[(5 * arg2) + _53 + 4].length])
}

function addEvent(uint256 arg1, uint256 arg2, uint8 arg3, string arg4, string arg5) {
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require stor1[address(msg.sender)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32] = mem[ceil32(arg4.length) + -(arg5.length % 32) + floor32(arg5.length) + 192 len arg5.length % 32]
    _78 = sha3(sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]), 2)
    stor2[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]]++
    if not stor2[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]] > stor2[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]] + 1:
        _81 = sha3(sha3(sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]), 2))
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = block.timestamp
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = msg.sender
        require arg3 <= 2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = 96
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _81].field_0) = block.timestamp
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _81 + 1].field_0) = arg1
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _81 + 2].field_0) = arg2
        address(stor[(5 * uint256(stor[_78].field_0)) + _81 + 3].field_0) = msg.sender
        require arg3 <= 2
        uint8(stor[(5 * uint256(stor[_78].field_0)) + _81 + 3].field_160) = arg3
        uint256(stor[sha3((5 * uint256(stor[_78].field_0)) + _81 + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
    else:
        mem[0] = sha3(sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]), 2)
        idx = (5 * stor2[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]]) + 5
        while sha3(sha3(sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]), 2)) + (5 * stor2[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]]) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 3].field_160) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            idx = idx + 5
            continue 
        _150 = sha3(sha3(sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]), 2))
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = block.timestamp
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = msg.sender
        require arg3 <= 2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = 96
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _150].field_0) = block.timestamp
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _150 + 1].field_0) = arg1
        uint256(stor[(5 * uint256(stor[_78].field_0)) + _150 + 2].field_0) = arg2
        address(stor[(5 * uint256(stor[_78].field_0)) + _150 + 3].field_0) = msg.sender
        require arg3 <= 2
        uint8(stor[(5 * uint256(stor[_78].field_0)) + _150 + 3].field_160) = arg3
        uint256(stor[sha3((5 * uint256(stor[_78].field_0)) + _150 + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
    require arg3 <= 2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 384] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 448] = msg.sender
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 352] = 128
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
    if arg5.length:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[ceil32(arg4.length) + 160]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 544 len floor32(arg5.length - 1)] = mem[ceil32(arg4.length) + 192 len floor32(arg5.length - 1)]
    emit EventLogged(Array(len=arg5.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len arg5.length]), arg3 << 248, arg1, msg.sender);
}



}
