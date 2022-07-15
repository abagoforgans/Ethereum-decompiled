contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isGuard(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function newGuard() {
    create contract with 0 wei
                    code: code.data[618 len 4417]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    return address(create.new_address)
}



}
