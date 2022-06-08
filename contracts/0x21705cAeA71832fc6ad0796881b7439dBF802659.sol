contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_da82c47aAddress;
mapping of uint256 supportedTokens;
mapping of uint256 sub_30d373f5;

function sub_0a0e2937(?) {
    return bool(uint8(stor0.field_160))
}

function sub_30d373f5(?) {
    return sub_30d373f5[arg1]
}

function supportedTokens(address arg1) {
    return supportedTokens[arg1]
}

function owner() {
    return owner
}

function sub_a3010166(?) {
    return sub_30d373f5[address(arg1)]
}

function sub_da82c47a(?) {
    return sub_da82c47aAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_c70e08f0(?) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5322088e(?) {
    require msg.sender == owner
    require ext_code.size(sub_da82c47aAddress)
    call sub_da82c47aAddress.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a7a416bb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    if arg1.length != arg2.length:
        revert with 0, 'WRONG_LENGTH'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        supportedTokens[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function donateEth() payable {
    if not uint8(stor0.field_160):
        revert with 0, 'NOT_IN_FUNDRAISING_MODE'
    if supportedTokens[0] > msg.value:
        revert with 0, 'TO_LOW_AMOUNT'
    require supportedTokens[0] > 0
    require supportedTokens[0]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require uint8(msg.value / supportedTokens[0]) > 0
    require uint8(msg.value / supportedTokens[0])
    require ext_code.size(sub_da82c47aAddress)
    call sub_da82c47aAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, sha3(block.timestamp, block.difficulty) / uint8(msg.value / supportedTokens[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_30d373f5[0] + msg.value >= sub_30d373f5[0]
    sub_30d373f5[0] += msg.value
    emit Donation(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                  0,
                  msg.value,
                  block.timestamp,
                  0,
                  sha3(block.timestamp, block.difficulty) / uint8(msg.value / supportedTokens[0]),
}

function donateToken(address arg1, uint256 arg2) {
    if not uint8(stor0.field_160):
        revert with 0, 'NOT_IN_FUNDRAISING_MODE'
    if supportedTokens[address(arg1)] > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UNSUPPORTED_TOKEN_OR_TO_LOW_AMOUNT'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
    require supportedTokens[address(arg1)] > 0
    require supportedTokens[address(arg1)]
    require uint8(arg2 / supportedTokens[address(arg1)]) > 0
    require uint8(arg2 / supportedTokens[address(arg1)])
    require ext_code.size(sub_da82c47aAddress)
    call sub_da82c47aAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, sha3(block.timestamp, block.difficulty) / uint8(arg2 / supportedTokens[address(arg1)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_30d373f5[address(arg1)] + arg2 >= sub_30d373f5[address(arg1)]
    sub_30d373f5[address(arg1)] += arg2
    emit Donation(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                  address(arg1),
                  arg2,
                  block.timestamp,
                  0,
                  sha3(block.timestamp, block.difficulty) / uint8(arg2 / supportedTokens[address(arg1)]),
}



}
