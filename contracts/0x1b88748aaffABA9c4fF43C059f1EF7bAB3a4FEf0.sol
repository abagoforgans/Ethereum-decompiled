contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 stor3EC;
uint256 stor3F0;

function totalSupply() {
    return totalSupply
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return stor[sha3(address(arg1), address(arg2) << 64, 1002)]
}

function _fallback() payable {
    revert
}

function sub_0f947fb7(?) {
    require calldata.size - 4 >= 64
    return sha3(address(arg1), address(arg2) << 64, 1002)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid spender address.'
    if not stor3F0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Backward compatibility with ERC-20 standard is not configured'
    if stor[sha3(stor3F0, Mask(224, 32, msg.sender) >> 32, 1003)] < arg2:
        revert with 0, 'Insufficiency funds on the balance'
    stor[sha3(msg.sender, address(arg1) << 64, 1002)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < stor3EC:
        _11 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_11 + 32] = idx
        mem[_11 + 64] = 1004
        _13 = sha3(mem[_11 + 32 len mem[_11]])
        mem[_11 + 96] = 92
        mem[64] = _11 + 224
        mem[_11 + 128] = stor[_13]
        mem[_11 + 160] = arg1
        mem[_11 + 188] = 1003
        require s + stor[sha3(stor[_13], address(arg1) << 64, 1003)] >= s
        idx = idx + 1
        s = stor[sha3(stor[_13], address(arg1) << 64, 1003)]
        s = stor[_13]
        s = sha3(stor[_13], address(arg1) << 64, 1003)
        s = _13
        s = stor[sha3(stor[_13], address(arg1) << 64, 1003)] + s
        continue 
    return (stor[_16] * stor3EC)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid recipient address'
    if arg2 <= 0:
        revert with 0, 'Invalid number of the tokens'
    if not stor3F0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Backward compatibility with ERC-20 standard is not configured'
    if stor[sha3(stor3F0, Mask(224, 32, msg.sender) >> 32, 1003)] < arg2:
        revert with 0, 'Insufficiency funds on the balance'
    require stor[sha3(stor3F0, address(arg1) << 64, 1003)] < stor[sha3(stor3F0, address(arg1) << 64, 1003)] + arg2
    stor[sha3(stor3F0, Mask(224, 32, msg.sender) >> 32, 1003)] -= arg2
    stor[sha3(stor3F0, address(arg1) << 64, 1003)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg2,
                             128,
                             160,
                             0,
                             0,
                             stor3F0,
                             msg.sender,
                             arg1,
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Invalid recipient address'
    if arg3 <= 0:
        revert with 0, 'Invalid number of the tokens'
    if stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] < arg3:
        revert with 0, 'Transfer not allowed'
    if not stor3F0:
        revert with 0, 'Backward compatibility with ERC-20 standard is not configured'
    if stor[sha3(stor3F0, address(arg1) << 64, 1003)] < arg3:
        revert with 0, 'Insufficiency funds on the balance'
    require stor[sha3(stor3F0, address(arg2) << 64, 1003)] < stor[sha3(stor3F0, address(arg2) << 64, 1003)] + arg3
    stor[sha3(stor3F0, address(arg1) << 64, 1003)] -= arg3
    stor[sha3(stor3F0, address(arg2) << 64, 1003)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             stor3F0,
                             arg1,
                             arg2,
    stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] -= arg3
    return 1
}



}
