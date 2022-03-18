contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 547]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function sub_80cd180d(?) payable {
    if msg.sender == stor0:
        call arg1 with:
           value 10^15 wei
             gas 0 wei
}

function checkReward(address arg1) payable {
    if msg.sender == stor0:
        if stor1[address(arg1)].field_160 >= 2:
            if msg.sender == stor0:
                call arg1 with:
                   value 10^15 wei
                     gas 0 wei
            stor1[address(arg1)].field_160 = 0
}

function sub_9f3af7b2(?) payable {
    if msg.sender == stor0:
        if not stor1[address(arg1)].field_168:
            stor1[address(arg1)].field_0 = arg1
            stor1[address(arg1)].field_160 = 0
            stor1[address(arg1)].field_168 = 1
            stor1[address(arg1)].field_176 = Mask(80, 176, arg1) >> 176
            stor1[address(arg1)].field_256 = 0
            stor1[address(arg1)].field_256 = 0
        stor1[address(arg1)].field_160 = Mask(96, 0, stor1[address(arg1)].field_160 + 1)
        if msg.sender == stor0:
            if stor1[address(arg1)].field_160 >= 2:
                if msg.sender == stor0:
                    call arg1 with:
                       value 10^15 wei
                         gas 0 wei
                stor1[address(arg1)].field_160 = 0
}



}
