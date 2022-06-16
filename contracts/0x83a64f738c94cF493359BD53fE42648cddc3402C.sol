contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_db169215(?) payable {
    require ext_code.size(stor0)
    call stor0.getPlayerInfoByAddress(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    create contract with callvalue wei
                    code: code.data[307 len 257], ext_call.return_data[0]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
