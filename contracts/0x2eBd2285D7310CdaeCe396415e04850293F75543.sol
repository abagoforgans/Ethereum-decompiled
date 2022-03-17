contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 2334]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
array of uint256 ETHXBT;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call ext_call.return_data[12 len 20] with:
         gas 0 wei
}

function oraclize_query(uint256 arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call ext_call.return_data[12 len 20] with:
         gas 0 wei
    return 0
}

function sub_d5948770(?) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    return ext_call.return_data[12 len 20]
}

function __callback(bytes32 arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call ext_call.return_data[12 len 20] with:
         gas 0 wei
}

function oraclize_query(uint256 arg1, string arg2, string arg3, string arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    if not arg3.length % 32:
        call address(stor0.field_0).0xa4c8a1c1 with:
             gas gas_remaining - 25050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg3.length + arg2.length + 192
    else:
        call address(stor0.field_0).0xa4c8a1c1 with:
             gas gas_remaining - 25050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, floor32(arg3.length) + arg2.length + 224
    require ext_call.success
    return 0
}



}
