contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 1237]
}



// =====================  Runtime code  =====================


address sub_fffff305Address;
uint256 stor0;
address sub_aaabd6b0Address;
mapping of struct voters;

function voters(address arg1) payable {
    return voters[arg1].field_0, voters[arg1].field_256, voters[arg1].field_512
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
    if 0 == voters[address(arg1)].field_512:
        return 0
    return (block.timestamp - voters[address(arg1)].field_256)
}

function sub_ccec6ebc(?) payable {
    if voters[address(arg1)].field_512:
        if sub_aaabd6b0Address == msg.sender:
            voters[address(arg1)].field_512 = 0
}

function sub_adca1847(?) payable {
    if msg.sender == sub_aaabd6b0Address:
        if 0 == voters[address(arg1)].field_0:
            voters[address(arg1)].field_0 = block.timestamp
            voters[address(arg1)].field_256 = block.timestamp
        voters[address(arg1)].field_512 = 1
}

function sub_68db5f4b(?) payable {
    if voters[address(msg.sender)].field_0 != 0:
        if 1 == voters[address(msg.sender)].field_512:
            if voters[address(msg.sender)].field_256 + arg2 < block.timestamp:
                voters[address(msg.sender)].field_256 += arg2
                call address(sub_fffff305Address).0xb8055bd2 with:
                     gas gas_remaining - 25050 wei
                    args Array(len=arg1.length, data=arg1[all]), arg2 << 192
                require ext_call.success
}

function sub_02bf617f(?) payable {
    if voters[address(arg1)].field_0 != 0:
        call address(sub_fffff305Address).0x71164d26 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            voters[address(arg2)].field_0 = voters[address(arg1)].field_0
            voters[address(arg2)].field_256 = voters[address(arg1)].field_256
            voters[address(arg2)].field_512 = voters[address(arg1)].field_512
            voters[address(arg1)].field_0 = 0
            voters[address(arg1)].field_256 = 0
            voters[address(arg1)].field_512 = 0
}



}
