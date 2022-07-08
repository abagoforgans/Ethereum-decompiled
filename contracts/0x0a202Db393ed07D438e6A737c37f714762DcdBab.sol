contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of uint256 lastAnchor;

function getLastAnchor() payable {
    return lastAnchor[0 len lastAnchor.length]
}

function remove() payable {
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender not authorized.'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_d0863950(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender not authorized.'
    stor1[address(arg1)] = 1
}

function sub_ed255efa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Sender not authorized.'
    if arg1.length >= 200:
        revert with 0, 'The anchor string is too long.'
    lastAnchor[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xba053908: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit 0xba053908: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
