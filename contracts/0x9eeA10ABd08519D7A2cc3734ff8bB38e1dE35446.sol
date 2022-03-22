contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = 0
    return code.data[26 len 542]
}



// =====================  Runtime code  =====================


#
#  - getContracts()
#
mapping of uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
uint256 numContracts;

function numContracts() payable {
    return numContracts
}

function _fallback() payable {
  stop
}

function disableContract(address arg1) payable {
    require msg.value <= 0
    stor1[stor2[address(arg1)]] = 0
}

function newContract(address arg1) payable {
    require msg.value <= 0
    numContracts++
    stor0[stor3 + 1] = arg1 or Mask(96, 160, stor0[stor3 + 1])
    stor1[stor3] = 1
    stor2[address(arg1)] = numContracts
}



}
