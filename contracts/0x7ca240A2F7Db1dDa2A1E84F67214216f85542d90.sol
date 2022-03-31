contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 3114]




// =====================  Runtime code  =====================


const abi = Array(len=1251, data=code.data[1820 len 32], code.data[1852 len 1219], mem[1411 len 29] >> 9472, mem[1501 len 3])

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(address arg1, uint256 arg2, uint256 arg3) payable {
    create contract with 0 wei
                    code: code.data[598 len 1222], address(arg1), arg2, arg3
    require create.new_address
    return address(create.new_address)
}



}
