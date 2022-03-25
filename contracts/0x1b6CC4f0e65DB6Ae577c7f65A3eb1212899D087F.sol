contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4897]
}



// =====================  Runtime code  =====================


address owner;

function getLength(string arg1) {
    return length[arg1[all]].field_256
}

function getOrder(string arg1) {
    return length[arg1[all]].field_0, bool(length[arg1[all]].field_8)
}

function getOwner() {
    return owner
}

function getHistory(string arg1, uint256 arg2) {
    require arg2 < length[arg1[all]].field_256
    require arg2 < length[arg1[all]].field_256
    require arg2 < length[arg1[all]].field_256
    return stor[arg2 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0, 
           stor[arg2 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0,
           stor[arg2 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_160
}

function kill() {
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function get() {
    mem[288] = mem[315 len 5]
    return Array(len=5, data=mem[288]), owner
}

function order_received(string arg1) {
    if msg.sender == 0x45774151e8556dc4b043bf6445ef1b7bee3a7320:
        emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 1
        length[arg1[all]].field_0 = 1
        length[arg1[all]].field_256++
        if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
            idx = length[arg1[all]].field_256 + 1
            while length[arg1[all]].field_256 > idx:
                length[arg1[all]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 1
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
}

function share_transfered(string arg1) {
    if msg.sender == 0xe38ea51f35d3f69486b32fb36f202cb0c868f215:
        emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 2
        length[arg1[all]].field_0 = 2
        length[arg1[all]].field_256++
        if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
            idx = length[arg1[all]].field_256 + 1
            while length[arg1[all]].field_256 > idx:
                length[arg1[all]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 2
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
        stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
}

function addOrder(string arg1, bool arg2) {
    mem[ceil32(arg1.length) + 224 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        emit code.data[4865 len 32]: 64, 0, arg1.length, arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit code.data[4865 len 32]: 64, 0, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 224 len -(arg1.length % 32) + 32]
    length[arg1[all]].field_0 = 0
    length[arg1[all]].field_8 = Mask(248, 0, arg2)
    length[arg1[all]].field_256++
    if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
        idx = length[arg1[all]].field_256 + 1
        while length[arg1[all]].field_256 > idx:
            length[arg1[all]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 0
    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
}

function cash_received(string arg1) {
    if msg.sender != 0xfbdf047010e945ec62e532ed4813e9e2b85fc13f:
        if msg.sender == 0x87c12e2827cee5e7a4224e3b0b8e38aab70b70f2:
            if 0 == bool(length[arg1[all]].field_8):
                emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 4
                length[arg1[all]].field_0 = 4
                length[arg1[all]].field_256++
                if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                    idx = length[arg1[all]].field_256 + 1
                    while length[arg1[all]].field_256 > idx:
                        length[arg1[all]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 4
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
    else:
        if 1 == bool(length[arg1[all]].field_8):
            emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 4
            length[arg1[all]].field_0 = 4
            length[arg1[all]].field_256++
            if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                idx = length[arg1[all]].field_256 + 1
                while length[arg1[all]].field_256 > idx:
                    length[arg1[all]][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 4
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
        else:
            if msg.sender == 0x87c12e2827cee5e7a4224e3b0b8e38aab70b70f2:
                if 0 == bool(length[arg1[all]].field_8):
                    emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 4
                    length[arg1[all]].field_0 = 4
                    length[arg1[all]].field_256++
                    if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                        idx = length[arg1[all]].field_256 + 1
                        while length[arg1[all]].field_256 > idx:
                            length[arg1[all]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 4
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
}

function cash_transfered(string arg1) {
    if 0x87c12e2827cee5e7a4224e3b0b8e38aab70b70f2 != msg.sender:
        if 0xfbdf047010e945ec62e532ed4813e9e2b85fc13f == msg.sender:
            if 0 == bool(length[arg1[all]].field_8):
                emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 3
                length[arg1[all]].field_0 = 3
                length[arg1[all]].field_256++
                if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                    idx = length[arg1[all]].field_256 + 1
                    while length[arg1[all]].field_256 > idx:
                        length[arg1[all]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 3
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
                stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
    else:
        if 1 == bool(length[arg1[all]].field_8):
            emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 3
            length[arg1[all]].field_0 = 3
            length[arg1[all]].field_256++
            if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                idx = length[arg1[all]].field_256 + 1
                while length[arg1[all]].field_256 > idx:
                    length[arg1[all]][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 3
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
            stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
        else:
            if 0xfbdf047010e945ec62e532ed4813e9e2b85fc13f == msg.sender:
                if 0 == bool(length[arg1[all]].field_8):
                    emit code.data[4865 len 32]: Array(len=arg1.length, data=arg1[all]), 3
                    length[arg1[all]].field_0 = 3
                    length[arg1[all]].field_256++
                    if not length[arg1[all]].field_256 <= length[arg1[all]].field_256 + 1:
                        idx = length[arg1[all]].field_256 + 1
                        while length[arg1[all]].field_256 > idx:
                            length[arg1[all]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = msg.sender
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_224 = 3
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, msg.sender) >> 232
                    stor[length[arg1[all]].field_256 + ('array', 1, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('name', 'length', 1)))].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
}



}
