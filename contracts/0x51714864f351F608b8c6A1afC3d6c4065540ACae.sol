contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 615]




// =====================  Runtime code  =====================


function _fallback() {
    revert 
}

function sub_80862479(?) payable {
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
        require idx < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
        emit e(mem[(32 * arg1.length) + (32 * arg2.length) + 160]);
        idx = idx + 1
        continue 
    if eth.balance(this.address) <= 0:
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}



}
