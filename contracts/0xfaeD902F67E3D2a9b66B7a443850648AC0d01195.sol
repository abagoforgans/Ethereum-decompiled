contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address cacheAddress;

function isProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function cache() payable {
    return cacheAddress
}

function _fallback() payable {
    revert
}

function build() payable {
    create contract with 0 wei
                    code: code.data[593 len 3873], cacheAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), cacheAddress, msg.sender, msg.sender);
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    return address(create.new_address)
}

function build(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[593 len 3873], cacheAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), cacheAddress, msg.sender, arg1);
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    return address(create.new_address)
}



}
