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

function create(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    create contract with 0 wei
                    code: code.data[1389 len 2199], arg1, address(arg2), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    uint256(instantiations[address(msg.sender)])++
    address(instantiations[address(msg.sender)][uint256(instantiations[address(msg.sender)])]) = address(create.new_address)
    emit ContractInstantiation(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
