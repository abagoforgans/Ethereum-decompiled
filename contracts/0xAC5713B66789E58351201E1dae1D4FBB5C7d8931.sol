contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x5aaeb6053f3e94c9b9a09f33669435e7ef1beaed
    return code.data[54 len 142]
}



// =====================  Runtime code  =====================


address stor0;

function killContract() payable {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 0 wei
}



}
