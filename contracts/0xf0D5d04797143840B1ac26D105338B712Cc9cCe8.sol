contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 13509]




// =====================  Runtime code  =====================


const abi = Array(len=5697, data=code.data[7769 len 32], code.data[7801 len 5665], mem[5857 len 31] >> 45056, mem[6303 len 1])

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(uint256 arg1, uint256 arg2, int256 arg3, address arg4) payable {
    create contract with 0 wei
                    code: code.data[609 len 7160], arg1, arg2, arg3, arg4
    require create.new_address
    return address(create.new_address)
}



}
