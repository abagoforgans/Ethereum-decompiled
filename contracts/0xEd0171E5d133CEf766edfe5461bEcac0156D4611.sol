contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    return code.data[26 len 578]
}



// =====================  Runtime code  =====================


#
#  - getContracts()
#
mapping of struct stor0;
uint256 numContracts;
mapping of uint256 stor2;

function numContracts() payable {
    return numContracts
}

function _fallback() payable {
  stop
}

function disableContract(address arg1) payable {
    require msg.value <= 0
    stor0[stor2[address(arg1)]].field_160 = 0
}

function newContract(address arg1) payable {
    require msg.value <= 0
    numContracts++
    stor0[stor1 + 1].field_0 = arg1 or Mask(96, 160, stor0[stor1 + 1].field_0)
    stor0[stor1].field_160 = 1
    stor2[address(arg1)] = numContracts
}



}
