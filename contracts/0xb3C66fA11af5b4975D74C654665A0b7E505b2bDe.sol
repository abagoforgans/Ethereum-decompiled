contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
array of address stor3;

function _fallback() payable {
    revert
}

function sub_48127669(?) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[1067 len 2120], arg1, msg.sender, stor2, stor1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor3.length++
    stor3[stor3.length] = address(create.new_address)
    emit 0x7ff451ea: address(create.new_address)
}

function updateValidator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x635b277000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor3[idx])
        call stor3[idx].0x635b2770 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
