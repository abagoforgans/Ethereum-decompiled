contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 6693]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address instantiations;

function isInstantiation(address arg1) {
    return bool(stor0[arg1])
}

function instantiations(address arg1, uint256 arg2) {
    require arg2 < uint256(instantiations[arg1])
    return address(instantiations[arg1][arg2])
}

function getInstantiationCount(address arg1) {
    return uint256(instantiations[address(arg1)])
}

function _fallback() payable {
    revert
}

function create(address[] arg1, uint256 arg2) {
    mem[(32 * arg1.length) + 6014 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    create contract with 0 wei
                    code: code.data[860 len 5790], Array(len=arg2, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 6014 len (32 * arg1.length) - floor32(arg1.length)])
    require create.new_address
    stor0[address(create.new_address)] = 1
    uint256(instantiations[address(msg.sender)])++
    if not uint256(instantiations[address(msg.sender)]) <= uint256(instantiations[address(msg.sender)]) + 1:
        idx = uint256(instantiations[address(msg.sender)]) + 1
        while uint256(instantiations[address(msg.sender)]) > idx:
            uint256(instantiations[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    address(instantiations[address(msg.sender)][uint256(instantiations[address(msg.sender)])]) = address(create.new_address)
    emit ContractInstantiation(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
