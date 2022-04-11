contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = msg.value
    return code.data[124 len 559]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() {
    revert 
}

function sub_46d6c084(?) payable {
  stop
}

function put() payable {
    balances[address(msg.sender)] = msg.value
}

function get() {
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    balances[address(msg.sender)] = 0
}



}
