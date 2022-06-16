contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of address sub_083468c6;

function sub_083468c6(?) {
    return sub_083468c6[arg1]
}

function _fallback() payable {
    revert
}

function sub_db169215(?) payable {
    stor1++
    require ext_code.size(stor0)
    call stor0.getPlayerInfoByAddress(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    create contract with callvalue wei
                    code: code.data[569 len 257], ext_call.return_data[0]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_083468c6[stor1] = address(create.new_address)
}



}
