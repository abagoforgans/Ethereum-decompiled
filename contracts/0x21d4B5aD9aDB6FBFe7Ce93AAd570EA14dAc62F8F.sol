contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;

function _fallback() {
    stor0 = code.data[843 len 20]
    stor1 = code.data[863 len 32]
    stor2 = code.data[907 len 20]
    stor3 = code.data[927 len 32]
    stor4 = code.data[959 len 32]
    stor5 = code.data[991 len 32]
    address(stor6.field_0) = code.data[1035 len 20]
    uint8(stor6.field_160) = code.data[1086 len 1]
    stor7 = code.data[1087 len 32]
    stor8 = code.data[1119 len 32]
    return code.data[257 len 574]
}



// =====================  Runtime code  =====================


const etherDelta = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819


uint32 stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining - 710 wei
        args 0, stor0, stor1, stor2, stor3, stor4, stor5, address(stor6), uint8(stor6), stor7, stor8, 1000 * msg.value / 1003
    require ext_call.success
}



}
