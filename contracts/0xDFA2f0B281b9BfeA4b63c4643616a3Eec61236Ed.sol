contract main {




// =====================  Runtime code  =====================


mapping of address resolve;

function resolve(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not resolve[arg1]:
        revert with 0, 'Nonexistent virtual address'
    return resolve[arg1]
}

function _fallback() payable {
    revert
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if resolve[arg1[all]][arg2]:
        revert with 0, 'Current real address is not 0'
    create contract with 0 wei
                    code: arg1[all]
    if not address(create.new_address):
        revert with 0, 'Create contract failed.'
    resolve[arg1[all]][arg2] = address(create.new_address)
    emit Deploy(sha3(arg1[all], arg2));
    return 1
}



}
