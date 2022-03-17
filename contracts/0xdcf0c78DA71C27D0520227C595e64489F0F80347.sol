contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[2423 len 32]
    return code.data[92 len 2331]
}



// =====================  Runtime code  =====================


address sub_1c582cf7Address;
mapping of struct stor1;

function sub_1c582cf7(?) payable {
    return sub_1c582cf7Address
}

function _fallback() payable {
  stop
}

function sub_00108de0(?) payable {
    if uint8(stor1[address(arg1)].field_128 % 1):
        return uint64(block.timestamp - stor1[address(arg1)].field_64)
    else:
        return 0
}

function sub_bca3ccd1(?) payable {
    if stor1[address(arg1)].field_0:
        call sub_1c582cf7Address.0x51fb2bac with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            stor1[address(arg1)].field_128 = 0
}

function sub_ae5ac960(?) payable {
    call sub_1c582cf7Address.0x51fb2bac with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if not stor1[address(arg1)].field_0:
            stor1[address(arg1)].field_0 = block.timestamp or Mask(192, 64, stor1[address(arg1)].field_0)
            stor1[address(arg1)].field_64 = Mask(192, 0, block.timestamp - (744 * 24 * 3600))
        stor1[address(arg1)].field_128 = 1
}

function vote(uint64 arg1, uint64 arg2) payable {
    if stor1[address(msg.sender)].field_0:
        if stor1[address(msg.sender)].field_128 == 1:
            if uint64(stor1[address(msg.sender)].field_64 + arg2) < block.timestamp:
                stor1[address(msg.sender)].field_64 = Mask(192, 0, stor1[address(msg.sender)].field_64 + arg2)
                call sub_1c582cf7Address.0x8d541f35 with:
                     gas gas_remaining - 25050 wei
                    args arg1 << 192, arg2
                require ext_call.success
}

function sub_e33722bc(?) payable {
    if stor1[address(arg1)].field_0:
        call sub_1c582cf7Address.0x51fb2bac with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            stor1[address(arg2)].field_0 = stor1[address(arg1)].field_0
            stor1[address(arg2)].field_64 = stor1[address(arg1)].field_64
            stor1[address(arg2)].field_128 = stor1[address(arg1)].field_128
            stor1[address(arg1)].field_0 = 0
            stor1[address(arg1)].field_64 = 0
            stor1[address(arg1)].field_128 = 0
}



}
