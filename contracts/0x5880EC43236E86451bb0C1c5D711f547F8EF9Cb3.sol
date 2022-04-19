contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint16 stor1;
address stor1; offset 16

function _fallback() payable {
    stor0 = 0
    uint16(stor1.field_0) = 0
    address(stor1.field_16) = msg.sender
    require address(stor1.field_16) == msg.sender
    uint8(stor1.field_0) = 1
    emit ContractEnabled()
    return code.data[189 len 4567]
}



// =====================  Runtime code  =====================


const name = 'PreICOin'

const decimals = 18

const symbol = 'PreICO'


uint256 _totalSupply;
uint8 stor1;
uint8 stor1; offset 8
address owner; offset 16
address stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    require bool(uint8(stor1.field_0)) == 1
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    require bool(uint8(stor1.field_0)) == 1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require owner == msg.sender
    require not uint8(stor1.field_0)
    selfdestruct(owner)
}

function contractState() {
    if not uint8(stor1.field_0):
        return 'Stopped'
    return 'Working'
}

function transferState() {
    if not uint8(stor1.field_8):
        return 'Stopped'
    return 'Working'
}

function enableContract() {
    require owner == msg.sender
    uint8(stor1.field_0) = 1
    emit ContractEnabled()
}

function enableTransfer() {
    require owner == msg.sender
    uint8(stor1.field_8) = 1
    emit TransferEnabled()
}

function disableContract() {
    require owner == msg.sender
    uint8(stor1.field_0) = 0
    emit ContractDisabled()
}

function disableTransfer() {
    require owner == msg.sender
    uint8(stor1.field_8) = 0
    emit TransferDisabled()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setCurrentCoin(address arg1) {
    require owner == msg.sender
    require bool(uint8(stor1.field_0)) == 1
    stor2 = arg1
    emit CurrentCoin(arg1);
}

function generateTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor2 == msg.sender
    require bool(uint8(stor1.field_0)) == 1
    _totalSupply += arg2
    balanceOf[address(arg1)] += arg2
}

function _fallback() payable {
    require bool(uint8(stor1.field_0)) == 1
    call stor2 with:
       funct Mask(32, 224, sha3('pay(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args msg.sender, msg.value
}

function destroyTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor2 == msg.sender
    require bool(uint8(stor1.field_0)) == 1
    if balanceOf[address(arg1)] < arg2:
        return 0
    balanceOf[address(arg1)] -= arg2
    _totalSupply -= arg2
    return 1
}

function refund(address arg1, uint256 arg2) {
    require bool(uint8(stor1.field_0)) == 1
    if owner != msg.sender:
        require stor2 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor1.field_0)) == 1
    if arg1 == this.address:
        call stor2 with:
           funct Mask(32, 224, sha3('refund(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2
        emit Transfer(arg2, msg.sender, arg1);
        return bool(ext_call.success)
    if not uint8(stor1.field_8):
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(uint8(stor1.field_0)) == 1
    if arg2 == this.address:
        call stor2 with:
           funct Mask(32, 224, sha3('refund(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg3
        emit Transfer(arg3, arg1, arg2);
        return bool(ext_call.success)
    if not uint8(stor1.field_8):
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(msg.sender)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
