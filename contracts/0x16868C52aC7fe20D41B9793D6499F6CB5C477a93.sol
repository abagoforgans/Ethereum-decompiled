contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[361 len 32]
    stor1 = code.data[393 len 32]
    call address(code.data[425 len 32]).scheduleCall(uint256 rg1) with:
       value 2 * 10^18 wei
         gas gas_remaining - 34050 wei
        args code.data[393 len 32]
    return code.data[156 len 205]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 releaseBlock;

function beneficiary() payable {
    return beneficiaryAddress
}

function releaseBlock() payable {
    return releaseBlock
}

function _fallback() payable {
    if eth.balance(this.address) != 0:
        if block.number >= releaseBlock:
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function releaseFunds() payable {
    if eth.balance(this.address) != 0:
        if block.number >= releaseBlock:
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 0 wei
}



}
