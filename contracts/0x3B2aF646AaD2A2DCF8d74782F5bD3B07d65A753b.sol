contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 100 * 10^18
    return code.data[49 len 358]
}



// =====================  Runtime code  =====================


address stor0;
uint256 minimum_cash_proof_amount;

function minimum_cash_proof_amount() {
    return minimum_cash_proof_amount
}

function Good_Bye_World() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function Update_Cash_Proof_amount(uint256 arg1) {
    require msg.sender == stor0
    minimum_cash_proof_amount = arg1
}

function show_me_the_money() payable {
    require msg.value >= minimum_cash_proof_amount
    if stor0 != msg.sender:
        if msg.value + 10^18 <= eth.balance(this.address):
            call msg.sender with:
               value msg.value + 10^18 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                return (msg.value + 10^18)
    else:
        if 0 <= eth.balance(this.address):
            call msg.sender with:
                 gas 2300 wei
            if ext_call.success:
                return 0
    revert 
}



}
