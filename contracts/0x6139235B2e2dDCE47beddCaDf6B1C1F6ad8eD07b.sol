contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1428]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function slice16(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 16:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return 0
}

function slice32(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 32:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return 0
}

function slice2(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 2:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return (Mask(16, 160, s) << 80)
}

function slice4(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 4:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx)
        continue 
    return (Mask(32, 64, s) << 160)
}

function sliceAddress(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 20:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = s or Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx + 12)
        continue 
    return address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * s)
}



}
