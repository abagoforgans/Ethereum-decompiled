contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = '0.0.2' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = '0.0.2' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor1 = msg.sender
    return code.data[419 len 4020]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 version;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of struct sub_6805a4d8;
array of uint256 stor11;
array of uint256 stor12;
mapping of struct mintById;
array of uint256 stor14;
mapping of struct sub_7a3559cc;
array of uint256 stor16;
array of uint256 stor17;
mapping of struct sub_ac7ed194;
mapping of uint256 stor20;
mapping of uint256 stor21;
array of uint256 stor22;
mapping of struct stor23;
mapping of uint256 stor24;

function mintById(uint256 arg1) {
    return mintById[arg1].field_0, mintById[arg1].field_256, mintById[arg1].field_512, bool(mintById[arg1].field_768)
}

function version() {
    return version[0 len version.length]
}

function sub_6805a4d8(?) {
    return sub_6805a4d8[arg1].field_0, 
           sub_6805a4d8[arg1].field_256,
           sub_6805a4d8[arg1].field_512,
           sub_6805a4d8[arg1].field_768,
           sub_6805a4d8[arg1].field_1024,
           sub_6805a4d8[arg1].field_1280,
           sub_6805a4d8[arg1].field_1536,
           bool(sub_6805a4d8[arg1].field_1792)
}

function sub_7a3559cc(?) {
    return sub_7a3559cc[arg1].field_0, 
           sub_7a3559cc[arg1].field_256,
           sub_7a3559cc[arg1].field_512,
           sub_7a3559cc[arg1].field_768,
           bool(sub_7a3559cc[arg1].field_1024)
}

function owner() {
    return owner
}

function sub_ac7ed194(?) {
    return sub_ac7ed194[arg1].field_0, 
           sub_ac7ed194[arg1].field_256,
           sub_ac7ed194[arg1].field_512,
           bool(sub_ac7ed194[arg1].field_672)
}

function _fallback() payable {
    revert
}

function sub_4b690ab2(?) {
    return stor23[stor24[arg1]].field_0, stor22[0], stor23[stor24[arg1]].field_256
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit OwnershipTransfer(owner, arg1);
}

function sub_85620f6a(?) {
    require arg1 <= 2
    return stor23[stor24[arg2]].field_0, stor22[arg1 << 248], stor23[stor24[arg2]].field_256
}

function sub_b322706b(?) {
    require arg1 < stor22[0]
    return stor23[stor22[0][arg1]].field_0, stor22[0], stor23[stor22[0][arg1]].field_256
}

function sub_4b29ac2f(?) {
    if stor8 == sub_ac7ed194[stor21[address(arg1)]].field_512:
        return 0
    return sub_ac7ed194[stor21[address(arg1)]].field_0
}

function getUser(uint256 arg1) {
    return sub_ac7ed194[arg1].field_0, 
           stor5,
           sub_ac7ed194[arg1].field_256,
           sub_ac7ed194[arg1].field_512,
           bool(sub_ac7ed194[arg1].field_672)
}

function sub_6b4c982f(?) {
    require arg1 <= 2
    require arg2 < stor22[arg1 << 248]
    require arg1 <= 2
    return stor23[stor22[arg1 << 248][arg2]].field_0, stor22[arg1 << 248], stor23[stor22[arg1 << 248][arg2]].field_256
}

function getUser(bytes32 arg1) {
    return sub_ac7ed194[stor20[arg1]].field_0, 
           stor5,
           sub_ac7ed194[stor20[arg1]].field_256,
           sub_ac7ed194[stor20[arg1]].field_512,
           bool(sub_ac7ed194[stor20[arg1]].field_672)
}

function sub_33f3109e(?) {
    stor7++
    stor24[arg1] = stor7 + 1
    stor23[stor7].field_0 = stor7
    stor23[stor7].field_256 = arg2
    stor22[0]++
    if not stor22[0] <= stor22[0] + 1:
        idx = stor22[0] + 1
        while stor22[0] > idx:
            stor22[0][idx] = 0
            idx = idx + 1
            continue 
    stor22[0][stor22[0]] = stor7
    return 1
}

function addUser(bytes32 arg1, address arg2) {
    if stor8 != sub_ac7ed194[stor21[address(arg2)]].field_512:
        if sub_ac7ed194[stor21[address(arg2)]].field_0 > 0:
            return sub_ac7ed194[stor21[address(arg2)]].field_0
    stor5++
    sub_ac7ed194[stor5].field_0 = stor5
    sub_ac7ed194[stor5].field_256 = arg1
    sub_ac7ed194[stor5].field_512 = arg2
    sub_ac7ed194[stor5].field_672 = 0
    stor20[arg1] = stor5
    stor21[address(arg2)] = stor5
    return stor5
}

function sub_74377e07(?) {
    stor6++
    mintById[stor6].field_0 = stor6
    mintById[stor6].field_256 = stor20[arg1]
    mintById[stor6].field_512 = arg2
    mintById[stor6].field_768 = uint8(arg3)
    stor14[stor20[arg1]]++
    if not stor14[stor20[arg1]] <= stor14[stor20[arg1]] + 1:
        idx = stor14[stor20[arg1]] + 1
        while stor14[stor20[arg1]] > idx:
            stor14[stor20[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor14[stor20[arg1]][stor14[stor20[arg1]]] = stor6
    return sub_ac7ed194[stor20[arg1]].field_512, arg2
}

function sub_b0739432(?) {
    stor4++
    sub_7a3559cc[stor4].field_0 = stor4
    sub_7a3559cc[stor4].field_256 = stor20[arg1]
    sub_7a3559cc[stor4].field_512 = stor20[arg2]
    sub_7a3559cc[stor4].field_768 = arg3
    sub_7a3559cc[stor4].field_1024 = 0
    stor16[stor20[arg2]]++
    if not stor16[stor20[arg2]] <= stor16[stor20[arg2]] + 1:
        idx = stor16[stor20[arg2]] + 1
        while stor16[stor20[arg2]] > idx:
            stor16[stor20[arg2]][idx] = 0
            idx = idx + 1
            continue 
    stor16[stor20[arg2]][stor16[stor20[arg2]]] = stor4
    stor17[stor20[arg1]]++
    if not stor17[stor20[arg1]] <= stor17[stor20[arg1]] + 1:
        idx = stor17[stor20[arg1]] + 1
        while stor17[stor20[arg1]] > idx:
            stor17[stor20[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor17[stor20[arg1]][stor17[stor20[arg1]]] = stor4
    return sub_ac7ed194[stor20[arg2]].field_512, arg3
}

function sub_7866c47c(?) {
    stor3++
    sub_6805a4d8[stor3].field_0 = stor3
    sub_6805a4d8[stor3].field_256 = arg1
    sub_6805a4d8[stor3].field_512 = arg2
    sub_6805a4d8[stor3].field_768 = arg3
    sub_6805a4d8[stor3].field_1024 = stor20[arg4]
    sub_6805a4d8[stor3].field_1280 = stor20[arg5]
    sub_6805a4d8[stor3].field_1536 = arg6
    sub_6805a4d8[stor3].field_1792 = 0
    stor11[stor20[arg5]]++
    if not stor11[stor20[arg5]] <= stor11[stor20[arg5]] + 1:
        idx = stor11[stor20[arg5]] + 1
        while stor11[stor20[arg5]] > idx:
            stor11[stor20[arg5]][idx] = 0
            idx = idx + 1
            continue 
    stor11[stor20[arg5]][stor11[stor20[arg5]]] = stor3
    stor12[stor20[arg4]]++
    if not stor12[stor20[arg4]] <= stor12[stor20[arg4]] + 1:
        idx = stor12[stor20[arg4]] + 1
        while stor12[stor20[arg4]] > idx:
            stor12[stor20[arg4]][idx] = 0
            idx = idx + 1
            continue 
    stor12[stor20[arg4]][stor12[stor20[arg4]]] = stor3
    return sub_ac7ed194[stor20[arg5]].field_512, arg6
}



}
