contract main {




// =====================  Runtime code  =====================


const xxx = 0


address createrAddress;

function creater() {
    return createrAddress
}

function _fallback() payable {
  stop
}

function send(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == createrAddress
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
