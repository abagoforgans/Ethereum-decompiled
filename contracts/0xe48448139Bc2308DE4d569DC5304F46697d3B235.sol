contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    mem[96 len -19573] = code.data[20009 len -19573]
    mem[64] = -19477
    stor0 = msg.sender
    mem[-11155] = mem[mem[96] + 96]
    _6 = mem[mem[96] + 96]
    mem[-11123 len floor32(mem[mem[96] + 96])] = mem[mem[96] + 128 len floor32(mem[mem[96] + 96])]
    mem[(32 * _6) - 11123] = mem[mem[128] + 96]
    _13 = mem[mem[128] + 96]
    mem[(32 * _6) - 11091 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
    create contract with 0 wei
                    code: code.data[11751 len 8258], Array(len=(32 * _6) + 96, data=mem[-11155 len (32 * _13) + (32 * _6) + 64])
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[436 len 11315]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pause() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function unpause() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function enable(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5bfa1b68 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disable(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xe6c09edf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function destroy(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa24835d1 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}



}
