contract main {




// =====================  Runtime code  =====================


const onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) = 0x150b7a0200000000000000000000000000000000000000000000000000000000


uint256 lockRequestCount;
address custodianAddress;
mapping of struct sub_441e15d0;
mapping of struct sub_eb9b6816;
mapping of struct sub_522b3d17;

function custodian() {
    return custodianAddress
}

function sub_441e15d0(?) {
    return sub_441e15d0[arg1].field_0, sub_441e15d0[arg1].field_256
}

function sub_522b3d17(?) {
    return sub_522b3d17[arg1].field_0, sub_522b3d17[arg1].field_256, sub_522b3d17[arg1].field_512
}

function lockRequestCount() {
    return lockRequestCount
}

function sub_eb9b6816(?) {
    return sub_eb9b6816[arg1].field_0, sub_eb9b6816[arg1].field_256, sub_eb9b6816[arg1].field_512
}

function _fallback() payable {
    if msg.value > 0:
        emit EtherDeposited(msg.sender, msg.value);
}

function sub_2c8ef841(?) {
    require msg.sender == custodianAddress
    require sub_441e15d0[arg1].field_0
    sub_441e15d0[arg1].field_0 = 0
    sub_441e15d0[arg1].field_256 = 0
    call sub_441e15d0[arg1].field_0 with:
       value sub_441e15d0[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0xa60bf978: arg1, sub_441e15d0[arg1].field_0, sub_441e15d0[arg1].field_256
}

function sub_bab8965d(?) {
    require msg.sender == custodianAddress
    require sub_eb9b6816[arg1].field_0
    sub_eb9b6816[arg1].field_0 = 0
    sub_eb9b6816[arg1].field_256 = 0
    sub_eb9b6816[arg1].field_512 = 0
    call sub_eb9b6816[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args sub_eb9b6816[arg1].field_256, sub_eb9b6816[arg1].field_512
    if ext_call.success:
        emit 0x5b708c88: arg1, sub_eb9b6816[arg1].field_0, sub_eb9b6816[arg1].field_256, sub_eb9b6816[arg1].field_512
}

function sub_5aa79b6b(?) {
    require msg.sender == custodianAddress
    require sub_522b3d17[arg1].field_0
    sub_522b3d17[arg1].field_0 = 0
    sub_522b3d17[arg1].field_256 = 0
    sub_522b3d17[arg1].field_512 = 0
    call sub_522b3d17[arg1].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, sub_522b3d17[arg1].field_256, sub_522b3d17[arg1].field_512
    if ext_call.success:
        emit 0xeb1b982a: arg1, sub_522b3d17[arg1].field_0, sub_522b3d17[arg1].field_256, sub_522b3d17[arg1].field_512
}

function sub_526327f2(?) {
    require arg1
    lockRequestCount++
    mem[276] = uint64(lockRequestCount + 1), Mask(96, 160, block.hash(block.number - 1)) >> 160 or Mask(96, 160, mem[276])
    sub_441e15d0[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][Mask(192, 0, arg2)].field_0 = arg1
    sub_441e15d0[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][Mask(192, 0, arg2)].field_256 = arg2
    emit 0xeb834e5a: sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, Mask(192, 0, arg2)), lockRequestCount, address(arg1), arg2
    return sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, Mask(192, 0, arg2))
}

function sub_60de3a26(?) {
    require arg1
    require arg2
    lockRequestCount++
    mem[276] = uint64(lockRequestCount + 1), Mask(96, 160, block.hash(block.number - 1)) >> 160 or Mask(96, 160, mem[276])
    sub_522b3d17[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_0 = arg1
    sub_522b3d17[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_256 = arg2
    sub_522b3d17[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_512 = arg3
    emit 0x2f609a1c: sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, arg3), lockRequestCount, address(arg1), address(arg2), arg3
    return sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, arg3)
}

function sub_ecf644f1(?) {
    require arg1
    require arg2
    lockRequestCount++
    mem[276] = uint64(lockRequestCount + 1), Mask(96, 160, block.hash(block.number - 1)) >> 160 or Mask(96, 160, mem[276])
    sub_eb9b6816[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_0 = arg1
    sub_eb9b6816[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_256 = arg2
    sub_eb9b6816[sha3(block.hash(block.number - 1), this.address, Mask(96, 160, stor0 + 1) >> 160, mem[276 len 20])][0][arg1][arg2][arg3].field_512 = arg3
    emit 0x620b1d45: sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, arg3), lockRequestCount, address(arg1), address(arg2), arg3
    return sha3(sha3(block.hash(block.number - 1), this.address, Mask(96, 160, lockRequestCount + 1) >> 160, mem[276 len 20]), 0, arg1, arg2, arg3)
}



}
