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
    stor2 = code.data[6567 len 20]
    stor3 = code.data[6567 len 20]
    stor6[address(code.data[6555 len 32])].field_0 = 1
    stor6[address(code.data[6555 len 32])].field_8 = 0
    stor6[address(code.data[6555 len 32])].field_256 = 0
    stor6[address(code.data[6555 len 32])].field_256 = 0
    stor6[address(code.data[6555 len 32])].field_512 = 0
    stor6[address(code.data[6555 len 32])].field_512 = code.data[6587 len 32]
    return code.data[664 len 5891]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address firstAddress;
address lastAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
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
    return bool(uint8(stor4.field_160))
}

function ddf() {
    return ddfAddress
}

function _fallback() payable {
    revert
}

function setDDF(address arg1) {
    require msg.sender == owner
    ddfAddress = arg1
}

function startThinking() {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
    pos = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function update(address arg1, uint256 arg2) {
    if msg.sender == ddfAddress:
        if uint8(stor4.field_160):
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
                        theList[address(arg1)].field_256 % 1 = 0
                        theList[address(arg1)].field_256 = 0
                        theList[address(arg1)].field_512 % 1 = 0
                        uint256(theList[address(arg1)].field_512) = 0
                        emit ev(string rg1, address rg2, uint256 rg3):
                                96,
                                address(arg1),
                                0,
                                6,
                                'remove',
    else:
        if msg.sender == address(stor1.length):
            if uint8(stor4.field_160):
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
                            theList[address(arg1)].field_256 % 1 = 0
                            theList[address(arg1)].field_256 = 0
                            theList[address(arg1)].field_512 % 1 = 0
                            uint256(theList[address(arg1)].field_512) = 0
                            emit ev(string rg1, address rg2, uint256 rg3):
                                    96,
                                    address(arg1),
                                    0,
                                    6,
                                    'remove',
        else:
            if msg.sender == owner:
                if uint8(stor4.field_160):
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
                                theList[address(arg1)].field_256 % 1 = 0
                                theList[address(arg1)].field_256 = 0
                                theList[address(arg1)].field_512 % 1 = 0
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
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 0
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
        if msg.sender == ddfAddress:
            if uint8(stor4.field_160):
                stor7.length++
                if not stor7.length > stor7.length + 1:
                    mem[0] = 7
                    _254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_254] = stor7[stor5].field_0
                    mem[_254 + 32] = uint256(stor7[stor5].field_256)
                else:
                    s = sha3(7) + (2 * stor7.length + 1)
                    while sha3(7) + (2 * stor7.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    mem[0] = 7
                    _412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_412] = stor7[stor5].field_0
                    mem[_412 + 32] = uint256(stor7[stor5].field_256)
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
                        _215 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_215] = 1
                        mem[_215 + 32] = 0
                        mem[_215 + 64] = lastAddress
                        mem[_215 + 96] = uint256(stor7[stor5].field_256)
                        uint8(theList[stor7[stor5].field_0].field_0) = 1
                        theList[stor7[stor5].field_0].field_8 = 0
                        theList[stor7[stor5].field_0].field_256 % 1 = 0
                        theList[stor7[stor5].field_0].field_256 = lastAddress
                        uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                        mem[0] = lastAddress
                        mem[32] = 6
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
                            _233 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_233] = 0
                            mem[_233 + 32] = 0
                            mem[_233 + 64] = 0
                            mem[_233 + 96] = 0
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            uint8(theList[stor7[stor5].field_0].field_0) = 0
                            theList[stor7[stor5].field_0].field_8 = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = 0
                            theList[stor7[stor5].field_0].field_512 % 1 = 0
                            uint256(theList[stor7[stor5].field_0].field_512) = 0
                        else:
                            if not theList[stor7[stor5].field_0].field_256:
                                if not theList[stor7[stor5].field_0].field_8:
                                    _277 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_277] = 0
                                    mem[_277 + 32] = 0
                                    mem[_277 + 64] = 0
                                    mem[_277 + 96] = 0
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
                            else:
                                mem[0] = theList[stor7[stor5].field_0].field_256
                                mem[32] = 6
                                Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                if not theList[stor7[stor5].field_0].field_8:
                                    _308 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_308] = 0
                                    mem[_308 + 32] = 0
                                    mem[_308 + 64] = 0
                                    mem[_308 + 96] = 0
                                else:
                                    mem[0] = theList[stor7[stor5].field_0].field_8
                                    mem[32] = 6
                                    theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                    _330 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_330] = 0
                                    mem[_330 + 32] = 0
                                    mem[_330 + 64] = 0
                                    mem[_330 + 96] = 0
                            mem[0] = stor7[stor5].field_0
                            mem[32] = 6
                            uint8(theList[stor7[stor5].field_0].field_0) = 0
                            theList[stor7[stor5].field_0].field_8 = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = 0
                            theList[stor7[stor5].field_0].field_512 % 1 = 0
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
            if msg.sender == address(stor1.length):
                if uint8(stor4.field_160):
                    stor7.length++
                    if not stor7.length > stor7.length + 1:
                        mem[0] = 7
                        _287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_287] = stor7[stor5].field_0
                        mem[_287 + 32] = uint256(stor7[stor5].field_256)
                    else:
                        s = sha3(7) + (2 * stor7.length + 1)
                        while sha3(7) + (2 * stor7.length) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            s = s + 2
                            continue 
                        mem[0] = 7
                        _415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_415] = stor7[stor5].field_0
                        mem[_415 + 32] = uint256(stor7[stor5].field_256)
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
                            _240 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_240] = 1
                            mem[_240 + 32] = 0
                            mem[_240 + 64] = lastAddress
                            mem[_240 + 96] = uint256(stor7[stor5].field_256)
                            uint8(theList[stor7[stor5].field_0].field_0) = 1
                            theList[stor7[stor5].field_0].field_8 = 0
                            theList[stor7[stor5].field_0].field_256 % 1 = 0
                            theList[stor7[stor5].field_0].field_256 = lastAddress
                            uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                            mem[0] = lastAddress
                            mem[32] = 6
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
                                _260 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_260] = 0
                                mem[_260 + 32] = 0
                                mem[_260 + 64] = 0
                                mem[_260 + 96] = 0
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                uint8(theList[stor7[stor5].field_0].field_0) = 0
                                theList[stor7[stor5].field_0].field_8 = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = 0
                                theList[stor7[stor5].field_0].field_512 % 1 = 0
                                uint256(theList[stor7[stor5].field_0].field_512) = 0
                            else:
                                if not theList[stor7[stor5].field_0].field_256:
                                    if not theList[stor7[stor5].field_0].field_8:
                                        _317 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_317] = 0
                                        mem[_317 + 32] = 0
                                        mem[_317 + 64] = 0
                                        mem[_317 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_8
                                        mem[32] = 6
                                        theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                        _338 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_338] = 0
                                        mem[_338 + 32] = 0
                                        mem[_338 + 64] = 0
                                        mem[_338 + 96] = 0
                                else:
                                    mem[0] = theList[stor7[stor5].field_0].field_256
                                    mem[32] = 6
                                    Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                    if not theList[stor7[stor5].field_0].field_8:
                                        _346 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_346] = 0
                                        mem[_346 + 32] = 0
                                        mem[_346 + 64] = 0
                                        mem[_346 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_8
                                        mem[32] = 6
                                        theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                        _364 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_364] = 0
                                        mem[_364 + 32] = 0
                                        mem[_364 + 64] = 0
                                        mem[_364 + 96] = 0
                                mem[0] = stor7[stor5].field_0
                                mem[32] = 6
                                uint8(theList[stor7[stor5].field_0].field_0) = 0
                                theList[stor7[stor5].field_0].field_8 = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = 0
                                theList[stor7[stor5].field_0].field_512 % 1 = 0
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
                if msg.sender == owner:
                    if uint8(stor4.field_160):
                        stor7.length++
                        if not stor7.length > stor7.length + 1:
                            mem[0] = 7
                            _327 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_327] = stor7[stor5].field_0
                            mem[_327 + 32] = uint256(stor7[stor5].field_256)
                        else:
                            s = sha3(7) + (2 * stor7.length + 1)
                            while sha3(7) + (2 * stor7.length) > s:
                                stor[s] = 0
                                uint256(stor1[s]) = 0
                                s = s + 2
                                continue 
                            mem[0] = 7
                            _418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_418] = stor7[stor5].field_0
                            mem[_418 + 32] = uint256(stor7[stor5].field_256)
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
                                _267 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_267] = 1
                                mem[_267 + 32] = 0
                                mem[_267 + 64] = lastAddress
                                mem[_267 + 96] = uint256(stor7[stor5].field_256)
                                uint8(theList[stor7[stor5].field_0].field_0) = 1
                                theList[stor7[stor5].field_0].field_8 = 0
                                theList[stor7[stor5].field_0].field_256 % 1 = 0
                                theList[stor7[stor5].field_0].field_256 = lastAddress
                                uint256(theList[stor7[stor5].field_0].field_512) = uint256(stor7[stor5].field_256)
                                mem[0] = lastAddress
                                mem[32] = 6
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
                                    _293 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_293] = 0
                                    mem[_293 + 32] = 0
                                    mem[_293 + 64] = 0
                                    mem[_293 + 96] = 0
                                    mem[0] = stor7[stor5].field_0
                                    mem[32] = 6
                                    uint8(theList[stor7[stor5].field_0].field_0) = 0
                                    theList[stor7[stor5].field_0].field_8 = 0
                                    theList[stor7[stor5].field_0].field_256 % 1 = 0
                                    theList[stor7[stor5].field_0].field_256 = 0
                                    theList[stor7[stor5].field_0].field_512 % 1 = 0
                                    uint256(theList[stor7[stor5].field_0].field_512) = 0
                                else:
                                    if not theList[stor7[stor5].field_0].field_256:
                                        if not theList[stor7[stor5].field_0].field_8:
                                            _355 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_355] = 0
                                            mem[_355 + 32] = 0
                                            mem[_355 + 64] = 0
                                            mem[_355 + 96] = 0
                                        else:
                                            mem[0] = theList[stor7[stor5].field_0].field_8
                                            mem[32] = 6
                                            theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                            _372 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_372] = 0
                                            mem[_372 + 32] = 0
                                            mem[_372 + 64] = 0
                                            mem[_372 + 96] = 0
                                    else:
                                        mem[0] = theList[stor7[stor5].field_0].field_256
                                        mem[32] = 6
                                        Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                                        if not theList[stor7[stor5].field_0].field_8:
                                            _380 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_380] = 0
                                            mem[_380 + 32] = 0
                                            mem[_380 + 64] = 0
                                            mem[_380 + 96] = 0
                                        else:
                                            mem[0] = theList[stor7[stor5].field_0].field_8
                                            mem[32] = 6
                                            theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                            _390 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_390] = 0
                                            mem[_390 + 32] = 0
                                            mem[_390 + 64] = 0
                                            mem[_390 + 96] = 0
                                    mem[0] = stor7[stor5].field_0
                                    mem[32] = 6
                                    uint8(theList[stor7[stor5].field_0].field_0) = 0
                                    theList[stor7[stor5].field_0].field_8 = 0
                                    theList[stor7[stor5].field_0].field_256 % 1 = 0
                                    theList[stor7[stor5].field_0].field_256 = 0
                                    theList[stor7[stor5].field_0].field_512 % 1 = 0
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
    Mask(96, 0, stor4.field_160) = 1
}



}
