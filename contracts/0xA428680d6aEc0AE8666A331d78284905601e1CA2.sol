contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor6;

function _fallback() payable {
    stor6 = 10^15
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b
    return code.data[140 len 1851]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_dca5db65Address;
uint256 stor2;
address lastSenderAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function getLastSender() payable {
    return address(lastSenderAddress)
}

function sub_dca5db65(?) payable {
    return address(sub_dca5db65Address)
}

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_632cd1d3(?) payable {
    call stor0 with:
       value stor6 wei
         gas 0 wei
}

function empty() payable {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_f5ca93d3(?) payable {
    uint256(stor2) = tx.origin or Mask(96, 160, uint256(stor2))
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    call stor1 with:
       funct Mask(32, 224, sha3('scheduleCall(bytes4,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args Mask(32, 224, sha3('returnFinney()')), block.number + arg1
}

function sub_652070c4(?) payable {
    require block.number - stor4 >= stor5
    uint256(stor2) = tx.origin or Mask(96, 160, uint256(stor2))
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    stor4 = block.number
    call stor0 with:
       value stor6 wei
         gas 0 wei
    call stor1 with:
       funct Mask(32, 224, sha3('scheduleCall(bytes4,uint256)')) >> 224
         gas gas_remaining - 25050 wei
        args Mask(32, 224, sha3('scheduleLoopedCall()')), block.number + stor5
}



}
