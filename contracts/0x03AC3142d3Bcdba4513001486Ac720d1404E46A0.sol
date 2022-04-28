contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 764]




// =====================  Runtime code  =====================


mapping of address stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function createCoin() {
    create contract with 0 wei
                    code: code.data[268 len 453]
    require create.new_address
    stor0[stor1] = address(create.new_address)
    stor1++
    return stor0[stor1 + 1]
}



}
