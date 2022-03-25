contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[63 len 1990]
}



// =====================  Runtime code  =====================


mapping of struct borrowers;
mapping of struct sub_5886216f;
mapping of address sub_98eb0015;
address bankAddress;

function sub_5886216f(?) payable {
    return sub_5886216f[arg1].field_0
}

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
    require msg.value >= borrowers[address(arg1)].field_1
    uint256(sub_98eb0015[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_98eb0015[address(arg1)]))
}

function settleLoan() payable {
    require msg.value >= borrowers[address(msg.sender)].field_0
    call address(sub_98eb0015[address(msg.sender)]) with:
       value msg.value + (msg.value / 20) wei
         gas 0 wei
    require ext_call.success
    borrowers[address(msg.sender)].field_0 = 0
}

function _fallback() payable {
    if not borrowers[address(msg.sender)].field_0:
        borrowers[address(msg.sender)].field_0 = 0
        borrowers[address(msg.sender)].field_1 = uint255(msg.value)
        sub_5886216f[address(msg.sender)].field_0 = 0
        sub_5886216f[address(msg.sender)].field_1 = uint255(msg.value)
        address(sub_98eb0015[address(msg.sender)]) = bankAddress
}

function sub_85a3580a(?) payable {
    if borrowers[address(msg.sender)].field_0:
        return 0
    borrowers[address(msg.sender)].field_0 = 0
    borrowers[address(msg.sender)].field_1 = uint255(msg.value)
    sub_5886216f[address(msg.sender)].field_0 = 0
    sub_5886216f[address(msg.sender)].field_1 = uint255(msg.value)
    address(sub_98eb0015[address(msg.sender)]) = bankAddress
    return 1
}

function sub_532c3035(?) payable {
    if borrowers[address(msg.sender)].field_0 > 0:
        if address(sub_98eb0015[address(msg.sender)]) != bankAddress:
            if arg1 <= sub_5886216f[address(msg.sender)].field_0:
                call arg2 with:
                   value arg1 wei
                     gas 0 wei
                if ext_call.success:
                    sub_5886216f[address(msg.sender)].field_0 -= arg1
}



}
