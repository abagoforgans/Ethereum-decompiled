contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[1154 len 20]
    stor1 = code.data[1186 len 20]
    return code.data[198 len 944]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function deposit() payable {
    require msg.value > 1
    balances[stor0] += msg.value / 2
    balances[stor1] += msg.value / 2
}

function _fallback() payable {
    require msg.value > 1
    balances[stor0] += msg.value / 2
    balances[stor1] += msg.value / 2
}

function withdraw(uint256 arg1) {
    if stor1 != msg.sender:
        require msg.sender == stor0
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
