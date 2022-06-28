contract main {




// =====================  Runtime code  =====================


#
#  - sub_eb59a04f(?)
#
address owner;
uint256 stor2;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of struct stor8;
array of struct eventForHousePlaceBet;
mapping of uint256 sub_cde3760a;
array of struct stor11;
mapping of uint256 sub_f576cef6;
mapping of struct sub_fbadaec1;

function getEventOutcome(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor11[arg1][arg2].field_0
    require stor11[arg1][arg2].field_768 <= 1
    require not stor11[arg1][arg2].field_768
    return sub_f576cef6[arg1][arg2]
}

function getEventForHousePlaceBet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return eventForHousePlaceBet[arg1].field_1536, 
           eventForHousePlaceBet[arg1].field_1792,
           bool(eventForHousePlaceBet[arg1].field_2048)
}

function owner() payable {
    return owner
}

function getEventOutcomeIsSet(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor11[arg1][arg2].field_0)
}

function getEventOutcomeNumeric(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor11[arg1][arg2].field_0
    require stor11[arg1][arg2].field_768 <= 1
    require stor11[arg1][arg2].field_768 == 1
    return sub_fbadaec1[arg1][arg2].field_0, 
           sub_fbadaec1[arg1][arg2].field_256,
           sub_fbadaec1[arg1][arg2].field_512,
           sub_fbadaec1[arg1][arg2].field_768,
           sub_fbadaec1[arg1][arg2].field_1024,
           sub_fbadaec1[arg1][arg2].field_1280
}

function sub_cde3760a(?) payable {
    require calldata.size - 4 >= 96
    return sub_cde3760a[arg1][arg2][arg3]
}

function sub_f576cef6(?) payable {
    require calldata.size - 4 >= 64
    return sub_f576cef6[arg1][arg2]
}

function sub_fbadaec1(?) payable {
    require calldata.size - 4 >= 64
    return sub_fbadaec1[arg1][arg2].field_0, 
           sub_fbadaec1[arg1][arg2].field_256,
           sub_fbadaec1[arg1][arg2].field_512,
           sub_fbadaec1[arg1][arg2].field_768,
           sub_fbadaec1[arg1][arg2].field_1024,
           sub_fbadaec1[arg1][arg2].field_1280
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function hideSubcategory(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[arg1].field_1024 = 1
    emit OracleSubcategoryUpdated(arg1);
}

function setTimeConstants(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor5 = arg1
    stor6 = arg2
    emit OraclePropertiesUpdated()
}

function freezeEventOutcome(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if eventForHousePlaceBet[arg1].field_2048:
        revert with 0, 'Cancelled Event'
    if arg2 <= block.timestamp:
        eventForHousePlaceBet[arg1].field_1792 = block.timestamp
    else:
        eventForHousePlaceBet[arg1].field_1792 = arg2
    emit 0x77cbdb04: arg1, eventForHousePlaceBet[arg1].field_1536
}

function sub_fc6c9610(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
    stor4[].field_0 = Array(len=arg2.length, data=arg2[all])
    emit OraclePropertiesUpdated()
}

function cancelUpcomingEvent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if block.timestamp > eventForHousePlaceBet[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65467265657a652074696d652073686f756c642062652067726561746572207468616e206e6f,
                    mem[202 len 26]
    eventForHousePlaceBet[arg1].field_2048 = 1
    emit 0x77cbdb04: arg1, eventForHousePlaceBet[arg1].field_1536
}

function sub_6a955498(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    eventForHousePlaceBet[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    eventForHousePlaceBet[arg1].field_512 = arg3
    eventForHousePlaceBet[arg1].field_768 = arg4
    eventForHousePlaceBet[arg1].field_1024 = arg5
    eventForHousePlaceBet[arg1].field_1280 = arg6
    eventForHousePlaceBet[arg1].field_1536 = arg3 - (60 * stor5)
    eventForHousePlaceBet[arg1].field_1792 = arg4 + (60 * stor6)
    if arg3 - (60 * stor5) < block.timestamp:
        eventForHousePlaceBet[arg1].field_2048 = 1
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = arg3 - (60 * stor5)
    emit 0x77cbdb04: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length) + 32]
}

function sub_78422cd4(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == owner
    if arg1:
        stor8[arg1].field_0 = arg1
        stor8[arg1].field_256 = arg2
        stor8[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor8[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor8[arg1].field_1024 = uint8(arg5)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    else:
        stor2++
        stor8[stor2 + 1].field_0 = stor2 + 1
        stor8[stor2 + 1].field_256 = arg2
        stor8[stor2 + 1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor8[stor2 + 1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor8[stor2 + 1].field_1024 = uint8(arg5)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = stor2 + 1
    emit OracleSubcategoryAdded(uint256 arg1):
                                Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
}

function sub_b7fb00a3(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    if block.timestamp >= eventForHousePlaceBet[arg1].field_1792:
        revert with 0, 
                    32,
                    38,
                    0x65467265657a652074696d652073686f756c642062652067726561746572207468616e206e6f,
                    mem[ceil32(arg3.length) + 234 len 26]
    if eventForHousePlaceBet[arg1].field_2048:
        revert with 0, 'Cancelled Event'
    require stor11[arg1][arg2].field_768 <= 1
    if stor11[arg1][arg2].field_768:
        revert with 0, 
                    32,
                    36,
                    0xfe5265717569726564206172726179206f66206f7074696f6e73204576656e7420747970,
                    mem[ceil32(arg3.length) + 232 len 28]
    stor11[arg1][arg2].field_0 = 1
    sub_f576cef6[arg1][arg2] = arg5
    stor11[arg1][arg2][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    if arg4:
        eventForHousePlaceBet[arg1][9][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = eventForHousePlaceBet[arg1].field_1536
    emit 0x77cbdb04: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32]
}

function sub_d2e2ab6e(?) payable {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    if block.timestamp >= eventForHousePlaceBet[arg1].field_1792:
        revert with 0, 
                    32,
                    38,
                    0x65467265657a652074696d652073686f756c642062652067726561746572207468616e206e6f,
                    mem[ceil32(arg3.length) + 234 len 26]
    if eventForHousePlaceBet[arg1].field_2048:
        revert with 0, 'Cancelled Event'
    require stor11[arg1][arg2].field_768 <= 1
    if stor11[arg1][arg2].field_768 != 1:
        revert with 0, 'Required numeric Event type'
    sub_fbadaec1[arg1][arg2].field_0 = arg5
    sub_fbadaec1[arg1][arg2].field_256 = arg6
    sub_fbadaec1[arg1][arg2].field_512 = arg7
    sub_fbadaec1[arg1][arg2].field_768 = arg8
    sub_fbadaec1[arg1][arg2].field_1024 = arg9
    sub_fbadaec1[arg1][arg2].field_1280 = arg10
    stor11[arg1][arg2].field_0 = 1
    stor11[arg1][arg2][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    if arg4:
        eventForHousePlaceBet[arg1][9][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = eventForHousePlaceBet[arg1].field_1536
    emit 0x77cbdb04: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32]
}

function sub_3a197418(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[ceil32(arg2.length) + (32 * arg4.length) + 160] = 0
    require msg.sender == owner
    if block.timestamp > eventForHousePlaceBet[arg1].field_1536:
        revert with 0, 
                    32,
                    37,
                    0x77436c6f73652074696d652073686f756c642062652067726561746572207468616e206e6f,
                    mem[ceil32(arg2.length) + (32 * arg4.length) + 265 len 27]
    stor11[arg1][stor9[arg1].field_2560][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor11[arg1][stor9[arg1].field_2560].field_512 = arg4.length
    require arg3 <= 1
    stor11[arg1][stor9[arg1].field_2560].field_768 = arg3
    stor11[arg1][stor9[arg1].field_2560].field_1280 = arg5
    idx = 0
    while idx < arg4.length:
        require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[0] = idx
        mem[32] = sha3(eventForHousePlaceBet[arg1].field_2560, sha3(arg1, 10))
        sub_cde3760a[arg1][stor9[arg1].field_2560][idx] = mem[ceil32(arg2.length) + (32 * idx) + 160]
        idx = idx + 1
        continue 
    eventForHousePlaceBet[arg1].field_2560++
    emit 0x77cbdb04: arg1, eventForHousePlaceBet[arg1].field_1536
}

function oracleData() payable {
    mem[96] = stor3.length
    mem[128] = uint256(stor3.field_0)
    idx = 128
    s = 0
    while stor3.length + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3.length) + ceil32(stor4.length) + 160
    mem[ceil32(stor3.length) + 128] = stor4.length
    mem[0] = 4
    mem[ceil32(stor3.length) + 160] = uint256(stor4.field_0)
    idx = ceil32(stor3.length) + 160
    s = 0
    while ceil32(stor3.length) + stor4.length + 128 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 224] = stor5
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 256] = stor6
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 288] = stor7
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 160] = 160
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 320] = stor3.length
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 352 len ceil32(stor3.length)] = mem[128 len ceil32(stor3.length)]
    mem[ceil32(stor3.length) + ceil32(stor4.length) + 192] = stor3.length + 192
    mem[stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 352] = stor4.length
    if 0 < stor4.length:
        mem[stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 384] = mem[ceil32(stor3.length) + 160]
        mem[stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 416 len floor32(stor4.length - 1)] = mem[ceil32(stor3.length) + 192 len floor32(stor4.length - 1)]
    if not stor4.length % 32:
        return Array(len=stor3.length, data=mem[128 len ceil32(stor3.length)], mem[(2 * ceil32(stor3.length)) + ceil32(stor4.length) + 352 len stor4.length + stor3.length + -ceil32(stor3.length) + 32]), 
               stor3.length + 192,
               stor5,
               stor6,
               stor7
    mem[floor32(stor4.length) + stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + 384] = mem[floor32(stor4.length) + stor3.length + ceil32(stor3.length) + ceil32(stor4.length) + -stor4.length % 32 + 416 len stor4.length % 32]
    return Array(len=stor3.length, data=mem[128 len ceil32(stor3.length)], mem[(2 * ceil32(stor3.length)) + ceil32(stor4.length) + 352 len floor32(stor4.length) + stor3.length + -ceil32(stor3.length) + 64]), 
           stor3.length + 192,
           stor5,
           stor6,
           stor7
}

function sub_0d86f2ad(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 8
    mem[96] = stor8[arg1][2].length
    mem[128] = stor8[arg1][2].field_0
    idx = 128
    s = 0
    while stor8[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 160
    mem[ceil32(stor8[arg1][2].length) + 128] = stor8[arg1][3].length
    mem[0] = sha3(arg1, 8) + 3
    mem[ceil32(stor8[arg1][2].length) + 160] = stor8[arg1][3].field_0
    idx = ceil32(stor8[arg1][2].length) + 160
    s = 0
    while ceil32(stor8[arg1][2].length) + stor8[arg1][3].length + 128 > idx:
        mem[idx + 32] = stor8[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 160] = stor8[arg1].field_0
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 192] = stor8[arg1].field_256
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 288] = bool(stor8[arg1].field_1024)
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 224] = 160
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 320] = stor8[arg1][2].length
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 352 len ceil32(stor8[arg1][2].length)] = mem[128 len ceil32(stor8[arg1][2].length)]
    mem[ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 256] = stor8[arg1][2].length + 192
    mem[stor8[arg1][2].length + ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 352] = stor8[arg1][3].length
    mem[stor8[arg1][2].length + ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 384 len ceil32(stor8[arg1][3].length)] = mem[ceil32(stor8[arg1][2].length) + 160 len ceil32(stor8[arg1][3].length)]
    if not stor8[arg1][3].length % 32:
        return stor8[arg1].field_0, 
               stor8[arg1].field_256,
               Array(len=stor8[arg1][2].length, data=mem[128 len ceil32(stor8[arg1][2].length)], mem[(2 * ceil32(stor8[arg1][2].length)) + ceil32(stor8[arg1][3].length) + 352 len stor8[arg1][2].length + -ceil32(stor8[arg1][2].length) + 32], mem[ceil32(stor8[arg1][2].length) + 160 len stor8[arg1][3].length]),
               stor8[arg1][2].length + 192,
               bool(stor8[arg1].field_1024)
    mem[floor32(stor8[arg1][3].length) + stor8[arg1][2].length + ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + 384] = mem[floor32(stor8[arg1][3].length) + stor8[arg1][2].length + ceil32(stor8[arg1][2].length) + ceil32(stor8[arg1][3].length) + -stor8[arg1][3].length % 32 + 416 len stor8[arg1][3].length % 32]
    return stor8[arg1].field_0, 
           stor8[arg1].field_256,
           Array(len=stor8[arg1][2].length, data=mem[128 len ceil32(stor8[arg1][2].length)], mem[(2 * ceil32(stor8[arg1][2].length)) + ceil32(stor8[arg1][3].length) + 352 len stor8[arg1][2].length + -ceil32(stor8[arg1][2].length) + 32], mem[ceil32(stor8[arg1][2].length) + 160 len ceil32(stor8[arg1][3].length)], mem[ceil32(stor8[arg1][2].length) + (2 * ceil32(stor8[arg1][3].length)) + stor8[arg1][2].length + 384 len floor32(stor8[arg1][3].length) + -ceil32(stor8[arg1][3].length) + 32]),
           stor8[arg1][2].length + 192,
           bool(stor8[arg1].field_1024)
}

function sub_fbdc4b73(?) payable {
    require calldata.size - 4 >= 64
    mem[32] = sha3(arg1, 11)
    mem[96] = stor11[arg1][arg2][1].length
    mem[128] = stor11[arg1][arg2][1].field_0
    idx = 128
    s = 0
    while stor11[arg1][arg2][1].length + 96 > idx:
        mem[idx + 32] = stor11[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 160
    mem[ceil32(stor11[arg1][arg2][1].length) + 128] = stor11[arg1][arg2][4].length
    mem[0] = sha3(arg2, sha3(arg1, 11)) + 4
    mem[ceil32(stor11[arg1][arg2][1].length) + 160] = stor11[arg1][arg2][4].field_0
    idx = ceil32(stor11[arg1][arg2][1].length) + 160
    s = 0
    while ceil32(stor11[arg1][arg2][1].length) + stor11[arg1][arg2][4].length + 128 > idx:
        mem[idx + 32] = stor11[arg1][arg2][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 160] = bool(stor11[arg1][arg2].field_0)
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 224] = stor11[arg1][arg2].field_512
    require stor11[arg1][arg2].field_768 <= 1
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 256] = stor11[arg1][arg2].field_768
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 320] = stor11[arg1][arg2].field_1280
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 192] = 192
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 352] = stor11[arg1][arg2][1].length
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 384 len ceil32(stor11[arg1][arg2][1].length)] = mem[128 len ceil32(stor11[arg1][arg2][1].length)]
    mem[ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 288] = stor11[arg1][arg2][1].length + 224
    mem[stor11[arg1][arg2][1].length + ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 384] = stor11[arg1][arg2][4].length
    mem[stor11[arg1][arg2][1].length + ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 416 len ceil32(stor11[arg1][arg2][4].length)] = mem[ceil32(stor11[arg1][arg2][1].length) + 160 len ceil32(stor11[arg1][arg2][4].length)]
    if not stor11[arg1][arg2][4].length % 32:
        return bool(stor11[arg1][arg2].field_0), 
               Array(len=stor11[arg1][arg2][1].length, data=mem[128 len ceil32(stor11[arg1][arg2][1].length)], mem[(2 * ceil32(stor11[arg1][arg2][1].length)) + ceil32(stor11[arg1][arg2][4].length) + 384 len stor11[arg1][arg2][4].length + stor11[arg1][arg2][1].length + -ceil32(stor11[arg1][arg2][1].length) + 32]),
               stor11[arg1][arg2].field_512,
               stor11[arg1][arg2].field_768,
               stor11[arg1][arg2][1].length + 224,
               stor11[arg1][arg2].field_1280
    mem[floor32(stor11[arg1][arg2][4].length) + stor11[arg1][arg2][1].length + ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + 416] = mem[floor32(stor11[arg1][arg2][4].length) + stor11[arg1][arg2][1].length + ceil32(stor11[arg1][arg2][1].length) + ceil32(stor11[arg1][arg2][4].length) + -stor11[arg1][arg2][4].length % 32 + 448 len stor11[arg1][arg2][4].length % 32]
    return bool(stor11[arg1][arg2].field_0), 
           Array(len=stor11[arg1][arg2][1].length, data=mem[128 len ceil32(stor11[arg1][arg2][1].length)], mem[(2 * ceil32(stor11[arg1][arg2][1].length)) + ceil32(stor11[arg1][arg2][4].length) + 384 len floor32(stor11[arg1][arg2][4].length) + stor11[arg1][arg2][1].length + -ceil32(stor11[arg1][arg2][1].length) + 64]),
           stor11[arg1][arg2].field_512,
           stor11[arg1][arg2].field_768,
           stor11[arg1][arg2][1].length + 224,
           stor11[arg1][arg2].field_1280
}

function events(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 9
    mem[96] = eventForHousePlaceBet[arg1][1].length
    mem[128] = eventForHousePlaceBet[arg1][1].field_0
    idx = 128
    s = 0
    while eventForHousePlaceBet[arg1][1].length + 96 > idx:
        mem[idx + 32] = eventForHousePlaceBet[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 160
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + 128] = eventForHousePlaceBet[arg1][9].length
    mem[0] = sha3(arg1, 9) + 9
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + 160] = eventForHousePlaceBet[arg1][9].field_0
    idx = ceil32(eventForHousePlaceBet[arg1][1].length) + 160
    s = 0
    while ceil32(eventForHousePlaceBet[arg1][1].length) + eventForHousePlaceBet[arg1][9].length + 128 > idx:
        mem[idx + 32] = eventForHousePlaceBet[arg1][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 160] = eventForHousePlaceBet[arg1].field_0
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 224] = eventForHousePlaceBet[arg1].field_512
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 256] = eventForHousePlaceBet[arg1].field_768
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 288] = eventForHousePlaceBet[arg1].field_1024
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 320] = eventForHousePlaceBet[arg1].field_1280
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 352] = eventForHousePlaceBet[arg1].field_1536
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 384] = eventForHousePlaceBet[arg1].field_1792
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 416] = bool(eventForHousePlaceBet[arg1].field_2048)
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 480] = eventForHousePlaceBet[arg1].field_2560
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 192] = 352
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 512] = eventForHousePlaceBet[arg1][1].length
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 544 len ceil32(eventForHousePlaceBet[arg1][1].length)] = mem[128 len ceil32(eventForHousePlaceBet[arg1][1].length)]
    mem[ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 448] = eventForHousePlaceBet[arg1][1].length + 384
    mem[eventForHousePlaceBet[arg1][1].length + ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 544] = eventForHousePlaceBet[arg1][9].length
    mem[eventForHousePlaceBet[arg1][1].length + ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 576 len ceil32(eventForHousePlaceBet[arg1][9].length)] = mem[ceil32(eventForHousePlaceBet[arg1][1].length) + 160 len ceil32(eventForHousePlaceBet[arg1][9].length)]
    if not eventForHousePlaceBet[arg1][9].length % 32:
        return eventForHousePlaceBet[arg1].field_0, 
               Array(len=eventForHousePlaceBet[arg1][1].length, data=mem[128 len ceil32(eventForHousePlaceBet[arg1][1].length)], mem[(2 * ceil32(eventForHousePlaceBet[arg1][1].length)) + ceil32(eventForHousePlaceBet[arg1][9].length) + 544 len eventForHousePlaceBet[arg1][9].length + eventForHousePlaceBet[arg1][1].length + -ceil32(eventForHousePlaceBet[arg1][1].length) + 32]),
               eventForHousePlaceBet[arg1].field_512,
               eventForHousePlaceBet[arg1].field_768,
               eventForHousePlaceBet[arg1].field_1024,
               eventForHousePlaceBet[arg1].field_1280,
               eventForHousePlaceBet[arg1].field_1536,
               eventForHousePlaceBet[arg1].field_1792,
               bool(eventForHousePlaceBet[arg1].field_2048),
               eventForHousePlaceBet[arg1][1].length + 384,
               eventForHousePlaceBet[arg1].field_2560
    mem[floor32(eventForHousePlaceBet[arg1][9].length) + eventForHousePlaceBet[arg1][1].length + ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + 576] = mem[floor32(eventForHousePlaceBet[arg1][9].length) + eventForHousePlaceBet[arg1][1].length + ceil32(eventForHousePlaceBet[arg1][1].length) + ceil32(eventForHousePlaceBet[arg1][9].length) + -eventForHousePlaceBet[arg1][9].length % 32 + 608 len eventForHousePlaceBet[arg1][9].length % 32]
    return eventForHousePlaceBet[arg1].field_0, 
           Array(len=eventForHousePlaceBet[arg1][1].length, data=mem[128 len ceil32(eventForHousePlaceBet[arg1][1].length)], mem[(2 * ceil32(eventForHousePlaceBet[arg1][1].length)) + ceil32(eventForHousePlaceBet[arg1][9].length) + 544 len floor32(eventForHousePlaceBet[arg1][9].length) + eventForHousePlaceBet[arg1][1].length + -ceil32(eventForHousePlaceBet[arg1][1].length) + 64]),
           eventForHousePlaceBet[arg1].field_512,
           eventForHousePlaceBet[arg1].field_768,
           eventForHousePlaceBet[arg1].field_1024,
           eventForHousePlaceBet[arg1].field_1280,
           eventForHousePlaceBet[arg1].field_1536,
           eventForHousePlaceBet[arg1].field_1792,
           bool(eventForHousePlaceBet[arg1].field_2048),
           eventForHousePlaceBet[arg1][1].length + 384,
           eventForHousePlaceBet[arg1].field_2560
}



}
