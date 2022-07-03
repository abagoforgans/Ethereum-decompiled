contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address adminAddress;
uint256 currentRound;
uint256 sub_cca5fc10;
uint256 roundDuration;
uint256 pauseDuration;
array of uint256 sub_6f11fea6;
uint256 sub_28686b18;
uint256 stor9;
array of uint256 sub_968de141;

function pauseDuration() {
    return pauseDuration
}

function available(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_968de141.length
    return sub_968de141[arg1]
}

function sub_28686b18(?) {
    return sub_28686b18
}

function sub_6f11fea6(?) {
    return sub_6f11fea6[stor3][0 len sub_6f11fea6[stor3].length]
}

function currentRound() {
    return currentRound
}

function rounds(uint256 arg1) {
    return sub_6f11fea6[arg1][0 len sub_6f11fea6[arg1].length]
}

function sub_968de141(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_968de141.length
    return sub_968de141[arg1]
}

function sub_cca5fc10(?) {
    return sub_cca5fc10
}

function roundDuration() {
    return roundDuration
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    tokenAddress = arg1
}

function sub_7ba953b7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    if currentRound != 3:
        if block.timestamp >= sub_cca5fc10:
            if block.timestamp > sub_cca5fc10 + (24 * 3600 * roundDuration):
                require currentRound < sub_968de141.length
                if sub_968de141[stor3] <= 0:
                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                    else:
                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                        else:
                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                    if currentRound <= sub_968de141.length - 1:
                        currentRound++
    require currentRound == sub_6f11fea6.length - 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sendTokens(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == adminAddress
    if currentRound == 3:
        return 0
    if block.timestamp < sub_cca5fc10:
        if currentRound == 3:
            return 0
        if block.timestamp < sub_cca5fc10:
            return 0
        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
            require arg1.length == arg2.length
            require currentRound < sub_968de141.length
            require sub_968de141[stor3] > 0
            idx = 0
            while idx < arg1.length:
                require idx < arg2.length
                require currentRound < sub_968de141.length
                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg1.length
                require mem[(32 * idx) + 140 len 20]
                require idx < arg2.length
                require currentRound < sub_968de141.length
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                require currentRound < sub_968de141.length
                mem[0] = 10
                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg1.length
                require idx < arg2.length
                _6654 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6654
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6654
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
        else:
            require currentRound < sub_968de141.length
            if sub_968de141[stor3] <= 0:
                if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                    sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                    if currentRound <= sub_968de141.length - 1:
                        currentRound++
                else:
                    if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                    else:
                        sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                    if currentRound <= sub_968de141.length - 1:
                        currentRound++
                return 0
            require arg1.length == arg2.length
            require currentRound < sub_968de141.length
            require sub_968de141[stor3] > 0
            idx = 0
            while idx < arg1.length:
                require idx < arg2.length
                require currentRound < sub_968de141.length
                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg1.length
                require mem[(32 * idx) + 140 len 20]
                require idx < arg2.length
                require currentRound < sub_968de141.length
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                require currentRound < sub_968de141.length
                mem[0] = 10
                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < arg1.length
                require idx < arg2.length
                _6653 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6653
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6653
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
    else:
        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
            if currentRound == 3:
                return 0
            if block.timestamp < sub_cca5fc10:
                return 0
            if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                require arg1.length == arg2.length
                require currentRound < sub_968de141.length
                require sub_968de141[stor3] > 0
                idx = 0
                while idx < arg1.length:
                    require idx < arg2.length
                    require currentRound < sub_968de141.length
                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < arg1.length
                    require mem[(32 * idx) + 140 len 20]
                    require idx < arg2.length
                    require currentRound < sub_968de141.length
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                    require currentRound < sub_968de141.length
                    mem[0] = 10
                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < arg1.length
                    require idx < arg2.length
                    _6644 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6644
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6644
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    continue 
            else:
                require currentRound < sub_968de141.length
                if sub_968de141[stor3] <= 0:
                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                        if currentRound <= sub_968de141.length - 1:
                            currentRound++
                    else:
                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                        else:
                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                        if currentRound <= sub_968de141.length - 1:
                            currentRound++
                    return 0
                require arg1.length == arg2.length
                require currentRound < sub_968de141.length
                require sub_968de141[stor3] > 0
                idx = 0
                while idx < arg1.length:
                    require idx < arg2.length
                    require currentRound < sub_968de141.length
                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < arg1.length
                    require mem[(32 * idx) + 140 len 20]
                    require idx < arg2.length
                    require currentRound < sub_968de141.length
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                    require currentRound < sub_968de141.length
                    mem[0] = 10
                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < arg1.length
                    require idx < arg2.length
                    _6643 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6643
                    require ext_code.size(tokenAddress)
                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6643
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    continue 
        else:
            require currentRound < sub_968de141.length
            if sub_968de141[stor3] > 0:
                if currentRound == 3:
                    return 0
                if block.timestamp < sub_cca5fc10:
                    return 0
                if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                    require arg1.length == arg2.length
                    require currentRound < sub_968de141.length
                    require sub_968de141[stor3] > 0
                    idx = 0
                    while idx < arg1.length:
                        require idx < arg2.length
                        require currentRound < sub_968de141.length
                        require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < arg1.length
                        require mem[(32 * idx) + 140 len 20]
                        require idx < arg2.length
                        require currentRound < sub_968de141.length
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                        require currentRound < sub_968de141.length
                        mem[0] = 10
                        sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < arg1.length
                        require idx < arg2.length
                        _6634 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6634
                        require ext_code.size(tokenAddress)
                        call tokenAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6634
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
                else:
                    require currentRound < sub_968de141.length
                    if sub_968de141[stor3] <= 0:
                        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                            if currentRound <= sub_968de141.length - 1:
                                currentRound++
                        else:
                            if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                            else:
                                sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                            if currentRound <= sub_968de141.length - 1:
                                currentRound++
                        return 0
                    require arg1.length == arg2.length
                    require currentRound < sub_968de141.length
                    require sub_968de141[stor3] > 0
                    idx = 0
                    while idx < arg1.length:
                        require idx < arg2.length
                        require currentRound < sub_968de141.length
                        require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < arg1.length
                        require mem[(32 * idx) + 140 len 20]
                        require idx < arg2.length
                        require currentRound < sub_968de141.length
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                        require currentRound < sub_968de141.length
                        mem[0] = 10
                        sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < arg1.length
                        require idx < arg2.length
                        _6633 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6633
                        require ext_code.size(tokenAddress)
                        call tokenAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6633
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        continue 
            else:
                if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                    sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                    if currentRound > sub_968de141.length - 1:
                        if currentRound == 3:
                            return 0
                        if block.timestamp < sub_cca5fc10:
                            return 0
                        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            require arg1.length == arg2.length
                            require currentRound < sub_968de141.length
                            require sub_968de141[stor3] > 0
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require mem[(32 * idx) + 140 len 20]
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                require currentRound < sub_968de141.length
                                mem[0] = 10
                                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require idx < arg2.length
                                _6574 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6574
                                require ext_code.size(tokenAddress)
                                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6574
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                continue 
                        else:
                            require currentRound < sub_968de141.length
                            if sub_968de141[stor3] <= 0:
                                if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                    sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                    if currentRound <= sub_968de141.length - 1:
                                        currentRound++
                                else:
                                    if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                    else:
                                        sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                    if currentRound <= sub_968de141.length - 1:
                                        currentRound++
                                return 0
                            require arg1.length == arg2.length
                            require currentRound < sub_968de141.length
                            require sub_968de141[stor3] > 0
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require mem[(32 * idx) + 140 len 20]
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                require currentRound < sub_968de141.length
                                mem[0] = 10
                                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require idx < arg2.length
                                _6573 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6573
                                require ext_code.size(tokenAddress)
                                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6573
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                continue 
                    else:
                        currentRound++
                        if currentRound == 3:
                            return 0
                        if block.timestamp < sub_cca5fc10:
                            return 0
                        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            require arg1.length == arg2.length
                            require currentRound < sub_968de141.length
                            require sub_968de141[stor3] > 0
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require mem[(32 * idx) + 140 len 20]
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                require currentRound < sub_968de141.length
                                mem[0] = 10
                                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require idx < arg2.length
                                _6584 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6584
                                require ext_code.size(tokenAddress)
                                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6584
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                continue 
                        else:
                            require currentRound < sub_968de141.length
                            if sub_968de141[stor3] <= 0:
                                if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                    sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                    if currentRound <= sub_968de141.length - 1:
                                        currentRound++
                                else:
                                    if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                    else:
                                        sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                    if currentRound <= sub_968de141.length - 1:
                                        currentRound++
                                return 0
                            require arg1.length == arg2.length
                            require currentRound < sub_968de141.length
                            require sub_968de141[stor3] > 0
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require mem[(32 * idx) + 140 len 20]
                                require idx < arg2.length
                                require currentRound < sub_968de141.length
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                require currentRound < sub_968de141.length
                                mem[0] = 10
                                sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require idx < arg1.length
                                require idx < arg2.length
                                _6583 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6583
                                require ext_code.size(tokenAddress)
                                call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6583
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                continue 
                else:
                    if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                        if currentRound > sub_968de141.length - 1:
                            if currentRound == 3:
                                return 0
                            if block.timestamp < sub_cca5fc10:
                                return 0
                            if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6594 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6594
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6594
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                            else:
                                require currentRound < sub_968de141.length
                                if sub_968de141[stor3] <= 0:
                                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    else:
                                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        else:
                                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    return 0
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6593 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6593
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6593
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                        else:
                            currentRound++
                            if currentRound == 3:
                                return 0
                            if block.timestamp < sub_cca5fc10:
                                return 0
                            if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6604 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6604
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6604
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                            else:
                                require currentRound < sub_968de141.length
                                if sub_968de141[stor3] <= 0:
                                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    else:
                                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        else:
                                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    return 0
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6603 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6603
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6603
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                    else:
                        sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                        if currentRound > sub_968de141.length - 1:
                            if currentRound == 3:
                                return 0
                            if block.timestamp < sub_cca5fc10:
                                return 0
                            if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6614 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6614
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6614
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                            else:
                                require currentRound < sub_968de141.length
                                if sub_968de141[stor3] <= 0:
                                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    else:
                                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        else:
                                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    return 0
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6613 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6613
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6613
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                        else:
                            currentRound++
                            if currentRound == 3:
                                return 0
                            if block.timestamp < sub_cca5fc10:
                                return 0
                            if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6624 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6624
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6624
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
                            else:
                                require currentRound < sub_968de141.length
                                if sub_968de141[stor3] <= 0:
                                    if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                        sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    else:
                                        if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                                        else:
                                            sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                                        if currentRound <= sub_968de141.length - 1:
                                            currentRound++
                                    return 0
                                require arg1.length == arg2.length
                                require currentRound < sub_968de141.length
                                require sub_968de141[stor3] > 0
                                idx = 0
                                while idx < arg1.length:
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require sub_968de141[stor3] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require mem[(32 * idx) + 140 len 20]
                                    require idx < arg2.length
                                    require currentRound < sub_968de141.length
                                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_968de141[stor3]
                                    require currentRound < sub_968de141.length
                                    mem[0] = 10
                                    sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    _6623 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _6623
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _6623
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    continue 
    require currentRound < sub_968de141.length
    if not sub_968de141[stor3]:
        stor9 = block.timestamp
        if currentRound != 3:
            if block.timestamp >= sub_cca5fc10:
                if block.timestamp > sub_cca5fc10 + (24 * 3600 * roundDuration):
                    require currentRound < sub_968de141.length
                    if sub_968de141[stor3] <= 0:
                        if block.timestamp <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                            sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                            if currentRound <= sub_968de141.length - 1:
                                currentRound++
                        else:
                            if stor9 <= sub_cca5fc10 + (24 * 3600 * roundDuration):
                                sub_cca5fc10 = sub_cca5fc10 + (24 * 3600 * roundDuration) + (24 * 3600 * pauseDuration)
                            else:
                                sub_cca5fc10 = block.timestamp + (24 * 3600 * pauseDuration)
                            if currentRound <= sub_968de141.length - 1:
                                currentRound++
    return 1
}



}
