contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_96ab6096(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe5f77616c6c65747320616e64205f6964732073686f756c64206861766520657175616c206c656e6774,
                    mem[206 len 22]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[100] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).relayedBy(bytes32 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}



}
