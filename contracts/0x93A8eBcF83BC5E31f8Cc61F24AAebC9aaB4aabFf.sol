contract main {




// =====================  Runtime code  =====================


uint16 stor0; offset 160
uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    revert
}

function nonce() {
    return ('signextend', 1, ('signextend', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0)))))))
}

function getNonce() {
    return ('signextend', 1, ('signextend', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0)))))))
}

function sub_ce7929b5(?) {
    call address(stor0.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_460900cf(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[958 len 82]
        create contract with 0 wei
                        code: code.data[958 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        uint16(stor0.field_160) = uint16(('signextend', 1, ('add', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))))
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[1040 len 462], ('signextend', 0, ('signextend', 0, ('signextend', 0, ('param', 'arg2')))), address(arg3), arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint16(stor0.field_160) = uint16(('signextend', 1, ('add', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))))
    uint16(stor0.field_160) = uint16(('signextend', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0)))))))
}

function sub_e90e3ba6(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[958 len 82]
        create contract with 0 wei
                        code: code.data[958 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        uint16(stor0.field_160) = uint16(('signextend', 1, ('add', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))))
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[1040 len 462], ('signextend', 0, ('signextend', 0, ('signextend', 0, ('param', 'arg2')))), address(arg3), arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint16(stor0.field_160) = uint16(('signextend', 1, ('add', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))))
    uint16(stor0.field_160) = uint16(('signextend', 1, ('signextend', 1, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0)))))))
}



}
