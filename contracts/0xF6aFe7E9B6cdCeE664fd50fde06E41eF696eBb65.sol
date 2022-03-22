contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xeb04e1545a488a5018d2b5844f564135211d3696
    stor1 = 0x2c76f260707672e240dc639e5c9c62efafb59867
    return code.data[90 len 385]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 stor2;
mapping of uint8 sub_0543672d;

function sub_0543672d(?) payable {
    return sub_0543672d[arg1]
}

function _fallback() payable {
  stop
}

function sub_2af308ee(?) payable {
    if arg1 != stor2[address(arg2)][address(msg.sender)]:
        return 0
    return 1
}

function sub_ec6c58fe(?) payable {
    require 1 == sub_0543672d[address(msg.sender)]
    stor2[address(arg2)][address(msg.sender)] = arg1
}

function sub_11c24047(?) payable {
    if msg.sender == stor0:
        sub_0543672d[address(arg1)] = 1
    if msg.sender == stor1:
        sub_0543672d[address(arg1)] = 1
}



}
