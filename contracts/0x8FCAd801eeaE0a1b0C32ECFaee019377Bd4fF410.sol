contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 7496]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createContract(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    create contract with 0 wei
                    code: code.data[376 len 7077], address(arg1), arg2, 10^18 * arg3, 10^18 * arg4
    require create.new_address
    return address(create.new_address)
}



}
