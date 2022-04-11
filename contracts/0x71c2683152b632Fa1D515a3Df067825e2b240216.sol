contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor3;
uint256 stor5;
uint256 stor6;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint256 stor17;
address stor18;
uint8 stor21;

function _fallback() payable {
    stor3 = 0
    stor5 = 0
    stor6 = 0
    stor17 = 10
    stor21 = 0
    require not msg.value
    stor0 = msg.sender
    stor18 = code.data[8313 len 20]
    require ext_code.size(code.data[8313 len 20])
    call code.data[8313 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor17 = stor17^ext_call.return_data[31 len 1]
    stor9 = code.data[8345 len 20]
    stor10 = code.data[8377 len 20]
    stor11 = code.data[8409 len 20]
    stor12 = code.data[8441 len 20]
    stor13 = code.data[8473 len 20]
    stor14 = code.data[8505 len 20]
    return code.data[427 len 7874]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
