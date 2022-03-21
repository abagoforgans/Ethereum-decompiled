contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor0 = 0
    stor2 = 0
    return code.data[49 len 665]
}



// =====================  Runtime code  =====================


#
#  - newRequest(uint256 arg1)
#
uint8 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;

function remove() payable {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function _fallback() payable {
  stop
}

function closeRequest() payable {
    if stor0:
        if stor2 < stor1.length:
            stor2++
    stor0 = 1
}

function getLastNonPublished() payable {
    if stor2 < stor1.length:
        return stor1[stor2]
    else:
        return 0
}



}
