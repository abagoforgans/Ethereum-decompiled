contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;

function _fallback() payable {
    uint8(stor0.field_160) = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[900 len 1989]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[245 len 655]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_215f1fd0(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0xd4ff8c0a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_6a82b299(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x94993d79 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
