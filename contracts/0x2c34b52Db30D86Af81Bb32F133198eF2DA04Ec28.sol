contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8

function refunded() {
    return bool(uint8(stor5.field_8))
}

function finished() {
    return bool(uint8(stor5.field_0))
}

function _fallback() payable {
    require stor0 == msg.sender
    require not uint8(stor5.field_0)
    require msg.value == stor3
    require eth.balance(this.address) == stor3
    emit PaymentReceived(msg.sender, msg.value);
}

function sub_3ccab4d6(?) {
    if uint256(stor4['withdraw']) > 0:
        if uint8(stor4['withdraw'][1][address(arg1)]):
            return 1
    if uint256(stor4['refund']) <= 0:
        return 0
    if not uint8(stor4['refund'][1][address(arg1)]):
        return 0
    return -1
}

function withdraw() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            require stor2 == msg.sender
    require eth.balance(this.address) > 0
    emit 0x650d798f 
    mem[160 len 0] = None
    require not uint8(stor4[mem[160 len 8]][1][address(msg.sender)])
    mem[160 len 0] = None
    mem[160 len 24] = Mask(192, 64, mem[160 len 8], 0) >> 64
    if uint256(stor4[mem[160 len 8]]) != 1:
        mem[160 len 0] = None
        mem[160 len 24] = mem[160 len 8], 0
        uint8(stor4[mem[160 len 8]][1][address(msg.sender)]) = 1
        mem[160 len 0] = None
        mem[160 len 24] = mem[160 len 8], 0
        uint256(stor4[mem[160 len 8]])++
        return 0
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_0) = 1
    emit Finalized()
    mem[160 len 0] = None
    mem[160 len 24] = mem[160 len 8], 0
    uint8(stor4[mem[160 len 8]][1][address(msg.sender)]) = 1
    mem[160 len 0] = None
    mem[160 len 24] = mem[160 len 8], 0
    uint256(stor4[mem[160 len 8]])++
    return 1
}

function refund() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            require stor2 == msg.sender
    require eth.balance(this.address) > 0
    emit 0x650d798f 
    mem[160 len 0] = None
    require not uint8(stor4[mem[160 len 6]][1][address(msg.sender)])
    mem[160 len 0] = None
    mem[160 len 26] = Mask(208, 48, mem[160 len 6], 0) >> 48
    if uint256(stor4[mem[160 len 6]]) != 1:
        mem[160 len 0] = None
        mem[160 len 26] = mem[160 len 6], 0
        uint8(stor4[mem[160 len 6]][1][address(msg.sender)]) = 1
        mem[160 len 0] = None
        mem[160 len 26] = mem[160 len 6], 0
        uint256(stor4[mem[160 len 6]])++
        return 0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(248, 0, stor5.field_8) = 1
    uint8(stor5.field_0) = 1
    emit Finalized()
    mem[160 len 0] = None
    mem[160 len 26] = mem[160 len 6], 0
    uint8(stor4[mem[160 len 6]][1][address(msg.sender)]) = 1
    mem[160 len 0] = None
    mem[160 len 26] = mem[160 len 6], 0
    uint256(stor4[mem[160 len 6]])++
    return 1
}



}
