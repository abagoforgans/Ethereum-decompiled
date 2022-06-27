contract main {




// =====================  Runtime code  =====================


const proxyAddress = 0xc70453f83a9f91b4a8b9b60908fbe7a0c03f54dc


function _fallback() payable {
    call 0xc70453f83a9f91b4a8b9b60908fbe7a0c03f54dc with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ForwarderDeposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}



}
