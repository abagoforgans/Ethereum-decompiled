contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 957]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of struct stor1;

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor0):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_84b73b24(?) payable {
    stor1[address(arg4)].field_0 = arg1
    stor1[address(arg4)].field_160 = 0
    stor1[address(arg4)].field_168 = Mask(88, 168, arg1) >> 168
    stor1[address(arg4)].field_256 = 0
    stor1[address(arg4)].field_256 = arg2
    stor1[address(arg4)].field_512 = arg3 or Mask(96, 160, stor1[address(arg4)].field_512)
    stor1[address(arg4)].field_768 = stor1[address(arg4)].field_928
}

function create(address arg1, uint256 arg2, address arg3, address arg4) payable {
    stor1[address(arg4)].field_0 = arg1
    stor1[address(arg4)].field_160 = 0
    stor1[address(arg4)].field_168 = Mask(88, 168, arg1) >> 168
    stor1[address(arg4)].field_256 = 0
    stor1[address(arg4)].field_256 = arg2
    stor1[address(arg4)].field_512 = arg3 or Mask(96, 160, stor1[address(arg4)].field_512)
    stor1[address(arg4)].field_768 = stor1[address(arg4)].field_928
}

function _fallback() payable {
    require stor1[address(msg.sender)].field_0 != 0
    if not stor1[address(msg.sender)].field_160:
        call stor1[address(msg.sender)].field_0.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] > 0:
            stor1[address(msg.sender)].field_160 = 1
        require stor1[address(msg.sender)].field_160
    require stor1[address(msg.sender)].field_256 <= msg.value
    call stor1[address(msg.sender)].field_0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor1[address(msg.sender)].field_0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args stor1[address(msg.sender)].field_768, ext_call.return_data[0]
    call stor1[address(msg.sender)].field_512 with:
       value stor1[address(msg.sender)].field_256 wei
         gas 0 wei
    call msg.sender with:
       value stor1[address(msg.sender)].field_256 - msg.value wei
         gas 0 wei
    stor1[address(msg.sender)].field_0 = 0
    stor1[address(msg.sender)].field_256 = 0
    stor1[address(msg.sender)].field_512 = 0
    stor1[address(msg.sender)].field_768 = 0
}



}
