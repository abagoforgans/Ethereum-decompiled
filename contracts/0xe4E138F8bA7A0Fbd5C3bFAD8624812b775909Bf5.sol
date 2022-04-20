contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'Name1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'Name2' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = '01.01.2012' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 6
    stor4.length.field_8 = 'Zeile1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 6
    stor5.length.field_8 = 'Zeile2' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 6
    stor6.length.field_8 = 'Zeile3' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 1
    stor8 = 1
    stor0 = msg.sender
    return code.data[719 len 2350]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_1fbd5ec2;
array of uint256 sub_8919a20f;
array of uint256 sub_5a3616f4;
array of uint256 sub_03ebdeaa;
array of uint256 sub_b8676e27;
array of uint256 sub_2b645f2f;
uint256 version;
uint256 sub_bdbeb0b8;

function sub_03ebdeaa(?) {
    return sub_03ebdeaa[0 len sub_03ebdeaa.length]
}

function getVersion() {
    return version
}

function sub_1fbd5ec2(?) {
    return sub_1fbd5ec2[0 len sub_1fbd5ec2.length]
}

function sub_2b645f2f(?) {
    return sub_2b645f2f[0 len sub_2b645f2f.length]
}

function sub_5a3616f4(?) {
    return sub_5a3616f4[0 len sub_5a3616f4.length]
}

function sub_8919a20f(?) {
    return sub_8919a20f[0 len sub_8919a20f.length]
}

function sub_b8676e27(?) {
    return sub_b8676e27[0 len sub_b8676e27.length]
}

function sub_bdbeb0b8(?) {
    return sub_bdbeb0b8
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
