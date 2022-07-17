contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
address erc20Address;
address stakingAddress;
uint256 sub_8862eadb;
mapping of struct sub_8b3ee973;
mapping of uint256 sub_c472c4e0;
array of uint256 sub_378088a6;
array of uint256 bonds;
array of uint256 stor73546096136405737578683964780285827720112598822927516584487316002982633787038;

function sub_378088a6(?) {
    require calldata.size - 4 >= 32
    return sub_378088a6[address(arg1)]
}

function staking() {
    return stakingAddress
}

function sub_586a80bf(?) {
    return bonds.length
}

function bonds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bonds.length
    return bonds[arg1]
}

function erc20() {
    return erc20Address
}

function sub_853394cf(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_378088a6[arg1]
    return sub_378088a6[arg1][arg2]
}

function sub_8862eadb(?) {
    return sub_8862eadb
}

function sub_8b3ee973(?) {
    require calldata.size - 4 >= 32
    return sub_8b3ee973[arg1].field_0, 
           sub_8b3ee973[arg1].field_256,
           sub_8b3ee973[arg1].field_512,
           sub_8b3ee973[arg1].field_768,
           sub_8b3ee973[arg1].field_1024,
           sub_8b3ee973[arg1].field_1024
}

function sub_c472c4e0(?) {
    require calldata.size - 4 >= 32
    return sub_c472c4e0[arg1]
}

function isGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function isExpired(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (block.timestamp > sub_8b3ee973[arg1].field_256)
}

function renounceGovernor() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit GovernorRemoved(msg.sender);
}

function sub_c3ab7223(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'Only Governor Action'
    if arg1 >= 8760 * 24 * 3600:
        revert with 0, 'Max 1 year governable'
    sub_8862eadb = arg1
}

function addGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'Only Governor Action'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit GovernorAdded(arg1);
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not uint8(stor1.field_8):
        if ext_code.size(this.address):
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    uint8(stor1.field_0) = 1
    uint8(stor1.field_8) = 1
    Mask(248, 0, stor1.field_8) = 0
    erc20Address = arg1
    stakingAddress = arg2
    sub_8862eadb = arg3
    require msg.sender
    require not stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 1
    emit GovernorAdded(msg.sender);
    Mask(248, 0, stor1.field_8) = Mask(248, 0, bool(uint8(stor1.field_8)))
}

function sub_2e331e6a(?) {
    require calldata.size - 4 >= 64
    if sub_8b3ee973[arg1].field_0 <= 0:
        revert with 0, 'Bond has no value'
    sub_8b3ee973[arg1].field_0 = 0
    if sub_8b3ee973[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65426f6e64206d7573742068617665206e6f20616c6c6f6361746564207374616b,
                    mem[197 len 31]
    if msg.sender == sub_8b3ee973[arg1].field_1024:
        if block.timestamp <= sub_8b3ee973[arg1].field_256:
            revert with 0, 'Bond is still active'
    else:
        require msg.sender
        require sub_8862eadb + sub_8b3ee973[arg1].field_512 >= sub_8b3ee973[arg1].field_512
        if not stor0[address(msg.sender)]:
            revert with 0, 'owner or governable can withdraw'
        if block.timestamp > sub_8862eadb + sub_8b3ee973[arg1].field_512:
            revert with 0, 'owner or governable can withdraw'
        if msg.sender == sub_8b3ee973[arg1].field_1024:
            if block.timestamp <= sub_8b3ee973[arg1].field_256:
                revert with 0, 'Bond is still active'
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), sub_8b3ee973[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transfer fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transfer fail'
    emit 0xc1510365: arg1, address(arg2), sub_8b3ee973[arg1].field_0
}

function sub_767e0e10(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stakingAddress)
    staticcall stakingAddress.0x1e23f2f9 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg1:
        revert with 0, 'Stake needs to be bonded'
    require ext_code.size(stakingAddress)
    staticcall stakingAddress.0x5652c52f with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if msg.sender == sub_8b3ee973[arg1].field_1024:
        if ext_call.return_data[0] > sub_8b3ee973[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe43616e6e6f7420756e7374616b65206f76657220626f6e6420616c6c6f636174696f,
                        ext_call.return_data[103 len 29]
    else:
        require msg.sender
        require sub_8862eadb + sub_8b3ee973[arg1].field_512 >= sub_8b3ee973[arg1].field_512
        if not stor0[address(msg.sender)]:
            revert with 0, 'owner or governable can unstake'
        if block.timestamp > sub_8862eadb + sub_8b3ee973[arg1].field_512:
            revert with 0, 'owner or governable can unstake'
        if ext_call.return_data[0] > sub_8b3ee973[arg1].field_768:
            revert with 0, 32, 35, 0xfe43616e6e6f7420756e7374616b65206f76657220626f6e6420616c6c6f636174696f, mem[391 len 29]
    ('le', ('ext_call.return_data', 0, 32), ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_8b3ee973', 55)))))
    sub_8b3ee973[arg1].field_768 -= ext_call.return_data[0]
    require ext_code.size(stakingAddress)
    call stakingAddress.0xd78b37ed with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x687f7059: arg1, msg.sender, arg2, ext_call.return_data[0]
}

function sub_86015ff7(?) {
    require calldata.size - 4 >= 64
    require block.timestamp + (73 * 3600 * 24 * 3600) >= block.timestamp
    if arg2 >= block.timestamp + (73 * 3600 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64457870697279206d757374206265206c657373207468616e2033302079656172,
                    mem[197 len 31]
    require block.timestamp + (48 * 24 * 3600) >= block.timestamp
    if arg2 <= block.timestamp + (48 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73457870697279206d757374206265206174206c656173742032206461797320696e20746865206675747572,
                    mem[208 len 20]
    sub_c472c4e0[msg.sender][arg1][arg2][block.number] = bonds.length
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_0 = arg1
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_256 = arg2
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_512 = block.timestamp
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_768 = 0
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_1024 = msg.sender
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_1184 = 0
    sub_8b3ee973[msg.sender][arg1][arg2][block.number].field_1280 = 0
    sub_378088a6[address(msg.sender)]++
    sub_378088a6[address(msg.sender)][sub_378088a6[address(msg.sender)]] = sha3(msg.sender, arg1, arg2, block.number)
    bonds.length++
    storA299[stor58.length] = sha3(msg.sender, arg1, arg2, block.number)
    require ext_code.size(erc20Address)
    call erc20Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transferFrom fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom fail'
    emit 0x3db86383: sha3(msg.sender, arg1, arg2, block.number), msg.sender, arg1, arg2
    return sha3(msg.sender, arg1, arg2, block.number)
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if erc20Address != msg.sender:
        revert with 0, 'Call from the current token'
    require arg4.length >= 32
    require block.timestamp + (73 * 3600 * 24 * 3600) >= block.timestamp
    if cd[(arg4 + 36)] >= block.timestamp + (73 * 3600 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64457870697279206d757374206265206c657373207468616e2033302079656172,
                    mem[197 len 31]
    require block.timestamp + (48 * 24 * 3600) >= block.timestamp
    if cd[(arg4 + 36)] <= block.timestamp + (48 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73457870697279206d757374206265206174206c656173742032206461797320696e20746865206675747572,
                    mem[208 len 20]
    sub_c472c4e0[address(arg1)][arg2][cd[(arg4 + 36)]][block.number] = bonds.length
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_0 = arg2
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_256 = cd[(arg4 + 36)]
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_512 = block.timestamp
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_768 = 0
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_1024 = arg1
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_1184 = 0
    sub_8b3ee973[address(arg1)][arg2][cd[(arg4 + 36)]][block.number].field_1280 = 0
    sub_378088a6[address(arg1)]++
    sub_378088a6[address(arg1)][sub_378088a6[address(arg1)]] = sha3(address(arg1), arg2, cd[(arg4 + 36)], block.number)
    bonds.length++
    storA299[stor58.length] = sha3(address(arg1), arg2, cd[(arg4 + 36)], block.number)
    require ext_code.size(erc20Address)
    call erc20Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transferFrom fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom fail'
    emit 0x3db86383: sha3(address(arg1), arg2, cd[(arg4 + 36)], block.number), address(arg1), arg2, cd[(arg4 + 36)]
}

function sub_73194f02(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    if msg.sender == sub_8b3ee973[arg1].field_1024:
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
            idx = idx + 1
            s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
            continue 
        require (_103 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
        sub_8b3ee973[arg1].field_768 += _103 * arg4.length
        if sub_8b3ee973[arg1].field_0 < (_103 * arg4.length) + sub_8b3ee973[arg1].field_768:
            revert with 0, 'Insufficient bond balance'
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 128
        mem[(32 * arg3.length) + (32 * arg4.length) + 320] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(32 * arg3.length) + (32 * arg4.length) + 288] = (32 * arg3.length) + 160
        mem[(64 * arg3.length) + (32 * arg4.length) + 352] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 384 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + 416] = 4
        mem[(64 * arg4.length) + (64 * arg3.length) + 448] = 64
        mem[(64 * arg4.length) + (64 * arg3.length) + 480] = (32 * arg4.length) + (32 * arg3.length) + 192
        mem[(64 * arg4.length) + (64 * arg3.length) + 512 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
        if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
            mem[(98 * arg4.length) + (98 * arg3.length) + 836 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 416 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
            require ext_code.size(erc20Address)
            call erc20Address.0xcae9ca51 with:
                 gas gas_remaining wei
                args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 836 len (160 * arg4.length) + (128 * arg3.length) + 288])
        else:
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 512] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 544 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
            mem[(64 * arg4.length) + (64 * arg3.length) + 384] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 544] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 548] = stakingAddress
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 580] = s
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 612] = 96
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 644] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 518 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
            require ext_code.size(erc20Address)
            call erc20Address.0xcae9ca51 with:
                 gas gas_remaining wei
                args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = sub_8b3ee973[arg1].field_0
        require msg.sender
        require sub_8862eadb + sub_8b3ee973[arg1].field_512 >= sub_8b3ee973[arg1].field_512
        if not stor0[address(msg.sender)]:
            revert with 0, 'owner or governable can stake'
        if block.timestamp > sub_8862eadb + sub_8b3ee973[arg1].field_512:
            revert with 0, 'owner or governable can stake'
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
            idx = idx + 1
            s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
            continue 
        require (_104 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
        sub_8b3ee973[arg1].field_768 += _104 * arg4.length
        if sub_8b3ee973[arg1].field_0 < (_104 * arg4.length) + sub_8b3ee973[arg1].field_768:
            revert with 0, 'Insufficient bond balance'
        mem[(32 * arg3.length) + (32 * arg4.length) + 384] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + 416] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 448] = 128
        mem[(32 * arg3.length) + (32 * arg4.length) + 512] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 544 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(32 * arg3.length) + (32 * arg4.length) + 480] = (32 * arg3.length) + 160
        mem[(64 * arg3.length) + (32 * arg4.length) + 544] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 576 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + 608] = 4
        mem[(64 * arg4.length) + (64 * arg3.length) + 640] = 64
        mem[(64 * arg4.length) + (64 * arg3.length) + 672] = (32 * arg4.length) + (32 * arg3.length) + 192
        mem[(64 * arg4.length) + (64 * arg3.length) + 704 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
        if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
            mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 608 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
            require ext_code.size(erc20Address)
            call erc20Address.0xcae9ca51 with:
                 gas gas_remaining wei
                args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len (160 * arg4.length) + (128 * arg3.length) + 288])
        else:
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 704] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 736 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
            mem[(64 * arg4.length) + (64 * arg3.length) + 576] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 736] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 740] = stakingAddress
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 772] = s
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 804] = 96
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 836] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
            mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 710 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
            require ext_code.size(erc20Address)
            call erc20Address.0xcae9ca51 with:
                 gas gas_remaining wei
                args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x42e7044c: arg1, msg.sender, address(arg2), s
}

function sub_dcf39945(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    if msg.value <= 0:
        if msg.sender == sub_8b3ee973[arg1].field_1024:
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < arg4.length
                require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
                idx = idx + 1
                s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
                continue 
            require (_204 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
            sub_8b3ee973[arg1].field_768 += _204 * arg4.length
            if sub_8b3ee973[arg1].field_0 < (_204 * arg4.length) + sub_8b3ee973[arg1].field_768:
                revert with 0, 'Insufficient bond balance'
            mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 224] = arg2
            mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 128
            mem[(32 * arg3.length) + (32 * arg4.length) + 320] = arg3.length
            mem[(32 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + (32 * arg4.length) + 288] = (32 * arg3.length) + 160
            mem[(64 * arg3.length) + (32 * arg4.length) + 352] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + 384 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + 416] = 4
            mem[(64 * arg4.length) + (64 * arg3.length) + 448] = 64
            mem[(64 * arg4.length) + (64 * arg3.length) + 480] = (32 * arg4.length) + (32 * arg3.length) + 192
            mem[(64 * arg4.length) + (64 * arg3.length) + 512 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
            if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
                mem[(98 * arg4.length) + (98 * arg3.length) + 836 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 416 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 836 len (160 * arg4.length) + (128 * arg3.length) + 288])
            else:
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 512] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 544 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
                mem[(64 * arg4.length) + (64 * arg3.length) + 384] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 544] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 548] = stakingAddress
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 580] = s
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 612] = 96
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 644] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 518 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = sub_8b3ee973[arg1].field_0
            require msg.sender
            require sub_8862eadb + sub_8b3ee973[arg1].field_512 >= sub_8b3ee973[arg1].field_512
            if not stor0[address(msg.sender)]:
                revert with 0, 'owner or governable can stake'
            if block.timestamp > sub_8862eadb + sub_8b3ee973[arg1].field_512:
                revert with 0, 'owner or governable can stake'
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < arg4.length
                require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
                idx = idx + 1
                s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
                continue 
            require (_205 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
            sub_8b3ee973[arg1].field_768 += _205 * arg4.length
            if sub_8b3ee973[arg1].field_0 < (_205 * arg4.length) + sub_8b3ee973[arg1].field_768:
                revert with 0, 'Insufficient bond balance'
            mem[(32 * arg3.length) + (32 * arg4.length) + 384] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 416] = arg2
            mem[(32 * arg3.length) + (32 * arg4.length) + 448] = 128
            mem[(32 * arg3.length) + (32 * arg4.length) + 512] = arg3.length
            mem[(32 * arg3.length) + (32 * arg4.length) + 544 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + (32 * arg4.length) + 480] = (32 * arg3.length) + 160
            mem[(64 * arg3.length) + (32 * arg4.length) + 544] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + 576 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + 608] = 4
            mem[(64 * arg4.length) + (64 * arg3.length) + 640] = 64
            mem[(64 * arg4.length) + (64 * arg3.length) + 672] = (32 * arg4.length) + (32 * arg3.length) + 192
            mem[(64 * arg4.length) + (64 * arg3.length) + 704 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
            if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
                mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 608 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len (160 * arg4.length) + (128 * arg3.length) + 288])
            else:
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 704] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 736 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
                mem[(64 * arg4.length) + (64 * arg3.length) + 576] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 736] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 740] = stakingAddress
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 772] = s
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 804] = 96
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 836] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 710 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
    else:
        call arg2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == sub_8b3ee973[arg1].field_1024:
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < arg4.length
                require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
                idx = idx + 1
                s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
                continue 
            require (_206 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
            sub_8b3ee973[arg1].field_768 += _206 * arg4.length
            if sub_8b3ee973[arg1].field_0 < (_206 * arg4.length) + sub_8b3ee973[arg1].field_768:
                revert with 0, 'Insufficient bond balance'
            mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 224] = arg2
            mem[(32 * arg3.length) + (32 * arg4.length) + 256] = 128
            mem[(32 * arg3.length) + (32 * arg4.length) + 320] = arg3.length
            mem[(32 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + (32 * arg4.length) + 288] = (32 * arg3.length) + 160
            mem[(64 * arg3.length) + (32 * arg4.length) + 352] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + 384 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + 416] = 4
            mem[(64 * arg4.length) + (64 * arg3.length) + 448] = 64
            mem[(64 * arg4.length) + (64 * arg3.length) + 480] = (32 * arg4.length) + (32 * arg3.length) + 192
            mem[(64 * arg4.length) + (64 * arg3.length) + 512 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
            if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
                mem[(98 * arg4.length) + (98 * arg3.length) + 836 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 416 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 836 len (160 * arg4.length) + (128 * arg3.length) + 288])
            else:
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 512] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 544 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
                mem[(64 * arg4.length) + (64 * arg3.length) + 384] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 544] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 548] = stakingAddress
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 580] = s
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 612] = 96
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 644] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 518 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 676 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = sub_8b3ee973[arg1].field_0
            require msg.sender
            require sub_8862eadb + sub_8b3ee973[arg1].field_512 >= sub_8b3ee973[arg1].field_512
            if not stor0[address(msg.sender)]:
                revert with 0, 'owner or governable can stake'
            if block.timestamp > sub_8862eadb + sub_8b3ee973[arg1].field_512:
                revert with 0, 'owner or governable can stake'
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < arg4.length
                require mem[(32 * arg3.length) + (32 * idx) + 160] + s >= s
                idx = idx + 1
                s = mem[(32 * arg3.length) + (32 * idx) + 160] + s
                continue 
            require (_207 * arg4.length) + sub_8b3ee973[arg1].field_768 >= sub_8b3ee973[arg1].field_768
            sub_8b3ee973[arg1].field_768 += _207 * arg4.length
            if sub_8b3ee973[arg1].field_0 < (_207 * arg4.length) + sub_8b3ee973[arg1].field_768:
                revert with 0, 'Insufficient bond balance'
            mem[(32 * arg3.length) + (32 * arg4.length) + 384] = arg1
            mem[(32 * arg3.length) + (32 * arg4.length) + 416] = arg2
            mem[(32 * arg3.length) + (32 * arg4.length) + 448] = 128
            mem[(32 * arg3.length) + (32 * arg4.length) + 512] = arg3.length
            mem[(32 * arg3.length) + (32 * arg4.length) + 544 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + (32 * arg4.length) + 480] = (32 * arg3.length) + 160
            mem[(64 * arg3.length) + (32 * arg4.length) + 544] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + 576 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + 608] = 4
            mem[(64 * arg4.length) + (64 * arg3.length) + 640] = 64
            mem[(64 * arg4.length) + (64 * arg3.length) + 672] = (32 * arg4.length) + (32 * arg3.length) + 192
            mem[(64 * arg4.length) + (64 * arg3.length) + 704 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6] = mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6]
            if not (32 * arg4.length) + (32 * arg3.length) + 192 % 32:
                mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9] = mem[(64 * arg4.length) + (64 * arg3.length) + 608 len floor32((160 * arg4.length) + (128 * arg3.length) + 31) + 9]
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=(160 * arg4.length) + (128 * arg3.length) + 288, data=mem[(98 * arg4.length) + (98 * arg3.length) + 1028 len (160 * arg4.length) + (128 * arg3.length) + 288])
            else:
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 704] = mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + -((32 * arg4.length) + (32 * arg3.length) + 192 % 32) + 736 len (32 * arg4.length) + (32 * arg3.length) + 192 % 32]
                mem[(64 * arg4.length) + (64 * arg3.length) + 576] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 736] = 0xcae9ca5100000000000000000000000000000000000000000000000000000000
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 740] = stakingAddress
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 772] = s
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 804] = 96
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 836] = floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128
                mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + 4] = 4, Array(len=(32 * arg4.length) + (32 * arg3.length) + 192, data=mem[(32 * arg3.length) + (32 * arg4.length) + 384 len floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 6], mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 31) + 710 len floor32(floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 31) + -floor32((32 * arg4.length) + (32 * arg3.length) + 31) - 98])
                require ext_code.size(erc20Address)
                call erc20Address.0xcae9ca51 with:
                     gas gas_remaining wei
                    args stakingAddress, s, Array(len=floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128, data=mem[floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (64 * arg4.length) + (64 * arg3.length) + 868 len floor32((32 * arg4.length) + (32 * arg3.length) + 192) + (127 * arg4.length) + (95 * arg3.length) + 128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x42e7044c: arg1, msg.sender, address(arg2), s
}



}
