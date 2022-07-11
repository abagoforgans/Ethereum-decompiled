contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address instantiations;

function isInstantiation(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function instantiations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(instantiations[arg1])
    return address(instantiations[arg1][arg2])
}

function getInstantiationCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(instantiations[address(arg1)])
}

function _fallback() payable {
    revert
}

function create() payable {
    create contract with 0 wei
                    code: code.data[1473 len 3061]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x79957aa1 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x9a00a815 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    uint256(instantiations[address(msg.sender)])++
    address(instantiations[address(msg.sender)][uint256(instantiations[address(msg.sender)])]) = address(create.new_address)
    emit ContractInstantiation(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
