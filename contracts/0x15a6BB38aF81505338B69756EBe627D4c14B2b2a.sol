contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 0xecae6888e3ea6a2a8dbf95500a1f74dd27c3b54e
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor1 = 50 * 10^18
    stor3 = 0
    return code.data[92 len 894]
}



// =====================  Runtime code  =====================


#
#  - sub_c8d57d84(?)
#
address stor0;
uint256 stor1;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
  stop
}

function sub_8a3dac7e(?) payable {
    stor3 = arg1
    stor1 = arg2
}

function sub_a0c3d45f(?) payable {
    return stor11, stor10, stor9, stor6, stor5
}

function roll() payable {
    call stor0.0x4247f52d with:
         gas 10^6 wei
    require ext_call.success
}

function withdraw() payable {
    require msg.sender == stor4
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function bet() payable {
    stor3++
    stor8 = msg.value
    stor5 = sha3(stor3 + 1, block.timestamp, 0)
    stor6 = sha3(stor3 + 1, block.timestamp, 0)
    call stor0.0x25209260 with:
       value msg.value wei
         gas 10^6 wei
        args 0
    require ext_call.success
    stor7 = block.number + 4
}



}
