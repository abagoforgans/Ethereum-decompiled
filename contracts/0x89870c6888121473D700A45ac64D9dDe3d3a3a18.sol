contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint256 sub_122240bf;
mapping of struct sub_36356c1c;

function sub_122240bf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_122240bf.length
    return sub_122240bf[arg1]
}

function sub_36356c1c(?) {
    require calldata.size - 4 >= 32
    return sub_36356c1c[arg1].field_0, bool(sub_36356c1c[arg1].field_256)
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
    return sub_122240bf.length
}

function sub_326258a1(?) {
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    uint8(stor0.field_160) = 0
}

function sub_316a6193(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    require arg1 < sub_122240bf.length
    return sub_36356c1c[stor1[arg1]].field_0
}

function sub_669ef5c6(?) {
    require calldata.size - 4 >= 64
    if address(stor0.field_0) != msg.sender:
        require tx.origin == address(stor0.field_0)
    require uint8(stor0.field_160)
    require not sub_36356c1c[arg1].field_256
    sub_36356c1c[arg1].field_0 = arg2
    sub_36356c1c[arg1].field_256 = 1
    sub_122240bf.length++
    sub_122240bf[sub_122240bf.length] = arg1
}



}
