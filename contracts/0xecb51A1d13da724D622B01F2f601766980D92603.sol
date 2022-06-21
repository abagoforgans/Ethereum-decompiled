contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 sub_497d3ce8;
uint256 totalCategories;
mapping of uint256 stor22;
mapping of uint256 sub_c571ed52;

function sub_34f6487a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function totalCategories() payable {
    return totalCategories
}

function sub_497d3ce8(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= totalCategories:
        revert with 0, 'No category at this index.'
    return sub_497d3ce8[arg1]
}

function sub_c571ed52(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= totalCategories:
        revert with 0, 'No category at this index.'
    return sub_c571ed52[arg1]
}

function _fallback() payable {
    revert
}

function sub_6e0bec6b(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    sub_c571ed52[arg1] = arg2
}

function sub_76e9df12(?) payable {
    require calldata.size - 4 >= 32
    if not stor22[arg1]:
        revert with 0, 'No era exists with this name.'
    return (stor22[arg1] - 1)
}

function sub_12cd1ad9(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    totalCategories++
    sub_497d3ce8[stor21] = arg1
    stor22[arg1] = totalCategories + 1
    sub_c571ed52[stor21] = arg2
    emit 0x99e45a3a: totalCategories, arg1, arg2
    return totalCategories
}

function sub_2593581e(?) payable {
    if totalCategories:
        mem[128 len 32 * totalCategories] = code.data[1462 len 32 * totalCategories]
    idx = 0
    while idx < totalCategories:
        mem[0] = idx
        mem[32] = 20
        require idx < totalCategories
        mem[(32 * idx) + 128] = sub_497d3ce8[idx]
        idx = idx + 1
        continue 
    mem[(32 * totalCategories) + 192 len floor32(totalCategories)] = mem[128 len floor32(totalCategories)]
    return Array(len=totalCategories, data=mem[128 len floor32(totalCategories)], mem[(32 * totalCategories) + floor32(totalCategories) + 192 len (32 * totalCategories) - floor32(totalCategories)]), 
}

function sub_394d3682(?) payable {
    if totalCategories:
        mem[128 len 32 * totalCategories] = code.data[1462 len 32 * totalCategories]
    idx = 0
    while idx < totalCategories:
        mem[0] = idx
        mem[32] = 30
        require idx < totalCategories
        mem[(32 * idx) + 128] = sub_c571ed52[idx]
        idx = idx + 1
        continue 
    mem[(32 * totalCategories) + 192 len floor32(totalCategories)] = mem[128 len floor32(totalCategories)]
    return Array(len=totalCategories, data=mem[128 len floor32(totalCategories)], mem[(32 * totalCategories) + floor32(totalCategories) + 192 len (32 * totalCategories) - floor32(totalCategories)]), 
}



}
