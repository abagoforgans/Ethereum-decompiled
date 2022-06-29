contract main {




// =====================  Runtime code  =====================


const name = 'Coin BAC'

const decimals = 8

const symbol = 'BAC'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
uint8 stor6; offset 32
address sub_4d5adce1Address; offset 40
uint256 stor6; offset 32
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8

function frozen() {
    return bool(uint8(stor6.field_0))
}

function totalSupply() {
    return totalSupply
}

function sub_297e1891(?) {
    return bool(uint8(stor6.field_24))
}

function sub_4d5adce1(?) {
    return sub_4d5adce1Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_9112c7fb(?) {
    return bool(uint8(stor6.field_32))
}

function sub_92b5a1b0(?) {
    return bool(uint8(stor6.field_16))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_df948533(?) {
    return bool(uint8(stor6.field_8))
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
}

function disableBurning() {
    require msg.sender == stor2
    if uint8(stor6.field_8):
        Mask(248, 0, stor6.field_8) = 0
        emit 0x4690545b 
}

function sub_003e9796(?) {
    require msg.sender == stor2
    if uint8(stor6.field_16):
        Mask(240, 0, stor6.field_16) = 0
        emit 0x88a904b9 
}

function sub_315db2b1(?) {
    require msg.sender == stor2
    if uint8(stor6.field_32):
        Mask(224, 0, stor6.field_32) = 0
        emit 0x41cd1715 
}

function sub_fc61f692(?) {
    require msg.sender == stor2
    if uint8(stor6.field_24):
        Mask(232, 0, stor6.field_24) = 0
        emit 0xf608f7e0 
}

function migrateTo(address arg1) {
    require msg.sender == stor2
    require not sub_4d5adce1Address
    require arg1
    sub_4d5adce1Address = arg1
    uint8(stor6.field_0) = 1
}

function freezeTransfers() {
    require msg.sender == stor2
    require uint8(stor6.field_32)
    if not uint8(stor6.field_0):
        uint8(stor6.field_0) = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require msg.sender == stor2
    require not sub_4d5adce1Address
    if uint8(stor6.field_0):
        uint8(stor6.field_0) = 0
        emit Unfreeze()
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == stor2
    require arg1 != msg.sender
    require uint8(stor6.field_24)
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)]:
        require not arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require stor4[address(msg.sender)]
    require uint8(stor6.field_8)
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function burningCapableAccount(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor2
    require uint8(stor6.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function refundTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor2
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RefundTokens(address(arg1), address(arg2), arg3);
}

function createTokens(uint256 arg1) {
    require msg.sender == stor2
    require uint8(stor6.field_16)
    if arg1 <= 0:
        return 0
    require totalSupply <= 10^17
    if arg1 > -totalSupply + 10^17:
        return 0
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3[address(msg.sender)]
    if uint8(stor6.field_0):
        return 0
    require arg1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3[address(arg1)]
    if uint8(stor6.field_0):
        return 0
    require arg2
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 > 0:
        if arg1 != arg2:
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
