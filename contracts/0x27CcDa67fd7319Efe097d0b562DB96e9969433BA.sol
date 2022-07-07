contract main {




// =====================  Runtime code  =====================


#
#  - settle(bytes arg1)
#
const ORDER_SIZE = 206

const UNSIGNED_ORDER_SIZE = 141

const WITHDRAWAL_SIZE = 140

const UNSIGNED_WITHDRAWAL_SIZE = 75


uint256 processTime;
mapping of uint256 balances;
mapping of uint256 orderFills;
mapping of address userID_;
mapping of address tokenID_;
mapping of uint256 userRanks;
mapping of uint256 tokenRanks;
mapping of uint256 lockTimes;
address storBC6D;
mapping of uint256 stor114897573216388593363040292508240859095253531040834806246937672901093457762118;

function tokenRanks(address arg1) {
    require calldata.size - 4 >= 32
    return tokenRanks[arg1]
}

function userRanks(address arg1) {
    require calldata.size - 4 >= 32
    return userRanks[arg1]
}

function lockTimes(address arg1) {
    require calldata.size - 4 >= 32
    return lockTimes[arg1]
}

function userID_Address(uint256 arg1) {
    require calldata.size - 4 >= 32
    return userID_[arg1]
}

function balances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return balances[arg1][arg2]
}

function processTime() {
    return processTime
}

function tokenID_Address(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenID_[arg1]
}

function orderFills(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return orderFills[arg1]
}

function _fallback() payable {
    revert
}

function unlock() {
    require lockTimes[address(msg.sender)]
    lockTimes[msg.sender] = 0
    emit Unlock(msg.sender);
}

function changeProcessTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require processTime != arg1
    processTime = arg1
}

function removeUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    require userRanks[address(arg1)]
    userRanks[address(arg1)] = 0
}

function removeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    require tokenRanks[address(arg1)]
    tokenRanks[address(arg1)] = 0
}

function updateUserRank(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    require userRanks[address(arg1)]
    require arg2 != userRanks[address(arg1)]
    userRanks[address(arg1)] = arg2
}

function lock() {
    require not lockTimes[address(msg.sender)]
    require processTime + block.timestamp >= block.timestamp
    lockTimes[msg.sender] = processTime + block.timestamp
    emit Lock((processTime + block.timestamp), msg.sender);
}

function updateTokenRank(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    require tokenRanks[address(arg1)]
    require arg2 != tokenRanks[address(arg1)]
    tokenRanks[address(arg1)] = arg2
}

function deposit() payable {
    require not lockTimes[address(msg.sender)]
    require msg.value > 0
    require msg.value + storFE05[msg.sender] >= storFE05[msg.sender]
    storFE05[msg.sender] += msg.value
    emit Deposit(0, msg.value, msg.value + storFE05[msg.sender], msg.sender);
}

function addToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2
    require not tokenRanks[address(arg2)]
    require arg1 < 65536
    if tokenID_[arg1]:
        require tokenID_[arg1] == arg2
    else:
        tokenID_[arg1] = arg2
    tokenRanks[address(arg2)] = 1
    emit AddToken(arg1, arg2);
}

function addUser(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2
    require not userRanks[address(arg2)]
    require arg1 < 4294967296
    if userID_[arg1]:
        require userID_[arg1] == arg2
    else:
        userID_[arg1] = arg2
    userRanks[address(arg2)] = 1
    emit 0xbf243b72: arg1, arg2
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require lockTimes[address(msg.sender)]
    require block.timestamp > lockTimes[address(msg.sender)]
    require userRanks[address(msg.sender)]
    require arg1 > 0
    require arg1 <= storFE05[msg.sender]
    storFE05[msg.sender] -= arg1
    emit Withdraw(0, arg1, storFE05[msg.sender] - arg1, msg.sender);
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require not lockTimes[address(msg.sender)]
    require tokenRanks[address(arg1)]
    require arg2 > 0
    require arg2 + balances[address(arg1)][msg.sender] >= balances[address(arg1)][msg.sender]
    balances[address(arg1)][msg.sender] += arg2
    emit Deposit(address(arg1), arg2, arg2 + balances[address(arg1)][msg.sender], msg.sender);
    require ext_code.size(arg1)
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[260]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require lockTimes[address(msg.sender)]
    require block.timestamp > lockTimes[address(msg.sender)]
    require userRanks[address(msg.sender)]
    require tokenRanks[address(arg1)]
    require arg2 > 0
    require arg2 <= balances[address(arg1)][msg.sender]
    balances[address(arg1)][msg.sender] -= arg2
    emit Withdraw(address(arg1), arg2, balances[address(arg1)][msg.sender] - arg2, msg.sender);
    require ext_code.size(arg1)
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[228]
}

function withdrawByAdmin(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 140
    _4 = sha3(mem[264 len 4], 7)
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 160] = 0
    require arg1.length >= 136
    mem[0] = mem[ceil32(arg1.length) + 294 len 2]
    _8 = sha3(mem[ceil32(arg1.length) + 294 len 2], 8)
    mem[(2 * ceil32(arg1.length)) + 192 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 192] = 0
    require arg1.length >= 134
    _11 = mem[(2 * ceil32(arg1.length)) + 294]
    mem[(4 * ceil32(arg1.length)) + 224 len arg1.length] = arg1[all]
    mem[(4 * ceil32(arg1.length)) + arg1.length + 224] = 0
    require arg1.length >= 97
    _14 = mem[(4 * ceil32(arg1.length)) + 289]
    mem[(6 * ceil32(arg1.length)) + 256 len arg1.length] = arg1[all]
    mem[(6 * ceil32(arg1.length)) + arg1.length + 256] = 0
    require arg1.length >= 102
    require _11 <= balances[stor8[mem[0]]][address(stor[_4])]
    require userRanks[address(stor[_4])]
    mem[(7 * ceil32(arg1.length)) + 288 len arg1.length] = arg1[all]
    mem[(7 * ceil32(arg1.length)) + arg1.length + 288] = 0
    require arg1.length >= 140
    mem[(8 * ceil32(arg1.length)) + 299 len 96] = mem[(7 * ceil32(arg1.length)) + 332 len 96]
    mem[floor32((8 * ceil32(arg1.length)) + 426) + 32 len arg1.length] = arg1[all]
    mem[floor32((8 * ceil32(arg1.length)) + 426) + arg1.length + 32] = 0
    require arg1.length >= 64
    if bool(mem[(6 * ceil32(arg1.length)) + 326]):
        _632 = mem[floor32((8 * ceil32(arg1.length)) + 426) + 64]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + 64 len arg1.length] = arg1[all]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + arg1.length + 64] = 0
        require arg1.length >= 32
        _638 = mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + 64]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 64] = arg1.length
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 96 len arg1.length] = arg1[all]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + arg1.length + 96] = 0
        require arg1.length >= 65
        _644 = mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129]
        if mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1] >= 27:
            if mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1] != 27:
                require 28 == mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1]
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 128] = '\x19Ethereum Signed Message:\n32'
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 156] = sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 96] = 60
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 316] = _638
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])), _644 << 248, _632, _638) 
        else:
            if uint8(mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129] + 27) != 27:
                require 28 == uint8(mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129] + 27)
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 128] = '\x19Ethereum Signed Message:\n32'
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 156] = sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 96] = 60
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 316] = _638
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])), _644 + 27 << 248, _632, _638) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(stor[_4]) == address(signer)
        if 0 == address(stor[_8]):
            require _14 <= balances[address(stor[_8])][address(stor[_4])] - _11
            require _14 + balances[0][storBC6D] >= balances[0][storBC6D]
            balances[0][storBC6D] += _14
            balances[address(stor[_8])][address(stor[_4])] = balances[address(stor[_8])][address(stor[_4])] - _11 - _14
            emit Withdraw(address(stor[_8]), _11, balances[address(stor[_8])][address(stor[_4])] - _11 - _14, address(stor[_4]));
        else:
            require _14 <= balances[0][address(stor[_4])]
            balances[0][address(stor[_4])] -= _14
            require _14 + balances[0][storBC6D] >= balances[0][storBC6D]
            balances[0][storBC6D] += _14
            balances[address(stor[_8])][address(stor[_4])] -= _11
            emit Withdraw(address(stor[_8]), _11, balances[address(stor[_8])][address(stor[_4])] - _11, address(stor[_4]));
        if not address(stor[_8]):
            call address(stor[_4]) with:
               value _11 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(stor[_8]))
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 320 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor[_4]), uint32(stor[_4]), Mask(224, 32, _11) >> 32
            call address(stor[_8]) with:
               funct Mask(32, 192, _638) >> 192
                 gas gas_remaining wei
                args Mask(224, 32, _11) << 224, mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 384 len 4]
            if not return_data.size:
                require ext_call.success
                if arg1.length:
                    require arg1.length >= 32
                    require mem[128]
            else:
                mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size:
                    require return_data.size >= 32
                    require mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 352]
    else:
        _633 = mem[floor32((8 * ceil32(arg1.length)) + 426) + 64]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + 64 len arg1.length] = arg1[all]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + arg1.length + 64] = 0
        require arg1.length >= 32
        _639 = mem[floor32((8 * ceil32(arg1.length)) + 426) + ceil32(arg1.length) + 64]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 64] = arg1.length
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 96 len arg1.length] = arg1[all]
        mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + arg1.length + 96] = 0
        require arg1.length >= 65
        _645 = mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129]
        if mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1] >= 27:
            if mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1] != 27:
                require 28 == mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 160 len 1]
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 128] = '\x19Ethereum Signed Message:\n32'
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 156] = sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 96] = 60
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 316] = _639
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])), _645 << 248, _633, _639) 
        else:
            if uint8(mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129] + 27) != 27:
                require 28 == uint8(mem[floor32((8 * ceil32(arg1.length)) + 426) + (2 * ceil32(arg1.length)) + 129] + 27)
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 128] = '\x19Ethereum Signed Message:\n32'
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 156] = sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 96] = 60
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 316] = _639
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(8 * ceil32(arg1.length)) + 320 len 75])), _645 + 27 << 248, _633, _639) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(stor[_4]) == address(signer)
        if tokenID_[1] == address(stor[_8]):
            require _14 <= balances[address(stor[_8])][address(stor[_4])] - _11
            require _14 + balances[stor8[1]][storBC6D] >= balances[stor8[1]][storBC6D]
            balances[stor8[1]][storBC6D] += _14
            balances[address(stor[_8])][address(stor[_4])] = balances[address(stor[_8])][address(stor[_4])] - _11 - _14
            emit Withdraw(address(stor[_8]), _11, balances[address(stor[_8])][address(stor[_4])] - _11 - _14, address(stor[_4]));
        else:
            require _14 <= balances[stor8[1]][address(stor[_4])]
            balances[stor8[1]][address(stor[_4])] -= _14
            require _14 + balances[stor8[1]][storBC6D] >= balances[stor8[1]][storBC6D]
            balances[stor8[1]][storBC6D] += _14
            balances[address(stor[_8])][address(stor[_4])] -= _11
            emit Withdraw(address(stor[_8]), _11, balances[address(stor[_8])][address(stor[_4])] - _11, address(stor[_4]));
        if not address(stor[_8]):
            call address(stor[_4]) with:
               value _11 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(stor[_8]))
            mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 320 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor[_4]), uint32(stor[_4]), Mask(224, 32, _11) >> 32
            call address(stor[_8]) with:
               funct Mask(32, 192, _639) >> 192
                 gas gas_remaining wei
                args Mask(224, 32, _11) << 224, mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 384 len 4]
            if not return_data.size:
                require ext_call.success
                if arg1.length:
                    require arg1.length >= 32
                    require mem[128]
            else:
                mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size:
                    require return_data.size >= 32
                    require mem[floor32((8 * ceil32(arg1.length)) + 426) + (4 * ceil32(arg1.length)) + 352]
}



}
