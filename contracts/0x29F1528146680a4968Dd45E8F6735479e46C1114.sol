contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_503fa44f;
mapping of uint256 sub_7706bd26;
mapping of uint256 sub_8f07902d;
mapping of address stor4;

function sub_503fa44f(?) {
    require calldata.size - 4 >= 64
    return sub_503fa44f[arg1][arg2]
}

function sub_7706bd26(?) {
    require calldata.size - 4 >= 32
    return sub_7706bd26[arg1]
}

function owner() {
    return owner
}

function sub_8f07902d(?) {
    require calldata.size - 4 >= 32
    return sub_8f07902d[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b12d67ce(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 <= arg2:
        sub_7706bd26[arg2][arg1] = arg3
    else:
        sub_7706bd26[arg1][arg2] = arg3
    emit 0xf18bcf2d: address(arg1), address(arg2), arg3
}

function sub_175fd1f0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x17d7de7c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4[ext_call.return_data[0]] = arg1
}

function sub_1fdfda5e(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 <= arg2:
        sub_7706bd26[arg2][arg1] = 0
        sub_503fa44f[address(arg1)][address(arg2)] = 0
        sub_503fa44f[address(arg2)][address(arg1)] = 0
        sub_8f07902d[arg2][arg1] = block.number
    else:
        sub_7706bd26[arg1][arg2] = 0
        sub_503fa44f[address(arg1)][address(arg2)] = 0
        sub_503fa44f[address(arg2)][address(arg1)] = 0
        sub_8f07902d[arg1][arg2] = block.number
    emit 0x19c79cdd: address(arg1), arg2
}

function sub_d6c6d908(?) {
    require calldata.size - 4 >= 64
    if arg1 <= arg2:
        if not sub_8f07902d[arg2][arg1]:
            return bool(sub_8f07902d[arg2][arg1])
        require sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] >= sub_8f07902d[arg2][arg1]
        return (sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] > block.number)
    if not sub_8f07902d[arg1][arg2]:
        return bool(sub_8f07902d[arg1][arg2])
    require sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] >= sub_8f07902d[arg1][arg2]
    return (sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] > block.number)
}

function sub_de378f38(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    if arg2 == arg1:
        revert with 0, 'identical'
    if arg3 <= 0:
        revert with 0, 'fromTo 0'
    if arg4 <= 0:
        revert with 0, 'toFrom 0'
    if not arg1:
        revert with 0, 'currA zero'
    if not arg2:
        revert with 0, 'currB zero'
    sub_503fa44f[address(arg1)][address(arg2)] = arg3
    sub_503fa44f[address(arg2)][address(arg1)] = arg4
    if arg1 <= arg2:
        sub_8f07902d[arg2][arg1] = block.number
        emit 0xd6efc340: address(arg1), address(arg2), arg3, arg4, sub_8f07902d[arg2][arg1]
    else:
        sub_8f07902d[arg1][arg2] = block.number
        emit 0xd6efc340: address(arg1), address(arg2), arg3, arg4, sub_8f07902d[arg1][arg2]
}

function getExchangeRate(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'currA zero'
    if not arg2:
        revert with 0, 'currB zero'
    if arg2 == arg1:
        revert with 0, 'identical'
    if sub_503fa44f[address(arg1)][address(arg2)] <= 0:
        revert with 0, 'exchange rate 0'
    if arg1 <= arg2:
        if not sub_8f07902d[arg2][arg1]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] >= sub_8f07902d[arg2][arg1]
        if sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] <= block.number:
            revert with 0, 'outdated1'
    else:
        if not sub_8f07902d[arg1][arg2]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] >= sub_8f07902d[arg1][arg2]
        if sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] <= block.number:
            revert with 0, 'outdated1'
    return sub_503fa44f[address(arg1)][address(arg2)]
}

function convert(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'currA zero'
    if not arg2:
        revert with 0, 'currB zero'
    if arg2 == arg1:
        revert with 0, 'identical'
    if sub_503fa44f[address(arg1)][address(arg2)] <= 0:
        revert with 0, 'exchange rate 0'
    if arg1 <= arg2:
        if not sub_8f07902d[arg2][arg1]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] >= sub_8f07902d[arg2][arg1]
        if sub_7706bd26[arg2][arg1] + sub_8f07902d[arg2][arg1] <= block.number:
            revert with 0, 'outdated1'
    else:
        if not sub_8f07902d[arg1][arg2]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] >= sub_8f07902d[arg1][arg2]
        if sub_7706bd26[arg1][arg2] + sub_8f07902d[arg1][arg2] <= block.number:
            revert with 0, 'outdated1'
    if sub_503fa44f[address(arg1)][address(arg2)] <= 0:
        revert with 0, 'exchangeRate 0'
    require ext_code.size(0x1c290826b62cabba80caf05015044903cc9ae97d)
    delegate 0x1c290826b62cabba80caf05015044903cc9ae97d.0x9f23d94c with:
         gas gas_remaining wei
        args arg3, sub_503fa44f[address(arg1)][address(arg2)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_58257cd0(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'currA zero'
    if not stor4[arg2]:
        revert with 0, 'currB zero'
    if stor4[arg2] == arg1:
        revert with 0, 'identical'
    if sub_503fa44f[address(arg1)][stor4[arg2]] <= 0:
        revert with 0, 'exchange rate 0'
    if arg1 <= stor4[arg2]:
        if not sub_8f07902d[stor4[arg2]][arg1]:
            revert with 0, 'outdated1'
        require sub_7706bd26[stor4[arg2]][arg1] + sub_8f07902d[stor4[arg2]][arg1] >= sub_8f07902d[stor4[arg2]][arg1]
        if sub_7706bd26[stor4[arg2]][arg1] + sub_8f07902d[stor4[arg2]][arg1] <= block.number:
            revert with 0, 'outdated1'
    else:
        if not sub_8f07902d[arg1][stor4[arg2]]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg1][stor4[arg2]] + sub_8f07902d[arg1][stor4[arg2]] >= sub_8f07902d[arg1][stor4[arg2]]
        if sub_7706bd26[arg1][stor4[arg2]] + sub_8f07902d[arg1][stor4[arg2]] <= block.number:
            revert with 0, 'outdated1'
    if sub_503fa44f[address(arg1)][stor4[arg2]] <= 0:
        revert with 0, 'exchangeRate 0'
    require ext_code.size(0x1c290826b62cabba80caf05015044903cc9ae97d)
    delegate 0x1c290826b62cabba80caf05015044903cc9ae97d.0x9f23d94c with:
         gas gas_remaining wei
        args arg3, sub_503fa44f[address(arg1)][stor4[arg2]]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_d09394f8(?) {
    require calldata.size - 4 >= 96
    if not stor4[arg1]:
        revert with 0, 'currA zero'
    if not arg2:
        revert with 0, 'currB zero'
    if arg2 == stor4[arg1]:
        revert with 0, 'identical'
    if sub_503fa44f[stor4[arg1]][address(arg2)] <= 0:
        revert with 0, 'exchange rate 0'
    if stor4[arg1] <= arg2:
        if not sub_8f07902d[arg2][stor4[arg1]]:
            revert with 0, 'outdated1'
        require sub_7706bd26[arg2][stor4[arg1]] + sub_8f07902d[arg2][stor4[arg1]] >= sub_8f07902d[arg2][stor4[arg1]]
        if sub_7706bd26[arg2][stor4[arg1]] + sub_8f07902d[arg2][stor4[arg1]] <= block.number:
            revert with 0, 'outdated1'
    else:
        if not sub_8f07902d[stor4[arg1]][arg2]:
            revert with 0, 'outdated1'
        require sub_7706bd26[stor4[arg1]][arg2] + sub_8f07902d[stor4[arg1]][arg2] >= sub_8f07902d[stor4[arg1]][arg2]
        if sub_7706bd26[stor4[arg1]][arg2] + sub_8f07902d[stor4[arg1]][arg2] <= block.number:
            revert with 0, 'outdated1'
    if sub_503fa44f[stor4[arg1]][address(arg2)] <= 0:
        revert with 0, 'exchangeRate 0'
    require ext_code.size(0x1c290826b62cabba80caf05015044903cc9ae97d)
    delegate 0x1c290826b62cabba80caf05015044903cc9ae97d.0x9f23d94c with:
         gas gas_remaining wei
        args arg3, sub_503fa44f[stor4[arg1]][address(arg2)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_505f5471(?) {
    require calldata.size - 4 >= 96
    if not stor4[arg1]:
        revert with 0, 'currA zero'
    if not stor4[arg2]:
        revert with 0, 'currB zero'
    if stor4[arg2] == stor4[arg1]:
        revert with 0, 'identical'
    if sub_503fa44f[stor4[arg1]][stor4[arg2]] <= 0:
        revert with 0, 'exchange rate 0'
    if stor4[arg1] <= stor4[arg2]:
        if not sub_8f07902d[stor4[arg2]][stor4[arg1]]:
            revert with 0, 'outdated1'
        require sub_7706bd26[stor4[arg2]][stor4[arg1]] + sub_8f07902d[stor4[arg2]][stor4[arg1]] >= sub_8f07902d[stor4[arg2]][stor4[arg1]]
        if sub_7706bd26[stor4[arg2]][stor4[arg1]] + sub_8f07902d[stor4[arg2]][stor4[arg1]] <= block.number:
            revert with 0, 'outdated1'
    else:
        if not sub_8f07902d[stor4[arg1]][stor4[arg2]]:
            revert with 0, 'outdated1'
        require sub_7706bd26[stor4[arg1]][stor4[arg2]] + sub_8f07902d[stor4[arg1]][stor4[arg2]] >= sub_8f07902d[stor4[arg1]][stor4[arg2]]
        if sub_7706bd26[stor4[arg1]][stor4[arg2]] + sub_8f07902d[stor4[arg1]][stor4[arg2]] <= block.number:
            revert with 0, 'outdated1'
    if sub_503fa44f[stor4[arg1]][stor4[arg2]] <= 0:
        revert with 0, 'exchangeRate 0'
    require ext_code.size(0x1c290826b62cabba80caf05015044903cc9ae97d)
    delegate 0x1c290826b62cabba80caf05015044903cc9ae97d.0x9f23d94c with:
         gas gas_remaining wei
        args arg3, sub_503fa44f[stor4[arg1]][stor4[arg2]]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
