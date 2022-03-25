contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 166]
}



// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function sendMoney(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 0 wei
    emit 0xc957d958: arg1, arg2
}



}
