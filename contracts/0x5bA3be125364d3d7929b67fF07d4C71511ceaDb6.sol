contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 7783]




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

function create(address[] arg1, uint256 arg2) {
    mem[(32 * arg1.length) + 7013 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    create contract with 0 wei
                    code: code.data[951 len 6789], Array(len=arg2, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 7013 len (32 * arg1.length) - floor32(arg1.length)])
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

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x2f4f3316(?????):
        require not msg.value
        return bool(stor0[address(arg1)])
    if unknown_0x57183c82(?????) == uint32(call.func_hash):
        require not msg.value
        require arg2 < uint256(instantiations[address(arg1)])
        return address(instantiations[address(arg1)][arg2])
    if unknown_0x8f838478(?????) == uint32(call.func_hash):
        require not msg.value
        return uint256(instantiations[address(arg1)])
    require unknown_0xf8f73808(?????) == uint32(call.func_hash)
    require not msg.value
    mem[(32 * arg1.length) + 7013 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    create contract with 0 wei
                    code: code.data[951 len 6789], Array(len=arg2, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 7013 len (32 * arg1.length) - floor32(arg1.length)])
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
