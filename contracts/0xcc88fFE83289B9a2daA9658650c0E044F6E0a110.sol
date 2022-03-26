contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of struct stor5;
uint256 stor6;
mapping of uint256 stor8;

function _fallback() payable {
    stor6 = 1
    stor0 = msg.sender
    stor1 = 10^18
    stor3 = 5
    stor2 = 2 * 3600
    stor8['rock']['rock'] = 0
    stor8['rock']['paper'] = 2
    stor8['rock']['scissors'] = 1
    stor8['paper']['rock'] = 1
    stor8['paper']['paper'] = 0
    stor8['paper']['scissors'] = 2
    stor8['scissors']['rock'] = 2
    stor8['scissors']['paper'] = 1
    stor8['scissors']['scissors'] = 0
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        mem[0] = 5
        idx = (11 * stor5.length) + 11
        while sha3(5) + (11 * stor5.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                address(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 6].length:
                    mem[0] = idx + sha3(mem[0]) + 6
                    s = sha3(idx + sha3(mem[0]) + 6)
                    while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                uint8(stor[idx + sha3(mem[0]) + 8]) = 0
                uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                uint8(stor[idx + sha3(mem[0]) + 10]) = 0
                idx = idx + 11
                continue 
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(s + sha3(mem[0]) + 2)
            while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            uint256(stor[s + sha3(mem[0]) + 4]) = 0
            address(stor[s + sha3(mem[0]) + 5]) = 0
            uint256(stor[s + sha3(mem[0]) + 6]) = 0
            if 31 < stor[s + sha3(mem[0]) + 6].length:
                mem[0] = s + sha3(mem[0]) + 6
                t = sha3(s + sha3(mem[0]) + 6)
                while sha3(s + sha3(mem[0]) + 6) + (stor[s + sha3(mem[0]) + 6].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            uint256(stor[s + sha3(mem[0]) + 7]) = 0
            uint8(stor[s + sha3(mem[0]) + 8]) = 0
            uint256(stor[s + sha3(mem[0]) + 9]) = 0
            uint8(stor[s + sha3(mem[0]) + 10]) = 0
            s = s + 11
            continue 
    address(stor5[stor5.length].field_0) = 0
    stor5[stor5.length].field_256 % 1 = 0
    uint256(stor5[stor5.length].field_256) = 0
    bool(stor5[stor5.length].field_512) = 0
    uint255(stor5[stor5.length].field_513) = 0
    Mask(248, 0, stor5[stor5.length].field_520) = 0
    idx = 0
    while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor5[stor5.length].field_768) = 0
    uint256(stor5[stor5.length].field_1024) = 0
    address(stor5[stor5.length].field_1280) = 0
    stor5[stor5.length].field_1536 % 1 = 0
    bool(stor5[stor5.length].field_1536) = 0
    uint255(stor5[stor5.length].field_1537) = 0
    Mask(248, 0, stor5[stor5.length].field_1544) = mem[512 len 31]
    idx = 0
    while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor5[stor5.length].field_1792) = 0
    uint8(stor5[stor5.length].field_2048) = 2
    uint256(stor5[stor5.length].field_2304) = 0
    uint8(stor5[stor5.length].field_2560) = 0
    stor5[stor5.length].field_2816 % 1 = 0
    return code.data[2740 len 11813]
}



// =====================  Runtime code  =====================


#
#  - sub_8e8d748f(?)
#  - sub_deb734de(?)
#  - sub_f7da677d(?)
#
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of struct stor5;
uint256 sub_06f65bee;
mapping of uint256 sub_41f3f6e4;
array of uint256 nickname;

function sub_06f65bee(?) {
    return sub_06f65bee
}

function sub_41f3f6e4(?) {
    return sub_41f3f6e4[arg1]
}

function getNickname(address arg1) {
    return nickname[address(arg1)][0 len nickname[address(arg1)].length]
}

function _fallback() {
    revert 
}

function changeOwner() {
    require msg.sender == stor0
    stor0 = msg.sender
}

function changeSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor0
    stor2 = arg1
    stor1 = arg2
    stor3 = arg3
}

function setNickname(string arg1) {
    if arg1.length >= 2:
        if arg1.length <= 30:
            nickname[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function payHouse() {
    require msg.sender == stor0
    call stor0 with:
       value stor4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4 = 0
}

function sub_09f49f7f(?) {
    require sub_41f3f6e4[arg1] < stor5.length
    require msg.sender == address(stor5[stor7[arg1]].field_0)
    require sub_41f3f6e4[arg1] < stor5.length
    require uint8(stor5[stor7[arg1]].field_2048) == 1
    require sub_41f3f6e4[arg1] < stor5.length
    call msg.sender with:
       value uint256(stor5[stor7[arg1]].field_2304) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_41f3f6e4[arg1] < stor5.length
    uint8(stor5[stor7[arg1]].field_2048) = 2
}

function sub_b3ba5faa(?) {
    require msg.sender == stor0
    require arg1 < stor5.length
    require arg1 < stor5.length
    if uint8(stor5[arg1].field_2560) == 1:
        if arg2 <= uint256(stor5[arg1].field_2304):
            require arg1 < stor5.length
            uint8(stor5[arg1].field_2560) = 0
            stor4 += arg2
    else:
        require arg1 < stor5.length
        if uint8(stor5[arg1].field_2560) == 2:
            if arg2 <= uint256(stor5[arg1].field_2304):
                require arg1 < stor5.length
                uint8(stor5[arg1].field_2560) = 0
                stor4 += arg2
        else:
            if uint8(stor5[arg1].field_2560) == 3:
                require arg1 < stor5.length
                if arg2 <= uint256(stor5[arg1].field_2304):
                    require arg1 < stor5.length
                    uint8(stor5[arg1].field_2560) = 0
                    stor4 += arg2
}

function sub_b18e65d6(?) payable {
    require sub_41f3f6e4[arg1] < stor5.length
    require uint8(stor5[stor7[arg1]].field_2048) == 1
    require sub_41f3f6e4[arg1] < stor5.length
    require sub_41f3f6e4[arg1] < stor5.length
    if msg.value <= uint256(stor5[stor7[arg1]].field_2304):
        require msg.value >= uint256(stor5[stor7[arg1]].field_2304)
    else:
        call msg.sender with:
           value msg.value - uint256(stor5[stor7[arg1]].field_2304) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require sub_41f3f6e4[arg1] < stor5.length
    address(stor5[stor7[arg1]].field_1280) = msg.sender
    bool(stor5[stor7[arg1]].field_1536) = 0
    uint255(stor5[stor7[arg1]].field_1537) = 4
    Mask(248, 0, stor5[stor7[arg1]].field_1544) = 'rock' / 256
    idx = 0
    while stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    require sub_41f3f6e4[arg1] < stor5.length
    uint256(stor5[stor7[arg1]].field_1792) = block.number
    uint8(stor5[stor7[arg1]].field_2048) = 3
}

function sub_9e3486ca(?) payable {
    require sub_41f3f6e4[arg1] < stor5.length
    require uint8(stor5[stor7[arg1]].field_2048) == 1
    require sub_41f3f6e4[arg1] < stor5.length
    require sub_41f3f6e4[arg1] < stor5.length
    if msg.value <= uint256(stor5[stor7[arg1]].field_2304):
        require msg.value >= uint256(stor5[stor7[arg1]].field_2304)
    else:
        call msg.sender with:
           value msg.value - uint256(stor5[stor7[arg1]].field_2304) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require sub_41f3f6e4[arg1] < stor5.length
    address(stor5[stor7[arg1]].field_1280) = msg.sender
    bool(stor5[stor7[arg1]].field_1536) = 0
    uint255(stor5[stor7[arg1]].field_1537) = 5
    Mask(248, 0, stor5[stor7[arg1]].field_1544) = 'paper' / 256
    idx = 0
    while stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    require sub_41f3f6e4[arg1] < stor5.length
    uint256(stor5[stor7[arg1]].field_1792) = block.number
    uint8(stor5[stor7[arg1]].field_2048) = 3
}

function sub_32ab809c(?) payable {
    require sub_41f3f6e4[arg1] < stor5.length
    require uint8(stor5[stor7[arg1]].field_2048) == 1
    require sub_41f3f6e4[arg1] < stor5.length
    require sub_41f3f6e4[arg1] < stor5.length
    if msg.value <= uint256(stor5[stor7[arg1]].field_2304):
        require msg.value >= uint256(stor5[stor7[arg1]].field_2304)
    else:
        call msg.sender with:
           value msg.value - uint256(stor5[stor7[arg1]].field_2304) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require sub_41f3f6e4[arg1] < stor5.length
    address(stor5[stor7[arg1]].field_1280) = msg.sender
    bool(stor5[stor7[arg1]].field_1536) = 0
    uint255(stor5[stor7[arg1]].field_1537) = 8
    Mask(248, 0, stor5[stor7[arg1]].field_1544) = 'scissors' / 256
    idx = 0
    while stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 6)].field_0) = 0
        idx = idx + 1
        continue 
    require sub_41f3f6e4[arg1] < stor5.length
    uint256(stor5[stor7[arg1]].field_1792) = block.number
    uint8(stor5[stor7[arg1]].field_2048) = 3
}

function sub_df8c69cf(?) {
    require sub_41f3f6e4[arg1] < stor5.length
    if msg.sender == address(stor5[stor7[arg1]].field_1280):
        require sub_41f3f6e4[arg1] < stor5.length
        if uint256(stor5[stor7[arg1]].field_1792) + stor2 < block.number:
            require sub_41f3f6e4[arg1] < stor5.length
            if uint8(stor5[stor7[arg1]].field_2048) == 3:
                require sub_41f3f6e4[arg1] < stor5.length
                uint8(stor5[stor7[arg1]].field_2048) = 7
                stor4 = stor4 + (2 * uint256(stor5[stor7[arg1]].field_2304) * stor3 / 1000) - 1
                require sub_41f3f6e4[arg1] < stor5.length
                mem[352] = uint256(stor[sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 2)].field_0)
                idx = 352
                s = 0
                while stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 352 > idx + 32:
                    mem[idx + 32] = uint256(stor[s + sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 2)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + 352] = stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length
                mem[stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + 384] = uint256(stor[sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 6)].field_0)
                idx = stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + 384
                s = 0
                while stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + 384 > idx + 32:
                    mem[idx + 32] = uint256(stor[s + sha3((11 * stor7[arg1]) + ('name', 'stor5', 5) + 6)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xef5dc038: msg.sender, Array(len=stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length, data=mem[352 len stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 6].length + 32 % 32) + 32]), address(stor5[stor7[arg1]].field_1280), stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + (floor32(stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length - 1) + -stor[(11 * stor7[arg1]) + ('name', 'stor5', 5) + 2].length + 32 % 32) + 256, uint256(stor5[stor7[arg1]].field_2304), uint8(stor5[stor7[arg1]].field_2048), sub_41f3f6e4[arg1]
                require sub_41f3f6e4[arg1] < stor5.length
                call address(stor5[stor7[arg1]].field_0) with:
                   value 1 wei
                     gas 0 wei
                require sub_41f3f6e4[arg1] < stor5.length
                if ext_call.success:
                else:
                    uint8(stor5[stor7[arg1]].field_2560) = 1
                call address(stor5[stor7[arg1]].field_1280) with:
                   value 2 * uint256(stor5[stor7[arg1]].field_2304) - (uint256(stor5[stor7[arg1]].field_2304) * stor3 / 1000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require sub_41f3f6e4[arg1] < stor5.length
                    require sub_41f3f6e4[arg1] < stor5.length
                    if uint8(stor5[stor7[arg1]].field_2560) != 1:
                        uint8(stor5[stor7[arg1]].field_2560) = 2
                    else:
                        uint8(stor5[stor7[arg1]].field_2560) = 3
}

function sub_b1544a29(?) {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor5.length
    mem[160] = stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length
    mem[192] = uint256(stor[sha3((11 * arg1) + ('name', 'stor5', 5) + 2)].field_0)
    idx = 192
    s = 0
    while stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((11 * arg1) + ('name', 'stor5', 5) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor5.length
    mem[64] = ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 224
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + 192] = stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + 224] = uint256(stor[sha3((11 * arg1) + ('name', 'stor5', 5) + 6)].field_0)
    idx = ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + 224
    s = 0
    while ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((11 * arg1) + ('name', 'stor5', 5) + 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < stor5.length
    mem[0] = 5
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 224] = address(stor5[arg1].field_0)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 256] = uint256(stor5[arg1].field_256)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 320] = uint256(stor5[arg1].field_768)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 352] = uint256(stor5[arg1].field_1024)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 384] = address(stor5[arg1].field_1280)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 448] = uint256(stor5[arg1].field_1792)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 480] = uint8(stor5[arg1].field_2048)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 512] = uint256(stor5[arg1].field_2304)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 544] = uint8(stor5[arg1].field_2560)
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 288] = 352
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 576] = stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 608 len stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length] = mem[192 len stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length]
    mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 416] = stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + 384
    mem[stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 608] = stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length
    mem[stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 640 len stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length] = mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + 224 len stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length]
    if not stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length % 32:
        return address(stor5[arg1].field_0), 
               uint256(stor5[arg1].field_256),
               Array(len=stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length, data=mem[192 len stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length], stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length, mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + 224 len stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length]),
               uint256(stor5[arg1].field_768),
               uint256(stor5[arg1].field_1024),
               address(stor5[arg1].field_1280),
               stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + 384,
               uint256(stor5[arg1].field_1792),
               uint8(stor5[arg1].field_2048),
               uint256(stor5[arg1].field_2304),
               uint8(stor5[arg1].field_2560)
    mem[floor32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 640] = mem[floor32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + -stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length % 32 + 672 len stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length % 32]
    return address(stor5[arg1].field_0), 
           uint256(stor5[arg1].field_256),
           Array(len=stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length, data=mem[192 len stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length], stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length, mem[ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length) + ceil32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + 640 len floor32(stor[(11 * arg1) + ('name', 'stor5', 5) + 6].length) + 32]),
           uint256(stor5[arg1].field_768),
           uint256(stor5[arg1].field_1024),
           address(stor5[arg1].field_1280),
           stor[(11 * arg1) + ('name', 'stor5', 5) + 2].length + 384,
           uint256(stor5[arg1].field_1792),
           uint8(stor5[arg1].field_2048),
           uint256(stor5[arg1].field_2304),
           uint8(stor5[arg1].field_2560)
}

function sub_c0277338(?) payable {
    require not sub_41f3f6e4[arg1]
    if msg.value <= stor1:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            mem[0] = 5
            idx = (11 * stor5.length) + 11
            while sha3(5) + (11 * stor5.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    address(stor[idx + sha3(mem[0]) + 5]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 6].length:
                        mem[0] = idx + sha3(mem[0]) + 6
                        s = sha3(idx + sha3(mem[0]) + 6)
                        while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 8]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 10]) = 0
                    idx = idx + 11
                    continue 
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(s + sha3(mem[0]) + 2)
                while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                address(stor[s + sha3(mem[0]) + 5]) = 0
                uint256(stor[s + sha3(mem[0]) + 6]) = 0
                if 31 < stor[s + sha3(mem[0]) + 6].length:
                    mem[0] = s + sha3(mem[0]) + 6
                    t = sha3(s + sha3(mem[0]) + 6)
                    while sha3(s + sha3(mem[0]) + 6) + (stor[s + sha3(mem[0]) + 6].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint256(stor[s + sha3(mem[0]) + 7]) = 0
                uint8(stor[s + sha3(mem[0]) + 8]) = 0
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                uint8(stor[s + sha3(mem[0]) + 10]) = 0
                s = s + 11
                continue 
        address(stor5[stor5.length].field_0) = msg.sender
        uint256(stor5[stor5.length].field_256) = arg1
        bool(stor5[stor5.length].field_512) = 0
        uint255(stor5[stor5.length].field_513) = 0
        Mask(248, 0, stor5[stor5.length].field_520) = 0
        idx = 0
        while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 2)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor5[stor5.length].field_768) = block.number
        uint256(stor5[stor5.length].field_1024) = 0
        address(stor5[stor5.length].field_1280) = 0
        stor5[stor5.length].field_1536 % 1 = 0
        bool(stor5[stor5.length].field_1536) = 0
        uint255(stor5[stor5.length].field_1537) = 0
        Mask(248, 0, stor5[stor5.length].field_1544) = mem[512 len 31]
        idx = 0
        while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 6)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor5[stor5.length].field_1792) = 0
        uint8(stor5[stor5.length].field_2048) = 1
        uint256(stor5[stor5.length].field_2304) = msg.value
    else:
        call msg.sender with:
           value msg.value - stor1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            mem[0] = 5
            idx = (11 * stor5.length) + 11
            while sha3(5) + (11 * stor5.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    address(stor[idx + sha3(mem[0]) + 5]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 6].length:
                        mem[0] = idx + sha3(mem[0]) + 6
                        s = sha3(idx + sha3(mem[0]) + 6)
                        while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 8]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 10]) = 0
                    idx = idx + 11
                    continue 
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(s + sha3(mem[0]) + 2)
                while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                address(stor[s + sha3(mem[0]) + 5]) = 0
                uint256(stor[s + sha3(mem[0]) + 6]) = 0
                if 31 < stor[s + sha3(mem[0]) + 6].length:
                    mem[0] = s + sha3(mem[0]) + 6
                    t = sha3(s + sha3(mem[0]) + 6)
                    while sha3(s + sha3(mem[0]) + 6) + (stor[s + sha3(mem[0]) + 6].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint256(stor[s + sha3(mem[0]) + 7]) = 0
                uint8(stor[s + sha3(mem[0]) + 8]) = 0
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                uint8(stor[s + sha3(mem[0]) + 10]) = 0
                s = s + 11
                continue 
        address(stor5[stor5.length].field_0) = msg.sender
        uint256(stor5[stor5.length].field_256) = arg1
        bool(stor5[stor5.length].field_512) = 0
        uint255(stor5[stor5.length].field_513) = 0
        Mask(248, 0, stor5[stor5.length].field_520) = 0
        idx = 0
        while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 2)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor5[stor5.length].field_768) = block.number
        uint256(stor5[stor5.length].field_1024) = 0
        address(stor5[stor5.length].field_1280) = 0
        stor5[stor5.length].field_1536 % 1 = 0
        bool(stor5[stor5.length].field_1536) = 0
        uint255(stor5[stor5.length].field_1537) = 0
        Mask(248, 0, stor5[stor5.length].field_1544) = mem[512 len 31]
        idx = 0
        while stor[(11 * stor5.length) + ('name', 'stor5', 5) + 6].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + ('name', 'stor5', 5) + 6)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor5[stor5.length].field_1792) = 0
        uint8(stor5[stor5.length].field_2048) = 1
        uint256(stor5[stor5.length].field_2304) = stor1
    uint8(stor5[stor5.length].field_2560) = 0
    stor5[stor5.length].field_2816 % 1 = 0
    sub_41f3f6e4[arg1] = sub_06f65bee
    sub_06f65bee++
}



}
