contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 92]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function withdrawFunds(uint256 arg1) payable {
    if 5 == arg1 + 2:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
