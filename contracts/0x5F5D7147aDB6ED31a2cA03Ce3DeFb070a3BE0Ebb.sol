contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 695]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function collectFees() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function declareLove(string arg1, string arg2) payable {
    require msg.value >= 10^17
    emit LoversAdded(Array(len=arg1.length, data=arg1[all]), arg1.length + 96);
}



}
