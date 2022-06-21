contract main {




// =====================  Runtime code  =====================


#
#  - distributeFunds(uint256 arg1)
#
address _owner;
mapping of uint256 sub_9224219a;
mapping of uint256 sub_b7623c03;
mapping of uint256 sub_2c272b61;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of address sub_d64d648b;
uint256 _totalAddresses;
uint256 sub_6977b386;
uint256 sub_02bcac1a;
address sub_f22c8277Address;
uint8 sub_c309b573; offset 160
uint8 sub_8d2eb9ea; offset 168
uint8 sub_40565b78; offset 176
uint8 sub_038984ab; offset 184
uint128 stor12; offset 168
uint128 stor12; offset 160
address _tokenAddress;
uint256 sub_1b5b7948;
uint256 _transactionFee;
uint256 sub_0c0f19a0;
uint256 sub_334e5508;
uint256 _hardCap;
uint256 sub_7ac3b50a;
uint256 sub_3441f90a;
uint256 _totalTokenBalance;
uint256 sub_5ef9756b;

function sub_02bcac1a(?) {
    return sub_02bcac1a
}

function sub_038984ab(?) {
    return bool(sub_038984ab)
}

function sub_0c0f19a0(?) {
    return sub_0c0f19a0
}

function _totalAddresses() {
    return _totalAddresses
}

function sub_1b5b7948(?) {
    return sub_1b5b7948
}

function sub_212d71bb(?) {
    return bool(stor5[arg1])
}

function sub_2c272b61(?) {
    return sub_2c272b61[arg1]
}

function sub_334e5508(?) {
    return sub_334e5508
}

function sub_3441f90a(?) {
    return sub_3441f90a
}

function sub_40565b78(?) {
    return bool(sub_40565b78)
}

function sub_492101e8(?) {
    return bool(stor6[arg1])
}

function sub_5ef9756b(?) {
    return sub_5ef9756b
}

function sub_6977b386(?) {
    return sub_6977b386
}

function _transactionFee() {
    return _transactionFee
}

function sub_7ac3b50a(?) {
    return sub_7ac3b50a
}

function _hardCap() {
    return _hardCap
}

function sub_8d2eb9ea(?) {
    return bool(sub_8d2eb9ea)
}

function sub_9224219a(?) {
    return sub_9224219a[arg1]
}

function _isWhitelisted(address arg1) {
    return bool(stor4[arg1])
}

function _owner() {
    return _owner
}

function sub_b7623c03(?) {
    return sub_b7623c03[arg1]
}

function sub_c309b573(?) {
    return bool(sub_c309b573)
}

function sub_d64d648b(?) {
    require arg1 < sub_d64d648b.length
    return sub_d64d648b[arg1]
}

function _totalTokenBalance() {
    return _totalTokenBalance
}

function _token() {
    return _tokenAddress
}

function sub_f22c8277(?) {
    return sub_f22c8277Address
}

function sub_537f2183(?) {
    require msg.sender == _owner
    sub_1b5b7948 = arg1
}

function sub_1d389687(?) {
    require msg.sender == _owner
    Mask(96, 0, stor12.field_160) = 0
}

function sub_d5fc3eda(?) {
    require msg.sender == _owner
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
}

function setTokenAddress(address arg1) {
    require msg.sender == _owner
    require not sub_8d2eb9ea
    _tokenAddress = arg1
}

function setSaleAddress(address arg1) {
    require msg.sender == _owner
    require not sub_c309b573
    sub_f22c8277Address = arg1
}

function sub_1101fe0d(?) {
    if stor5[address(arg1)]:
        return 0
    if not sub_b7623c03[address(arg1)]:
        return 0
    require sub_7ac3b50a
    return (sub_b7623c03[address(arg1)] * sub_3441f90a / sub_7ac3b50a)
}

function sub_a61434ab(?) {
    require msg.sender == _owner
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserTokenBalance(address arg1) {
    if not sub_8d2eb9ea:
        return 0
    if not _totalTokenBalance:
        return 0
    if stor6[address(arg1)]:
        return 0
    if not sub_b7623c03[address(arg1)]:
        return 0
    require sub_7ac3b50a
    return (sub_b7623c03[address(arg1)] * _totalTokenBalance / sub_7ac3b50a)
}

function removeFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == _owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_af9f0a5f(?) {
    require not sub_8d2eb9ea
    require not sub_c309b573
    require sub_40565b78
    require block.timestamp <= sub_1b5b7948
    if arg1 > sub_334e5508:
        require not sub_334e5508
    require arg1 >= sub_0c0f19a0
    sub_5ef9756b -= sub_2c272b61[address(msg.sender)]
    sub_2c272b61[address(msg.sender)] = arg1
    sub_5ef9756b += sub_2c272b61[address(msg.sender)]
}

function buyTokens() {
    require msg.sender == _owner
    require sub_f22c8277Address
    require not sub_8d2eb9ea
    Mask(96, 0, stor12.field_160) = 1
    call _owner with:
       value sub_3441f90a * _transactionFee / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_f22c8277Address with:
       value sub_3441f90a - (sub_3441f90a * _transactionFee / 10000) wei
         gas gas_remaining wei
    return 0
}

function sub_6c872cb9(?) {
    require msg.sender == _owner
    sub_3441f90a = eth.balance(this.address)
    Mask(88, 0, stor12.field_168) = 1
    if not _tokenAddress:
        _totalTokenBalance = 0
    else:
        require ext_code.size(_tokenAddress)
        call _tokenAddress.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _totalTokenBalance = ext_call.return_data[0]
}

function withdrawEth(uint256 arg1) {
    require not sub_8d2eb9ea
    require not sub_c309b573
    require arg1 <= sub_b7623c03[address(msg.sender)]
    require arg1 > 0
    if sub_0c0f19a0:
        require sub_b7623c03[address(msg.sender)] - arg1 >= sub_0c0f19a0
    require arg1 <= eth.balance(this.address)
    sub_b7623c03[address(msg.sender)] -= arg1
    if not sub_b7623c03[address(msg.sender)]:
        sub_6977b386--
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7ac3b50a = eth.balance(this.address)
    sub_3441f90a = eth.balance(this.address)
}

function sub_2a7e6c39(?) {
    require msg.sender == _owner
    if _tokenAddress:
        require ext_code.size(_tokenAddress)
        call _tokenAddress.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_tokenAddress)
        call _tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args _owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function updateAllocations(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == _owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            sub_9224219a[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function addToWhitelist(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == _owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_d64d648b.length++
        sub_d64d648b[sub_d64d648b.length] = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sub_9224219a[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        _totalAddresses++
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require not sub_c309b573
    require not sub_8d2eb9ea
    if sub_40565b78:
        require block.timestamp > sub_1b5b7948
    if _hardCap:
        require eth.balance(this.address) + msg.value <= _hardCap
    if sub_334e5508:
        require sub_b7623c03[address(msg.sender)] + msg.value <= sub_334e5508
    if sub_40565b78:
        require sub_b7623c03[address(msg.sender)] + msg.value <= sub_2c272b61[address(msg.sender)]
    if sub_038984ab:
        require stor4[address(msg.sender)]
        if sub_9224219a[address(msg.sender)]:
            require sub_b7623c03[address(msg.sender)] + msg.value <= sub_9224219a[address(msg.sender)]
    if not sub_b7623c03[address(msg.sender)]:
        sub_6977b386++
    sub_b7623c03[address(msg.sender)] += msg.value
    if not sub_038984ab:
        sub_d64d648b.length++
        sub_d64d648b[sub_d64d648b.length] = msg.sender
        _totalAddresses++
    sub_7ac3b50a = eth.balance(this.address)
    sub_3441f90a = eth.balance(this.address)
}

function withdrawFunds() {
    require not sub_c309b573
    if stor5[address(msg.sender)]:
        if not sub_8d2eb9ea:
            if not sub_8d2eb9ea:
            require 0 <= _totalTokenBalance
        if not _totalTokenBalance:
            if not sub_8d2eb9ea:
            require 0 <= _totalTokenBalance
        if stor6[address(msg.sender)]:
            if not sub_8d2eb9ea:
            require 0 <= _totalTokenBalance
        if not sub_b7623c03[address(msg.sender)]:
            if not sub_8d2eb9ea:
            require 0 <= _totalTokenBalance
        require sub_7ac3b50a
    else:
        if not sub_b7623c03[address(msg.sender)]:
            if not sub_8d2eb9ea:
                if not sub_8d2eb9ea:
                require 0 <= _totalTokenBalance
            if not _totalTokenBalance:
                if not sub_8d2eb9ea:
                require 0 <= _totalTokenBalance
            if stor6[address(msg.sender)]:
                if not sub_8d2eb9ea:
                require 0 <= _totalTokenBalance
            if not sub_b7623c03[address(msg.sender)]:
                if not sub_8d2eb9ea:
                require 0 <= _totalTokenBalance
            require sub_7ac3b50a
        else:
            require sub_7ac3b50a
            if not sub_8d2eb9ea:
                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= 0:
                    if not sub_8d2eb9ea:
                    if 0 <= _totalTokenBalance:
                else:
                    stor5[address(msg.sender)] = 1
                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address):
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_8d2eb9ea:
                        if 0 <= _totalTokenBalance:
                revert
            if not _totalTokenBalance:
                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= 0:
                    if not sub_8d2eb9ea:
                    if 0 <= _totalTokenBalance:
                else:
                    stor5[address(msg.sender)] = 1
                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address):
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_8d2eb9ea:
                        if 0 <= _totalTokenBalance:
                revert
            if stor6[address(msg.sender)]:
                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= 0:
                    if not sub_8d2eb9ea:
                    if 0 <= _totalTokenBalance:
                else:
                    stor5[address(msg.sender)] = 1
                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address):
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_8d2eb9ea:
                        if 0 <= _totalTokenBalance:
                revert
            if not sub_b7623c03[address(msg.sender)]:
                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= 0:
                    if not sub_8d2eb9ea:
                    if 0 <= _totalTokenBalance:
                else:
                    stor5[address(msg.sender)] = 1
                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address):
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not sub_8d2eb9ea:
                        if 0 <= _totalTokenBalance:
                revert
            require sub_7ac3b50a
            if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                stor5[address(msg.sender)] = 1
                require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                    call msg.sender with:
                       value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if sub_8d2eb9ea:
        require sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a <= _totalTokenBalance
        if sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a > 0:
            stor6[address(msg.sender)] = 1
            if _tokenAddress:
                require ext_code.size(_tokenAddress)
                call _tokenAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
}



}
