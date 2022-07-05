contract main {




// =====================  Runtime code  =====================


uint256 unlockDate;
uint256 sub_e8824299;
address stor2;
array of struct sub_d5ff26af;

function unlockDate() {
    return unlockDate
}

function sub_d5ff26af(?) {
    return sub_d5ff26af[arg1][0 len sub_d5ff26af[arg1].length].field_0
}

function sub_e8824299(?) {
    return sub_e8824299
}

function _fallback() payable {
    revert
}

function sub_43811fe0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    if block.timestamp < unlockDate:
        return 'LOCKED'
    mem[128] = sub_d5ff26af[arg1][1].field_0
    idx = 128
    s = 0
    while sub_d5ff26af[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_d5ff26af[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_d5ff26af[arg1][1].length, data=mem[128 len sub_d5ff26af[arg1][1].length])
}

function sub_b02c6516(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == stor2
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    sub_e8824299++
    sub_d5ff26af[stor1 + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_d5ff26af[stor1 + 1][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
}



}
