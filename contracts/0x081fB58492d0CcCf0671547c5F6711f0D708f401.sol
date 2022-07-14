contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function changeName(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == stor0:
        stor2 = arg1
}

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == stor1:
        require ext_code.size(stor0)
        staticcall stor0.isTokenTransferOK(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            stor1 = arg1
}



}
