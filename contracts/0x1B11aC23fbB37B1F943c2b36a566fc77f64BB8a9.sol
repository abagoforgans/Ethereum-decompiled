contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor1; offset 256
uint8 stor1; offset 176
uint16 stor1; offset 160
uint128 stor1; offset 184
address stor1;

function _fallback() payable {
    stor0 = 1
    uint16(stor1.field_160) = 496
    uint8(stor1.field_176) = 1
    Mask(72, 0, stor1.field_184) = 0
    stor1.field_256 % 1 = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    return code.data[140 len 2933]
}



// =====================  Runtime code  =====================


uint256 versionNumber;
uint8 stor1; offset 176
uint16 sub_a5287823; offset 160
address sub_28e0e18eAddress;
address sub_cc0abdfaAddress;
array of uint256 sub_1e34c7e2;
array of struct messageTimestamp;

function sub_1e34c7e2(?) {
    return sub_1e34c7e2[0 len sub_1e34c7e2.length]
}

function sub_28e0e18e(?) {
    return sub_28e0e18eAddress
}

function getMessageCount() {
    return messageTimestamp.length
}

function getVersionNumber() {
    return versionNumber
}

function getMessageTimestamp(uint256 arg1) {
    require arg1 < messageTimestamp.length
    require arg1 >= 0
    require arg1 < messageTimestamp.length
    return uint256(messageTimestamp[arg1].field_512)
}

function sub_a3c742c5(?) {
    return bool(stor1)
}

function sub_a5287823(?) {
    return sub_a5287823
}

function sub_bf39678d(?) {
    require arg1 < messageTimestamp.length
    require arg1 >= 0
    require arg1 < messageTimestamp.length
    return address(messageTimestamp[arg1].field_256)
}

function sub_bfc650e9(?) {
    return uint256(messageTimestamp[arg1][0 len messageTimestamp[arg1].length].field_0)
}

function sub_cc0abdfa(?) {
    return sub_cc0abdfaAddress
}

function _fallback() payable {
    revert
}

function sub_77228662(?) {
    require sub_28e0e18eAddress == msg.sender
    stor1 = 0
}

function setForwardingAddress(address arg1) {
    require sub_28e0e18eAddress == msg.sender
    require not stor1
    sub_cc0abdfaAddress = arg1
}

function sub_79152f7a(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not Mask(1, 255, mem[idx + 128]) >> 7:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < arg1.length
        if 0x600000000000000000000000000000000000000000000000000000000000000 == Mask(3, 253, mem[idx + 128]) >> 5:
            idx = idx + 2
            s = s + 1
            continue 
        require idx < arg1.length
        if 0xe00000000000000000000000000000000000000000000000000000000000000 == Mask(4, 252, mem[idx + 128]) >> 4:
            idx = idx + 3
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(5, 251, mem[idx + 128]) >> 3 != 0x1e00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 4
        s = s + 1
        continue 
    return s
}

function sub_5b77d9dd(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not Mask(1, 255, mem[idx + 128]) >> 7:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < arg1.length
        if 0x600000000000000000000000000000000000000000000000000000000000000 == Mask(3, 253, mem[idx + 128]) >> 5:
            idx = idx + 2
            s = s + 1
            continue 
        require idx < arg1.length
        if 0xe00000000000000000000000000000000000000000000000000000000000000 == Mask(4, 252, mem[idx + 128]) >> 4:
            idx = idx + 3
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(5, 251, mem[idx + 128]) >> 3 != 0x1e00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 4
        s = s + 1
        continue 
    require s <= sub_a5287823
    require sub_28e0e18eAddress == msg.sender
    sub_1e34c7e2[] = Array(len=arg1.length, data=arg1[all])
}

function postMessage(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not Mask(1, 255, mem[idx + 128]) >> 7:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < arg1.length
        if 0x600000000000000000000000000000000000000000000000000000000000000 == Mask(3, 253, mem[idx + 128]) >> 5:
            idx = idx + 2
            s = s + 1
            continue 
        require idx < arg1.length
        if 0xe00000000000000000000000000000000000000000000000000000000000000 == Mask(4, 252, mem[idx + 128]) >> 4:
            idx = idx + 3
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(5, 251, mem[idx + 128]) >> 3 != 0x1e00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 4
        s = s + 1
        continue 
    require s <= sub_a5287823
    require stor1
    messageTimestamp.length++
    if not messageTimestamp.length <= messageTimestamp.length + 1:
        mem[0] = 4
        idx = (3 * messageTimestamp.length) + 3
        while sha3(4) + (3 * messageTimestamp.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    uint256(messageTimestamp[messageTimestamp.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    address(messageTimestamp[messageTimestamp.length].field_256) = msg.sender
    uint256(messageTimestamp[messageTimestamp.length].field_512) = block.timestamp
}



}
