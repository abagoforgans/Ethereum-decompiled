contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 385]
}



// =====================  Runtime code  =====================


#
#  - suicide(address arg1)
#
address stor0;
address sharesAddress;
uint256 stor1;
uint256 stor2;

function sharesAddress() payable {
    return address(sharesAddress)
}

function _fallback() payable {
    if msg.value > 0:
        stor2 += msg.value
}

function sub_80d8c98f(?) payable {
    if msg.value <= 0:
        return 0
    stor2 += msg.value
    return 1
}

function sub_420b3240(?) payable {
    require stor0 == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function withdraw(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    if stor2 >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value stor2 wei
             gas 0 wei
}



}
