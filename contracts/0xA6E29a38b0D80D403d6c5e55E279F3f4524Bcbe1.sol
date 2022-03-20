contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[451 len 32]
    stor1 = code.data[483 len 32]
    call address(code.data[515 len 32]).scheduleCall(uint256 rg1) with:
       value 2 * 10^18 wei
         gas gas_remaining - 34050 wei
        args code.data[483 len 32]
    return code.data[157 len 294]
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

function releaseFunds() payable {
    if eth.balance(this.address) != 0:
        if block.number >= releaseBlock:
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 0 wei
    return msg.sender
}

function _fallback() payable {
    if eth.balance(this.address) != 0:
        if block.number >= releaseBlock:
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 0 wei
    emit 0xd42a2a21: msg.sender, beneficiaryAddress
}



}
