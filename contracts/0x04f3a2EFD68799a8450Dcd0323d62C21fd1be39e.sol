contract main {




// =====================  Runtime code  =====================


address libraryAddress;
address starTokenAddress;
mapping of uint8 stor2;
array of address instantiations;

function isInstantiation(address arg1) {
    return bool(stor2[arg1])
}

function instantiations(address arg1, uint256 arg2) {
    require arg2 < uint256(instantiations[arg1])
    return address(instantiations[arg1][arg2])
}

function getInstantiationCount(address arg1) {
    return uint256(instantiations[address(arg1)])
}

function starToken() {
    return starTokenAddress
}

function libraryAddress() {
    return libraryAddress
}

function _fallback() payable {
    revert
}

function create(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, address arg8, uint256 arg9, uint256 arg10, bool arg11, bool arg12) {
    mem[128] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[160] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[idx + 148 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[128 len 55]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11, bool arg12, bool arg13) with:
         gas gas_remaining wei
        args arg1, arg2, address(arg3), starTokenAddress, address(arg4), address(arg5), arg6, arg7, arg8, arg9, arg10, arg11, arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    uint256(instantiations[msg.sender])++
    address(instantiations[msg.sender][uint256(instantiations[msg.sender])]) = address(create.new_address)
    emit ContractInstantiation(msg.sender, address(create.new_address));
}



}
