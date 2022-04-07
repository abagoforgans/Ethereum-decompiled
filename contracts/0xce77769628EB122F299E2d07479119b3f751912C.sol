contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
mapping of struct stor6;

function _fallback() payable {
    stor1 = this.address
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[3228 len 20]
    stor3 = code.data[3228 len 20]
    stor6[address(code.data[3216 len 32])].field_0 = 1
    stor6[address(code.data[3216 len 32])].field_8 = 0
    stor6[address(code.data[3216 len 32])].field_168 = 0
    stor6[address(code.data[3216 len 32])].field_256 = 0
    stor6[address(code.data[3216 len 32])].field_256 = 0
    stor6[address(code.data[3216 len 32])].field_512 = code.data[3248 len 32]
    return code.data[268 len 2948]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address firstAddress;
address lastAddress;
uint8 thinkMode; offset 160
address ddfAddress;
uint256 pos;
mapping of struct theList;
array of struct stor7;

function myAddress() {
    return address(stor1.length)
}

function first() {
    return firstAddress
}

function last() {
    return lastAddress
}

function theList(address arg1) {
    return bool(uint8(theList[arg1].field_0)), theList[arg1].field_0, theList[arg1].field_256, uint256(theList[arg1].field_512)
}

function thinkLength() {
    return stor7.length
}

function owner() {
    return owner
}

function pos() {
    return pos
}

function thinkMode() {
    return bool(thinkMode)
}

function ddf() {
    return ddfAddress
}

function _fallback() payable {
    revert
}

function setDDF(address arg1) {
    require owner == msg.sender
    ddfAddress = arg1
}

function startThinking() {
    require owner == msg.sender
    thinkMode = 1
    pos = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function update(address arg1, uint256 arg2) {
    if ddfAddress == msg.sender:
        if thinkMode:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = 2 * stor7.length + 1
                while 2 * stor7.length > idx:
                    stor7[idx].field_0 = 0
                    uint256(stor7[idx].field_256) = 0
                    idx = idx + 2
                    continue 
            stor7[stor7.length].field_0 = arg1
            uint256(stor7[stor7.length].field_256) = arg2
        else:
            if arg2:
                if uint8(theList[address(arg1)].field_0):
                    uint256(theList[address(arg1)].field_512) = arg2
                    emit ev(Array(len=6, data='update'), address(arg1), arg2);
                else:
                    uint8(theList[address(arg1)].field_0) = 1
                    theList[address(arg1)].field_8 = 0
                    Mask(88, 0, theList[address(arg1)].field_168) = 0
                    theList[address(arg1)].field_256 % 1 = 0
                    theList[address(arg1)].field_256 = lastAddress
                    uint256(theList[address(arg1)].field_512) = arg2
                    theList[stor3].field_8 = arg1
                    lastAddress = arg1
                    emit ev(Array(len=3, data='add'), address(arg1), arg2);
            else:
                if uint8(theList[address(arg1)].field_0):
                    if firstAddress == arg1:
                        firstAddress = theList[address(arg1)].field_8
                        uint8(theList[address(arg1)].field_0) = 0
                        theList[address(arg1)].field_8 = 0
                        Mask(88, 0, theList[address(arg1)].field_168) = 0
                        theList[address(arg1)].field_256 % 1 = 0
                        theList[address(arg1)].field_256 = 0
                        theList[address(arg1)].field_512 % 1 = 0
                        uint256(theList[address(arg1)].field_512) = 0
                    else:
                        if theList[address(arg1)].field_256:
                            Mask(248, 0, theList[theList[address(arg1)].field_256].field_8) = theList[address(arg1)].field_8
                        if theList[address(arg1)].field_8:
                            theList[theList[address(arg1)].field_0].field_256 = theList[address(arg1)].field_256
                        uint8(theList[address(arg1)].field_0) = 0
                        theList[address(arg1)].field_8 = 0
                        Mask(88, 0, theList[address(arg1)].field_168) = 0
                        theList[address(arg1)].field_256 % 1 = 0
                        theList[address(arg1)].field_256 = 0
                        uint256(theList[address(arg1)].field_512) = 0
                        emit ev(string rg1, address rg2, uint256 rg3):
                                96,
                                address(arg1),
                                0,
                                6,
                                'remove',
    else:
        if address(stor1.length) == msg.sender:
            if thinkMode:
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    idx = 2 * stor7.length + 1
                    while 2 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        uint256(stor7[idx].field_256) = 0
                        idx = idx + 2
                        continue 
                stor7[stor7.length].field_0 = arg1
                uint256(stor7[stor7.length].field_256) = arg2
            else:
                if arg2:
                    if uint8(theList[address(arg1)].field_0):
                        uint256(theList[address(arg1)].field_512) = arg2
                        emit ev(Array(len=6, data='update'), address(arg1), arg2);
                    else:
                        uint8(theList[address(arg1)].field_0) = 1
                        theList[address(arg1)].field_8 = 0
                        Mask(88, 0, theList[address(arg1)].field_168) = 0
                        theList[address(arg1)].field_256 % 1 = 0
                        theList[address(arg1)].field_256 = lastAddress
                        uint256(theList[address(arg1)].field_512) = arg2
                        theList[stor3].field_8 = arg1
                        lastAddress = arg1
                        emit ev(Array(len=3, data='add'), address(arg1), arg2);
                else:
                    if uint8(theList[address(arg1)].field_0):
                        if firstAddress == arg1:
                            firstAddress = theList[address(arg1)].field_8
                            uint8(theList[address(arg1)].field_0) = 0
                            theList[address(arg1)].field_8 = 0
                            Mask(88, 0, theList[address(arg1)].field_168) = 0
                            theList[address(arg1)].field_256 % 1 = 0
                            theList[address(arg1)].field_256 = 0
                            theList[address(arg1)].field_512 % 1 = 0
                            uint256(theList[address(arg1)].field_512) = 0
                        else:
                            if theList[address(arg1)].field_256:
                                Mask(248, 0, theList[theList[address(arg1)].field_256].field_8) = theList[address(arg1)].field_8
                            if theList[address(arg1)].field_8:
                                theList[theList[address(arg1)].field_0].field_256 = theList[address(arg1)].field_256
                            uint8(theList[address(arg1)].field_0) = 0
                            theList[address(arg1)].field_8 = 0
                            Mask(88, 0, theList[address(arg1)].field_168) = 0
                            theList[address(arg1)].field_256 % 1 = 0
                            theList[address(arg1)].field_256 = 0
                            uint256(theList[address(arg1)].field_512) = 0
                            emit ev(string rg1, address rg2, uint256 rg3):
                                    96,
                                    address(arg1),
                                    0,
                                    6,
                                    'remove',
        else:
            if owner == msg.sender:
                if thinkMode:
                    stor7.length++
                    if not stor7.length <= stor7.length + 1:
                        idx = 2 * stor7.length + 1
                        while 2 * stor7.length > idx:
                            stor7[idx].field_0 = 0
                            uint256(stor7[idx].field_256) = 0
                            idx = idx + 2
                            continue 
                    stor7[stor7.length].field_0 = arg1
                    uint256(stor7[stor7.length].field_256) = arg2
                else:
                    if arg2:
                        if uint8(theList[address(arg1)].field_0):
                            uint256(theList[address(arg1)].field_512) = arg2
                            emit ev(Array(len=6, data='update'), address(arg1), arg2);
                        else:
                            uint8(theList[address(arg1)].field_0) = 1
                            theList[address(arg1)].field_8 = 0
                            Mask(88, 0, theList[address(arg1)].field_168) = 0
                            theList[address(arg1)].field_256 % 1 = 0
                            theList[address(arg1)].field_256 = lastAddress
                            uint256(theList[address(arg1)].field_512) = arg2
                            theList[stor3].field_8 = arg1
                            lastAddress = arg1
                            emit ev(Array(len=3, data='add'), address(arg1), arg2);
                    else:
                        if uint8(theList[address(arg1)].field_0):
                            if firstAddress == arg1:
                                firstAddress = theList[address(arg1)].field_8
                                uint8(theList[address(arg1)].field_0) = 0
                                theList[address(arg1)].field_8 = 0
                                Mask(88, 0, theList[address(arg1)].field_168) = 0
                                theList[address(arg1)].field_256 % 1 = 0
                                theList[address(arg1)].field_256 = 0
                                theList[address(arg1)].field_512 % 1 = 0
                                uint256(theList[address(arg1)].field_512) = 0
                            else:
                                if theList[address(arg1)].field_256:
                                    Mask(248, 0, theList[theList[address(arg1)].field_256].field_8) = theList[address(arg1)].field_8
                                if theList[address(arg1)].field_8:
                                    theList[theList[address(arg1)].field_0].field_256 = theList[address(arg1)].field_256
                                uint8(theList[address(arg1)].field_0) = 0
                                theList[address(arg1)].field_8 = 0
                                Mask(88, 0, theList[address(arg1)].field_168) = 0
                                theList[address(arg1)].field_256 % 1 = 0
                                theList[address(arg1)].field_256 = 0
                                uint256(theList[address(arg1)].field_512) = 0
                                emit ev(string rg1, address rg2, uint256 rg3):
                                        96,
                                        address(arg1),
                                        0,
                                        6,
                                        'remove',
}

function stopThinking(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    thinkMode = 0
    idx = 0
    while idx < arg1:
        if pos >= stor7.length:
            stor7.length = 0
            idx = sha3(7)
            while sha3(7) + (2 * stor7.length) > idx:
                stor[idx] = 0
                uint256(stor1[idx]) = 0
                idx = idx + 2
                continue 
        mem[0] = 7
        if ddfAddress == msg.sender:
            if thinkMode:
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    mem[0] = 7
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = stor7[stor5].field_0
                    mem[_234 + 32] = uint256(stor7[stor5].field_256)
                else:
                    s = sha3(7) + (2 * stor7.length + 1)
                    while sha3(7) + (2 * stor7.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    mem[0] = 7
                    _376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_376] = stor7[stor5].field_0
                    mem[_376 + 32] = uint256(stor7[stor5].field_256)
                stor7[stor7.length].field_0 = stor7[stor5].field_0
                uint256(stor7[stor7.length].field_256) = uint256(stor7[stor5].field_256)
            else:
                mem[0] = stor7[stor5].field_0
                mem[32] = 6
                if uint256(stor7[stor5].field_256):
                    if uint8(theList[stor7[stor5].field_0].field_0):
                        mem[0] = stor7[stor5].field_0
                        mem[32] = 6
                        uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                        mem[mem[64] + 32] = stor7[stor5].field_0
                        mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 6
                        mem[mem[64] + 128] = 'update'
                        emit ev(Array(len=6, data='update'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                    else:
                        _197 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_197] = 1
                        mem[_197 + 32] = 0
                        mem[_197 + 64] = lastAddress
                        mem[_197 + 96] = uint256(stor7[stor5].field_256)
                        mem[32] = 6
                        uint8(theList[stor7[stor5].field_0].field_0) = 1
                        theList[stor7[stor5].field_0].field_8 = 0
                        Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                        theList[stor7[stor5].field_0].field_256 % 1 = 0
                        theList[stor7[stor5].field_0].field_256 = lastAddress
                        uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                        mem[0] = lastAddress
                        Mask(248, 0, theList[stor3].field_8) = stor7[stor5].field_0
                        lastAddress = stor7[stor5].field_0
                        mem[mem[64] + 32] = stor7[stor5].field_0
                        mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 3
                        mem[mem[64] + 128] = 'add'
                        emit ev(Array(len=3, data='add'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                else:
                    if uint8(theList[stor7[stor5].field_0].field_0):
                        mem[0] = stor7[stor5].field_0
                        mem[32] = 6
                        if firstAddress == stor7[stor5].field_0:
                            firstAddress = theList[stor7[stor5].field_0].field_8
                            _214 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_214] = 0
                            mem[_214 + 32] = 0
                            mem[_214 + 64] = 0
                            mem[_214 + 96] = 0
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            uint8(theList[stor7[stor5].field_0].field_0) = 0
                            theList[stor7[stor5].field_0].field_8 = 0
                            Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = 0
                            theList[stor7[stor5].field_0].field_512 % 1 = 0
                            uint256(theList[stor7[stor5].field_0].field_512) = 0
                        else:
                            if not theList[stor7[stor5].field_0].field_256:
                                if not theList[stor7[stor5].field_0].field_8:
                                    _253 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_253] = 0
                                    mem[_253 + 32] = 0
                                    mem[_253 + 64] = 0
                                    mem[_253 + 96] = 0
                                else:
                                    mem[0] = theList[stor7[stor5].field_0].field_8
                                    mem[32] = 6
                                    theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                    _272 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_272] = 0
                                    mem[_272 + 32] = 0
                                    mem[_272 + 64] = 0
                                    mem[_272 + 96] = 0
                            else:
                                mem[0] = theList[stor7[stor5].field_0].field_256
                                mem[32] = 6
                                Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                if not theList[stor7[stor5].field_0].field_8:
                                    _280 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_280] = 0
                                    mem[_280 + 32] = 0
                                    mem[_280 + 64] = 0
                                    mem[_280 + 96] = 0
                                else:
                                    mem[0] = theList[stor7[stor5].field_0].field_8
                                    mem[32] = 6
                                    theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                    _300 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_300] = 0
                                    mem[_300 + 32] = 0
                                    mem[_300 + 64] = 0
                                    mem[_300 + 96] = 0
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            uint8(theList[stor7[stor5].field_0].field_0) = 0
                            theList[stor7[stor5].field_0].field_8 = 0
                            Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = 0
                            uint256(theList[stor7[stor5].field_0].field_512) = 0
                            mem[mem[64] + 32] = stor7[stor5].field_0
                            mem[mem[64] + 64] = 0
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = 6
                            mem[mem[64] + 128] = 'remove'
                            emit ev(string rg1, address rg2, uint256 rg3):
                                    96,
                                    stor7[stor5].field_0,
                                    0,
                                    6,
                                    'remove',
        else:
            if address(stor1.length) == msg.sender:
                if thinkMode:
                    stor7.length++
                    if not stor7.length > stor7.length + 1:
                        mem[0] = 7
                        _263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_263] = stor7[stor5].field_0
                        mem[_263 + 32] = uint256(stor7[stor5].field_256)
                    else:
                        s = sha3(7) + (2 * stor7.length + 1)
                        while sha3(7) + (2 * stor7.length) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            s = s + 2
                            continue 
                        mem[0] = 7
                        _377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_377] = stor7[stor5].field_0
                        mem[_377 + 32] = uint256(stor7[stor5].field_256)
                    stor7[stor7.length].field_0 = stor7[stor5].field_0
                    uint256(stor7[stor7.length].field_256) = uint256(stor7[stor5].field_256)
                else:
                    mem[0] = stor7[stor5].field_0
                    mem[32] = 6
                    if uint256(stor7[stor5].field_256):
                        if uint8(theList[stor7[stor5].field_0].field_0):
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                            mem[mem[64] + 32] = stor7[stor5].field_0
                            mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = 6
                            mem[mem[64] + 128] = 'update'
                            emit ev(Array(len=6, data='update'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                        else:
                            _220 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_220] = 1
                            mem[_220 + 32] = 0
                            mem[_220 + 64] = lastAddress
                            mem[_220 + 96] = uint256(stor7[stor5].field_256)
                            mem[32] = 6
                            uint8(theList[stor7[stor5].field_0].field_0) = 1
                            theList[stor7[stor5].field_0].field_8 = 0
                            Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = lastAddress
                            uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                            mem[0] = lastAddress
                            Mask(248, 0, theList[stor3].field_8) = stor7[stor5].field_0
                            lastAddress = stor7[stor5].field_0
                            mem[mem[64] + 32] = stor7[stor5].field_0
                            mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = 3
                            mem[mem[64] + 128] = 'add'
                            emit ev(Array(len=3, data='add'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                    else:
                        if uint8(theList[stor7[stor5].field_0].field_0):
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            if firstAddress == stor7[stor5].field_0:
                                firstAddress = theList[stor7[stor5].field_0].field_8
                                _237 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_237] = 0
                                mem[_237 + 32] = 0
                                mem[_237 + 64] = 0
                                mem[_237 + 96] = 0
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                uint8(theList[stor7[stor5].field_0].field_0) = 0
                                theList[stor7[stor5].field_0].field_8 = 0
                                Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = 0
                                theList[stor7[stor5].field_0].field_512 % 1 = 0
                                uint256(theList[stor7[stor5].field_0].field_512) = 0
                            else:
                                if not theList[stor7[stor5].field_0].field_256:
                                    if not theList[stor7[stor5].field_0].field_8:
                                        _289 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_289] = 0
                                        mem[_289 + 32] = 0
                                        mem[_289 + 64] = 0
                                        mem[_289 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_8
                                        mem[32] = 6
                                        theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                        _308 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_308] = 0
                                        mem[_308 + 32] = 0
                                        mem[_308 + 64] = 0
                                        mem[_308 + 96] = 0
                                else:
                                    mem[0] = theList[stor7[stor5].field_0].field_256
                                    mem[32] = 6
                                    Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                    if not theList[stor7[stor5].field_0].field_8:
                                        _316 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_316] = 0
                                        mem[_316 + 32] = 0
                                        mem[_316 + 64] = 0
                                        mem[_316 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_8
                                        mem[32] = 6
                                        theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                        _335 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_335] = 0
                                        mem[_335 + 32] = 0
                                        mem[_335 + 64] = 0
                                        mem[_335 + 96] = 0
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                uint8(theList[stor7[stor5].field_0].field_0) = 0
                                theList[stor7[stor5].field_0].field_8 = 0
                                Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = 0
                                uint256(theList[stor7[stor5].field_0].field_512) = 0
                                mem[mem[64] + 32] = stor7[stor5].field_0
                                mem[mem[64] + 64] = 0
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 'remove'
                                emit ev(string rg1, address rg2, uint256 rg3):
                                        96,
                                        stor7[stor5].field_0,
                                        0,
                                        6,
                                        'remove',
            else:
                if owner == msg.sender:
                    if thinkMode:
                        stor7.length++
                        if not stor7.length > stor7.length + 1:
                            mem[0] = 7
                            _299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_299] = stor7[stor5].field_0
                            mem[_299 + 32] = uint256(stor7[stor5].field_256)
                        else:
                            s = sha3(7) + (2 * stor7.length + 1)
                            while sha3(7) + (2 * stor7.length) > s:
                                stor[s] = 0
                                uint256(stor1[s]) = 0
                                s = s + 2
                                continue 
                            mem[0] = 7
                            _378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_378] = stor7[stor5].field_0
                            mem[_378 + 32] = uint256(stor7[stor5].field_256)
                        stor7[stor7.length].field_0 = stor7[stor5].field_0
                        uint256(stor7[stor7.length].field_256) = uint256(stor7[stor5].field_256)
                    else:
                        mem[0] = stor7[stor5].field_0
                        mem[32] = 6
                        if uint256(stor7[stor5].field_256):
                            if uint8(theList[stor7[stor5].field_0].field_0):
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                                mem[mem[64] + 32] = stor7[stor5].field_0
                                mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 'update'
                                emit ev(Array(len=6, data='update'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                            else:
                                _243 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_243] = 1
                                mem[_243 + 32] = 0
                                mem[_243 + 64] = lastAddress
                                mem[_243 + 96] = uint256(stor7[stor5].field_256)
                                mem[32] = 6
                                uint8(theList[stor7[stor5].field_0].field_0) = 1
                                theList[stor7[stor5].field_0].field_8 = 0
                                Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = lastAddress
                                uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                                mem[0] = lastAddress
                                Mask(248, 0, theList[stor3].field_8) = stor7[stor5].field_0
                                lastAddress = stor7[stor5].field_0
                                mem[mem[64] + 32] = stor7[stor5].field_0
                                mem[mem[64] + 64] = uint256(stor7[stor5].field_256)
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = 3
                                mem[mem[64] + 128] = 'add'
                                emit ev(Array(len=3, data='add'), stor7[stor5].field_0, uint256(stor7[stor5].field_256));
                        else:
                            if uint8(theList[stor7[stor5].field_0].field_0):
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                if firstAddress == stor7[stor5].field_0:
                                    firstAddress = theList[stor7[stor5].field_0].field_8
                                    _266 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_266] = 0
                                    mem[_266 + 32] = 0
                                    mem[_266 + 64] = 0
                                    mem[_266 + 96] = 0
                                    mem[0] = stor7[stor5].field_0
                                    mem[32] = 6
                                    uint8(theList[stor7[stor5].field_0].field_0) = 0
                                    theList[stor7[stor5].field_0].field_8 = 0
                                    Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                                    theList[stor7[stor5].field_0].field_256 % 1 = 0
                                    theList[stor7[stor5].field_0].field_256 = 0
                                    theList[stor7[stor5].field_0].field_512 % 1 = 0
                                    uint256(theList[stor7[stor5].field_0].field_512) = 0
                                else:
                                    if not theList[stor7[stor5].field_0].field_256:
                                        if not theList[stor7[stor5].field_0].field_8:
                                            _325 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_325] = 0
                                            mem[_325 + 32] = 0
                                            mem[_325 + 64] = 0
                                            mem[_325 + 96] = 0
                                        else:
                                            mem[0] = theList[stor7[stor5].field_0].field_8
                                            mem[32] = 6
                                            theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                            _343 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_343] = 0
                                            mem[_343 + 32] = 0
                                            mem[_343 + 64] = 0
                                            mem[_343 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_256
                                        mem[32] = 6
                                        Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                        if not theList[stor7[stor5].field_0].field_8:
                                            _351 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_351] = 0
                                            mem[_351 + 32] = 0
                                            mem[_351 + 64] = 0
                                            mem[_351 + 96] = 0
                                        else:
                                            mem[0] = theList[stor7[stor5].field_0].field_8
                                            mem[32] = 6
                                            theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                            _362 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_362] = 0
                                            mem[_362 + 32] = 0
                                            mem[_362 + 64] = 0
                                            mem[_362 + 96] = 0
                                    mem[0] = stor7[stor5].field_0
                                    mem[32] = 6
                                    uint8(theList[stor7[stor5].field_0].field_0) = 0
                                    theList[stor7[stor5].field_0].field_8 = 0
                                    Mask(88, 0, theList[stor7[stor5].field_0].field_168) = 0
                                    theList[stor7[stor5].field_0].field_256 % 1 = 0
                                    theList[stor7[stor5].field_0].field_256 = 0
                                    uint256(theList[stor7[stor5].field_0].field_512) = 0
                                    mem[mem[64] + 32] = stor7[stor5].field_0
                                    mem[mem[64] + 64] = 0
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = 'remove'
                                    emit ev(string rg1, address rg2, uint256 rg3):
                                            96,
                                            stor7[stor5].field_0,
                                            0,
                                            6,
                                            'remove',
        pos++
        idx = idx + 1
        continue 
    thinkMode = 1
}



}
