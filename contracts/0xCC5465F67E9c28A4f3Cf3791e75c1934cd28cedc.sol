contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[71 len 4970]
}



// =====================  Runtime code  =====================


address _owner;
mapping of uint256 sub_b7623c03;
mapping of uint256 sub_b758d6b4;
array of address sub_d64d648b;
uint256 _totalAddresses;
address sub_f22c8277Address;
uint256 _saleStartTime;
uint256 sub_60e6013a;
uint256 sub_43025a20;
uint256 sub_822009c0;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint128 stor10; offset 168
uint128 stor10; offset 160
address _tokenAddress;
uint256 sub_7ac3b50a;
uint256 sub_3441f90a;
uint256 _totalTokenBalance;

function _totalAddresses() {
    return _totalAddresses
}

function sub_3441f90a(?) {
    return sub_3441f90a
}

function sub_43025a20(?) {
    return sub_43025a20
}

function sub_60e6013a(?) {
    return sub_60e6013a
}

function _saleStartTime() {
    return _saleStartTime
}

function sub_7ac3b50a(?) {
    return sub_7ac3b50a
}

function sub_822009c0(?) {
    return sub_822009c0
}

function sub_8d2eb9ea(?) {
    return bool(uint8(stor10.field_168))
}

function _owner() {
    return _owner
}

function sub_b758d6b4(?) {
    return sub_b758d6b4[arg1]
}

function sub_b7623c03(?) {
    return sub_b7623c03[arg1]
}

function sub_c309b573(?) {
    return bool(uint8(stor10.field_160))
}

function sub_d64d648b(?) {
    require arg1 < sub_d64d648b.length
    return address(sub_d64d648b[arg1])
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

function sub_5209edf6(?) {
    require msg.sender == _owner
    sub_43025a20 = arg1
}

function sub_fab286e8(?) {
    require msg.sender == _owner
    sub_60e6013a = arg1
}

function setTokenAddress(address arg1) {
    require msg.sender == _owner
    _tokenAddress = arg1
}

function setMaxEth(uint256 arg1) {
    require msg.sender == _owner
    sub_822009c0 = 10^18 * arg1
}

function setSaleStartTime(uint256 arg1) {
    require msg.sender == _owner
    _saleStartTime = arg1
}

function setSaleAddress(address arg1) {
    require msg.sender == _owner
    sub_f22c8277Address = arg1
}

function sub_a61434ab(?) {
    require msg.sender == _owner
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getUserTokenBalance(address arg1) {
    if not uint8(stor10.field_168):
        return 0
    if 0 == _totalTokenBalance:
        return 0
    if sub_b758d6b4[address(arg1)]:
        return sub_b758d6b4[address(arg1)]
    if sub_b7623c03[address(arg1)] <= 0:
        return sub_b758d6b4[address(arg1)]
    require sub_7ac3b50a
    return (99 * sub_b7623c03[address(arg1)] * _totalTokenBalance / sub_7ac3b50a / 100)
}

function sub_036f9cc7(?) {
    require msg.sender == _owner
    Mask(88, 0, stor10.field_168) = 1
    sub_3441f90a = eth.balance(this.address)
    if not _tokenAddress:
        _totalTokenBalance = 0
    else:
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        _totalTokenBalance = ext_call.return_data[0]
    Mask(96, 0, stor10.field_160) = 0
}

function sub_2a7e6c39(?) {
    require msg.sender == _owner
    if _tokenAddress:
        if block.timestamp >= sub_60e6013a:
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args _owner, ext_call.return_data[0]
            require ext_call.success
}

function buyTokens() {
    if 0 == _saleStartTime:
        return 1
    if block.timestamp < _saleStartTime:
        return 1
    if 0 == sub_f22c8277Address:
        return 2
    if uint8(stor10.field_168):
        return 3
    if sub_43025a20 > 0:
        if gas_remaining > 10^9 * sub_43025a20:
            return 4
    Mask(96, 0, stor10.field_160) = 1
    if sub_822009c0 <= 0:
        call sub_f22c8277Address with:
           value sub_3441f90a wei
             gas gas_remaining - 34710 wei
    else:
        if sub_3441f90a <= sub_822009c0:
            call sub_f22c8277Address with:
               value sub_3441f90a wei
                 gas gas_remaining - 34710 wei
        else:
            call sub_f22c8277Address with:
               value sub_822009c0 wei
                 gas gas_remaining - 34710 wei
    require ext_call.success
    Mask(88, 0, stor10.field_168) = 1
    sub_3441f90a = eth.balance(this.address)
    if not _tokenAddress:
        _totalTokenBalance = 0
    else:
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        _totalTokenBalance = ext_call.return_data[0]
    Mask(96, 0, stor10.field_160) = 0
    return 0
}

function sub_33547999(?) {
    require msg.sender == _owner
    Mask(96, 0, stor10.field_160) = 0
    Mask(88, 0, stor10.field_168) = 0
    Mask(88, 0, stor10.field_168) = 0
    _saleStartTime = 0
    sub_43025a20 = 0
    sub_822009c0 = 0
    sub_3441f90a = 0
    _totalTokenBalance = 0
    sub_7ac3b50a = 0
    s = 0
    idx = _totalAddresses
    while idx > 0:
        require idx - 1 < sub_d64d648b.length
        sub_b7623c03[address(stor3[idx])] = 0
        mem[0] = address(sub_d64d648b[idx])
        mem[32] = 2
        sub_b758d6b4[address(stor3[idx])] = 0
        s = address(sub_d64d648b[idx])
        idx = idx - 1
        continue 
    _totalAddresses = 0
    sub_d64d648b.length = 0
    if not sub_d64d648b.length <= 0:
        idx = 0
        while sub_d64d648b.length > idx:
            uint256(sub_d64d648b[idx]) = 0
            idx = idx + 1
            continue 
    if _tokenAddress:
        if block.timestamp >= sub_60e6013a:
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args _owner, ext_call.return_data[0]
            require ext_call.success
    if eth.balance(this.address) > 0:
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    if msg.value > 10^15:
        require not uint8(stor10.field_160)
        require not uint8(stor10.field_168)
        sub_b7623c03[address(msg.sender)] += msg.value
        sub_d64d648b.length++
        if not sub_d64d648b.length <= sub_d64d648b.length + 1:
            idx = sub_d64d648b.length + 1
            while sub_d64d648b.length > idx:
                uint256(sub_d64d648b[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_d64d648b[sub_d64d648b.length]) = msg.sender
        _totalAddresses++
        sub_7ac3b50a = eth.balance(this.address)
        sub_3441f90a = eth.balance(this.address)
    else:
        if _saleStartTime <= 0:
            require not uint8(stor10.field_160)
            if not uint8(stor10.field_168):
                sub_b758d6b4[address(msg.sender)] = 0
                if sub_b7623c03[address(msg.sender)] > 0:
                    sub_b7623c03[address(msg.sender)] = 0
                    require sub_7ac3b50a
                    require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                        call msg.sender with:
                           value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                if uint8(stor10.field_168):
                    if block.timestamp < sub_60e6013a:
                    require 0 <= _totalTokenBalance
                sub_7ac3b50a = eth.balance(this.address)
                sub_3441f90a = eth.balance(this.address)
            else:
                if 0 == _totalTokenBalance:
                    sub_b758d6b4[address(msg.sender)] = 0
                    if sub_b7623c03[address(msg.sender)] > 0:
                        sub_b7623c03[address(msg.sender)] = 0
                        require sub_7ac3b50a
                        require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if uint8(stor10.field_168):
                        if block.timestamp < sub_60e6013a:
                        require 0 <= _totalTokenBalance
                    sub_7ac3b50a = eth.balance(this.address)
                    sub_3441f90a = eth.balance(this.address)
                else:
                    if sub_b758d6b4[address(msg.sender)]:
                        if sub_b7623c03[address(msg.sender)] > 0:
                            sub_b7623c03[address(msg.sender)] = 0
                            require sub_7ac3b50a
                            require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                            if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                call msg.sender with:
                                   value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if not uint8(stor10.field_168):
                            sub_7ac3b50a = eth.balance(this.address)
                            sub_3441f90a = eth.balance(this.address)
                        else:
                            if block.timestamp >= sub_60e6013a:
                                require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                if sub_b758d6b4[address(msg.sender)] > 0:
                                    sub_b758d6b4[address(msg.sender)] = 0
                                    if _tokenAddress:
                                        if block.timestamp >= sub_60e6013a:
                                            require ext_code.size(_tokenAddress)
                                            call _tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, sub_b758d6b4[address(msg.sender)]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                    else:
                        if sub_b7623c03[address(msg.sender)] <= 0:
                            if sub_b7623c03[address(msg.sender)] > 0:
                                sub_b7623c03[address(msg.sender)] = 0
                                require sub_7ac3b50a
                                require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                    call msg.sender with:
                                       value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if not uint8(stor10.field_168):
                                sub_7ac3b50a = eth.balance(this.address)
                                sub_3441f90a = eth.balance(this.address)
                            else:
                                if block.timestamp >= sub_60e6013a:
                                    require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                    if sub_b758d6b4[address(msg.sender)] > 0:
                                        sub_b758d6b4[address(msg.sender)] = 0
                                        if _tokenAddress:
                                            if block.timestamp >= sub_60e6013a:
                                                require ext_code.size(_tokenAddress)
                                                call _tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, sub_b758d6b4[address(msg.sender)]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                        else:
                            require sub_7ac3b50a
                            sub_b758d6b4[address(msg.sender)] = 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                            if sub_b7623c03[address(msg.sender)] > 0:
                                sub_b7623c03[address(msg.sender)] = 0
                                require sub_7ac3b50a
                                require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                    call msg.sender with:
                                       value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if not uint8(stor10.field_168):
                                sub_7ac3b50a = eth.balance(this.address)
                                sub_3441f90a = eth.balance(this.address)
                            else:
                                if block.timestamp >= sub_60e6013a:
                                    require 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 <= _totalTokenBalance
                                    if 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 > 0:
                                        sub_b758d6b4[address(msg.sender)] = 0
                                        if _tokenAddress:
                                            if block.timestamp >= sub_60e6013a:
                                                require ext_code.size(_tokenAddress)
                                                call _tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                                                require ext_call.success
                                                require ext_call.return_data[0]
        else:
            if block.timestamp < _saleStartTime:
                require not uint8(stor10.field_160)
                if not uint8(stor10.field_168):
                    sub_b758d6b4[address(msg.sender)] = 0
                    if sub_b7623c03[address(msg.sender)] > 0:
                        sub_b7623c03[address(msg.sender)] = 0
                        require sub_7ac3b50a
                        require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                            call msg.sender with:
                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    if uint8(stor10.field_168):
                        if block.timestamp < sub_60e6013a:
                        require 0 <= _totalTokenBalance
                    sub_7ac3b50a = eth.balance(this.address)
                    sub_3441f90a = eth.balance(this.address)
                else:
                    if 0 == _totalTokenBalance:
                        sub_b758d6b4[address(msg.sender)] = 0
                        if sub_b7623c03[address(msg.sender)] > 0:
                            sub_b7623c03[address(msg.sender)] = 0
                            require sub_7ac3b50a
                            require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                            if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                call msg.sender with:
                                   value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if uint8(stor10.field_168):
                            if block.timestamp < sub_60e6013a:
                            require 0 <= _totalTokenBalance
                        sub_7ac3b50a = eth.balance(this.address)
                        sub_3441f90a = eth.balance(this.address)
                    else:
                        if sub_b758d6b4[address(msg.sender)]:
                            if sub_b7623c03[address(msg.sender)] > 0:
                                sub_b7623c03[address(msg.sender)] = 0
                                require sub_7ac3b50a
                                require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                    call msg.sender with:
                                       value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if not uint8(stor10.field_168):
                                sub_7ac3b50a = eth.balance(this.address)
                                sub_3441f90a = eth.balance(this.address)
                            else:
                                if block.timestamp >= sub_60e6013a:
                                    require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                    if sub_b758d6b4[address(msg.sender)] > 0:
                                        sub_b758d6b4[address(msg.sender)] = 0
                                        if _tokenAddress:
                                            if block.timestamp >= sub_60e6013a:
                                                require ext_code.size(_tokenAddress)
                                                call _tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, sub_b758d6b4[address(msg.sender)]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                        else:
                            if sub_b7623c03[address(msg.sender)] <= 0:
                                if sub_b7623c03[address(msg.sender)] > 0:
                                    sub_b7623c03[address(msg.sender)] = 0
                                    require sub_7ac3b50a
                                    require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                        call msg.sender with:
                                           value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                if not uint8(stor10.field_168):
                                    sub_7ac3b50a = eth.balance(this.address)
                                    sub_3441f90a = eth.balance(this.address)
                                else:
                                    if block.timestamp >= sub_60e6013a:
                                        require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                        if sub_b758d6b4[address(msg.sender)] > 0:
                                            sub_b758d6b4[address(msg.sender)] = 0
                                            if _tokenAddress:
                                                if block.timestamp >= sub_60e6013a:
                                                    require ext_code.size(_tokenAddress)
                                                    call _tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, sub_b758d6b4[address(msg.sender)]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                            else:
                                require sub_7ac3b50a
                                sub_b758d6b4[address(msg.sender)] = 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                                if sub_b7623c03[address(msg.sender)] > 0:
                                    sub_b7623c03[address(msg.sender)] = 0
                                    require sub_7ac3b50a
                                    require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                        call msg.sender with:
                                           value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                if not uint8(stor10.field_168):
                                    sub_7ac3b50a = eth.balance(this.address)
                                    sub_3441f90a = eth.balance(this.address)
                                else:
                                    if block.timestamp >= sub_60e6013a:
                                        require 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 <= _totalTokenBalance
                                        if 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 > 0:
                                            sub_b758d6b4[address(msg.sender)] = 0
                                            if _tokenAddress:
                                                if block.timestamp >= sub_60e6013a:
                                                    require ext_code.size(_tokenAddress)
                                                    call _tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
            else:
                if not uint8(stor10.field_168):
                    if _saleStartTime != 0:
                        if block.timestamp >= _saleStartTime:
                            if sub_f22c8277Address != 0:
                                if not uint8(stor10.field_168):
                                    if sub_43025a20 <= 0:
                                        Mask(96, 0, stor10.field_160) = 1
                                        if sub_822009c0 <= 0:
                                            call sub_f22c8277Address with:
                                               value sub_3441f90a wei
                                                 gas gas_remaining - 34710 wei
                                        else:
                                            if sub_3441f90a <= sub_822009c0:
                                                call sub_f22c8277Address with:
                                                   value sub_3441f90a wei
                                                     gas gas_remaining - 34710 wei
                                            else:
                                                call sub_f22c8277Address with:
                                                   value sub_822009c0 wei
                                                     gas gas_remaining - 34710 wei
                                        require ext_call.success
                                        Mask(88, 0, stor10.field_168) = 1
                                        sub_3441f90a = eth.balance(this.address)
                                        if not _tokenAddress:
                                            _totalTokenBalance = 0
                                        else:
                                            require ext_code.size(_tokenAddress)
                                            call _tokenAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            require ext_call.success
                                            _totalTokenBalance = ext_call.return_data[0]
                                        Mask(96, 0, stor10.field_160) = 0
                                    else:
                                        if gas_remaining <= 10^9 * sub_43025a20:
                                            Mask(96, 0, stor10.field_160) = 1
                                            if sub_822009c0 <= 0:
                                                call sub_f22c8277Address with:
                                                   value sub_3441f90a wei
                                                     gas gas_remaining - 34710 wei
                                            else:
                                                if sub_3441f90a <= sub_822009c0:
                                                    call sub_f22c8277Address with:
                                                       value sub_3441f90a wei
                                                         gas gas_remaining - 34710 wei
                                                else:
                                                    call sub_f22c8277Address with:
                                                       value sub_822009c0 wei
                                                         gas gas_remaining - 34710 wei
                                            require ext_call.success
                                            Mask(88, 0, stor10.field_168) = 1
                                            sub_3441f90a = eth.balance(this.address)
                                            if not _tokenAddress:
                                                _totalTokenBalance = 0
                                            else:
                                                require ext_code.size(_tokenAddress)
                                                call _tokenAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                require ext_call.success
                                                _totalTokenBalance = ext_call.return_data[0]
                                            Mask(96, 0, stor10.field_160) = 0
                else:
                    require not uint8(stor10.field_160)
                    if not uint8(stor10.field_168):
                        sub_b758d6b4[address(msg.sender)] = 0
                        if sub_b7623c03[address(msg.sender)] > 0:
                            sub_b7623c03[address(msg.sender)] = 0
                            require sub_7ac3b50a
                            require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                            if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                call msg.sender with:
                                   value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        if uint8(stor10.field_168):
                            if block.timestamp < sub_60e6013a:
                            require 0 <= _totalTokenBalance
                        sub_7ac3b50a = eth.balance(this.address)
                        sub_3441f90a = eth.balance(this.address)
                    else:
                        if 0 == _totalTokenBalance:
                            sub_b758d6b4[address(msg.sender)] = 0
                            if sub_b7623c03[address(msg.sender)] > 0:
                                sub_b7623c03[address(msg.sender)] = 0
                                require sub_7ac3b50a
                                require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                    call msg.sender with:
                                       value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            if uint8(stor10.field_168):
                                if block.timestamp < sub_60e6013a:
                                require 0 <= _totalTokenBalance
                            sub_7ac3b50a = eth.balance(this.address)
                            sub_3441f90a = eth.balance(this.address)
                        else:
                            if sub_b758d6b4[address(msg.sender)]:
                                if sub_b7623c03[address(msg.sender)] > 0:
                                    sub_b7623c03[address(msg.sender)] = 0
                                    require sub_7ac3b50a
                                    require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                    if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                        call msg.sender with:
                                           value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                if not uint8(stor10.field_168):
                                    sub_7ac3b50a = eth.balance(this.address)
                                    sub_3441f90a = eth.balance(this.address)
                                else:
                                    if block.timestamp >= sub_60e6013a:
                                        require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                        if sub_b758d6b4[address(msg.sender)] > 0:
                                            sub_b758d6b4[address(msg.sender)] = 0
                                            if _tokenAddress:
                                                if block.timestamp >= sub_60e6013a:
                                                    require ext_code.size(_tokenAddress)
                                                    call _tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, sub_b758d6b4[address(msg.sender)]
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                            else:
                                if sub_b7623c03[address(msg.sender)] <= 0:
                                    if sub_b7623c03[address(msg.sender)] > 0:
                                        sub_b7623c03[address(msg.sender)] = 0
                                        require sub_7ac3b50a
                                        require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                            call msg.sender with:
                                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    if not uint8(stor10.field_168):
                                        sub_7ac3b50a = eth.balance(this.address)
                                        sub_3441f90a = eth.balance(this.address)
                                    else:
                                        if block.timestamp >= sub_60e6013a:
                                            require sub_b758d6b4[address(msg.sender)] <= _totalTokenBalance
                                            if sub_b758d6b4[address(msg.sender)] > 0:
                                                sub_b758d6b4[address(msg.sender)] = 0
                                                if _tokenAddress:
                                                    if block.timestamp >= sub_60e6013a:
                                                        require ext_code.size(_tokenAddress)
                                                        call _tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, sub_b758d6b4[address(msg.sender)]
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                else:
                                    require sub_7ac3b50a
                                    sub_b758d6b4[address(msg.sender)] = 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                                    if sub_b7623c03[address(msg.sender)] > 0:
                                        sub_b7623c03[address(msg.sender)] = 0
                                        require sub_7ac3b50a
                                        require sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a <= eth.balance(this.address)
                                        if sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a > 0:
                                            call msg.sender with:
                                               value sub_b7623c03[address(msg.sender)] * sub_3441f90a / sub_7ac3b50a wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    if not uint8(stor10.field_168):
                                        sub_7ac3b50a = eth.balance(this.address)
                                        sub_3441f90a = eth.balance(this.address)
                                    else:
                                        if block.timestamp >= sub_60e6013a:
                                            require 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 <= _totalTokenBalance
                                            if 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100 > 0:
                                                sub_b758d6b4[address(msg.sender)] = 0
                                                if _tokenAddress:
                                                    if block.timestamp >= sub_60e6013a:
                                                        require ext_code.size(_tokenAddress)
                                                        call _tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 99 * sub_b7623c03[address(msg.sender)] * _totalTokenBalance / sub_7ac3b50a / 100
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
}



}
