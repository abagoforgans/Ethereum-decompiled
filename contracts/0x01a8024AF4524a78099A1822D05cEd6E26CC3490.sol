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
    stor2 = code.data[3149 len 20]
    stor3 = code.data[3149 len 20]
    stor6[address(code.data[3137 len 32])].field_0 = 1
    stor6[address(code.data[3137 len 32])].field_8 = 0
    stor6[address(code.data[3137 len 32])].field_168 = 0
    stor6[address(code.data[3137 len 32])].field_256 = 0
    stor6[address(code.data[3137 len 32])].field_256 = 0
    stor6[address(code.data[3137 len 32])].field_512 = code.data[3169 len 32]
    return code.data[268 len 2869]
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
        if thinkMode:
            stor7.length++
            if not stor7.length > stor7.length + 1:
                mem[0] = 7
                _92 = mem[64]
                mem[64] = mem[64] + 64
                mem[_92] = stor7[stor5].field_0
                mem[_92 + 32] = uint256(stor7[stor5].field_256)
            else:
                s = sha3(7) + (2 * stor7.length + 1)
                while sha3(7) + (2 * stor7.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                mem[0] = 7
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = stor7[stor5].field_0
                mem[_130 + 32] = uint256(stor7[stor5].field_256)
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
                    _73 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_73] = 1
                    mem[_73 + 32] = 0
                    mem[_73 + 64] = lastAddress
                    mem[_73 + 96] = uint256(stor7[stor5].field_256)
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
                        _85 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_85] = 0
                        mem[_85 + 32] = 0
                        mem[_85 + 64] = 0
                        mem[_85 + 96] = 0
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
                                _93 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_93] = 0
                                mem[_93 + 32] = 0
                                mem[_93 + 64] = 0
                                mem[_93 + 96] = 0
                            else:
                                mem[0] = theList[stor7[stor5].field_0].field_8
                                mem[32] = 6
                                theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                _102 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_102] = 0
                                mem[_102 + 32] = 0
                                mem[_102 + 64] = 0
                                mem[_102 + 96] = 0
                        else:
                            mem[0] = theList[stor7[stor5].field_0].field_256
                            mem[32] = 6
                            Mask(248, 0, theList[theList[stor7[stor5].field_0].field_256].field_8) = theList[stor7[stor5].field_0].field_8
                            if not theList[stor7[stor5].field_0].field_8:
                                _110 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_110] = 0
                                mem[_110 + 32] = 0
                                mem[_110 + 64] = 0
                                mem[_110 + 96] = 0
                            else:
                                mem[0] = theList[stor7[stor5].field_0].field_8
                                mem[32] = 6
                                theList[theList[stor7[stor5].field_0].field_0].field_256 = theList[stor7[stor5].field_0].field_256
                                _119 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_119] = 0
                                mem[_119 + 32] = 0
                                mem[_119 + 64] = 0
                                mem[_119 + 96] = 0
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
