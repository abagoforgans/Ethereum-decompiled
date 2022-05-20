contract main {




// =====================  Runtime code  =====================


const name = 'KStarCoin'

const decimals = 18

const symbol = 'KSC'

const INITIAL_SUPPLY = 1000000000 * 10^18

const LOCK_MAX = -1


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address rootAddress;
mapping of uint8 stor4;
uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 lockValues;

function owners(address arg1) {
    return bool(stor4[arg1])
}

function totalSupply() {
    return totalSupply
}

function unlockAddrs(address arg1) {
    return bool(stor6[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockValues(address arg1) {
    return lockValues[arg1]
}

function locked() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function root() {
    return rootAddress
}

function destroy() {
    require msg.sender == rootAddress
    selfdestruct(rootAddress)
}

function _fallback() payable {
    revert
}

function newOwner(address arg1) {
    require msg.sender == rootAddress
    require arg1
    stor4[address(arg1)] = 1
    return 1
}

function deleteOwner(address arg1) {
    require msg.sender == rootAddress
    require arg1 != rootAddress
    stor4[address(arg1)] = 0
    return 1
}

function lock(string arg1) {
    require stor4[address(msg.sender)]
    stor5 = 1
    emit Locked(bool(stor5), Array(len=arg1.length, data=arg1[all]));
}

function unlock(string arg1) {
    require stor4[address(msg.sender)]
    stor5 = 0
    emit Locked(bool(stor5), Array(len=arg1.length, data=arg1[all]));
}

function setLockValue(address arg1, uint256 arg2, string arg3) {
    require stor4[address(msg.sender)]
    lockValues[address(arg1)] = arg2
    emit SetLockValue(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}

function kscApprove(address arg1, uint256 arg2, string arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    emit KSCApproval(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function getMyUnlockValue() {
    if stor5:
        if not stor6[address(msg.sender)]:
            return 0
    if balanceOf[address(msg.sender)] < lockValues[address(msg.sender)]:
        return 0
    require lockValues[address(msg.sender)] <= balanceOf[address(msg.sender)]
    return (balanceOf[address(msg.sender)] - lockValues[address(msg.sender)])
}

function lockTo(address arg1, string arg2) {
    require stor4[address(msg.sender)]
    require arg1 != rootAddress
    require stor4[address(msg.sender)]
    lockValues[address(arg1)] = -1
    emit SetLockValue(-1, Array(len=arg2.length, data=arg2[all]), arg1);
    stor6[address(arg1)] = 0
    emit LockedTo(1, Array(len=arg2.length, data=arg2[all]), arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    emit KSCApproval(address arg1, address arg2, uint256 arg3, string arg4):
                     arg2,
                     64,
                     0,
                     msg.sender,
                     arg1,
    return 1
}

function kscBurnWhenMoveToMainnet(address arg1, uint256 arg2, string arg3) {
    require stor4[address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit KSCBurnWhenMoveToMainnet(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function kscBurnWhenUseInSidechain(address arg1, uint256 arg2, string arg3) {
    require stor4[address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit KSCBurnWhenUseInSidechain(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function kscIncreaseApproval(address arg1, uint256 arg2, string arg3) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    emit KSCApproval(allowance[address(msg.sender)][address(arg1)], Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function kscDecreaseApproval(address arg1, uint256 arg2, string arg3) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    emit KSCApproval(allowance[address(msg.sender)][address(arg1)], Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    emit KSCApproval(address arg1, address arg2, uint256 arg3, string arg4):
                     allowance[address(msg.sender)][address(arg1)],
                     64,
                     0,
                     msg.sender,
                     arg1,
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    emit KSCApproval(address arg1, address arg2, uint256 arg3, string arg4):
                     allowance[address(msg.sender)][address(arg1)],
                     64,
                     0,
                     msg.sender,
                     arg1,
    return 1
}

function kscSell(address arg1, address arg2, uint256 arg3, string arg4) {
    require stor4[address(msg.sender)]
    require arg2 != this.address
    if stor5:
        require stor6[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= lockValues[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit KSCSell(arg3, Array(len=arg4.length, data=arg4[all]), arg1, msg.sender, arg2);
    return 1
}

function kscBurnFrom(address arg1, uint256 arg2, string arg3) {
    require stor4[address(msg.sender)]
    require stor4[address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit KSCBurnFrom(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x1262bd03 with:
             gas gas_remaining wei
            args 0, msg.sender, arg2, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function kscMintTo(address arg1, uint256 arg2, string arg3) {
    require stor4[address(msg.sender)]
    require stor4[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit KSCMintTo(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x1262bd03 with:
             gas gas_remaining wei
            args 0, msg.sender, arg2, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function kscTransfer(address arg1, uint256 arg2, string arg3) {
    require arg1 != this.address
    if stor5:
        require stor6[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= lockValues[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit KSCTransfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x1262bd03 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    if stor5:
        require stor6[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= lockValues[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit KSCTransfer(address arg1, address arg2, uint256 arg3, string arg4):
                     arg2,
                     64,
                     0,
                     msg.sender,
                     arg1,
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x1262bd03 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function kscTransferFrom(address arg1, address arg2, uint256 arg3, string arg4) {
    require arg2 != this.address
    if stor5:
        require stor6[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= lockValues[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit KSCTransferFrom(arg3, Array(len=arg4.length, data=arg4[all]), arg1, msg.sender, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x1262bd03 with:
             gas gas_remaining wei
            args address(arg1), msg.sender, arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    if stor5:
        require stor6[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= lockValues[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit KSCTransferFrom(address arg1, address arg2, address arg3, uint256 arg4, string arg5):
                         arg3,
                         64,
                         0,
                         arg1,
                         msg.sender,
                         arg2,
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x1262bd03 with:
             gas gas_remaining wei
            args address(arg1), msg.sender, arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xe694754700000000000000000000000000000000000000000000000000000000
    return 1
}

function kscBatchBurnWhenMoveToMainnet(address[] arg1, uint256[] arg2, string arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    mem[0] = msg.sender
    require stor4[address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require stor4[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[mem[64]], address(_29), 0);
        _38 = mem[64]
        mem[mem[64]] = _31
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _40 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        s = 0
        while s < _40:
            mem[mem[64] + s + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + s + 192]
            s = s + 32
            continue 
        if not _40 % 32:
            emit KSCBurnWhenMoveToMainnet(address arg1, address arg2, uint256 arg3, string arg4):
                                          mem[mem[64] len _40 + _38 + -mem[64] + 96],
                                          msg.sender,
                                          address(_29),
        else:
            mem[floor32(_40) + _38 + 96] = mem[floor32(_40) + _38 + -(_40 % 32) + 128 len _40 % 32]
            emit KSCBurnWhenMoveToMainnet(address arg1, address arg2, uint256 arg3, string arg4):
                                          mem[mem[64] len floor32(_40) + _38 + -mem[64] + 128],
                                          msg.sender,
                                          address(_29),
        idx = idx + 1
        continue 
    return 1
}

function kscBatchBurnWhenUseInSidechain(address[] arg1, uint256[] arg2, string arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    mem[0] = msg.sender
    require stor4[address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require stor4[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[mem[64]], address(_29), 0);
        _38 = mem[64]
        mem[mem[64]] = _31
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _40 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        s = 0
        while s < _40:
            mem[mem[64] + s + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + s + 192]
            s = s + 32
            continue 
        if not _40 % 32:
            emit KSCBurnWhenUseInSidechain(address arg1, address arg2, uint256 arg3, string arg4):
                                           mem[mem[64] len _40 + _38 + -mem[64] + 96],
                                           msg.sender,
                                           address(_29),
        else:
            mem[floor32(_40) + _38 + 96] = mem[floor32(_40) + _38 + -(_40 % 32) + 128 len _40 % 32]
            emit KSCBurnWhenUseInSidechain(address arg1, address arg2, uint256 arg3, string arg4):
                                           mem[mem[64] len floor32(_40) + _38 + -mem[64] + 128],
                                           msg.sender,
                                           address(_29),
        idx = idx + 1
        continue 
    return 1
}

function unlockTo(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require stor4[address(msg.sender)]
    if lockValues[address(arg1)] == -1:
        require stor4[address(msg.sender)]
        lockValues[address(arg1)] = 0
        mem[ceil32(arg2.length) + 128] = 0
        mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit SetLockValue(address arg1, uint256 arg2, string arg3):
                              0,
                              64,
                              arg2.length,
                              Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                              arg1,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
            emit SetLockValue(address arg1, uint256 arg2, string arg3):
                              0,
                              64,
                              arg2.length,
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                              arg1,
    stor6[address(arg1)] = 1
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit LockedTo(address arg1, bool arg2, string arg3):
                      0,
                      64,
                      arg2.length,
                      Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                      arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit LockedTo(address arg1, bool arg2, string arg3):
                      0,
                      64,
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                      arg1,
}

function kscBatchTransferToBounty(address arg1, address[] arg2, uint256[] arg3, uint256 arg4, uint256[] arg5, string arg6) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + ceil32(arg6.length) + 224
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224 len arg6.length] = arg6[all]
    mem[0] = msg.sender
    require stor4[address(msg.sender)]
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20] != this.address
        require idx < mem[96]
        _79 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        if not stor5:
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _121 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _121
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _124 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _124:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _124 % 32:
                emit KSCTransferToBounty(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                         mem[mem[64]],
                                         arg4,
                                         _121,
                                         128,
                                         mem[mem[64] + 128 len _124 + 32],
                                         arg1,
                                         msg.sender,
                                         address(_114),
            else:
                mem[floor32(_124) + mem[64] + 160] = mem[floor32(_124) + mem[64] + -(_124 % 32) + 192 len _124 % 32]
                emit KSCTransferToBounty(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                         mem[mem[64]],
                                         arg4,
                                         _121,
                                         128,
                                         mem[mem[64] + 128 len floor32(_124) + 64],
                                         arg1,
                                         msg.sender,
                                         address(_114),
        else:
            require stor6[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _119 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _127 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _127
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _130 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _130:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _130 % 32:
                emit KSCTransferToBounty(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                         mem[mem[64]],
                                         arg4,
                                         _127,
                                         128,
                                         mem[mem[64] + 128 len _130 + 32],
                                         arg1,
                                         msg.sender,
                                         address(_119),
            else:
                mem[floor32(_130) + mem[64] + 160] = mem[floor32(_130) + mem[64] + -(_130 % 32) + 192 len _130 % 32]
                emit KSCTransferToBounty(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                         mem[mem[64]],
                                         arg4,
                                         _127,
                                         128,
                                         mem[mem[64] + 128 len floor32(_130) + 64],
                                         arg1,
                                         msg.sender,
                                         address(_119),
        idx = idx + 1
        continue 
    return 1
}

function kscBatchSellByOtherCoin(address arg1, address[] arg2, uint256[] arg3, uint256 arg4, uint256[] arg5, string arg6) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + ceil32(arg6.length) + 224
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224 len arg6.length] = arg6[all]
    mem[0] = msg.sender
    require stor4[address(msg.sender)]
    require arg2.length == arg3.length
    require arg2.length == arg5.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20] != this.address
        require idx < mem[96]
        _79 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        if not stor5:
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _121 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _121
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _124 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _124:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _124 % 32:
                emit KSCSellByOtherCoin(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                        mem[mem[64]],
                                        arg4,
                                        _121,
                                        128,
                                        mem[mem[64] + 128 len _124 + 32],
                                        arg1,
                                        msg.sender,
                                        address(_114),
            else:
                mem[floor32(_124) + mem[64] + 160] = mem[floor32(_124) + mem[64] + -(_124 % 32) + 192 len _124 % 32]
                emit KSCSellByOtherCoin(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                        mem[mem[64]],
                                        arg4,
                                        _121,
                                        128,
                                        mem[mem[64] + 128 len floor32(_124) + 64],
                                        arg1,
                                        msg.sender,
                                        address(_114),
        else:
            require stor6[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _119 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _127 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _127
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _130 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _130:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _130 % 32:
                emit KSCSellByOtherCoin(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                        mem[mem[64]],
                                        arg4,
                                        _127,
                                        128,
                                        mem[mem[64] + 128 len _130 + 32],
                                        arg1,
                                        msg.sender,
                                        address(_119),
            else:
                mem[floor32(_130) + mem[64] + 160] = mem[floor32(_130) + mem[64] + -(_130 % 32) + 192 len _130 % 32]
                emit KSCSellByOtherCoin(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                        mem[mem[64]],
                                        arg4,
                                        _127,
                                        128,
                                        mem[mem[64] + 128 len floor32(_130) + 64],
                                        arg1,
                                        msg.sender,
                                        address(_119),
        idx = idx + 1
        continue 
    return 1
}

function kscBatchTransferToEcosystem(address arg1, address[] arg2, uint256[] arg3, uint256 arg4, uint256[] arg5, string arg6) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + ceil32(arg6.length) + 224
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224 len arg6.length] = arg6[all]
    mem[0] = msg.sender
    require stor4[address(msg.sender)]
    require arg2.length == arg3.length
    require arg2.length == arg5.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20] != this.address
        require idx < mem[96]
        _79 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        if not stor5:
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _121 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _121
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _124 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _124:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _124 % 32:
                emit KSCTransferToEcosystem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                            mem[mem[64]],
                                            arg4,
                                            _121,
                                            128,
                                            mem[mem[64] + 128 len _124 + 32],
                                            arg1,
                                            msg.sender,
                                            address(_114),
            else:
                mem[floor32(_124) + mem[64] + 160] = mem[floor32(_124) + mem[64] + -(_124 % 32) + 192 len _124 % 32]
                emit KSCTransferToEcosystem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                            mem[mem[64]],
                                            arg4,
                                            _121,
                                            128,
                                            mem[mem[64] + 128 len floor32(_124) + 64],
                                            arg1,
                                            msg.sender,
                                            address(_114),
        else:
            require stor6[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - mem[(32 * idx) + (32 * arg2.length) + 160] >= lockValues[address(arg1)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require mem[(32 * idx) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 2)
            allowance[address(arg1)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[mem[64]], arg1, address(_79));
            require idx < mem[96]
            _119 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _127 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[mem[64] + 32] = arg4
            mem[mem[64] + 64] = _127
            mem[mem[64] + 96] = 128
            mem[mem[64] + 128] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            _130 = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 192]
            s = 0
            while s < _130:
                mem[mem[64] + s + 160] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + s + 224]
                s = s + 32
                continue 
            if not _130 % 32:
                emit KSCTransferToEcosystem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                            mem[mem[64]],
                                            arg4,
                                            _127,
                                            128,
                                            mem[mem[64] + 128 len _130 + 32],
                                            arg1,
                                            msg.sender,
                                            address(_119),
            else:
                mem[floor32(_130) + mem[64] + 160] = mem[floor32(_130) + mem[64] + -(_130 % 32) + 192 len _130 % 32]
                emit KSCTransferToEcosystem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7):
                                            mem[mem[64]],
                                            arg4,
                                            _127,
                                            128,
                                            mem[mem[64] + 128 len floor32(_130) + 64],
                                            arg1,
                                            msg.sender,
                                            address(_119),
        idx = idx + 1
        continue 
    return 1
}



}
