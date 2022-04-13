contract main {


// =======================  Init code  ======================


address stor400;
address stor401;

function _fallback() {
    require code.data[4437 len 20]
    require code.data[4469 len 20]
    stor400 = code.data[4437 len 20]
    stor401 = code.data[4469 len 20]
    return code.data[156 len 4269]
}



// =====================  Runtime code  =====================


#
#  - publish(uint256 arg1, string arg2, string arg3, string arg4, bool arg5)
#
const pixelsPerCell = 100

const weiPixelPrice = 10^15


address stor400;
address stor401;
array of struct ads;

function ads(uint256 arg1) {
    require arg1 < ads.length
    mem[448] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 5)].field_0)
    idx = 448
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 448 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 448] = stor[(9 * arg1) + ('name', 'ads', 402) + 6].length
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 480] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 6)].field_0)
    idx = stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 480
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 480 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 512] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 7)].field_0)
    idx = stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 512
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + 512 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 7)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(ads[arg1].field_0), 
           uint256(ads[arg1].field_256),
           uint256(ads[arg1].field_512),
           uint256(ads[arg1].field_768),
           uint256(ads[arg1].field_1024),
           Array(len=stor[(9 * arg1) + ('name', 'ads', 402) + 5].length, data=mem[448 len stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 32], stor[(9 * arg1) + ('name', 'ads', 402) + 7].length, mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 512 len stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 7].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + 32 % 32)]),
           stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 352,
           stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 384,
           bool(uint8(ads[arg1].field_2048)),
           bool(uint8(ads[arg1].field_2056))
}

function grid(uint256 arg1, uint256 arg2) {
    require arg1 < 100
    require arg2 < 100
    return bool(stor((0.03125 / arg2) + (4 * arg1))[uint8(arg2)])
}

function getAdsLength() {
    return ads.length
}

function _fallback() payable {
    revert
}

function withdraw() {
    require stor400 == msg.sender
    call stor401 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setAdOwner(uint256 arg1, address arg2) {
    require arg1 < ads.length
    require address(ads[arg1].field_0) == msg.sender
    address(ads[arg1].field_0) = arg2
    emit SetAdOwner(msg.sender, arg2, arg1);
}

function buy(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require 10^17 * arg4 * arg3 > 0
    require msg.value >= 10^17 * arg4 * arg3
    idx = 0
    while idx < arg3:
        s = 0
        while s < arg4:
            require idx + arg1 < 100
            require s + arg2 < 100
            require not stor((0.03125 / s + arg2) + (4 * idx + arg1))[uint8(s + arg2)]
            require idx + arg1 < 100
            require s + arg2 < 100
            uint256(stor[(0.03125 / s + arg2) + (4 * idx + arg1)]) = 256^(s + arg2 % 32) or !(255 * 256^(s + arg2 % 32)) and uint256(stor[(0.03125 / s + arg2) + (4 * idx + arg1)])
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    ads.length++
    if not ads.length <= ads.length + 1:
        mem[0] = 402
        idx = (9 * ads.length) + 9
        while sha3(402) + (9 * ads.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 5].length:
                mem[0] = idx + sha3(mem[0]) + 5
                s = sha3(idx + sha3(mem[0]) + 5)
                while sha3(idx + sha3(mem[0]) + 5) + (stor[idx + sha3(mem[0]) + 5].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 6].length:
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(idx + sha3(mem[0]) + 6)
                while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 7].length:
                mem[0] = idx + sha3(mem[0]) + 7
                s = sha3(idx + sha3(mem[0]) + 7)
                while sha3(idx + sha3(mem[0]) + 7) + (stor[idx + sha3(mem[0]) + 7].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint16(stor[idx + sha3(mem[0]) + 8]) = 0
            idx = idx + 9
            continue 
    address(ads[ads.length].field_0) = msg.sender
    uint256(ads[ads.length].field_256) = arg1
    uint256(ads[ads.length].field_512) = arg2
    uint256(ads[ads.length].field_768) = arg3
    uint256(ads[ads.length].field_1024) = arg4
    bool(ads[ads.length].field_1280) = 0
    uint255(ads[ads.length].field_1281) = 0
    Mask(248, 0, ads[ads.length].field_1288) = 0
    idx = 0
    while stor[(9 * ads.length) + ('name', 'ads', 402) + 5].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((9 * ads.length) + ('name', 'ads', 402) + 5)].field_0) = 0
        idx = idx + 1
        continue 
    bool(ads[ads.length].field_1536) = 0
    uint255(ads[ads.length].field_1537) = 0
    Mask(248, 0, ads[ads.length].field_1544) = 0
    idx = 0
    while stor[(9 * ads.length) + ('name', 'ads', 402) + 6].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((9 * ads.length) + ('name', 'ads', 402) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    bool(ads[ads.length].field_1792) = 0
    uint255(ads[ads.length].field_1793) = 0
    Mask(248, 0, ads[ads.length].field_1800) = mem[928 len 31]
    idx = 0
    while stor[(9 * ads.length) + ('name', 'ads', 402) + 7].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((9 * ads.length) + ('name', 'ads', 402) + 7)].field_0) = 0
        idx = idx + 1
        continue 
    uint8(ads[ads.length].field_2048) = 0
    Mask(248, 0, ads[ads.length].field_2056) = 0
    emit Buy(msg.sender, arg1, arg2, arg3, arg4, ads.length);
    return ads.length
}

function forceNSFW(uint256 arg1, bool arg2) {
    require stor400 == msg.sender
    require arg1 < ads.length
    Mask(248, 0, ads[arg1].field_2056) = Mask(248, 0, arg2)
    mem[256] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 5)].field_0)
    idx = 256
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 256] = stor[(9 * arg1) + ('name', 'ads', 402) + 6].length
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 288] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 6)].field_0)
    idx = stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 288
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 320] = uint256(stor[sha3((9 * arg1) + ('name', 'ads', 402) + 7)].field_0)
    idx = stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 320
    s = 0
    while stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'ads', 402) + 7)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(ads[arg1].field_2048):
        emit Publish(Array(len=stor[(9 * arg1) + ('name', 'ads', 402) + 5].length, data=mem[256 len stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 32], stor[(9 * arg1) + ('name', 'ads', 402) + 7].length, mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 320 len stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 7].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + 32 % 32)]), stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 160, stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 192, bool(uint8(ads[arg1].field_2048)), arg1);
    else:
        emit Publish(Array(len=stor[(9 * arg1) + ('name', 'ads', 402) + 5].length, data=mem[256 len stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 32], stor[(9 * arg1) + ('name', 'ads', 402) + 7].length, mem[stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 320 len stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 7].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 7].length + 32 % 32)]), stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + 160, stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 5].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 5].length + 32 % 32) + stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'ads', 402) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'ads', 402) + 6].length + 32 % 32) + 192, bool(uint8(ads[arg1].field_2056)), arg1);
}



}
