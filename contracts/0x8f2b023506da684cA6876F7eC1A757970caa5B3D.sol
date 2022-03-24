contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor4;
mapping of uint8 stor6;
address stor7;
uint256 stor7;
address stor8;
uint256 stor8;

function _fallback() payable {
    mem[96 len -2703] = code.data[3336 len -2703]
    mem[64] = -2607
    stor0 = mem[96]
    stor1 = mem[128]
    stor2 = mem[160]
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint256(stor7) = mem[224]
    uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
    stor6[address(stor7)] = 1
    stor6[address(stor8)] = 1
    return code.data[633 len 2703]
}



// =====================  Runtime code  =====================


uint256 cycle;
uint256 fee;
uint256 sub_4678f211;
uint256 sub_5ff69b8e;
array of uint256 sub_e4b054e7;
uint8 isSigned;
mapping of struct stor6;
address sub_addb4766Address;
address sub_c9efff32Address;

function sub_4678f211(?) payable {
    return sub_4678f211
}

function sub_5ff69b8e(?) payable {
    return sub_5ff69b8e
}

function cycle() payable {
    return cycle
}

function sub_addb4766(?) payable {
    return sub_addb4766Address
}

function sub_c9efff32(?) payable {
    return sub_c9efff32Address
}

function fee() payable {
    return fee
}

function sub_e4b054e7(?) payable {
    return sub_e4b054e7[0 len sub_e4b054e7.length]
}

function isSigned() payable {
    return bool(isSigned)
}

function sub_815c47ee(?) payable {
    if stor6[stor7].field_8:
        if stor6[stor8].field_8:
            isSigned = 1
            sub_5ff69b8e = block.timestamp + cycle
}

function adminWithdraw() payable {
    if not stor6[address(msg.sender)].field_0:
    call sub_c9efff32Address with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function signContract() payable {
    if stor6[address(msg.sender)].field_0:
        stor6[address(msg.sender)].field_8 = 1
        if stor6[stor7].field_8:
            if stor6[stor8].field_8:
                isSigned = 1
                sub_5ff69b8e = block.timestamp + cycle
        emit 0x87749e5a: msg.sender
}

function _fallback() payable {
    if sub_5ff69b8e < block.timestamp:
        isSigned = 0
        stor6[stor7].field_8 = 0
        stor6[stor8].field_8 = 0
        emit 0x2f87792d: bool(isSigned)
    if not isSigned:
        emit 0xd3ab9a53: msg.sender, msg.value
    else:
        emit PaymentReceived(msg.sender, msg.value);
        call sub_addb4766Address with:
           value msg.value * sub_4678f211 / 100 wei
             gas 0 wei
        call sub_c9efff32Address with:
           value msg.value - (msg.value * sub_4678f211 / 100) wei
             gas 0 wei
        emit 0xaf948d02: sub_addb4766Address, msg.value * sub_4678f211 / 100, sub_c9efff32Address, msg.value - (msg.value * sub_4678f211 / 100)
}



}
