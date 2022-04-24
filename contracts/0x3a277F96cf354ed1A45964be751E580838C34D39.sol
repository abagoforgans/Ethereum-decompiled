contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    stor1 = code.data[2238 len 20]
    stor2 = code.data[2270 len 20]
    return code.data[104 len 2122]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address ebyteTokenAddress;
address owner;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function ebyteToken() {
    return ebyteTokenAddress
}

function _fallback() payable {
    revert
}

function getEthBalance(address arg1) {
    return eth.balance(arg1)
}

function tokensAvailable() {
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function getTokenBalance(address arg1) {
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawForeignTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_3ccfabe4(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _29 = mem[(32 * idx) + 128]
        if not arg2:
            require idx < arg1.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2
            emit sendTokens(mem[(32 * arg1.length) + 128], address(_31));
        else:
            require arg2
            require eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2 / arg2 == eth.balance(mem[(32 * idx) + 128]) / 10^18
            require idx < arg1.length
            _40 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2
            emit sendTokens(mem[(32 * arg1.length) + 128], address(_40));
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = eth.balance(_29) / 10^18 * arg2
        require ext_code.size(ebyteTokenAddress)
        call ebyteTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], eth.balance(_29) / 10^18 * arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = eth.balance(_29) / 10^18 * arg2
        s = eth.balance(_29) / 10^18
        idx = idx + 1
        continue 
}

function sub_92486f77(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = address(_34)
        require ext_code.size(ebyteTokenAddress)
        call ebyteTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_34)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0] / 100:
            require idx < arg1.length
            _41 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2 * ext_call.return_data[0] / 100
            emit sendTokens((arg2 * ext_call.return_data[0] / 100), address(_41));
        else:
            require ext_call.return_data[0] / 100
            require arg2 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 == arg2
            require idx < arg1.length
            _50 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2 * ext_call.return_data[0] / 100
            emit sendTokens((arg2 * ext_call.return_data[0] / 100), address(_50));
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2 * ext_call.return_data[0] / 100
        require ext_code.size(ebyteTokenAddress)
        call ebyteTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], arg2 * ext_call.return_data[0] / 100
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = arg2 * ext_call.return_data[0] / 100
        idx = idx + 1
        continue 
}

function sub_36cefd45(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    if 0 < arg1.length:
        require owner == msg.sender
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_60)
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_60)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0] / 100:
                require idx < arg1.length
                _70 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg3 * ext_call.return_data[0] / 100
                emit sendTokens((arg3 * ext_call.return_data[0] / 100), address(_70));
            else:
                require ext_call.return_data[0] / 100
                require arg3 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 == arg3
                require idx < arg1.length
                _80 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg3 * ext_call.return_data[0] / 100
                emit sendTokens((arg3 * ext_call.return_data[0] / 100), address(_80));
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = arg3 * ext_call.return_data[0] / 100
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 132], arg3 * ext_call.return_data[0] / 100
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            s = arg3 * ext_call.return_data[0] / 100
            idx = idx + 1
            continue 
        require owner == msg.sender
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _115 = mem[(32 * idx) + 128]
            if not arg2:
                require idx < arg1.length
                _117 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2
                emit sendTokens(mem[(32 * arg1.length) + 128], address(_117));
            else:
                require arg2
                require eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2 / arg2 == eth.balance(mem[(32 * idx) + 128]) / 10^18
                require idx < arg1.length
                _126 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = eth.balance(mem[(32 * idx) + 128]) / 10^18 * arg2
                emit sendTokens(mem[(32 * arg1.length) + 128], address(_126));
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = eth.balance(_115) / 10^18 * arg2
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 132], eth.balance(_115) / 10^18 * arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            s = eth.balance(_115) / 10^18 * arg2
            s = eth.balance(_115) / 10^18
            idx = idx + 1
            continue 
}



}
