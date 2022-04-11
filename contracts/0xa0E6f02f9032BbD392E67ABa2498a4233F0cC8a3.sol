contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
uint256 stor9;
address stor10;
mapping of uint256 stor12;
mapping of address stor13;
address stor14;
uint256 stor24;

function _fallback() {
    mem[96 len -9305] = code.data[9905 len -9305]
    mem[64] = -9209
    stor1 = 0
    stor2 = mem[224]
    stor24 = 0
    stor3 = 0
    stor10 = mem[140 len 20]
    stor4[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    mem[0] = 6
    stor6[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    stor5 = mem[351 len 1]
    idx = 0
    while idx < mem[mem[160] + 96]:
        require idx < mem[mem[160] + 96]
        stor13[idx + 1] = mem[(32 * idx) + mem[160] + 140 len 20]
        require idx < mem[mem[160] + 96]
        mem[0] = mem[(32 * idx) + mem[160] + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + mem[160] + 140 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor9 = mem[mem[160] + 96]
    stor0 = mem[192]
    stor14 = mem[108 len 20]
    return code.data[600 len 9305]
}



// =====================  Runtime code  =====================


#
#  - deleteContract(uint256 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - setTokenContract(uint256 arg1, address arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5)
#  - updateOwners(uint256 arg1, address arg2, address[] arg3, uint256 arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#  - freezeContract(bool arg1, uint256 arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5)
#  - reconcile(uint256 arg1, address[] arg2, int256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - sweep(uint256 arg1, address arg2, uint256 arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - transfer(uint256 arg1, address arg2, address[] arg3, uint256[] arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#
uint256 stor0;
uint256 stor1;
uint256 securityValue;
uint8 stor3;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 stor9;
address stor10;
mapping of uint256 ownerIndexBit;
mapping of address stor13;
address stor14;
uint256 stor18;
mapping of uint256 stor23;
uint256 totalSupply;
mapping of struct stor25;
mapping of struct stor26;
array of uint256 stor27;

function name() {
    return name[0 len name.length]
}

function ownerIndexBit(address arg1) {
    return ownerIndexBit[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getSecurityValue() {
    return securityValue
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function getNonce() {
    return (stor1 + 1)
}

function isOwner(address arg1) {
    return (ownerIndexBit[address(arg1)] > 0)
}

function calculateAdminTxHash() {
    stor18 = sha3(stor1 + 1, securityValue)
    return sha3(stor1 + 1, securityValue)
}

function revoke(bytes32 arg1) {
    if ownerIndexBit[address(msg.sender)]:
        if 2^ownerIndexBit[address(msg.sender)] and stor26[arg1].field_256 > 0:
            stor26[arg1].field_0++
            stor26[arg1].field_256 -= 2^ownerIndexBit[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function deposit(address arg1, uint256 arg2) {
    if stor3:
        return 0
    require ext_code.size(stor14)
    call stor14.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    stor23[address(arg1)] += arg2
    totalSupply += arg2
    emit Deposit(arg2, msg.sender, arg1);
    return 1
}

function getOwners() {
    idx = 0
    while idx < stor9:
        mem[0] = idx + 1
        mem[32] = 13
        require idx < stor9
        mem[(32 * idx) + 192] = stor13[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * stor9) + 256 len floor32(stor9)] = mem[192 len floor32(stor9)]
    return Array(len=stor9, data=mem[192 len floor32(stor9)], mem[(32 * stor9) + floor32(stor9) + 256 len (32 * stor9) - floor32(stor9)]), 
}

function balanceOf(address arg1) {
    if stor10 == arg1:
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= totalSupply:
            require ext_code.size(stor14)
            call stor14.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if 0 <= ext_call.return_data[0] - totalSupply:
                return (ext_call.return_data[0] - totalSupply + stor23[address(arg1)])
    return stor23[address(arg1)]
}

function calculateHash(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _19 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = s
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = address(_15)
        mem[(32 * arg1.length) + (32 * arg2.length) + 212] = _19
        mem[(32 * arg1.length) + (32 * arg2.length) + 244] = stor1 + 1
        idx = idx + 1
        s = sha3(s, address(_15), _19, stor1 + 1)
        continue 
    return (_22 * arg1.length)
}

function confirm(bytes32 arg1) {
    if stor3:
        return 0
    if stor25[arg1].field_0 == msg.sender:
        stor26[arg1].field_512 = 1
    if not ownerIndexBit[address(msg.sender)]:
        return 0
    if not stor26[arg1].field_0:
        stor26[arg1].field_0 = stor0
        stor26[arg1].field_256 = 0
        stor26[arg1].field_512 = 0
        stor27.length++
        if not stor27.length <= stor27.length + 1:
            idx = stor27.length + 1
            while stor27.length > idx:
                stor27[idx] = 0
                idx = idx + 1
                continue 
        stor26[arg1].field_768 = stor27.length
        require stor27.length < stor27.length
        stor27[stor27.length] = arg1
        return 0
    if stor26[arg1].field_256 and 2^ownerIndexBit[address(msg.sender)] != 0:
        return 0
    emit Confirmation(msg.sender, arg1);
    if stor26[arg1].field_0 > 1:
        stor26[arg1].field_0--
        stor26[arg1].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[arg1].field_256
        return 0
    if stor26[arg1].field_512 != 1:
        if stor26[arg1].field_0 > 1:
            stor26[arg1].field_0--
            stor26[arg1].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[arg1].field_256
            return 0
        else:
            return 0
    require stor26[arg1].field_768 < stor27.length
    stor27[stor26[arg1].field_768] = 0
    stor26[arg1].field_0 = 0
    stor26[arg1].field_256 = 0
    stor26[arg1].field_512 = 0
    stor26[arg1].field_768 = 0
    if not stor25[arg1].field_256:
        return 0
    if stor10 != stor25[arg1].field_0:
        if stor23[stor25[arg1].field_0] < stor25[arg1].field_512:
            return 0
    else:
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] < totalSupply:
            if stor23[stor25[arg1].field_0] < stor25[arg1].field_512:
                return 0
        else:
            require ext_code.size(stor14)
            call stor14.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if 0 <= ext_call.return_data[0] - totalSupply:
                if ext_call.return_data[0] - totalSupply + stor23[stor25[arg1].field_0] < stor25[arg1].field_512:
                    return 0
            else:
                if stor23[stor25[arg1].field_0] < stor25[arg1].field_512:
                    return 0
    if stor25[arg1].field_512 <= stor23[stor25[arg1].field_0]:
        totalSupply -= stor25[arg1].field_512
    else:
        totalSupply -= stor23[stor25[arg1].field_0]
    if stor25[arg1].field_512 <= stor23[stor25[arg1].field_0]:
        stor23[stor25[arg1].field_0] -= stor25[arg1].field_512
    else:
        stor23[stor25[arg1].field_0] = 0
    require ext_code.size(stor14)
    call stor14.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor25[arg1].field_256, stor25[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    emit MultiTransact(msg.sender, 0, stor25[arg1].field_256, stor25[arg1].field_0, stor25[arg1].field_512);
    emit Transfer(stor25[arg1].field_512, stor25[arg1].field_0, stor25[arg1].field_256);
    stor25[arg1].field_0 = 0
    stor25[arg1].field_256 = 0
    stor25[arg1].field_512 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if ownerIndexBit[address(msg.sender)] <= 0:
        return 0
    if stor3:
        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
            stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
    else:
        if stor25[call.data[0 len calldata.size]][block.number].field_0 == msg.sender:
            stor26[call.data[0 len calldata.size]][block.number].field_512 = 1
        if not ownerIndexBit[address(msg.sender)]:
            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
        else:
            if not stor26[call.data[0 len calldata.size]][block.number].field_0:
                stor26[call.data[0 len calldata.size]][block.number].field_0 = stor0
                stor26[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor26[call.data[0 len calldata.size]][block.number].field_512 = 0
                stor27.length++
                if not stor27.length <= stor27.length + 1:
                    idx = stor27.length + 1
                    while stor27.length > idx:
                        stor27[idx] = 0
                        idx = idx + 1
                        continue 
                stor26[call.data[0 len calldata.size]][block.number].field_768 = stor27.length
                require stor27.length < stor27.length
                stor27[stor27.length] = sha3(call.data[0 len calldata.size], block.number)
                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                    stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
            else:
                if stor26[call.data[0 len calldata.size]][block.number].field_256 and 2^ownerIndexBit[address(msg.sender)] != 0:
                    if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                        stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                        stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                        stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
                else:
                    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
                    if stor26[call.data[0 len calldata.size]][block.number].field_0 > 1:
                        stor26[call.data[0 len calldata.size]][block.number].field_0--
                        stor26[call.data[0 len calldata.size]][block.number].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[call.data[0 len calldata.size]][block.number].field_256
                        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                            stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
                    else:
                        if stor26[call.data[0 len calldata.size]][block.number].field_512 != 1:
                            if stor26[call.data[0 len calldata.size]][block.number].field_0 > 1:
                                stor26[call.data[0 len calldata.size]][block.number].field_0--
                                stor26[call.data[0 len calldata.size]][block.number].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[call.data[0 len calldata.size]][block.number].field_256
                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
                        else:
                            require stor26[call.data[0 len calldata.size]][block.number].field_768 < stor27.length
                            stor27[stor26[call.data[0 len calldata.size]][block.number].field_768] = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_0 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_256 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_512 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_768 = 0
                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
                            else:
                                if stor10 != stor25[call.data[0 len calldata.size]][block.number].field_0:
                                    if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                            stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), stor10, arg2);
                                    else:
                                        if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                            totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                        else:
                                            totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                        if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                            stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                        else:
                                            stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                        require ext_code.size(stor14)
                                        call stor14.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                        emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                        stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                        stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                        stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                else:
                                    require ext_code.size(stor14)
                                    call stor14.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] < totalSupply:
                                        if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg1), stor10, arg2);
                                        else:
                                            if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                            else:
                                                totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                            if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                            else:
                                                stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                            require ext_code.size(stor14)
                                            call stor14.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                            emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                            stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                            stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                            stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                    else:
                                        require ext_code.size(stor14)
                                        call stor14.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if 0 <= ext_call.return_data[0] - totalSupply:
                                            if ext_call.return_data[0] - totalSupply + stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg1), stor10, arg2);
                                            else:
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                                require ext_code.size(stor14)
                                                call stor14.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                                emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                        else:
                                            if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = stor10
                                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg1
                                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg2
                                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg1), stor10, arg2);
                                            else:
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                                require ext_code.size(stor14)
                                                call stor14.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                                emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
    return sha3(call.data[0 len calldata.size], block.number)
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if ownerIndexBit[address(msg.sender)] <= 0:
        return 0
    if stor3:
        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
            stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
    else:
        if stor25[call.data[0 len calldata.size]][block.number].field_0 == msg.sender:
            stor26[call.data[0 len calldata.size]][block.number].field_512 = 1
        if not ownerIndexBit[address(msg.sender)]:
            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
        else:
            if not stor26[call.data[0 len calldata.size]][block.number].field_0:
                stor26[call.data[0 len calldata.size]][block.number].field_0 = stor0
                stor26[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor26[call.data[0 len calldata.size]][block.number].field_512 = 0
                stor27.length++
                if not stor27.length <= stor27.length + 1:
                    idx = stor27.length + 1
                    while stor27.length > idx:
                        stor27[idx] = 0
                        idx = idx + 1
                        continue 
                stor26[call.data[0 len calldata.size]][block.number].field_768 = stor27.length
                require stor27.length < stor27.length
                stor27[stor27.length] = sha3(call.data[0 len calldata.size], block.number)
                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                    stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
            else:
                if stor26[call.data[0 len calldata.size]][block.number].field_256 and 2^ownerIndexBit[address(msg.sender)] != 0:
                    if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                        stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                        stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                        stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                        emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
                else:
                    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
                    if stor26[call.data[0 len calldata.size]][block.number].field_0 > 1:
                        stor26[call.data[0 len calldata.size]][block.number].field_0--
                        stor26[call.data[0 len calldata.size]][block.number].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[call.data[0 len calldata.size]][block.number].field_256
                        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                            stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
                    else:
                        if stor26[call.data[0 len calldata.size]][block.number].field_512 != 1:
                            if stor26[call.data[0 len calldata.size]][block.number].field_0 > 1:
                                stor26[call.data[0 len calldata.size]][block.number].field_0--
                                stor26[call.data[0 len calldata.size]][block.number].field_256 = 2^ownerIndexBit[address(msg.sender)] or stor26[call.data[0 len calldata.size]][block.number].field_256
                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
                        else:
                            require stor26[call.data[0 len calldata.size]][block.number].field_768 < stor27.length
                            stor27[stor26[call.data[0 len calldata.size]][block.number].field_768] = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_0 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_256 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_512 = 0
                            stor26[call.data[0 len calldata.size]][block.number].field_768 = 0
                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
                            else:
                                if stor10 != stor25[call.data[0 len calldata.size]][block.number].field_0:
                                    if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                        if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                            stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                            stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                            stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg2), address(arg1), arg3);
                                    else:
                                        if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                            totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                        else:
                                            totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                        if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                            stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                        else:
                                            stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                        require ext_code.size(stor14)
                                        call stor14.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                        emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                        stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                        stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                        stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                else:
                                    require ext_code.size(stor14)
                                    call stor14.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    if ext_call.return_data[0] < totalSupply:
                                        if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                            if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg2), address(arg1), arg3);
                                        else:
                                            if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                            else:
                                                totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                            if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                            else:
                                                stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                            require ext_code.size(stor14)
                                            call stor14.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                            emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                            stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                            stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                            stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                    else:
                                        require ext_code.size(stor14)
                                        call stor14.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        if 0 <= ext_call.return_data[0] - totalSupply:
                                            if ext_call.return_data[0] - totalSupply + stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg2), address(arg1), arg3);
                                            else:
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                                require ext_code.size(stor14)
                                                call stor14.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                                emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
                                        else:
                                            if stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] < stor25[call.data[0 len calldata.size]][block.number].field_512:
                                                if not stor25[call.data[0 len calldata.size]][block.number].field_256:
                                                    stor25[call.data[0 len calldata.size]][block.number].field_0 = arg1
                                                    stor25[call.data[0 len calldata.size]][block.number].field_256 = arg2
                                                    stor25[call.data[0 len calldata.size]][block.number].field_512 = arg3
                                                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), 0, address(arg2), address(arg1), arg3);
                                            else:
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    totalSupply -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    totalSupply -= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]
                                                if stor25[call.data[0 len calldata.size]][block.number].field_512 <= stor23[stor25[call.data[0 len calldata.size]][block.number].field_0]:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] -= stor25[call.data[0 len calldata.size]][block.number].field_512
                                                else:
                                                    stor23[stor25[call.data[0 len calldata.size]][block.number].field_0] = 0
                                                require ext_code.size(stor14)
                                                call stor14.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_512
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit MultiTransact(msg.sender, 0, stor25[call.data[0 len calldata.size]][block.number].field_256, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_512);
                                                emit Transfer(stor25[call.data[0 len calldata.size]][block.number].field_512, stor25[call.data[0 len calldata.size]][block.number].field_0, stor25[call.data[0 len calldata.size]][block.number].field_256);
                                                stor25[call.data[0 len calldata.size]][block.number].field_0 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_256 = 0
                                                stor25[call.data[0 len calldata.size]][block.number].field_512 = 0
    return sha3(call.data[0 len calldata.size], block.number)
}



}
