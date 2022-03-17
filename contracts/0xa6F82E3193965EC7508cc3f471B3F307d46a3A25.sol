contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 1999]
}



// =====================  Runtime code  =====================


#
#  - wave()
#
array of uint256 stor0;
address stor1;

function remove() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_269fe8e7(?) payable {
    if 0 >= stor0.length:
        return 0
    call arg1.0xabf6f980 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        return 0
    call address(stor0).0xabf6f980 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        return 0
    require 0 < stor0.length
    return address(stor0)
}

function sub_99fb14ba(?) payable {
    create contract with 0 wei
                    code: code.data[1325 len 674], arg1, arg2, arg3, arg4, arg5
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length]) = create.new_address or Mask(96, 160, uint256(stor0[stor0.length]))
    return address(create.new_address)
}

function sub_35de3ad7(?) payable {
    call arg1.0x41cbcbf0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if arg2:
            call arg1.0x2b718d2e with:
                 gas gas_remaining - 25050 wei
                args arg2
            require ext_call.success
        if arg3:
            call arg1.0x728d0f8b with:
                 gas gas_remaining - 25050 wei
                args arg3
            require ext_call.success
        if not arg4:
            call arg1.0xb8a35a01 with:
                 gas gas_remaining - 25050 wei
                args arg5
            require ext_call.success
        else:
            call arg1.0x13e43bc6 with:
                 gas gas_remaining - 25050 wei
                args arg4
            require ext_call.success
            call arg1.0xb8a35a01 with:
                 gas gas_remaining - 25050 wei
                args arg5
}



}
