contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 626]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSendEth(address[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function multiSend(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_12)
        mem[(32 * arg2.length) + 196] = arg3
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_12), arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
