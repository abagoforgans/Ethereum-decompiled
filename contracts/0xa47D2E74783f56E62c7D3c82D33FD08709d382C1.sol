contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor2 = 100 * 10^18
    stor3 = 10^17
    stor4 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[99 len 483]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
uint256 upLimit;
uint256 lowLimit;
address stor4;

function upLimit() payable {
    return upLimit
}

function lowLimit() payable {
    return lowLimit
}

function setUpLimit(uint256 arg1) payable {
    require msg.sender == stor1
    upLimit = arg1
}

function setLowLimit(uint256 arg1) payable {
    require msg.sender == stor1
    lowLimit = arg1
}

function setIntermediate(address arg1) payable {
    require msg.sender == stor1
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    require msg.value >= lowLimit
    require msg.value <= upLimit
    call stor4.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call address(stor0) with:
           value msg.value wei
             gas 0 wei
    require ext_call.success
}



}
