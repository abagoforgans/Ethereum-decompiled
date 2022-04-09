contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor4;
uint256 stor6;
uint256 stor7;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
uint256 stor18;
address stor19;
uint8 stor22;

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    stor7 = 0
    stor18 = 10
    stor22 = 0
    require not msg.value
    stor0 = msg.sender
    stor19 = code.data[8583 len 20]
    require ext_code.size(code.data[8583 len 20])
    call code.data[8583 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor18 = stor18^ext_call.return_data[31 len 1]
    stor10 = code.data[8615 len 20]
    stor11 = code.data[8647 len 20]
    stor12 = code.data[8679 len 20]
    stor13 = code.data[8711 len 20]
    stor14 = code.data[8743 len 20]
    stor15 = code.data[8775 len 20]
    return code.data[414 len 8157]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
