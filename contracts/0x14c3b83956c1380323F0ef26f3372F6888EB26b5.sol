contract main {




// =====================  Runtime code  =====================


address ownerAddr;

function ownerAddr() {
    return ownerAddr
}

function kill() {
    if ownerAddr != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_e44e9920(?) payable {
  stop
}

function sub_03cdb691(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == ownerAddr
    if arg1.length > 0:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= eth.balance(this.address):
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
