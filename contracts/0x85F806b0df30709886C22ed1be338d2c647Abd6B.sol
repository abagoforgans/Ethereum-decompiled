contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct secret;

function getSecret(address arg1) {
    return secret[address(msg.sender)][address(arg1)].field_256
}

function owner() {
    return owner
}

function swaps(address arg1, address arg2) {
    return secret[arg1][arg2].field_0, 
           secret[arg1][arg2].field_256,
           Mask(160, 96, secret[arg1][arg2].field_512),
           secret[arg1][arg2].field_768,
           secret[arg1][arg2].field_1024
}

function getBalance(address arg1) {
    return secret[address(arg1)][address(msg.sender)].field_1024
}

function _fallback() payable {
    revert
}

function testnetWithdrawn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSwap(bytes20 arg1, address arg2, uint256 arg3, address arg4) {
    require arg3 > 0
    require not secret[address(msg.sender)][address(arg2)].field_1024
    require ext_code.size(arg4)
    call arg4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    secret[address(msg.sender)][address(arg2)].field_0 = arg4
    secret[address(msg.sender)][address(arg2)].field_256 = 0
    secret[address(msg.sender)][address(arg2)].field_512 = Mask(160, 96, arg1) >> 96
    secret[address(msg.sender)][address(arg2)].field_768 = block.timestamp
    secret[address(msg.sender)][address(arg2)].field_1024 = arg3
    emit CreateSwap(block.timestamp);
}

function refund(address arg1) {
    require secret[address(msg.sender)][address(arg1)].field_1024 > 0
    require secret[address(msg.sender)][address(arg1)].field_768 + stor1 >= secret[address(msg.sender)][address(arg1)].field_768
    require secret[address(msg.sender)][address(arg1)].field_768 + stor1 < block.timestamp
    require ext_code.size(secret[address(msg.sender)][address(arg1)].field_0)
    call secret[address(msg.sender)][address(arg1)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, secret[address(msg.sender)][address(arg1)].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    secret[address(msg.sender)][address(arg1)].field_0 = 0
    secret[address(msg.sender)][address(arg1)].field_256 = 0
    secret[address(msg.sender)][address(arg1)].field_512 = 0
    secret[address(msg.sender)][address(arg1)].field_768 = 0
    secret[address(msg.sender)][address(arg1)].field_1024 = 0
    emit Refund()
}

function withdraw(bytes32 arg1, address arg2) {
    hash = ripemd160hash(arg1) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require Mask(160, 96, secret[address(arg2)][address(msg.sender)].field_512) == address(hash)
    require secret[address(arg2)][address(msg.sender)].field_1024 > 0
    require secret[address(arg2)][address(msg.sender)].field_768 + stor1 >= secret[address(arg2)][address(msg.sender)].field_768
    require secret[address(arg2)][address(msg.sender)].field_768 + stor1 > block.timestamp
    require ext_code.size(secret[address(arg2)][address(msg.sender)].field_0)
    call secret[address(arg2)][address(msg.sender)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, secret[address(arg2)][address(msg.sender)].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    secret[address(arg2)][address(msg.sender)].field_1024 = 0
    secret[address(arg2)][address(msg.sender)].field_256 = arg1
    emit Withdraw(arg1, msg.sender, secret[address(arg2)][address(msg.sender)].field_1024);
}



}
