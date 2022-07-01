contract main {




// =====================  Runtime code  =====================


const now_ = block.timestamp


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 TGE;
address stor7;
address stor8;
address stor12;
address stor13;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor17;
array of struct unlockdate_T1;
array of struct unlockdate_T2;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function unlockdate_T1(uint256 arg1) {
    require arg1 < unlockdate_T1.length
    return unlockdate_T1[arg1].field_0, unlockdate_T1[arg1].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TGE() {
    return TGE
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function unlockdate_T2(uint256 arg1) {
    require arg1 < unlockdate_T2.length
    return unlockdate_T2[arg1].field_0, unlockdate_T2[arg1].field_256
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function blacklisting(address arg1) {
    require msg.sender == owner
    uint8(stor17[address(arg1)]) = 1
    emit Blacklisted(arg1);
}

function totalSupplyIncrease(uint256 arg1) {
    require msg.sender == owner
    _totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function deleteFromBlacklist(address arg1) {
    require msg.sender == owner
    uint8(stor17[address(arg1)]) = 255
    emit DeleteFromBlacklist(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function blacklist(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor17', 17)))))))
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function checkRate(uint256 arg1) {
    if arg1 == 1:
        idx = 0
        s = 0
        while idx < unlockdate_T1.length:
            mem[0] = 18
            if unlockdate_T1[idx].field_0 >= block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < unlockdate_T1.length
            mem[0] = 18
            idx = idx + 1
            s = s + unlockdate_T1[idx].field_256
            continue 
    else:
        if arg1 != 2:
            return 0
        idx = 0
        s = 0
        while idx < unlockdate_T2.length:
            mem[0] = 19
            if unlockdate_T2[idx].field_0 >= block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < unlockdate_T2.length
            mem[0] = 19
            idx = idx + 1
            s = s + unlockdate_T2[idx].field_256
            continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    if arg1 == stor7:
        require 4 < unlockdate_T1.length
        emit RejectedPaymentToLockedAddr(arg2, uint256(unlockdate_T1.field_2048), block.timestamp, msg.sender, arg1);
        return 0
    if arg1 == stor8:
        require 4 < unlockdate_T1.length
        emit RejectedPaymentToLockedAddr(arg2, uint256(unlockdate_T1.field_2048), block.timestamp, msg.sender, arg1);
        return 0
    if arg1 == stor12:
        require 4 < unlockdate_T1.length
        emit RejectedPaymentToLockedAddr(arg2, uint256(unlockdate_T1.field_2048), block.timestamp, msg.sender, arg1);
        return 0
    if arg1 == stor13:
        require 4 < unlockdate_T1.length
        emit RejectedPaymentToLockedAddr(arg2, uint256(unlockdate_T1.field_2048), block.timestamp, msg.sender, arg1);
        return 0
    if msg.sender == stor7:
        require 0 < unlockdate_T1.length
        if uint256(unlockdate_T1.field_0) > block.timestamp:
            require 0 < unlockdate_T1.length
            emit RejectedPaymentFromLockedAddr(arg2, uint256(unlockdate_T1.field_0), block.timestamp, msg.sender, arg1);
            return 0
        idx = 0
        s = 0
        while idx < unlockdate_T1.length:
            mem[0] = 18
            if unlockdate_T1[idx].field_0 >= block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < unlockdate_T1.length
            mem[0] = 18
            idx = idx + 1
            s = s + unlockdate_T1[idx].field_256
            continue 
        if (-50000 * 10^18 * s) + 50000000 * 10^18 > balanceOf[address(msg.sender)] - arg2:
            emit RejectedPaymentMaximunFromLockedAddr(arg2, (-50000 * 10^18 * s) + 50000000 * 10^18, s, msg.sender, arg1);
            return 0
    else:
        if msg.sender == stor8:
            require 0 < unlockdate_T1.length
            if uint256(unlockdate_T1.field_0) > block.timestamp:
                require 0 < unlockdate_T1.length
                emit RejectedPaymentFromLockedAddr(arg2, uint256(unlockdate_T1.field_0), block.timestamp, msg.sender, arg1);
                return 0
            idx = 0
            s = 0
            while idx < unlockdate_T1.length:
                mem[0] = 18
                if unlockdate_T1[idx].field_0 >= block.timestamp:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < unlockdate_T1.length
                mem[0] = 18
                idx = idx + 1
                s = s + unlockdate_T1[idx].field_256
                continue 
            if (-25000 * 10^18 * s) + 25000000 * 10^18 > balanceOf[address(msg.sender)] - arg2:
                emit RejectedPaymentMaximunFromLockedAddr(arg2, (-25000 * 10^18 * s) + 25000000 * 10^18, s, msg.sender, arg1);
                return 0
        else:
            if msg.sender == stor13:
                require 0 < unlockdate_T1.length
                if uint256(unlockdate_T1.field_0) > block.timestamp:
                    require 0 < unlockdate_T1.length
                    emit RejectedPaymentFromLockedAddr(arg2, uint256(unlockdate_T1.field_0), block.timestamp, msg.sender, arg1);
                    return 0
                idx = 0
                s = 0
                while idx < unlockdate_T1.length:
                    mem[0] = 18
                    if unlockdate_T1[idx].field_0 >= block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < unlockdate_T1.length
                    mem[0] = 18
                    idx = idx + 1
                    s = s + unlockdate_T1[idx].field_256
                    continue 
                if (-35000 * 10^18 * s) + 35000000 * 10^18 > balanceOf[address(msg.sender)] - arg2:
                    emit RejectedPaymentMaximunFromLockedAddr(arg2, (-35000 * 10^18 * s) + 35000000 * 10^18, s, msg.sender, arg1);
                    return 0
            else:
                if msg.sender == stor12:
                    require 0 < unlockdate_T2.length
                    if uint256(unlockdate_T2.field_0) > block.timestamp:
                        require 0 < unlockdate_T2.length
                        emit RejectedPaymentFromLockedAddr(arg2, uint256(unlockdate_T2.field_0), block.timestamp, msg.sender, arg1);
                        return 0
                    idx = 0
                    s = 0
                    while idx < unlockdate_T2.length:
                        mem[0] = 19
                        if unlockdate_T2[idx].field_0 >= block.timestamp:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < unlockdate_T2.length
                        mem[0] = 19
                        idx = idx + 1
                        s = s + unlockdate_T2[idx].field_256
                        continue 
                    if (-40000 * 10^18 * s) + 40000000 * 10^18 > balanceOf[address(msg.sender)] - arg2:
                        emit RejectedPaymentMaximunFromLockedAddr(arg2, (-40000 * 10^18 * s) + 40000000 * 10^18, s, msg.sender, arg1);
                        return 0
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor17', 17)))))) > 0:
        emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
        return 0
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17)))))) > 0:
        emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
