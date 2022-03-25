contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor4 = 0
    stor13 = 0
    stor14 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 150
    stor11 = 200
    stor12 = 100
    return code.data[109 len 1253]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function sub_24ad6ca6(?) payable {
    if address(stor0) != msg.sender:
        require msg.sender == address(stor1)
    if stor8 < 0:
        stor9 += stor8
        stor8 = 0
    else:
        if stor9 < 0:
            stor8 += stor9
            stor9 = 0
    call address(stor0) with:
       value stor8 wei
         gas 0 wei
    call address(stor1) with:
       value stor9 wei
         gas 0 wei
    selfdestruct(address(stor2))
}

function sub_6932278f(?) payable {
    require msg.sender == address(stor4)
    stor6 = stor5
    call address(stor3).0x5991019c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor5 = ext_call.return_data[0]
    stor8 = stor8 + (ext_call.return_data[0] * stor7) - (stor6 * stor7)
    if stor8 + (ext_call.return_data[0] * stor7) - (stor6 * stor7) >= stor12 * stor7:
        if stor9 >= stor7 * stor12:
            if stor8 >= stor10 * stor7:
                stor13 = 0
            else:
                stor13 = (stor11 * stor7) - stor8
            if stor9 >= stor10:
                stor14 = 0
            else:
                stor14 = (stor7 * stor11) - stor9
    if address(stor0) != msg.sender:
        require msg.sender == address(stor1)
    if stor8 < 0:
        stor9 += stor8
        stor8 = 0
    else:
        if stor9 < 0:
            stor8 += stor9
            stor9 = 0
    call address(stor0) with:
       value stor8 wei
         gas 0 wei
    call address(stor1) with:
       value stor9 wei
         gas 0 wei
    selfdestruct(address(stor2))
}

function _fallback() payable {
  stop
}

function GetBalance() payable {
    require msg.value <= 0
    if address(stor0) == msg.sender:
        return stor8
    require msg.sender == address(stor1)
    return stor9
}

function sub_7e6d04db(?) payable {
    require msg.value <= 0
    if msg.sender == address(stor0):
        return stor13
    require msg.sender == address(stor1)
    return stor14
}

function sub_4407669c(?) payable {
    require address(stor0)
    require 0 == address(stor1)
    require msg.value >= stor7 * stor11
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    stor9 = msg.value
}

function sub_db082067(?) payable {
    if stor8 >= stor10 * stor7:
        stor13 = 0
    else:
        stor13 = (stor11 * stor7) - stor8
    if stor9 >= stor10:
        stor14 = 0
    else:
        stor14 = (stor7 * stor11) - stor9
}

function sub_bed61e9f(?) payable {
    if address(stor0) == msg.sender:
        stor8 += msg.value
    else:
        require msg.sender == address(stor1)
        stor9 += msg.value
    if stor8 >= stor10 * stor7:
        stor13 = 0
    else:
        stor13 = (stor11 * stor7) - stor8
    if stor9 >= stor10:
        stor14 = 0
    else:
        stor14 = (stor7 * stor11) - stor9
}

function sub_d77ee72a(?) payable {
    require not address(stor0)
    require 0 == address(stor1)
    require msg.value >= arg3 * stor11
    stor7 = arg3
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    address(stor1) = 0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    uint256(stor4) = arg2 or Mask(96, 160, uint256(stor4))
    stor8 = msg.value
    stor9 = 0
    stor13 = 0
    stor14 = 0
    call address(arg1).0x5991019c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor5 = ext_call.return_data[0]
    stor6 = ext_call.return_data[0]
}



}
