contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[28 len 584]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() {
    stor0 += msg.value
    if stor0 > msg.value:
        call msg.sender with:
           value stor0 - msg.value wei
             gas 2300 * is_zero(value) wei
}

function sub_80862479(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < arg2.length
        stor0 -= mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    emit e(1);
}



}
