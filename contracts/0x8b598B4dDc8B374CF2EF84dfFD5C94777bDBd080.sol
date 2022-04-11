contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 356]




// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    revert
}

function deposit(address arg1) payable {
    require msg.value > 0
    balances[address(arg1)] += msg.value
}

function claim() {
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}



}
