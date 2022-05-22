contract main {




// =====================  Runtime code  =====================


address owner;
uint256 deadline;
uint256 amountRaised;

function deadline() {
    return deadline
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function _fallback() payable {
    amountRaised += msg.value
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        call owner with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(owner, amountRaised, 0);
}



}
