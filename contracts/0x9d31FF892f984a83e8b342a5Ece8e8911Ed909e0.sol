contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 100 * 10^18
    return code.data[74 len 407]
}



// =====================  Runtime code  =====================


address stor0;
uint256 minimum_cash_proof_amount;

function minimum_cash_proof_amount() {
    return minimum_cash_proof_amount
}

function Good_Bye_World() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function Update_Cash_Proof_amount(uint256 arg1) {
    require stor0 == msg.sender
    minimum_cash_proof_amount = arg1
}

function show_me_the_money() payable {
    require msg.value >= minimum_cash_proof_amount
    if stor0 != msg.sender:
        if 10^18 <= eth.balance(this.address):
            call msg.sender with:
               value 10^18 wei
                 gas 0 wei
            if ext_call.success:
                return 10^18
    else:
        if 0 <= eth.balance(this.address):
            call msg.sender with:
                 gas 2300 wei
            if ext_call.success:
                return 0
    revert 
}



}
