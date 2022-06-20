contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor8;
address stor9;
address stor10;
address stor11;
uint8 stor13; offset 16

function _fallback() {
    stor0 = msg.sender
    require code.data[7116 len 20]
    require code.data[7148 len 20]
    require code.data[7180 len 20]
    require code.data[2 * 3600 len 32]
    require code.data[7232 len 32] > code.data[2 * 3600 len 32]
    require code.data[7264 len 32]
    require code.data[7296 len 32] >= code.data[7264 len 32]
    require ext_code.size(code.data[7180 len 20])
    call code.data[7180 len 20].bonusToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == code.data[7148 len 20]
    stor9 = code.data[7116 len 20]
    stor10 = code.data[7148 len 20]
    stor11 = code.data[7180 len 20]
    stor3 = code.data[2 * 3600 len 32]
    stor4 = code.data[7232 len 32]
    stor6 = code.data[7264 len 32]
    stor8 = code.data[7296 len 32] - code.data[7264 len 32]
    stor13 = 1
    return code.data[501 len 6603]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of uint8 stor2;
uint256 startDate;
uint256 endDate;
uint256 tokenSoftcapIssued;
uint256 tokenSoftcap;
uint256 stor7;
uint256 stor8;
address tokenAddress;
address bonusTokenAddress;
address profiteroleAddress;
mapping of uint8 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16

function profiterole() {
    return profiteroleAddress
}

function startDate() {
    return startDate
}

function destructed() {
    return bool(uint8(stor13.field_0))
}

function bonusToken() {
    return bonusTokenAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function whitelist(address arg1) {
    return bool(stor12[arg1])
}

function oracles(address arg1) {
    return bool(stor2[arg1])
}

function endDate() {
    return endDate
}

function tokenSoftcapIssued() {
    return tokenSoftcapIssued
}

function contractOwner() {
    return contractOwner
}

function tokenSoftcap() {
    return tokenSoftcap
}

function token() {
    return tokenAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function tokenHardcap() {
    return (tokenSoftcap + stor8)
}

function tokenHardcapIssued() {
    return (tokenSoftcap + stor7)
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(tokenAddress)
    call tokenAddress.getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require stor2[address(arg1)]
}

function isTransferAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) {
    if tokenAddress != arg4:
        return 0
    if not stor2[address(arg1)]:
        if arg1 != this.address:
            return 0
        if not stor12[address(arg2)]:
            return 0
    else:
        if arg2 != this.address:
            if arg1 != this.address:
                return 0
            if not stor12[address(arg2)]:
                return 0
    return 1
}

function getState() {
    if uint8(stor13.field_16):
        return 0
    if uint8(stor13.field_0):
        return 4, 4
    if block.timestamp < startDate:
        return 1, 1
    if uint8(stor13.field_8):
        if tokenSoftcapIssued == tokenSoftcap:
            return 3, 3
        return 3, 2
    if stor7 == stor8:
        if tokenSoftcapIssued == tokenSoftcap:
            return 3, 3
        return 3, 2
    if block.timestamp > endDate:
        if tokenSoftcapIssued == tokenSoftcap:
            return 3, 3
        return 3, 2
    if tokenSoftcapIssued == tokenSoftcap:
        return 2, 3
    return 2, 2
}

function activateDestruction() {
    if contractOwner != msg.sender:
        return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if not uint8(stor13.field_0):
        if block.timestamp < startDate:
            emit Error(107001);
            return 107001
        if not uint8(stor13.field_8):
            if stor7 != stor8:
                if block.timestamp <= endDate:
                    emit Error(107001);
                    return 107001
        if tokenSoftcapIssued != tokenSoftcap:
            emit Error(107001);
            return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    uint8(stor13.field_0) = 1
    emit Destruction()
    return 1
}

function addOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleAdded(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function removeOracles(address[] arg1) {
    if contractOwner != msg.sender:
        return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]) != 0:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
                mem[96] = address(cd[((32 * idx) + arg1 + 36)])
                emit OracleRemoved(address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function addUsers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor2[address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    if block.timestamp < startDate:
        emit Error(107001);
        return 107001
    if uint8(stor13.field_8):
        if tokenSoftcapIssued == tokenSoftcap:
            emit Error(107001);
            return 107001
    else:
        if stor7 == stor8:
            if tokenSoftcapIssued == tokenSoftcap:
                emit Error(107001);
                return 107001
        else:
            if block.timestamp > endDate:
                if tokenSoftcapIssued == tokenSoftcap:
                    emit Error(107001);
                    return 107001
            else:
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function removeUsers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor2[address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    if block.timestamp < startDate:
        emit Error(107001);
        return 107001
    if uint8(stor13.field_8):
        if tokenSoftcapIssued == tokenSoftcap:
            emit Error(107001);
            return 107001
    else:
        if stor7 == stor8:
            if tokenSoftcapIssued == tokenSoftcap:
                emit Error(107001);
                return 107001
        else:
            if block.timestamp > endDate:
                if tokenSoftcapIssued == tokenSoftcap:
                    emit Error(107001);
                    return 107001
            else:
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function finishHardcap() {
    if contractOwner != msg.sender:
        return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    if block.timestamp < startDate:
        emit Error(107001);
        return 107001
    if uint8(stor13.field_8):
        if tokenSoftcapIssued == tokenSoftcap:
            emit Error(107001);
            return 107001
    else:
        if stor7 == stor8:
            if tokenSoftcapIssued == tokenSoftcap:
                emit Error(107001);
                return 107001
        else:
            if block.timestamp > endDate:
                if tokenSoftcapIssued == tokenSoftcap:
                    emit Error(107001);
                    return 107001
            else:
    if not uint8(stor13.field_16):
        if uint8(stor13.field_0):
            emit Error(107001);
            return 107001
        if block.timestamp >= startDate:
            if uint8(stor13.field_8):
                emit Error(107001);
                return 107001
            if stor7 == stor8:
                emit Error(107001);
                return 107001
            if block.timestamp > endDate:
                emit Error(107001);
                return 107001
    uint8(stor13.field_8) = 1
    emit HardcapFinishedManually()
    return 1
}

function distributeBonuses() {
    if not stor2[address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if not uint8(stor13.field_0):
        if block.timestamp < startDate:
            emit Error(107001);
            return 107001
        if not uint8(stor13.field_8):
            if stor7 != stor8:
                if block.timestamp <= endDate:
                    emit Error(107001);
                    return 107001
        if tokenSoftcapIssued != tokenSoftcap:
            emit Error(107001);
            return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(107002);
        return 107002
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args profiteroleAddress, ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(107003);
        return 107003
    require ext_code.size(profiteroleAddress)
    call profiteroleAddress.distributeBonuses(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require 1 == ext_call.return_data[0]
    return 1
}

function init() {
    if contractOwner != msg.sender:
        return 0
    else:
        if not uint8(stor13.field_16):
            if not uint8(stor13.field_0):
                if block.timestamp >= startDate:
                    if uint8(stor13.field_8):
                        if tokenSoftcapIssued == tokenSoftcap:
                            emit Error(107001);
                            return 107001
                        else:
                            emit Error(107001);
                            return 107001
                    else:
                        if stor7 == stor8:
                            if tokenSoftcapIssued == tokenSoftcap:
                                emit Error(107001);
                                return 107001
                            else:
                                emit Error(107001);
                                return 107001
                        else:
                            if block.timestamp > endDate:
                                if tokenSoftcapIssued == tokenSoftcap:
                                    emit Error(107001);
                                    return 107001
                                else:
                                    emit Error(107001);
                                    return 107001
                            else:
                                if tokenSoftcapIssued == tokenSoftcap:
                                    emit Error(107001);
                                    return 107001
                                else:
                                    emit Error(107001);
                                    return 107001
                else:
                    emit Error(107001);
                    return 107001
            else:
                emit Error(107001);
                return 107001
        else:
            uint8(stor13.field_16) = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.smbl() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.platform() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).reissueAsset(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0], tokenSoftcap
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 1
}

function issueHardcapToken(address arg1, address arg2, uint256 arg3) {
    if not stor2[address(msg.sender)]:
        return 0
    if not stor12[address(arg2)]:
        return 0
    if uint8(stor13.field_16):
        emit Error(107001);
        return 107001
    if uint8(stor13.field_0):
        emit Error(107001);
        return 107001
    if block.timestamp < startDate:
        emit Error(107001);
        return 107001
    if uint8(stor13.field_8):
        if tokenSoftcapIssued == tokenSoftcap:
            emit Error(107001);
            return 107001
    else:
        if stor7 == stor8:
            if tokenSoftcapIssued == tokenSoftcap:
                emit Error(107001);
                return 107001
        else:
            if block.timestamp > endDate:
                if tokenSoftcapIssued == tokenSoftcap:
                    emit Error(107001);
                    return 107001
            else:
    if not uint8(stor13.field_16):
        if uint8(stor13.field_0):
            emit Error(107001);
            return 107001
        if block.timestamp >= startDate:
            if uint8(stor13.field_8):
                emit Error(107001);
                return 107001
            if stor7 == stor8:
                emit Error(107001);
                return 107001
            if block.timestamp > endDate:
                emit Error(107001);
                return 107001
    require tokenAddress == arg1
    require arg3
    require arg3 + stor7 >= stor7
    if arg3 + stor7 <= stor8:
        require arg3 + stor7 >= stor7
        stor7 += arg3
        require ext_code.size(arg1)
        call arg1.smbl() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.platform() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).reissueAsset(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], arg3
        require ext_call.success
        require 1 == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
        require ext_call.success
        require ext_call.return_data[0]
        emit Emission(ext_call.return_data[0], address(arg2), arg3);
    else:
        require stor7 <= stor8
        require stor8 >= stor7
        stor7 = stor8
        require ext_code.size(arg1)
        call arg1.smbl() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.platform() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).reissueAsset(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], stor8 - stor7
        require ext_call.success
        require 1 == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), stor8 - stor7
        require ext_call.success
        require ext_call.return_data[0]
        emit Emission(ext_call.return_data[0], address(arg2), stor8 - stor7);
    return 1
}

function issueSoftcapToken(address arg1, address arg2, uint256 arg3) {
    if not stor2[address(msg.sender)]:
        return 0
    else:
        if not stor12[address(arg2)]:
            return 0
        else:
            if not uint8(stor13.field_16):
                if not uint8(stor13.field_0):
                    if block.timestamp >= startDate:
                        if uint8(stor13.field_8):
                            if tokenSoftcapIssued == tokenSoftcap:
                                emit Error(107001);
                                return 107001
                            else:
                                if not uint8(stor13.field_16):
                                    if not uint8(stor13.field_0):
                                        if block.timestamp >= startDate:
                                            if uint8(stor13.field_8):
                                                if tokenSoftcapIssued == tokenSoftcap:
                                                    emit Error(107001);
                                                    return 107001
                                                else:
                                                    require tokenAddress == arg1
                                                    require arg3
                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        tokenSoftcapIssued += arg3
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), arg3
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                        return 1
                                                    else:
                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                        tokenSoftcapIssued = tokenSoftcap
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                        return 1
                                            else:
                                                if stor7 == stor8:
                                                    if tokenSoftcapIssued == tokenSoftcap:
                                                        emit Error(107001);
                                                        return 107001
                                                    else:
                                                        require tokenAddress == arg1
                                                        require arg3
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            tokenSoftcapIssued += arg3
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg2), arg3
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            require ext_code.size(arg1)
                                                            call arg1.smbl() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                            return 1
                                                        else:
                                                            require tokenSoftcapIssued <= tokenSoftcap
                                                            require tokenSoftcap >= tokenSoftcapIssued
                                                            tokenSoftcapIssued = tokenSoftcap
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            require ext_code.size(arg1)
                                                            call arg1.smbl() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                            return 1
                                                else:
                                                    if block.timestamp > endDate:
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                                    else:
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                        else:
                                            require tokenAddress == arg1
                                            require arg3
                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                tokenSoftcapIssued += arg3
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), arg3
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                return 1
                                            else:
                                                require tokenSoftcapIssued <= tokenSoftcap
                                                require tokenSoftcap >= tokenSoftcapIssued
                                                tokenSoftcapIssued = tokenSoftcap
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                return 1
                                    else:
                                        emit Error(107001);
                                        return 107001
                                else:
                                    require tokenAddress == arg1
                                    require arg3
                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                        tokenSoftcapIssued += arg3
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg2), arg3
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.smbl() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                        return 1
                                    else:
                                        require tokenSoftcapIssued <= tokenSoftcap
                                        require tokenSoftcap >= tokenSoftcapIssued
                                        tokenSoftcapIssued = tokenSoftcap
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(arg1)
                                        call arg1.smbl() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                        return 1
                        else:
                            if stor7 == stor8:
                                if tokenSoftcapIssued == tokenSoftcap:
                                    emit Error(107001);
                                    return 107001
                                else:
                                    if not uint8(stor13.field_16):
                                        if not uint8(stor13.field_0):
                                            if block.timestamp >= startDate:
                                                if uint8(stor13.field_8):
                                                    if tokenSoftcapIssued == tokenSoftcap:
                                                        emit Error(107001);
                                                        return 107001
                                                    else:
                                                        require tokenAddress == arg1
                                                        require arg3
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            tokenSoftcapIssued += arg3
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg2), arg3
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            require ext_code.size(arg1)
                                                            call arg1.smbl() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                            return 1
                                                        else:
                                                            require tokenSoftcapIssued <= tokenSoftcap
                                                            require tokenSoftcap >= tokenSoftcapIssued
                                                            tokenSoftcapIssued = tokenSoftcap
                                                            require ext_code.size(arg1)
                                                            call arg1.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            require ext_code.size(arg1)
                                                            call arg1.smbl() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                            return 1
                                                else:
                                                    if stor7 == stor8:
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                                    else:
                                                        if block.timestamp > endDate:
                                                            if tokenSoftcapIssued == tokenSoftcap:
                                                                emit Error(107001);
                                                                return 107001
                                                            else:
                                                                require tokenAddress == arg1
                                                                require arg3
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued += arg3
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), arg3
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                    return 1
                                                                else:
                                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued = tokenSoftcap
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                    return 1
                                                        else:
                                                            if tokenSoftcapIssued == tokenSoftcap:
                                                                emit Error(107001);
                                                                return 107001
                                                            else:
                                                                require tokenAddress == arg1
                                                                require arg3
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued += arg3
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), arg3
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                    return 1
                                                                else:
                                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued = tokenSoftcap
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                    return 1
                                            else:
                                                require tokenAddress == arg1
                                                require arg3
                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                    tokenSoftcapIssued += arg3
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg2), arg3
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    require ext_code.size(arg1)
                                                    call arg1.smbl() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                    return 1
                                                else:
                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                    tokenSoftcapIssued = tokenSoftcap
                                                    require ext_code.size(arg1)
                                                    call arg1.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    require ext_code.size(arg1)
                                                    call arg1.smbl() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                    return 1
                                        else:
                                            emit Error(107001);
                                            return 107001
                                    else:
                                        require tokenAddress == arg1
                                        require arg3
                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                        if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                            tokenSoftcapIssued += arg3
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg2), arg3
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(arg1)
                                            call arg1.smbl() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                            return 1
                                        else:
                                            require tokenSoftcapIssued <= tokenSoftcap
                                            require tokenSoftcap >= tokenSoftcapIssued
                                            tokenSoftcapIssued = tokenSoftcap
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            require ext_code.size(arg1)
                                            call arg1.smbl() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                            return 1
                            else:
                                if block.timestamp > endDate:
                                    if tokenSoftcapIssued == tokenSoftcap:
                                        emit Error(107001);
                                        return 107001
                                    else:
                                        if not uint8(stor13.field_16):
                                            if not uint8(stor13.field_0):
                                                if block.timestamp >= startDate:
                                                    if uint8(stor13.field_8):
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                                    else:
                                                        if stor7 == stor8:
                                                            if tokenSoftcapIssued == tokenSoftcap:
                                                                emit Error(107001);
                                                                return 107001
                                                            else:
                                                                require tokenAddress == arg1
                                                                require arg3
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued += arg3
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), arg3
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                    return 1
                                                                else:
                                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued = tokenSoftcap
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                    return 1
                                                        else:
                                                            if block.timestamp > endDate:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                            else:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                else:
                                                    require tokenAddress == arg1
                                                    require arg3
                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        tokenSoftcapIssued += arg3
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), arg3
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                        return 1
                                                    else:
                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                        tokenSoftcapIssued = tokenSoftcap
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                        return 1
                                            else:
                                                emit Error(107001);
                                                return 107001
                                        else:
                                            require tokenAddress == arg1
                                            require arg3
                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                tokenSoftcapIssued += arg3
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), arg3
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                return 1
                                            else:
                                                require tokenSoftcapIssued <= tokenSoftcap
                                                require tokenSoftcap >= tokenSoftcapIssued
                                                tokenSoftcapIssued = tokenSoftcap
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                return 1
                                else:
                                    if tokenSoftcapIssued == tokenSoftcap:
                                        if not uint8(stor13.field_16):
                                            if not uint8(stor13.field_0):
                                                if block.timestamp >= startDate:
                                                    if uint8(stor13.field_8):
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                                    else:
                                                        if stor7 == stor8:
                                                            if tokenSoftcapIssued == tokenSoftcap:
                                                                emit Error(107001);
                                                                return 107001
                                                            else:
                                                                require tokenAddress == arg1
                                                                require arg3
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued += arg3
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), arg3
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                    return 1
                                                                else:
                                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued = tokenSoftcap
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                    return 1
                                                        else:
                                                            if block.timestamp > endDate:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                            else:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                else:
                                                    require tokenAddress == arg1
                                                    require arg3
                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        tokenSoftcapIssued += arg3
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), arg3
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                        return 1
                                                    else:
                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                        tokenSoftcapIssued = tokenSoftcap
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                        return 1
                                            else:
                                                emit Error(107001);
                                                return 107001
                                        else:
                                            require tokenAddress == arg1
                                            require arg3
                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                tokenSoftcapIssued += arg3
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), arg3
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                return 1
                                            else:
                                                require tokenSoftcapIssued <= tokenSoftcap
                                                require tokenSoftcap >= tokenSoftcapIssued
                                                tokenSoftcapIssued = tokenSoftcap
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                return 1
                                    else:
                                        if not uint8(stor13.field_16):
                                            if not uint8(stor13.field_0):
                                                if block.timestamp >= startDate:
                                                    if uint8(stor13.field_8):
                                                        if tokenSoftcapIssued == tokenSoftcap:
                                                            emit Error(107001);
                                                            return 107001
                                                        else:
                                                            require tokenAddress == arg1
                                                            require arg3
                                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                tokenSoftcapIssued += arg3
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), arg3
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                return 1
                                                            else:
                                                                require tokenSoftcapIssued <= tokenSoftcap
                                                                require tokenSoftcap >= tokenSoftcapIssued
                                                                tokenSoftcapIssued = tokenSoftcap
                                                                require ext_code.size(arg1)
                                                                call arg1.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                require ext_call.success
                                                                require ext_call.return_data[0]
                                                                require ext_code.size(arg1)
                                                                call arg1.smbl() with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                return 1
                                                    else:
                                                        if stor7 == stor8:
                                                            if tokenSoftcapIssued == tokenSoftcap:
                                                                emit Error(107001);
                                                                return 107001
                                                            else:
                                                                require tokenAddress == arg1
                                                                require arg3
                                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued += arg3
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), arg3
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                    return 1
                                                                else:
                                                                    require tokenSoftcapIssued <= tokenSoftcap
                                                                    require tokenSoftcap >= tokenSoftcapIssued
                                                                    tokenSoftcapIssued = tokenSoftcap
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0xa9059cbb with:
                                                                         gas gas_remaining - 710 wei
                                                                        args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                    require ext_call.success
                                                                    require ext_call.return_data[0]
                                                                    require ext_code.size(arg1)
                                                                    call arg1.smbl() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                    return 1
                                                        else:
                                                            if block.timestamp > endDate:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                            else:
                                                                if tokenSoftcapIssued == tokenSoftcap:
                                                                    emit Error(107001);
                                                                    return 107001
                                                                else:
                                                                    require tokenAddress == arg1
                                                                    require arg3
                                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued += arg3
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), arg3
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                                        return 1
                                                                    else:
                                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                                        tokenSoftcapIssued = tokenSoftcap
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0xa9059cbb with:
                                                                             gas gas_remaining - 710 wei
                                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                                        require ext_call.success
                                                                        require ext_call.return_data[0]
                                                                        require ext_code.size(arg1)
                                                                        call arg1.smbl() with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                                        return 1
                                                else:
                                                    require tokenAddress == arg1
                                                    require arg3
                                                    require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                    if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                        require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                        tokenSoftcapIssued += arg3
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), arg3
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                        return 1
                                                    else:
                                                        require tokenSoftcapIssued <= tokenSoftcap
                                                        require tokenSoftcap >= tokenSoftcapIssued
                                                        tokenSoftcapIssued = tokenSoftcap
                                                        require ext_code.size(arg1)
                                                        call arg1.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        require ext_code.size(arg1)
                                                        call arg1.smbl() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                        return 1
                                            else:
                                                emit Error(107001);
                                                return 107001
                                        else:
                                            require tokenAddress == arg1
                                            require arg3
                                            require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                            if arg3 + tokenSoftcapIssued <= tokenSoftcap:
                                                require arg3 + tokenSoftcapIssued >= tokenSoftcapIssued
                                                tokenSoftcapIssued += arg3
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), arg3
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), arg3);
                                                return 1
                                            else:
                                                require tokenSoftcapIssued <= tokenSoftcap
                                                require tokenSoftcap >= tokenSoftcapIssued
                                                tokenSoftcapIssued = tokenSoftcap
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg2), tokenSoftcap - tokenSoftcapIssued
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                require ext_code.size(arg1)
                                                call arg1.smbl() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                emit Emission(ext_call.return_data[0], address(arg2), tokenSoftcap - tokenSoftcapIssued);
                                                return 1
                    else:
                        emit Error(107001);
                        return 107001
                else:
                    emit Error(107001);
                    return 107001
            else:
                emit Error(107001);
                return 107001
}



}
