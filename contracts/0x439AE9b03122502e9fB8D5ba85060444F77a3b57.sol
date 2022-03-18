contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[52 len 165]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


address sellerAddress;

function seller() payable {
    return sellerAddress
}

function _fallback() payable {
  stop
}

function send() payable {
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
