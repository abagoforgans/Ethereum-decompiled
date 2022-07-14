contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 contractBalance;
uint256 stor3;
mapping of uint256 balance;

function contractBalance() {
    return contractBalance
}

function balance(address arg1) {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_0044c686(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'need owner'
    contractBalance = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'need owner'
    stor0 = arg1
}

function changeCommission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'need owner'
    stor3 = arg1
}

function changeTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'need owner'
    stor1 = arg1
}

function withdraw() {
    if balance[address(msg.sender)] <= 0:
        revert with 0, 'need balance > 0'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance[address(msg.sender)] = 0
}

function adminWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'need owner'
    require arg1 <= contractBalance
    contractBalance -= arg1
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_50ab6da5(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if ext_code.size(msg.sender):
        revert with 0, 'need human'
    require arg1 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg1
    mem[ceil32(arg2.length) + 160] = block.timestamp
    mem[ceil32(arg2.length) + 192] = block.number
    mem[ceil32(arg2.length) + 224] = block.hash(block.number)
    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length + 96
    _21 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    require 0 < arg2.length
    idx = 0
    s = 0
    t = 0
    while idx < 6:
        if not Mask(8, 248, Mask(8, 248, mem[128]) and 2^idx << 248):
            idx = idx + 1
            s = s
            t = t
            continue 
        if (sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]) % 6) + 1 != idx + 1:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = 1
        t = t + 1
        continue 
    if t < 1:
        revert with 0, 'userDice count error.'
    if t > 5:
        revert with 0, 'userDice count error.'
    require contractBalance + arg1 >= contractBalance
    contractBalance += arg1
    if not s:
        mem[arg2.length + ceil32(arg2.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0x5e3ddaee: 224, msg.sender, 0, Mask(8, 248, mem[128]), (_21 % 6) + 1, arg1, 0, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        else:
            mem[floor32(arg2.length) + arg2.length + ceil32(arg2.length) + 576] = mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 608 len arg2.length % 32]
            emit 0x5e3ddaee: 224, msg.sender, 0, Mask(8, 248, mem[128]), (_21 % 6) + 1, arg1, 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[arg2.length + (2 * ceil32(arg2.length)) + 576 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    else:
        if arg1:
            require arg1
            require 6 * arg1 / arg1 == 6
        require t
        if 6 * arg1 / t:
            require 6 * arg1 / t
            require (100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 6 * arg1 / t == -stor3 + 100
        require (100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 100 <= contractBalance
        contractBalance -= (100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 100
        require balance[address(msg.sender)] + ((100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 100) >= balance[address(msg.sender)]
        balance[address(msg.sender)] += (100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 100
        emit 0x5e3ddaee: Array(len=arg2.length, data=arg2[all]), msg.sender, 1, Mask(8, 248, mem[128]), (_21 % 6) + 1, arg1, (100 * 6 * arg1 / t) - (stor3 * 6 * arg1 / t) / 100
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'token address error'
    if ext_code.size(arg1):
        revert with 0, 'need human'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom error'
    require 0 < arg4.length
    _13 = mem[128]
    mem[ceil32(arg4.length) + 160] = block.timestamp
    mem[ceil32(arg4.length) + 192] = block.number
    mem[ceil32(arg4.length) + 224] = block.hash(block.number)
    mem[ceil32(arg4.length) + 256 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 288 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + 128] = arg4.length + 96
    _27 = sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    idx = 0
    s = 0
    t = 0
    while idx < 6:
        if not Mask(8, 248, Mask(8, 248, _13) and 2^idx << 248):
            idx = idx + 1
            s = s
            t = t
            continue 
        if (sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]) % 6) + 1 != idx + 1:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = 1
        t = t + 1
        continue 
    if t < 1:
        revert with 0, 'userDice count error.'
    if t > 5:
        revert with 0, 'userDice count error.'
    require contractBalance + arg2 >= contractBalance
    contractBalance += arg2
    if not s:
        mem[arg4.length + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x5e3ddaee: 224, address(arg1), 0, Mask(8, 248, _13), (_27 % 6) + 1, arg2, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
        else:
            mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 576] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 608 len arg4.length % 32]
            emit 0x5e3ddaee: 224, address(arg1), 0, Mask(8, 248, _13), (_27 % 6) + 1, arg2, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[arg4.length + (2 * ceil32(arg4.length)) + 576 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    else:
        if arg2:
            require arg2
            require 6 * arg2 / arg2 == 6
        require t
        if 6 * arg2 / t:
            require 6 * arg2 / t
            require (100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 6 * arg2 / t == -stor3 + 100
        require (100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 100 <= contractBalance
        contractBalance -= (100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 100
        require balance[address(arg1)] + ((100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 100) >= balance[address(arg1)]
        balance[address(arg1)] += (100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 100
        emit 0x5e3ddaee: Array(len=arg4.length, data=arg4[all]), address(arg1), 1, Mask(8, 248, _13), (_27 % 6) + 1, arg2, (100 * 6 * arg2 / t) - (stor3 * 6 * arg2 / t) / 100
}



}
