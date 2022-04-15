contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 6514]




// =====================  Runtime code  =====================


array of address contracts;

function contracts(uint256 arg1) {
    require arg1 < contracts.length
    return address(contracts[arg1])
}

function getContractCount() {
    return contracts.length
}

function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, uint256 arg2, bool arg3, uint256 arg4, string arg5) payable {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128 len 5539] = code.data[932 len 5539]
    create contract with callvalue wei
                    code: code.data[932 len 5539], address(arg1), arg2, arg3, arg4, 160, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
    require create.new_address
    emit NewBOP(address(create.new_address), address(arg1), arg2, arg3, arg4, Array(len=arg5.length, data=arg5[all]), this.address);
    contracts.length++
    if not contracts.length <= contracts.length + 1:
        idx = contracts.length + 1
        while contracts.length > idx:
            uint256(contracts[idx]) = 0
            idx = idx + 1
            continue 
    address(contracts[contracts.length]) = address(create.new_address)
    return address(create.new_address)
}



}
