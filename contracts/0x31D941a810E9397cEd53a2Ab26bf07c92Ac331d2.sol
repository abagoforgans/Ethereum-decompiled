contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 651]
}



// =====================  Runtime code  =====================


mapping of struct borrowers;
mapping of address sub_98eb0015;
address bankAddress;

function bank() payable {
    return bankAddress
}

function sub_98eb0015(?) payable {
    return address(sub_98eb0015[arg1])
}

function borrowers(address arg1) payable {
    return borrowers[arg1].field_0
}

function kill() payable {
    if bankAddress != msg.sender:
    selfdestruct(bankAddress)
}

function sub_08765959(?) payable {
    require msg.value >= borrowers[address(arg1)].field_0
    uint256(sub_98eb0015[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_98eb0015[address(arg1)]))
}

function _fallback() payable {
    if 0 == borrowers[address(msg.sender)].field_0:
        borrowers[address(msg.sender)].field_0 = 0
        borrowers[address(msg.sender)].field_1 = uint255(msg.value)
        address(sub_98eb0015[address(msg.sender)]) = bankAddress
}

function sub_85a3580a(?) payable {
    if borrowers[address(msg.sender)].field_0 != 0:
        return 0
    borrowers[address(msg.sender)].field_0 = 0
    borrowers[address(msg.sender)].field_1 = uint255(msg.value)
    address(sub_98eb0015[address(msg.sender)]) = bankAddress
    return 1
}

function settleLoan() payable {
    require msg.value >= borrowers[address(msg.sender)].field_0
    call address(sub_98eb0015[address(msg.sender)]) with:
       value (msg.value / 98) + msg.value wei
         gas 0 wei
    require ext_call.success
    borrowers[address(msg.sender)].field_0 = 0
}



}
