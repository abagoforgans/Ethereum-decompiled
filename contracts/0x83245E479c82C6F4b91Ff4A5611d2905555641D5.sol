contract main {




// =====================  Runtime code  =====================


array of uint256 version;
array of struct item;

function version() payable {
    return version[0 len version.length]
}

function getItem() payable {
    return item[0 len item.length].field_0
}

function _fallback() payable {
    revert
}

function sub_1fae52b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    item[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = item.length
    mem[ceil32(arg1.length) + 192] = uint256(item.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + item.length + 192 > idx + 32:
        mem[idx + 32] = item[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x15d7d5f6: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len item.length + (floor32(item.length - 1) + -item.length + 32 % 32) + -arg1.length + ceil32(arg1.length) + 32]
}



}
