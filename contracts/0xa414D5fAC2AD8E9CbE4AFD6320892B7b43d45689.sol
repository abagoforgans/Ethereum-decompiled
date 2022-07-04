contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address adminAddress;
uint256 currentRound;
uint256 sub_cca5fc10;
uint256 pauseDuration;
array of uint256 sub_6f11fea6;
uint256 sub_28686b18;
uint256 stor8;
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

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    tokenAddress = arg1
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    adminAddress = arg1
    emit 0xaefcaa62: adminAddress
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7ba953b7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    if block.timestamp >= sub_28686b18:
        if block.timestamp >= stor8 + (24 * 3600 * pauseDuration):
            require currentRound < sub_968de141.length
            if not sub_968de141[stor3]:
                currentRound++
    require currentRound == sub_6f11fea6.length - 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
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
    if block.timestamp < sub_28686b18:
        return 0
    if block.timestamp < stor8 + (24 * 3600 * pauseDuration):
        return 0
    require currentRound < sub_968de141.length
    if sub_968de141[stor3]:
        if currentRound == sub_6f11fea6.length - 1:
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
            mem[0] = 9
            sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _397 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _397
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _397
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        currentRound++
        if currentRound == sub_6f11fea6.length - 1:
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
            mem[0] = 9
            sub_968de141[stor3] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            require idx < arg2.length
            _407 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _407
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _407
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    require currentRound < sub_968de141.length
    if not sub_968de141[stor3]:
        stor8 = block.timestamp
        if block.timestamp >= sub_28686b18:
            if block.timestamp >= stor8 + (24 * 3600 * pauseDuration):
                require currentRound < sub_968de141.length
                if not sub_968de141[stor3]:
                    currentRound++
    return 1
}



}
