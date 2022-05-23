contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ac9cb96d(?) payable {
    if 0x31b8923a14d021557cc34430d3deafa682956f54 != tx.origin:
        if 0xd57e98fbbb95fcf791174829a1efe57679eba7a8 != tx.origin:
            if 0xf86186a801a9de3eda93a23f9b2763dadc9c1b32 != tx.origin:
                require tx.origin == 0x942881e604dfba86d68271f53fa815c8f7117ef2
    create contract with callvalue wei
                    code: code.data[404 len 442], address(arg1), arg2, arg3, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
