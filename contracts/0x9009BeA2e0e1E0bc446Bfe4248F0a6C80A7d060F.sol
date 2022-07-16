contract main {




// =====================  Runtime code  =====================


address receiverAddress;
uint256 txFee;

function receiverAddress() {
    return receiverAddress
}

function txFee() {
    return txFee
}

function _fallback() payable {
    revert
}

function sendEth(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 <= arg1.length
    if arg1.length - 1:
        require arg1.length - 1
        require -arg2 + (arg1.length * arg2) / arg1.length - 1 == arg2
    require msg.value >= -arg2 + (arg1.length * arg2)
    require arg1.length <= 255
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require arg2 <= s
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - arg2
        continue 
    emit LogTokenMultiSent(48879, msg.value);
}

function mutiSendETHWithSameValue(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 <= arg1.length
    if arg1.length - 1:
        require arg1.length - 1
        require -arg2 + (arg1.length * arg2) / arg1.length - 1 == arg2
    require msg.value >= -arg2 + (arg1.length * arg2)
    require arg1.length <= 255
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require arg2 <= s
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - arg2
        continue 
    emit LogTokenMultiSent(48879, msg.value);
}

function multisend(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 0 < arg2.length
    require msg.value >= mem[(32 * arg1.length) + 160]
    require arg1.length == arg2.length
    require arg1.length <= 255
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= s
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    emit LogTokenMultiSent(48879, msg.value);
}

function mutiSendETHWithDifferentValue(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 0 < arg2.length
    require msg.value >= mem[(32 * arg1.length) + 160]
    require arg1.length == arg2.length
    require arg1.length <= 255
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= s
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    emit LogTokenMultiSent(48879, msg.value);
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length <= 255
    require 0 < arg3.length
    _7 = mem[(32 * arg2.length) + 160]
    idx = 1
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _23 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_21)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _23
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_21), _23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit LogTokenMultiSent(address(arg1), _7);
}

function mutiSendCoinWithDifferentValue(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length <= 255
    require 0 < arg3.length
    _7 = mem[(32 * arg2.length) + 160]
    idx = 1
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        _23 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_21)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _23
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_21), _23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit LogTokenMultiSent(address(arg1), _7);
}

function drop(address arg1, address[] arg2, uint256 arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= 255
    require 1 <= arg2.length
    if not arg2.length - 1:
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _26 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_26)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_26), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        require arg2.length - 1
        require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _29 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_29)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_29), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit LogTokenMultiSent(address(arg1), -arg3 + (arg2.length * arg3));
}

function mutiSendCoinWithSameValue(address arg1, address[] arg2, uint256 arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= 255
    require 1 <= arg2.length
    if not arg2.length - 1:
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _26 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_26)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_26), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        require arg2.length - 1
        require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _29 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_29)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_29), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit LogTokenMultiSent(address(arg1), -arg3 + (arg2.length * arg3));
}



}
