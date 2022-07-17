contract main {




// =====================  Runtime code  =====================


const decimals = 8

const getBalanceContract = eth.balance(this.address)

const INITIAL_SUPPLY = 10^15


uint256 totSupply;
mapping of uint256 balances;
address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint256 sub_d0bd4c73;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function totSupply() {
    return totSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d0bd4c73(?) {
    return sub_d0bd4c73
}

function _fallback() payable {
    revert
}

function setTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d0bd4c73 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require totSupply + arg1 >= totSupply
    totSupply += arg1
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    emit 0x7de7bba7: arg1, totSupply, 128, 192, 7, 'success', 23, 'Increase supply success'
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    if arg2 <= 0:
        return 0
    if balances[address(msg.sender)] <= arg2:
        return 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > balances[address(msg.sender)]:
        emit 0xcd7e5358: arg1, balances[address(msg.sender)], 128, 192, 6, 'failed', 55, 'Decrease supply failed, token su', 'pply smaller than value'
    else:
        if balances[address(msg.sender)] <= 0:
            emit 0xcd7e5358: arg1, balances[address(msg.sender)], 128, 192, 6, 'failed', 49, 'Decrease supply failed, current ', 'token supply is 0'
        else:
            require arg1 <= totSupply
            totSupply -= arg1
            require arg1 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            emit 0xcd7e5358: arg1, totSupply, 128, 192, 7, 'success', 23, 'Decrease supply success'
}

function sub_cd7fce1a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xfd946bfe: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit 0xfd946bfe: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}

function sub_8e43efe3(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == owner
    if arg3 <= 0:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 544 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 384, 6, 'failed', 66, 'Transfer balance v1 failed, bala', 'nce not enough or amount not val', 'id', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 544] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 576 len arg4.length % 32]
            emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 384, 6, 'failed', 66, 'Transfer balance v1 failed, bala', 'nce not enough or amount not val', 'id', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 544 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    else:
        if balances[address(arg1)] < arg3:
            mem[ceil32(arg4.length) + 128] = arg1
            mem[ceil32(arg4.length) + 160] = arg2
            mem[ceil32(arg4.length) + 544 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 384, 6, 'failed', 66, 'Transfer balance v1 failed, bala', 'nce not enough or amount not val', 'id', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 544] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 576 len arg4.length % 32]
                emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 384, 6, 'failed', 66, 'Transfer balance v1 failed, bala', 'nce not enough or amount not val', 'id', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 544 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
        else:
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            mem[ceil32(arg4.length) + 128] = arg3
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                          arg1,
                          arg2,
            mem[ceil32(arg4.length) + 128] = arg1
            mem[ceil32(arg4.length) + 160] = arg2
            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 352, 7, 'success', 46, 'Transfer balance v1 success, no ', 'problems found', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
                emit 0x274a09bb: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3, 192, 256, 352, 7, 'success', 46, 'Transfer balance v1 success, no ', 'problems found', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 512 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
}

function sub_c435802d(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require msg.sender == owner
    if arg4 <= 0:
        mem[ceil32(arg5.length) + 128] = arg1
        mem[ceil32(arg5.length) + 160] = arg2
        mem[ceil32(arg5.length) + 576 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 416, 6, 'failed', 74, 'Direct transfer v1 failed, _send', 'er1 balance not enough or amount', ' not valid', arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
        else:
            mem[floor32(arg5.length) + ceil32(arg5.length) + 576] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 608 len arg5.length % 32]
            emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 416, 6, 'failed', 74, 'Direct transfer v1 failed, _send', 'er1 balance not enough or amount', ' not valid', arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 576 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
    else:
        if balances[address(arg1)] < arg4:
            mem[ceil32(arg5.length) + 128] = arg1
            mem[ceil32(arg5.length) + 160] = arg2
            mem[ceil32(arg5.length) + 576 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 416, 6, 'failed', 74, 'Direct transfer v1 failed, _send', 'er1 balance not enough or amount', ' not valid', arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 576] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 608 len arg5.length % 32]
                emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 416, 6, 'failed', 74, 'Direct transfer v1 failed, _send', 'er1 balance not enough or amount', ' not valid', arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 576 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
        else:
            require arg4 <= balances[address(arg1)]
            balances[address(arg1)] -= arg4
            require balances[address(arg2)] + arg4 >= balances[address(arg2)]
            balances[address(arg2)] += arg4
            mem[ceil32(arg5.length) + 128] = arg4
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                          mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)],
                          arg1,
                          arg2,
            require arg4 <= balances[address(arg2)]
            balances[address(arg2)] -= arg4
            require balances[address(arg3)] + arg4 >= balances[address(arg3)]
            balances[address(arg3)] += arg4
            mem[ceil32(arg5.length) + 128] = arg4
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                          mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)],
                          arg2,
                          arg3,
            mem[ceil32(arg5.length) + 128] = arg1
            mem[ceil32(arg5.length) + 160] = arg2
            mem[ceil32(arg5.length) + 544 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 384, 7, 'success', 45, 'Direct transfer V1 success, no p', 'roblems found', arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 544] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 576 len arg5.length % 32]
                emit 0x86d11dd7: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len ceil32(arg5.length) + -arg5.length + 32], address(arg3), arg4, 224, 288, 384, 7, 'success', 45, 'Direct transfer V1 success, no p', 'roblems found', arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 544 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
}

function sub_be1ca4da(?) {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[128 len arg7.length] = arg7[all]
    mem[arg7.length + 128] = 0
    require msg.sender == owner
    if arg4 <= 0:
        mem[ceil32(arg7.length) + 128] = arg1
        mem[ceil32(arg7.length) + 160] = arg2
        mem[ceil32(arg7.length) + 640 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256
        else:
            mem[floor32(arg7.length) + ceil32(arg7.length) + 640] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 672 len arg7.length % 32]
            emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 640 len floor32(arg7.length) + -ceil32(arg7.length) + 32]
    else:
        if arg5 <= 0:
            mem[ceil32(arg7.length) + 128] = arg1
            mem[ceil32(arg7.length) + 160] = arg2
            mem[ceil32(arg7.length) + 640 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
            if not arg7.length % 32:
                emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256
            else:
                mem[floor32(arg7.length) + ceil32(arg7.length) + 640] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 672 len arg7.length % 32]
                emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 640 len floor32(arg7.length) + -ceil32(arg7.length) + 32]
        else:
            if arg6 <= 0:
                mem[ceil32(arg7.length) + 128] = arg1
                mem[ceil32(arg7.length) + 160] = arg2
                mem[ceil32(arg7.length) + 640 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
                if not arg7.length % 32:
                    emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256
                else:
                    mem[floor32(arg7.length) + ceil32(arg7.length) + 640] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 672 len arg7.length % 32]
                    emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 640 len floor32(arg7.length) + -ceil32(arg7.length) + 32]
            else:
                if balances[address(arg1)] < arg4:
                    mem[ceil32(arg7.length) + 128] = arg1
                    mem[ceil32(arg7.length) + 160] = arg2
                    mem[ceil32(arg7.length) + 640 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
                    if not arg7.length % 32:
                        emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256
                    else:
                        mem[floor32(arg7.length) + ceil32(arg7.length) + 640] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 672 len arg7.length % 32]
                        emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 480, 6, 'failed', 66, 'Transfer balance v2 failed, bala', 'nce not enough or amount not val', 'id', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 640 len floor32(arg7.length) + -ceil32(arg7.length) + 32]
                else:
                    require arg5 <= balances[address(arg1)]
                    balances[address(arg1)] -= arg5
                    require balances[address(arg2)] + arg5 >= balances[address(arg2)]
                    balances[address(arg2)] += arg5
                    mem[ceil32(arg7.length) + 128] = arg5
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0),
                                  mem[arg7.length + 160 len -arg7.length + ceil32(arg7.length)],
                                  arg1,
                                  arg2,
                    require arg6 <= balances[address(arg1)]
                    balances[address(arg1)] -= arg6
                    require balances[address(arg3)] + arg6 >= balances[address(arg3)]
                    balances[address(arg3)] += arg6
                    mem[ceil32(arg7.length) + 128] = arg6
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0),
                                  mem[arg7.length + 160 len -arg7.length + ceil32(arg7.length)],
                                  arg1,
                                  arg3,
                    mem[ceil32(arg7.length) + 128] = arg1
                    mem[ceil32(arg7.length) + 160] = arg2
                    mem[ceil32(arg7.length) + 608 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
                    if not arg7.length % 32:
                        emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 448, 7, 'success', 46, 'Transfer balance v2 success, no ', 'problems found', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256
                    else:
                        mem[floor32(arg7.length) + ceil32(arg7.length) + 608] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 640 len arg7.length % 32]
                        emit 0x691b9f53: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], address(arg3), arg4, arg5, arg6, 288, 352, 448, 7, 'success', 46, 'Transfer balance v2 success, no ', 'problems found', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 608 len floor32(arg7.length) + -ceil32(arg7.length) + 32]
}

function sub_653679f1(?) {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[128 len arg8.length] = arg8[all]
    mem[arg8.length + 128] = 0
    require msg.sender == owner
    if arg5 <= 0:
        mem[ceil32(arg8.length) + 128] = arg1
        mem[ceil32(arg8.length) + 160] = arg2
        mem[ceil32(arg8.length) + 672 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
        if not arg8.length % 32:
            emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256
        else:
            mem[floor32(arg8.length) + ceil32(arg8.length) + 672] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 704 len arg8.length % 32]
            emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 672 len floor32(arg8.length) + -ceil32(arg8.length) + 32]
    else:
        if arg6 <= 0:
            mem[ceil32(arg8.length) + 128] = arg1
            mem[ceil32(arg8.length) + 160] = arg2
            mem[ceil32(arg8.length) + 672 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
            if not arg8.length % 32:
                emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256
            else:
                mem[floor32(arg8.length) + ceil32(arg8.length) + 672] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 704 len arg8.length % 32]
                emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 672 len floor32(arg8.length) + -ceil32(arg8.length) + 32]
        else:
            if arg7 <= 0:
                mem[ceil32(arg8.length) + 128] = arg1
                mem[ceil32(arg8.length) + 160] = arg2
                mem[ceil32(arg8.length) + 672 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
                if not arg8.length % 32:
                    emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256
                else:
                    mem[floor32(arg8.length) + ceil32(arg8.length) + 672] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 704 len arg8.length % 32]
                    emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 672 len floor32(arg8.length) + -ceil32(arg8.length) + 32]
            else:
                if balances[address(arg1)] < arg5:
                    mem[ceil32(arg8.length) + 128] = arg1
                    mem[ceil32(arg8.length) + 160] = arg2
                    mem[ceil32(arg8.length) + 672 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
                    if not arg8.length % 32:
                        emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256
                    else:
                        mem[floor32(arg8.length) + ceil32(arg8.length) + 672] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 704 len arg8.length % 32]
                        emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 512, 6, 'failed', 74, 'Direct transfer v2 failed, _send', 'er1 balance not enough or amount', ' not valid', arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 672 len floor32(arg8.length) + -ceil32(arg8.length) + 32]
                else:
                    require arg5 <= balances[address(arg1)]
                    balances[address(arg1)] -= arg5
                    require balances[address(arg2)] + arg5 >= balances[address(arg2)]
                    balances[address(arg2)] += arg5
                    mem[ceil32(arg8.length) + 128] = arg5
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0),
                                  mem[arg8.length + 160 len -arg8.length + ceil32(arg8.length)],
                                  arg1,
                                  arg2,
                    require arg6 <= balances[address(arg2)]
                    balances[address(arg2)] -= arg6
                    require balances[address(arg3)] + arg6 >= balances[address(arg3)]
                    balances[address(arg3)] += arg6
                    mem[ceil32(arg8.length) + 128] = arg6
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0),
                                  mem[arg8.length + 160 len -arg8.length + ceil32(arg8.length)],
                                  arg2,
                                  arg3,
                    require arg7 <= balances[address(arg2)]
                    balances[address(arg2)] -= arg7
                    require balances[address(arg4)] + arg7 >= balances[address(arg4)]
                    balances[address(arg4)] += arg7
                    mem[ceil32(arg8.length) + 128] = arg7
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0),
                                  mem[arg8.length + 160 len -arg8.length + ceil32(arg8.length)],
                                  arg2,
                                  arg4,
                    mem[ceil32(arg8.length) + 128] = arg1
                    mem[ceil32(arg8.length) + 160] = arg2
                    mem[ceil32(arg8.length) + 640 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
                    if not arg8.length % 32:
                        emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 480, 7, 'success', 45, 'Direct transfer V2 success, no p', 'roblems found', arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256
                    else:
                        mem[floor32(arg8.length) + ceil32(arg8.length) + 640] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 672 len arg8.length % 32]
                        emit 0xd3c551ae: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, 320, 384, 480, 7, 'success', 45, 'Direct transfer V2 success, no p', 'roblems found', arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 640 len floor32(arg8.length) + -ceil32(arg8.length) + 32]
}

function sub_36b44f8a(?) {
    require calldata.size - 4 >= 288
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    mem[128 len arg9.length] = arg9[all]
    mem[arg9.length + 128] = 0
    require msg.sender == owner
    if arg5 <= 0:
        mem[ceil32(arg9.length) + 128] = arg1
        mem[ceil32(arg9.length) + 160] = arg2
        mem[ceil32(arg9.length) + 704 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
        if not arg9.length % 32:
            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
        else:
            mem[floor32(arg9.length) + ceil32(arg9.length) + 704] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 736 len arg9.length % 32]
            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 704 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
    else:
        if arg6 <= 0:
            mem[ceil32(arg9.length) + 128] = arg1
            mem[ceil32(arg9.length) + 160] = arg2
            mem[ceil32(arg9.length) + 704 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
            if not arg9.length % 32:
                emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
            else:
                mem[floor32(arg9.length) + ceil32(arg9.length) + 704] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 736 len arg9.length % 32]
                emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 704 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
        else:
            if arg7 <= 0:
                mem[ceil32(arg9.length) + 128] = arg1
                mem[ceil32(arg9.length) + 160] = arg2
                mem[ceil32(arg9.length) + 704 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
                if not arg9.length % 32:
                    emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
                else:
                    mem[floor32(arg9.length) + ceil32(arg9.length) + 704] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 736 len arg9.length % 32]
                    emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 704 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
            else:
                if arg8 <= 0:
                    mem[ceil32(arg9.length) + 128] = arg1
                    mem[ceil32(arg9.length) + 160] = arg2
                    mem[ceil32(arg9.length) + 704 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
                    if not arg9.length % 32:
                        emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
                    else:
                        mem[floor32(arg9.length) + ceil32(arg9.length) + 704] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 736 len arg9.length % 32]
                        emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 704 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
                else:
                    if balances[address(arg1)] < arg5:
                        mem[ceil32(arg9.length) + 128] = arg1
                        mem[ceil32(arg9.length) + 160] = arg2
                        mem[ceil32(arg9.length) + 704 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
                        if not arg9.length % 32:
                            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
                        else:
                            mem[floor32(arg9.length) + ceil32(arg9.length) + 704] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 736 len arg9.length % 32]
                            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 544, 6, 'failed', 66, 'Transfer balance v3 failed, bala', 'nce not enough or amount not val', 'id', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 704 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
                    else:
                        require arg6 <= balances[address(arg1)]
                        balances[address(arg1)] -= arg6
                        require balances[address(arg2)] + arg6 >= balances[address(arg2)]
                        balances[address(arg2)] += arg6
                        mem[ceil32(arg9.length) + 128] = arg6
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0),
                                      mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)],
                                      arg1,
                                      arg2,
                        require arg7 <= balances[address(arg1)]
                        balances[address(arg1)] -= arg7
                        require balances[address(arg3)] + arg7 >= balances[address(arg3)]
                        balances[address(arg3)] += arg7
                        mem[ceil32(arg9.length) + 128] = arg7
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0),
                                      mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)],
                                      arg1,
                                      arg3,
                        require arg8 <= balances[address(arg1)]
                        balances[address(arg1)] -= arg8
                        require balances[address(arg4)] + arg8 >= balances[address(arg4)]
                        balances[address(arg4)] += arg8
                        mem[ceil32(arg9.length) + 128] = arg8
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0),
                                      mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)],
                                      arg1,
                                      arg4,
                        mem[ceil32(arg9.length) + 128] = arg1
                        mem[ceil32(arg9.length) + 160] = arg2
                        mem[ceil32(arg9.length) + 672 len ceil32(arg9.length)] = arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]
                        if not arg9.length % 32:
                            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 512, 7, 'success', 46, 'Transfer balance v3 success, no ', 'problems found', arg9.length, Mask(8 * arg9.length, -(8 * arg9.length) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * arg9.length) - 256
                        else:
                            mem[floor32(arg9.length) + ceil32(arg9.length) + 672] = mem[floor32(arg9.length) + ceil32(arg9.length) + -(arg9.length % 32) + 704 len arg9.length % 32]
                            emit 0x855c3b6a: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], address(arg3), address(arg4), arg5, arg6, arg7, arg8, 352, 416, 512, 7, 'success', 46, 'Transfer balance v3 success, no ', 'problems found', arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], mem[arg9.length + 128 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256, mem[(2 * ceil32(arg9.length)) + 672 len floor32(arg9.length) + -ceil32(arg9.length) + 32]
}



}
