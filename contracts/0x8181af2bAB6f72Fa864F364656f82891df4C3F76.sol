contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 11261]




// =====================  Runtime code  =====================


const abi = Array(len=2978, data=code.data[8240 len 32], code.data[8272 len 2946], mem[3138 len 30] >> 23296, mem[3166 len 2])

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(address arg1, address arg2, address arg3, uint256 arg4) payable {
    create contract with 0 wei
                    code: code.data[620 len 7620], address(arg1), address(arg2), address(arg3), arg4
    require create.new_address
    return address(create.new_address)
}



}
