contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0xe3014aaf39ce3a2de10b8ccfccf8118880c3eca2
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor1 = 40 * 10^18
    stor4 = 3
    stor3 = 80 * 10^18
    return code.data[106 len 1002]
}



// =====================  Runtime code  =====================


#
#  - sub_c8d57d84(?)
#
address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function _fallback() payable {
  stop
}

function sub_a0c3d45f(?) payable {
    return stor12, stor11, stor10, stor7, stor6
}

function sub_e44ccb0e(?) payable {
    stor4 = arg1
    stor1 = arg2
    stor3 = arg3
}

function roll() payable {
    call stor0.DoRoll() with:
         gas 10^6 wei
    require ext_call.success
}

function sub_b4f81dcc(?) payable {
    call stor0.CancelMyInvestment() with:
         gas 10^6 wei
    require ext_call.success
}

function withdraw() payable {
    require msg.sender == stor5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function bet() payable {
    stor4++
    stor9 = msg.value
    stor6 = sha3(stor4 + 1, block.timestamp, 0)
    stor7 = sha3(stor4 + 1, block.timestamp, 0)
    call stor0.PrepareRoll(uint256 rg1) with:
       value msg.value wei
         gas 10^6 wei
        args 0
    require ext_call.success
    stor8 = block.number + 4
}



}
