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
    stor0 = code.data[1101 len 20]
    stor1 = code.data[1121 len 32]
    stor2 = code.data[1165 len 20]
    stor3 = code.data[1185 len 32]
    stor4 = code.data[1217 len 32]
    stor5 = code.data[1249 len 32]
    address(stor6.field_0) = code.data[1293 len 20]
    uint8(stor6.field_160) = code.data[1344 len 1]
    stor7 = code.data[1345 len 32]
    stor8 = code.data[1377 len 32]
    return code.data[257 len 832]
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
  stop
}

function sub_94499d75(?) payable {
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, stor0, stor1, stor2, stor3, stor4, stor5, address(stor6), uint8(stor6), stor7, stor8, 1000 * msg.value / 1003
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
