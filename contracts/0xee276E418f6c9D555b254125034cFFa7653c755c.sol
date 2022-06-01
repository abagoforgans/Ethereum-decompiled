contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_a9d4bc8d(?) {
    require msg.sender == stor0
    idx = 0
    while uint8(idx) < arg3:
        mem[96 len 590] = code.data[557 len 590]
        mem[686] = stor0
        mem[718] = arg1
        mem[750] = arg2
        create contract with 0 wei
                        code: code.data[557 len 590], stor0, address(arg1), arg2
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = address(create.new_address)
        idx = idx + 1
        continue 
}



}
