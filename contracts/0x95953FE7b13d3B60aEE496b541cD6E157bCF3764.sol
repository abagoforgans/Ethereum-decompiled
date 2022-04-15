contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() {
    stor2 = block.number + 200
    return code.data[40 len 376]
}



// =====================  Runtime code  =====================


address stor0;
uint256 totalWei;
uint256 expirationBlock;

function expirationBlock() {
    return expirationBlock
}

function totalWei() {
    return totalWei
}

function _fallback() payable {
    totalWei += msg.value
    if block.number >= expirationBlock:
        if totalWei > 10^17:
            call stor0 with:
               value totalWei wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    stor0 = msg.sender
}



}
