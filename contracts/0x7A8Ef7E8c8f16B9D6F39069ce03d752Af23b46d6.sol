contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 5815]
}



// =====================  Runtime code  =====================


address owner;
mapping of address tokens2owners;
array of address owners2tokens;
mapping of address tmpAddr2contractAddr;

function tmpAddr2contractAddr(address arg1) {
    return tmpAddr2contractAddr[arg1]
}

function owner() {
    return owner
}

function owners2tokens(address arg1, uint256 arg2) {
    require arg2 < uint256(owners2tokens[arg1])
    return address(owners2tokens[arg1][arg2])
}

function tokens2owners(address arg1) {
    return tokens2owners[arg1]
}

function _fallback() payable {
    revert
}

function createContract(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    require owner == msg.sender
    mem[ceil32(arg4.length) + 128 len 3550] = code.data[2222 len 3550]
    mem[ceil32(arg4.length) + 3902 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + 3902] = 0
    create contract with 0 wei
                    code: code.data[2222 len 3550], address(arg1), arg3, 192, arg4.length + 224, 0, msg.sender, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 3902 len arg4.length + -ceil32(arg4.length) + 64]
    require create.new_address
    tokens2owners[address(create.new_address)] = arg1
    uint256(owners2tokens[address(arg1)])++
    if not uint256(owners2tokens[address(arg1)]) <= uint256(owners2tokens[address(arg1)]) + 1:
        idx = uint256(owners2tokens[address(arg1)]) + 1
        while uint256(owners2tokens[address(arg1)]) > idx:
            uint256(owners2tokens[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    address(owners2tokens[address(arg1)][uint256(owners2tokens[address(arg1)])]) = address(create.new_address)
    tmpAddr2contractAddr[address(arg2)] = address(create.new_address)
    emit evntCreateContract(address(arg2), address(create.new_address), address(arg1), msg.sender, arg3, Array(len=arg4.length, data=arg4[all]));
}



}
