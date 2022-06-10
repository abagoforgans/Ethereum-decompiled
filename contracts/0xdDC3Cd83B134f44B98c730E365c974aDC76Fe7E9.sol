contract main {




// =====================  Runtime code  =====================


address owner;
address mintableTokenAddress;
address payoutsWalletAddress;
address minterWalletAddress;
uint256 minterFeePercent;

function owner() {
    return owner
}

function minterWallet() {
    return minterWalletAddress
}

function mintableToken() {
    return mintableTokenAddress
}

function minterFeePercent() {
    return minterFeePercent
}

function payoutsWallet() {
    return payoutsWalletAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMinterWallet(address arg1) {
    require msg.sender == owner
    minterWalletAddress = arg1
    return 1
}

function setMintableToken(address arg1) {
    require msg.sender == owner
    mintableTokenAddress = arg1
    return 1
}

function setPayoutsWallet(address arg1) {
    require msg.sender == owner
    payoutsWalletAddress = arg1
    return 1
}

function setMinterFeePercent(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 <= 100
    minterFeePercent = arg1
    return 1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function send(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function proxyMint(uint256 arg1, bytes32 arg2) {
    require msg.sender == owner
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.getMiningReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * minterFeePercent / ext_call.return_data[0] == minterFeePercent
    require ext_call.return_data[0] * minterFeePercent / 100 <= ext_call.return_data[0]
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.mint(uint256 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args minterWalletAddress, ext_call.return_data[0] * minterFeePercent / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args payoutsWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function proxyMergeMint(uint256 arg1, bytes32 arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.getMiningReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] * minterFeePercent / 100 <= ext_call.return_data[0]
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.mint(uint256 arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args minterWalletAddress, ext_call.return_data[0] * minterFeePercent / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[(32 * arg3.length) + 132] = payoutsWalletAddress
        mem[(32 * arg3.length) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args payoutsWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = 0
        t = 0
        u = 0
        v = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _94 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].merge() with:
                 gas gas_remaining wei
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                s = s
                t = t
                u = u
                v = _94
                idx = idx + 1
                continue 
            require ext_code.size(address(_94))
            call address(_94).lastRewardAmount() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require ext_call.return_data[0] * minterFeePercent / ext_call.return_data[0] == minterFeePercent
            require ext_call.return_data[0] * minterFeePercent / 100 <= ext_call.return_data[0]
            require ext_code.size(address(_94))
            call address(_94).0xa9059cbb with:
                 gas gas_remaining wei
                args minterWalletAddress, ext_call.return_data[0] * minterFeePercent / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(32 * arg3.length) + 132] = payoutsWalletAddress
            mem[(32 * arg3.length) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            require ext_code.size(address(_94))
            call address(_94).0xa9059cbb with:
                 gas gas_remaining wei
                args payoutsWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            t = ext_call.return_data[0] * minterFeePercent / 100
            u = ext_call.return_data[0]
            v = _94
            idx = idx + 1
            continue 
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * minterFeePercent / ext_call.return_data[0] == minterFeePercent
        require ext_call.return_data[0] * minterFeePercent / 100 <= ext_call.return_data[0]
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.mint(uint256 arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args minterWalletAddress, ext_call.return_data[0] * minterFeePercent / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[(32 * arg3.length) + 132] = payoutsWalletAddress
        mem[(32 * arg3.length) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
        require ext_code.size(mintableTokenAddress)
        call mintableTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args payoutsWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = 0
        t = 0
        u = 0
        v = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _99 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].merge() with:
                 gas gas_remaining wei
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                s = s
                t = t
                u = u
                v = _99
                idx = idx + 1
                continue 
            require ext_code.size(address(_99))
            call address(_99).lastRewardAmount() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require ext_call.return_data[0] * minterFeePercent / ext_call.return_data[0] == minterFeePercent
            require ext_call.return_data[0] * minterFeePercent / 100 <= ext_call.return_data[0]
            require ext_code.size(address(_99))
            call address(_99).0xa9059cbb with:
                 gas gas_remaining wei
                args minterWalletAddress, ext_call.return_data[0] * minterFeePercent / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(32 * arg3.length) + 132] = payoutsWalletAddress
            mem[(32 * arg3.length) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            require ext_code.size(address(_99))
            call address(_99).0xa9059cbb with:
                 gas gas_remaining wei
                args payoutsWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = ext_call.return_data[0] - (ext_call.return_data[0] * minterFeePercent / 100)
            t = ext_call.return_data[0] * minterFeePercent / 100
            u = ext_call.return_data[0]
            v = _99
            idx = idx + 1
            continue 
    return 1
}



}
