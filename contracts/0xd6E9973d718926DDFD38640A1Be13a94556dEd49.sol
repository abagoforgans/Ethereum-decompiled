contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[63 len 2924]
}



// =====================  Runtime code  =====================


address sub_fffff305Address;
uint256 stor0;
address sub_aaabd6b0Address;
mapping of struct voters;

function voters(address arg1) payable {
    return voters[arg1].field_0, voters[arg1].field_0, voters[arg1].field_128
}

function sub_aaabd6b0(?) payable {
    return sub_aaabd6b0Address
}

function sub_fffff305(?) payable {
    return address(sub_fffff305Address)
}

function selfDestruct() payable {
    if sub_aaabd6b0Address != msg.sender:
    selfdestruct(sub_aaabd6b0Address)
}

function _fallback() payable {
  stop
}

function sub_3c024723(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_30547e4c(?) payable {
    if uint8(voters[address(arg1)].field_128 % 1):
        return uint64(block.timestamp - voters[address(arg1)].field_64)
    else:
        return 0
}

function sub_ccec6ebc(?) payable {
    if voters[address(arg1)].field_0:
        call address(sub_fffff305Address).0x71164d26 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            voters[address(arg1)].field_128 = 0
}

function sub_adca1847(?) payable {
    if msg.sender == sub_aaabd6b0Address:
        if not voters[address(arg1)].field_0:
            voters[address(arg1)].field_0 = block.timestamp or Mask(192, 64, voters[address(arg1)].field_0)
            voters[address(arg1)].field_64 = Mask(192, 0, block.timestamp - (744 * 24 * 3600))
        voters[address(arg1)].field_128 = 1
}

function sub_68db5f4b(?) payable {
    if voters[address(msg.sender)].field_0:
        if voters[address(msg.sender)].field_128 == 1:
            if uint64(voters[address(msg.sender)].field_64 + arg2) < block.timestamp:
                voters[address(msg.sender)].field_64 = Mask(192, 0, voters[address(msg.sender)].field_64 + arg2)
                call address(sub_fffff305Address).0xb8055bd2 with:
                     gas gas_remaining - 25050 wei
                    args Array(len=arg1.length, data=arg1[all]), arg2 << 192
                require ext_call.success
}

function sub_02bf617f(?) payable {
    if voters[address(arg1)].field_0:
        call address(sub_fffff305Address).0x71164d26 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            voters[address(arg2)].field_0 = voters[address(arg1)].field_0
            voters[address(arg2)].field_64 = voters[address(arg1)].field_64
            voters[address(arg2)].field_128 = voters[address(arg1)].field_128
            voters[address(arg1)].field_0 = 0
            voters[address(arg1)].field_64 = 0
            voters[address(arg1)].field_128 = 0
}



}
