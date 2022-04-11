contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    return code.data[204 len 1169]
}



// =====================  Runtime code  =====================


array of uint256 deposits;
address adminAddress;

function deposits(uint256 arg1) {
    require arg1 < deposits.length
    return deposits[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    deposits.length++
    if not deposits.length <= deposits.length + 1:
        idx = deposits.length + 1
        while deposits.length > idx:
            deposits[idx] = 0
            idx = idx + 1
            continue 
    deposits[deposits.length] = msg.value
}

function sub_226cc191(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 128] < deposits.length
        require idx < arg1.length
        require mem[(32 * idx) + 128] < deposits.length
        mem[0] = 0
        deposits[mem[(32 * idx) + 128]] = 0
        s = s + deposits[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    t = 0
    u = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require idx < arg2.length
        require idx < arg3.length
        call mem[(32 * idx) + (32 * arg1.length) + 172 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            t = t
            u = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            idx = idx + 1
            continue 
        t = t + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        u = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
    require t <= s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    call adminAddress with:
       value msg.value + (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) - t wei
         gas 2300 * is_zero(value) wei
}



}
