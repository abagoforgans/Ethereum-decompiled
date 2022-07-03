contract main {




// =====================  Runtime code  =====================


const decimals = 8

const getBalanceContract = eth.balance(this.address)

const INITIAL_SUPPLY = 10^14


uint256 totSupply;
mapping of uint256 balances;
address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
address sub_0666b66bAddress;
uint256 tokensold;
uint256 sub_d0bd4c73;

function sub_0666b66b(?) {
    return sub_0666b66bAddress
}

function name() {
    return name[0 len name.length]
}

function sub_180d5314(?) {
    require msg.sender == owner
    return tokensold
}

function totalSupply() {
    return totSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function tokensold() {
    return tokensold
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

function newOwner() {
    return newOwner
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
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
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

function sub_a41d5e02(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require totSupply + arg1 >= totSupply
    totSupply += arg1
    require balances[stor2] + arg1 >= balances[stor2]
    balances[stor2] += arg1
    emit Transfer(arg1, 0, msg.sender);
    emit 0x7de7bba7: arg1, balances[address(msg.sender)], 128, 192, 7, 'success', 23, 'Increase supply success'
}

function transferBalance(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg3 <= 0:
        return 0
    if balances[address(arg1)] < arg3:
        return 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
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
            emit 0xcd7e5358: arg1, balances[address(msg.sender)], 128, 192, 7, 'success', 23, 'Decrease supply success'
}

function sub_8aa64531(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if balances[address(arg1)] < arg3:
        emit 0x6010a118: arg3, address(arg1), address(arg2), 160, 224, 6, 'failed', 52, 'Harvest transaction failed, paye', 'r balance not enough'
    else:
        require msg.sender == owner
        if arg3 > 0:
            if balances[address(arg1)] >= arg3:
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
        emit 0x6010a118: arg3, address(arg1), address(arg2), 160, 224, 7, 'success', 46, 'Harvest transaction success, no ', 'problems found'
}

function sub_4b9d5e69(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if balances[address(arg1)] < arg3:
        emit 0xe75602b3: arg3, address(arg1), address(arg2), 160, 224, 6, 'failed', 52, 'Pay surveyor transaction, Alumni', 'a balance not enough'
    else:
        require msg.sender == owner
        if arg3 > 0:
            if balances[address(arg1)] >= arg3:
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
        emit 0xe75602b3: arg3, address(arg1), address(arg2), 160, 224, 7, 'success', 51, 'Pay surveyor transaction success', ', no problems found'
}

function sub_e28ad733(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if balances[address(arg1)] < arg2:
        emit 0xde074aba: arg2, 96, 160, 6, 'failed', 43, 'Min balance failed, user balance', ' not enough', arg1
    else:
        require msg.sender == owner
        if arg2 > 0:
            if balances[address(arg1)] >= arg2:
                require arg2 <= balances[address(arg1)]
                balances[address(arg1)] -= arg2
                require balances[address(msg.sender)] + arg2 >= balances[address(msg.sender)]
                balances[address(msg.sender)] += arg2
                emit Transfer(arg2, arg1, msg.sender);
            require arg2 <= tokensold
        tokensold -= arg2
        emit 0xde074aba: arg2, 96, 160, 7, 'success', 38, 'Min balance success, no problems', ' found', arg1
}

function sub_866c2644(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if balances[address(arg2)] < arg3:
        emit 0xb6f0c5c3: arg3, address(arg2), address(arg1), 160, 224, 6, 'failed', 74, 'Profit sharing transaction for i', 'nvestor failed, project balance ', 'not enough'
    else:
        require msg.sender == owner
        if arg3 > 0:
            if balances[address(arg2)] >= arg3:
                require arg3 <= balances[address(arg2)]
                balances[address(arg2)] -= arg3
                require balances[address(arg1)] + arg3 >= balances[address(arg1)]
                balances[address(arg1)] += arg3
                emit Transfer(arg3, arg2, arg1);
        emit 0xb6f0c5c3: arg3, address(arg2), address(arg1), 160, 224, 7, 'success', 66, 'Profit sharing transaction for i', 'nvestor success, no problems fou', 'nd'
}

function addBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require tokensold + arg2 >= tokensold
    if tokensold + arg2 > totSupply:
        emit 0xe360a545: arg2, 96, 160, 6, 'failed', 23, 'Token supply not enough', arg1
    else:
        if balances[stor2] < arg2:
            emit 0xe360a545: arg2, 96, 160, 6, 'failed', 44, 'Add balance failed, owner balanc', 'e not enough', arg1
        else:
            require calldata.size >= 68
            if arg2 > 0:
                if balances[address(msg.sender)] > arg2:
                    require arg2 <= balances[address(msg.sender)]
                    balances[address(msg.sender)] -= arg2
                    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
                    balances[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
            require tokensold + arg2 >= tokensold
            tokensold += arg2
            emit 0xe360a545: arg2, 96, 160, 7, 'success', 38, 'Add balance success, no problems', ' found', arg1
}

function sub_173d07ed(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    if balances[address(arg2)] < arg1:
        emit 0x427a6f4b: address(arg2), arg1, arg5, arg6, 192, 256, 6, 'failed', 54, 'Invest transaction failed, inves', 'tor balance not enough'
    else:
        require msg.sender == owner
        if arg5 > 0:
            if balances[address(arg2)] >= arg5:
                require arg5 <= balances[address(arg2)]
                balances[address(arg2)] -= arg5
                require balances[address(arg3)] + arg5 >= balances[address(arg3)]
                balances[address(arg3)] += arg5
                emit Transfer(arg5, arg2, arg3);
        require msg.sender == owner
        if arg6 > 0:
            if balances[address(arg2)] >= arg6:
                require arg6 <= balances[address(arg2)]
                balances[address(arg2)] -= arg6
                require balances[address(arg4)] + arg6 >= balances[address(arg4)]
                balances[address(arg4)] += arg6
                emit Transfer(arg6, arg2, arg4);
        emit 0x427a6f4b: address(arg2), arg1, arg5, arg6, 192, 256, 7, 'success', 45, 'Invest transaction success, no p', 'roblems found'
}

function sub_6daea908(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    if balances[address(arg1)] < arg4:
        emit 0x5405d7c9: address(arg1), address(arg2), address(arg3), arg4, arg5, arg6, 256, 320, 6, 'failed', 53, 'Payment transaction failed, send', 'er balance not enough'
    else:
        require msg.sender == owner
        if arg5 > 0:
            if balances[address(arg1)] >= arg5:
                require arg5 <= balances[address(arg1)]
                balances[address(arg1)] -= arg5
                require balances[address(arg2)] + arg5 >= balances[address(arg2)]
                balances[address(arg2)] += arg5
                emit Transfer(arg5, arg1, arg2);
        require msg.sender == owner
        if arg6 > 0:
            if balances[address(arg1)] >= arg6:
                require arg6 <= balances[address(arg1)]
                balances[address(arg1)] -= arg6
                require balances[address(arg3)] + arg6 >= balances[address(arg3)]
                balances[address(arg3)] += arg6
                emit Transfer(arg6, arg1, arg3);
        emit 0x5405d7c9: address(arg1), address(arg2), address(arg3), arg4, arg5, arg6, 256, 320, 7, 'success', 46, 'Payment transaction success, no ', 'problems found'
}

function sub_21af39bd(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    if balances[address(arg3)] < arg4:
        emit 0xec69b37f: arg4, arg5, arg6, address(arg3), arg1, address(arg2), 256, 320, 6, 'failed', 74, 'Profit sharing transaction for t', 'wo user failed, project balance ', 'not enough'
    else:
        require msg.sender == owner
        if arg5 > 0:
            if balances[address(arg3)] >= arg5:
                require arg5 <= balances[address(arg3)]
                balances[address(arg3)] -= arg5
                require balances[address(arg1)] + arg5 >= balances[address(arg1)]
                balances[address(arg1)] += arg5
                emit Transfer(arg5, arg3, arg1);
        require msg.sender == owner
        if arg6 > 0:
            if balances[address(arg3)] >= arg6:
                require arg6 <= balances[address(arg3)]
                balances[address(arg3)] -= arg6
                require balances[address(arg2)] + arg6 >= balances[address(arg2)]
                balances[address(arg2)] += arg6
                emit Transfer(arg6, arg3, arg2);
        emit 0xec69b37f: arg4, arg5, arg6, address(arg3), arg1, address(arg2), 256, 320, 7, 'success', 66, 'Profit sharing transaction for t', 'wo user success, no problems fou', 'nd'
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

function sub_d0c2baa3(?) {
    require calldata.size - 4 >= 256
    require msg.sender == owner
    if balances[address(arg2)] < arg1:
        emit 0x840dd382: address(arg2), address(arg3), address(arg4), address(arg5), arg1, arg6, arg7, arg8, 320, 384, 6, 'failed', 69, 'Profit sharing transaction for a', 'll failed, project balance not e', 'nough'
    else:
        require msg.sender == owner
        if arg6 > 0:
            if balances[address(arg2)] >= arg6:
                require arg6 <= balances[address(arg2)]
                balances[address(arg2)] -= arg6
                require balances[address(arg3)] + arg6 >= balances[address(arg3)]
                balances[address(arg3)] += arg6
                emit Transfer(arg6, arg2, arg3);
        require msg.sender == owner
        if arg7 > 0:
            if balances[address(arg2)] >= arg7:
                require arg7 <= balances[address(arg2)]
                balances[address(arg2)] -= arg7
                require balances[address(arg4)] + arg7 >= balances[address(arg4)]
                balances[address(arg4)] += arg7
                emit Transfer(arg7, arg2, arg4);
        require msg.sender == owner
        if arg8 > 0:
            if balances[address(arg2)] >= arg8:
                require arg8 <= balances[address(arg2)]
                balances[address(arg2)] -= arg8
                require balances[address(arg5)] + arg8 >= balances[address(arg5)]
                balances[address(arg5)] += arg8
                emit Transfer(arg8, arg2, arg5);
        emit 0x840dd382: address(arg2), address(arg3), address(arg4), address(arg5), arg1, arg6, arg7, arg8, 320, 384, 7, 'success', 61, 'Profit sharing transaction for a', 'll success, no problems found'
}

function sub_a994bc1e(?) {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[128 len arg7.length] = arg7[all]
    mem[arg7.length + 128] = 0
    require msg.sender == owner
    if balances[address(arg1)] >= arg4:
        require msg.sender == owner
        if arg5 > 0:
            if balances[address(arg1)] >= arg5:
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
        require msg.sender == owner
        if arg6 > 0:
            if balances[address(arg1)] >= arg6:
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
    mem[ceil32(arg7.length) + 128] = arg4
    mem[ceil32(arg7.length) + 160] = arg5
    mem[ceil32(arg7.length) + 512 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    if not arg7.length % 32:
        emit 0xfd869db7: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], arg6, 192, 256, 352, 7, 'success', 46, 'Transfer balance v2 success, no ', 'problems found', arg7.length, Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256, arg1, arg2, arg3
    else:
        mem[floor32(arg7.length) + ceil32(arg7.length) + 512] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 544 len arg7.length % 32]
        emit 0xfd869db7: Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[arg7.length + 160 len ceil32(arg7.length) + -arg7.length + 32], arg6, 192, 256, 352, 7, 'success', 46, 'Transfer balance v2 success, no ', 'problems found', arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + 512 len floor32(arg7.length) + -ceil32(arg7.length) + 32], arg1, arg2, arg3
}

function sub_7c848623(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == owner
    if arg3 <= 0:
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 160] = 128
        mem[ceil32(arg4.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 6, 'failed', 63, 'Transfer balance failed, balance', ' not enough or amount not valid', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 448] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
            emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 6, 'failed', 63, 'Transfer balance failed, balance', ' not enough or amount not valid', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 448 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
    else:
        if balances[address(arg1)] < arg3:
            mem[ceil32(arg4.length) + 128] = arg3
            mem[ceil32(arg4.length) + 160] = 128
            mem[ceil32(arg4.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 6, 'failed', 63, 'Transfer balance failed, balance', ' not enough or amount not valid', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 448] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
                emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 6, 'failed', 63, 'Transfer balance failed, balance', ' not enough or amount not valid', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 448 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
        else:
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            mem[ceil32(arg4.length) + 128] = arg3
            mem[ceil32(arg4.length) + 160] = 128
            mem[ceil32(arg4.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 7, 'success', 43, 'Transfer balance success, no pro', 'blems found', arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1, arg2
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 448] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
                emit 0x28e86836: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], 192, 288, 7, 'success', 43, 'Transfer balance success, no pro', 'blems found', arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 448 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1, arg2
            mem[ceil32(arg4.length) + 128] = arg3
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                          arg1,
                          arg2,
}

function sub_e9024a49(?) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner
    if sha3(arg1[all]) != sha3(Mask(64, -(8 * ceil32(arg2.length) + -arg2.length + 8) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 8) + 256):
        if sha3(arg1[all]) != sha3(Mask(48, -(8 * ceil32(arg2.length) + -arg2.length + 6) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 6) + 256):
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 6
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'failed'
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 74
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction failed, owner or '
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'sender balance not enough or typ'
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'e is wrong'
                emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 192]
            else:
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 6
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'failed'
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 74
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction failed, owner or '
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'sender balance not enough or typ'
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 768] = 'e is wrong'
                emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 224]
        else:
            if balances[address(arg4)] < arg3:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 6
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'failed'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 74
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction failed, owner or '
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'sender balance not enough or typ'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'e is wrong'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 192]
                else:
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 6
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'failed'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 74
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction failed, owner or '
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'sender balance not enough or typ'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 768] = 'e is wrong'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 224]
            else:
                require msg.sender == owner
                if arg7 > 0:
                    if balances[address(arg4)] >= arg7:
                        require arg7 <= balances[address(arg4)]
                        balances[address(arg4)] -= arg7
                        require balances[address(arg5)] + arg7 >= balances[address(arg5)]
                        balances[address(arg5)] += arg7
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg7
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                      mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                      arg4,
                                      arg5,
                require msg.sender == owner
                if arg8 > 0:
                    if balances[address(arg4)] >= arg8:
                        require arg8 <= balances[address(arg4)]
                        balances[address(arg4)] -= arg8
                        require balances[address(arg6)] + arg8 >= balances[address(arg6)]
                        balances[address(arg6)] += arg8
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg8
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                      mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                      arg4,
                                      arg6,
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 7
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'success'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 41
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction success, no probl'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'ems found'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 6, 'wallet', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 160]
                else:
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 7
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'success'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 41
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction success, no probl'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'ems found'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 6, 'wallet', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 192]
    else:
        if balances[stor2] < arg3:
            if sha3(arg1[all]) != sha3(Mask(48, -(8 * ceil32(arg2.length) + -arg2.length + 6) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 6) + 256):
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 6
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'failed'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 74
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction failed, owner or '
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'sender balance not enough or typ'
                    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'e is wrong'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 192]
                else:
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 6
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'failed'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 74
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction failed, owner or '
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'sender balance not enough or typ'
                    mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 768] = 'e is wrong'
                    emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 224]
            else:
                if balances[address(arg4)] < arg3:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                    if not arg2.length % 32:
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 6
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'failed'
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 74
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction failed, owner or '
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'sender balance not enough or typ'
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'e is wrong'
                        emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 192]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 6
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'failed'
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 74
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction failed, owner or '
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'sender balance not enough or typ'
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 768] = 'e is wrong'
                        emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 9, 'Not valid', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 224]
                else:
                    require msg.sender == owner
                    if arg7 > 0:
                        if balances[address(arg4)] >= arg7:
                            require arg7 <= balances[address(arg4)]
                            balances[address(arg4)] -= arg7
                            require balances[address(arg5)] + arg7 >= balances[address(arg5)]
                            balances[address(arg5)] += arg7
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg7
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                          mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                          arg4,
                                          arg5,
                    require msg.sender == owner
                    if arg8 > 0:
                        if balances[address(arg4)] >= arg8:
                            require arg8 <= balances[address(arg4)]
                            balances[address(arg4)] -= arg8
                            require balances[address(arg6)] + arg8 >= balances[address(arg6)]
                            balances[address(arg6)] += arg8
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg8
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                          mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                          arg4,
                                          arg6,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                    if not arg2.length % 32:
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 7
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'success'
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 41
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction success, no probl'
                        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'ems found'
                        emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 6, 'wallet', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 160]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 7
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'success'
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 41
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction success, no probl'
                        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'ems found'
                        emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 6, 'wallet', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 192]
        else:
            require msg.sender == owner
            if arg3 > 0:
                if balances[stor2] >= arg3:
                    require arg3 <= balances[stor2]
                    balances[stor2] -= arg3
                    require balances[address(arg4)] + arg3 >= balances[address(arg4)]
                    balances[address(arg4)] += arg3
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                  mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                  owner,
                                  arg4,
            require msg.sender == owner
            if arg7 > 0:
                if balances[address(arg4)] >= arg7:
                    require arg7 <= balances[address(arg4)]
                    balances[address(arg4)] -= arg7
                    require balances[address(arg5)] + arg7 >= balances[address(arg5)]
                    balances[address(arg5)] += arg7
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg7
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                  mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                  arg4,
                                  arg5,
            require msg.sender == owner
            if arg8 > 0:
                if balances[address(arg4)] >= arg8:
                    require arg8 <= balances[address(arg4)]
                    balances[address(arg4)] -= arg8
                    require balances[address(arg6)] + arg8 >= balances[address(arg6)]
                    balances[address(arg6)] += arg8
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg8
                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                  mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                                  arg4,
                                  arg6,
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 320
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 384
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 576] = 7
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 'success'
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 41
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 'CI transaction success, no probl'
                mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'ems found'
                emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, arg2.length + 416, arg2.length + 480, 8, 'transfer', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len arg2.length + -ceil32(arg2.length) + 160]
            else:
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 576] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 608] = 7
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 640] = 'success'
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 672] = 41
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 704] = 'CI transaction success, no probl'
                mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 736] = 'ems found'
                emit 0x53afc059: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length) + -arg2.length + 32], arg3, address(arg6), address(arg4), address(arg5), arg8, arg7, floor32(arg2.length) + 448, floor32(arg2.length) + 512, 8, 'transfer', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 192]
}



}
