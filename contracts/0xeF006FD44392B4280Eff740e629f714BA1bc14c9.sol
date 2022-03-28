contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 523]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1bfd9722(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if 0x1ff21eca1c3ba96ed53783ab9c92ffbf77862584 == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _15 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _15
            mem[(32 * arg2.length) + (32 * arg1.length) + 228] = 'EXMPL'
            require ext_code.size(0x3fce483a0236ba36869e4e82151006045e7d3331)
            call 0x3fce483a0236ba36869e4e82151006045e7d3331.transfer(address rg1, uint256 rg2, bytes32 rg3) with:
                 gas gas_remaining - 50 wei
                args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _15, 'EXMPL'
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
}



}
