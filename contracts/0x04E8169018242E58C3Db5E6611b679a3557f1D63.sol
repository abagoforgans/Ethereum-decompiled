contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint256 stor1;
array of struct sub_1b18ebdb;

function sub_1b18ebdb(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_1b18ebdb[Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while sub_1b18ebdb[Mask(128, 128, arg1)].length + 96 > idx:
        mem[idx + 32] = sub_1b18ebdb[Mask(128, 128, arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_1b18ebdb[Mask(128, 128, arg1)].length, data=mem[128 len sub_1b18ebdb[Mask(128, 128, arg1)].length]), 
           bool(sub_1b18ebdb[Mask(128, 128, arg1)].field_256)
}

function sub_316a6193(?) {
    return sub_1b18ebdb[stor1[0.5 / arg1].field_0 / 256^(16 * bool(arg1)) << 128][0 len sub_1b18ebdb[stor1[0.5 / arg1].field_0 / 256^(16 * bool(arg1)) << 128].length].field_0
}

function sub_b307ffa5(?) {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function sub_251c0513(?) {
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    return stor1.length
}

function sub_326258a1(?) {
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    uint8(stor0.field_160) = 0
}

function sub_122240bf(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    return (stor1[0.5 / arg1].field_0 / 256^(16 * bool(arg1)) << 128)
}

function sub_662c558b(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    require uint8(stor0.field_160)
    require not sub_1b18ebdb[Mask(128, 128, arg1)].field_256
    sub_1b18ebdb[Mask(128, 128, arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_1b18ebdb[Mask(128, 128, arg1)].field_256 = 1
    stor1.length++
    stor1[stor1.length.field_1].field_0 = arg1 * 256^(16 * bool(stor1.length)) or stor1[stor1.length.field_1].field_0 and !(test266151307() * 256^(16 * bool(stor1.length)))
}



}
