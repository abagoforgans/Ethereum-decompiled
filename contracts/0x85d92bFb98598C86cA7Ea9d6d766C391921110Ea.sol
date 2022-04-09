contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 7489]




// =====================  Runtime code  =====================


const abi = Array(len=2018, data=code.data[5428 len 32], code.data[5460 len 1986], mem[2178 len 30] >> 15616, mem[2270 len 2])

const version = 'v0.4.9 (d641d8ab)'


function _fallback() payable {
    revert
}

function create(address arg1, address arg2, address arg3) payable {
    create contract with 0 wei
                    code: code.data[890 len 4538], address(arg1), address(arg2), arg3
    require create.new_address
    return address(create.new_address)
}



}
