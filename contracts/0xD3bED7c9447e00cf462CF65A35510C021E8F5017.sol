contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 price;
array of uint256 version;

function onSale() {
    return bool(uint8(stor0.field_160))
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function price() {
    return price
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function withdraw() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
    emit 0xd8b7f4bb 
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    price = arg1
    emit PriceChanged(price);
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    price = arg1
    Mask(96, 0, stor0.field_160) = 1
    emit OnSale(price);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function send(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't move value from a wallet on sale'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy() payable {
    if not uint8(stor0.field_160):
        revert with 0, 'not for sale'
    if msg.value < price:
        revert with 0, 'not enough funds sent'
    if owner == msg.sender:
        revert with 0, 'you already own this contract'
    Mask(96, 0, stor0.field_160) = 0
    call owner with:
       value price wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    owner = msg.sender
    emit Sold(owner, owner, msg.value);
}

function invoke(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0, 'you can't move value from a wallet on sale'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'transaction failed'
}



}
