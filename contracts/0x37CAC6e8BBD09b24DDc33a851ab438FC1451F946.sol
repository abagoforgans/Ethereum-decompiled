contract main {




// =====================  Runtime code  =====================


address sub_2a8e593aAddress;
address ownerAddr;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 sub_b50ee138;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 stor6;
uint256 sub_fa4e28f6;
mapping of struct sub_d7c871d4;
array of uint256 sub_4189853d;
address tokenAddress;
mapping of uint8 stor11;
mapping of address sub_6b71033c;

function sub_0958a13b(?) {
    return bool(stor2[arg1])
}

function sub_2a8e593a(?) {
    return sub_2a8e593aAddress
}

function sub_4189853d(?) {
    return sub_4189853d[arg1][0 len sub_4189853d[arg1].length]
}

function contractEnabled() {
    return bool(uint8(stor5.field_8))
}

function sub_44c05d6c(?) {
    return bool(stor11[arg1])
}

function sub_5a8be781(?) {
    return bool(stor3[arg1])
}

function sub_6b71033c(?) {
    return sub_6b71033c[arg1]
}

function ownerAddr() {
    return ownerAddr
}

function sub_b50ee138(?) {
    return sub_b50ee138
}

function sub_d7c871d4(?) {
    return sub_d7c871d4[arg1].field_0, 
           sub_d7c871d4[arg1].field_256,
           sub_d7c871d4[arg1].field_512,
           sub_d7c871d4[arg1].field_768,
           sub_d7c871d4[arg1].field_1024,
           sub_d7c871d4[arg1].field_1280,
           sub_d7c871d4[arg1].field_1536,
           sub_d7c871d4[arg1].field_1792,
           sub_d7c871d4[arg1].field_2048,
           sub_d7c871d4[arg1].field_2304,
           sub_d7c871d4[arg1].field_2560,
           sub_d7c871d4[arg1].field_2816,
           bool(sub_d7c871d4[arg1].field_3072),
           bool(sub_d7c871d4[arg1].field_3080)
}

function sub_fa4e28f6(?) {
    return sub_fa4e28f6
}

function token() {
    return tokenAddress
}

function apiAccessDisabled() {
    return bool(uint8(stor5.field_0))
}

function addApiAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor2[address(arg1)] = 1
}

function removeApiAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor2[address(arg1)] = 0
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if tokenAddress != msg.sender:
        revert with 0, 'This smart contract accepts only VCO ERC20 tokens.'
}

function addContractAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor3[address(arg1)] = 1
}

function removeContractAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor3[address(arg1)] = 0
}

function setOwnerAddr(address arg1) {
    if sub_2a8e593aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be a superOwner.'
    ownerAddr = arg1
}

function disableApiAccess(bool arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    uint8(stor5.field_0) = uint8(arg1)
}

function setContractEnabled(bool arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg1)
}

function sub_44ba9691(?) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if sub_d7c871d4[stor7].field_3080:
        sub_d7c871d4[stor7].field_3080 = 0
}

function sub_4318139a(?) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if not sub_d7c871d4[stor7].field_3080:
        sub_d7c871d4[stor7].field_2816 = block.number
        sub_d7c871d4[stor7].field_3072 = 0
        sub_d7c871d4[stor7].field_3080 = 1
}

function sendEth(address arg1, uint256 arg2) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fdd164cb(?) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if sub_d7c871d4[stor7].field_2560 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Offer start block must already be set.'
    sub_d7c871d4[stor7].field_2816 = arg1
}

function sub_9a8a42c6(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    stor11[address(arg1)] = 1
}

function sub_b25f357c(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    stor11[address(arg1)] = 0
}

function sub_27931797(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    sub_6b71033c[address(arg1)] = 0
}

function sub_b59df27d(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    sub_6b71033c[address(arg1)] = arg2
}

function sub_726cd1a7(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    sub_b50ee138 = arg1
    emit 0xc2f238f6: arg1, block.number, block.timestamp
}

function sendToken(address arg1, uint256 arg2) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8a3e358f(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if bool(stor2[address(msg.sender)]) == 1:
        if uint8(stor5.field_0):
            revert with 0, 'API access is disabled.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a1256943(?) {
    if ownerAddr != msg.sender:
        revert with 0, 'Access denied for this address. It has to be an owner.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if not sub_d7c871d4[stor7].field_3080:
        sub_d7c871d4[stor7].field_2816 = block.number
        sub_d7c871d4[stor7].field_3072 = 0
        sub_d7c871d4[stor7].field_3080 = 1
    sub_fa4e28f6++
    sub_d7c871d4[stor7].field_0 = arg1
    sub_d7c871d4[stor7].field_256 = sub_d7c871d4[stor7].field_0
    sub_d7c871d4[stor7].field_512 = arg2
    sub_d7c871d4[stor7].field_768 = sub_d7c871d4[stor7].field_512 / 20
    sub_d7c871d4[stor7].field_2560 = arg3
    sub_d7c871d4[stor7].field_2816 = arg4
    sub_d7c871d4[stor7].field_3072 = 0
    sub_d7c871d4[stor7].field_3080 = 0
    sub_4189853d[stor7][] = Array(len=arg5.length, data=arg5[all])
}

function sub_6575dc83(?) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Access denied for this address. It has to be an owner or api.'
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    require sub_d7c871d4[stor7].field_2048 + arg1 >= sub_d7c871d4[stor7].field_2048
    if sub_d7c871d4[stor7].field_2048 + arg1 <= sub_d7c871d4[stor7].field_768:
        require sub_d7c871d4[stor7].field_2048 + arg1 >= sub_d7c871d4[stor7].field_2048
        sub_d7c871d4[stor7].field_2048 += arg1
        sub_d7c871d4[stor7].field_2304++
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xe08587e8: address(arg2), arg1, sub_b50ee138, block.number, block.timestamp
}

function _fallback() payable {
    if not uint8(stor5.field_8):
        revert with 0, 'Smart contract must be enabled.'
    if msg.sender == ownerAddr:
        if block.number >= sub_d7c871d4[stor7].field_2560:
            if block.number <= sub_d7c871d4[stor7].field_2816:
                if not sub_d7c871d4[stor7].field_3072:
                    sub_d7c871d4[stor7].field_3072 = 1
        if block.number > sub_d7c871d4[stor7].field_2816:
            if sub_d7c871d4[stor7].field_3072:
                if not uint8(stor5.field_8):
                    revert with 0, 'Smart contract must be enabled.'
                if not sub_d7c871d4[stor7].field_3080:
                    sub_d7c871d4[stor7].field_2816 = block.number
                    sub_d7c871d4[stor7].field_3072 = 0
                    sub_d7c871d4[stor7].field_3080 = 1
    else:
        if not stor11[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address must be allowed to deposit.'
        if block.number >= sub_d7c871d4[stor7].field_2560:
            if block.number <= sub_d7c871d4[stor7].field_2816:
                if not sub_d7c871d4[stor7].field_3072:
                    sub_d7c871d4[stor7].field_3072 = 1
        if block.number < sub_d7c871d4[stor7].field_2560:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Current block.number is outside the offer block frame or offer is closed.'
        if block.number > sub_d7c871d4[stor7].field_2816:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Current block.number is outside the offer block frame or offer is closed.'
        if sub_d7c871d4[stor7].field_3080:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Current block.number is outside the offer block frame or offer is closed.'
        if sub_b50ee138 <= 0:
            revert with 0, 'ETH/Fiat rate must be set.'
        require sub_b50ee138
        if msg.value < sub_d7c871d4[stor7].field_256 * 10^18 / sub_b50ee138:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum investment amount is unfulfilled.'
        if not msg.value:
            require sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 > 0
            require sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138
            if not 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138:
                require sub_d7c871d4[stor7].field_1536 >= sub_d7c871d4[stor7].field_1536
                if sub_d7c871d4[stor7].field_1536 > sub_d7c871d4[stor7].field_512:
                    revert with 0, 'Exceeded offer tokens cap.'
                require sub_d7c871d4[stor7].field_1024 + msg.value >= sub_d7c871d4[stor7].field_1024
                sub_d7c871d4[stor7].field_1024 += msg.value
                sub_d7c871d4[stor7].field_1280++
                require sub_d7c871d4[stor7].field_1536 >= sub_d7c871d4[stor7].field_1536
                sub_d7c871d4[stor7].field_1792++
                emit 0x1d76fc7d: address(msg.sender), msg.value, block.number, block.timestamp
                emit 0xc9aa1288: address(msg.sender), 0, sub_b50ee138, block.number, block.timestamp
                if sub_6b71033c[address(msg.sender)] > 0:
                    require sub_d7c871d4[stor7].field_2048 >= sub_d7c871d4[stor7].field_2048
                    if sub_d7c871d4[stor7].field_2048 <= sub_d7c871d4[stor7].field_768:
                        require sub_d7c871d4[stor7].field_2048 >= sub_d7c871d4[stor7].field_2048
                        sub_d7c871d4[stor7].field_2304++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6b71033c[address(msg.sender)], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xe08587e8: sub_6b71033c[address(msg.sender)], 0, sub_b50ee138, block.number, block.timestamp
            else:
                require 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138
                require 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 == 10^stor6
                require sub_d7c871d4[stor7].field_1536 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) >= sub_d7c871d4[stor7].field_1536
                if sub_d7c871d4[stor7].field_1536 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) > sub_d7c871d4[stor7].field_512:
                    revert with 0, 'Exceeded offer tokens cap.'
                require sub_d7c871d4[stor7].field_1024 + msg.value >= sub_d7c871d4[stor7].field_1024
                sub_d7c871d4[stor7].field_1024 += msg.value
                sub_d7c871d4[stor7].field_1280++
                require sub_d7c871d4[stor7].field_1536 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) >= sub_d7c871d4[stor7].field_1536
                sub_d7c871d4[stor7].field_1536 += 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                sub_d7c871d4[stor7].field_1792++
                if 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                emit 0x1d76fc7d: address(msg.sender), msg.value, block.number, block.timestamp
                emit 0xc9aa1288: address(msg.sender), 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100, sub_b50ee138, block.number, block.timestamp
                if sub_6b71033c[address(msg.sender)] > 0:
                    require sub_d7c871d4[stor7].field_2048 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) >= sub_d7c871d4[stor7].field_2048
                    if sub_d7c871d4[stor7].field_2048 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) <= sub_d7c871d4[stor7].field_768:
                        require sub_d7c871d4[stor7].field_2048 + (0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) >= sub_d7c871d4[stor7].field_2048
                        sub_d7c871d4[stor7].field_2048 += 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        sub_d7c871d4[stor7].field_2304++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6b71033c[address(msg.sender)], 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xe08587e8: sub_6b71033c[address(msg.sender)], 0 / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20, sub_b50ee138, block.number, block.timestamp
        else:
            require msg.value
            require 100 * msg.value / msg.value == 100
            require sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 > 0
            require sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138
            if not 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138:
                require sub_d7c871d4[stor7].field_1536 >= sub_d7c871d4[stor7].field_1536
                if sub_d7c871d4[stor7].field_1536 > sub_d7c871d4[stor7].field_512:
                    revert with 0, 'Exceeded offer tokens cap.'
                require sub_d7c871d4[stor7].field_1024 + msg.value >= sub_d7c871d4[stor7].field_1024
                sub_d7c871d4[stor7].field_1024 += msg.value
                sub_d7c871d4[stor7].field_1280++
                require sub_d7c871d4[stor7].field_1536 >= sub_d7c871d4[stor7].field_1536
                sub_d7c871d4[stor7].field_1792++
                emit 0x1d76fc7d: address(msg.sender), msg.value, block.number, block.timestamp
                emit 0xc9aa1288: address(msg.sender), 0, sub_b50ee138, block.number, block.timestamp
                if sub_6b71033c[address(msg.sender)] > 0:
                    require sub_d7c871d4[stor7].field_2048 >= sub_d7c871d4[stor7].field_2048
                    if sub_d7c871d4[stor7].field_2048 <= sub_d7c871d4[stor7].field_768:
                        require sub_d7c871d4[stor7].field_2048 >= sub_d7c871d4[stor7].field_2048
                        sub_d7c871d4[stor7].field_2304++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6b71033c[address(msg.sender)], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xe08587e8: sub_6b71033c[address(msg.sender)], 0, sub_b50ee138, block.number, block.timestamp
            else:
                require 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138
                require 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 == 10^stor6
                require sub_d7c871d4[stor7].field_1536 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) >= sub_d7c871d4[stor7].field_1536
                if sub_d7c871d4[stor7].field_1536 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) > sub_d7c871d4[stor7].field_512:
                    revert with 0, 'Exceeded offer tokens cap.'
                require sub_d7c871d4[stor7].field_1024 + msg.value >= sub_d7c871d4[stor7].field_1024
                sub_d7c871d4[stor7].field_1024 += msg.value
                sub_d7c871d4[stor7].field_1280++
                require sub_d7c871d4[stor7].field_1536 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100) >= sub_d7c871d4[stor7].field_1536
                sub_d7c871d4[stor7].field_1536 += 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                sub_d7c871d4[stor7].field_1792++
                if 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                emit 0x1d76fc7d: address(msg.sender), msg.value, block.number, block.timestamp
                emit 0xc9aa1288: address(msg.sender), 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100, sub_b50ee138, block.number, block.timestamp
                if sub_6b71033c[address(msg.sender)] > 0:
                    require sub_d7c871d4[stor7].field_2048 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) >= sub_d7c871d4[stor7].field_2048
                    if sub_d7c871d4[stor7].field_2048 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) <= sub_d7c871d4[stor7].field_768:
                        require sub_d7c871d4[stor7].field_2048 + (100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20) >= sub_d7c871d4[stor7].field_2048
                        sub_d7c871d4[stor7].field_2048 += 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        sub_d7c871d4[stor7].field_2304++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6b71033c[address(msg.sender)], 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xe08587e8: sub_6b71033c[address(msg.sender)], 100 * msg.value / sub_d7c871d4[stor7].field_0 * 10^18 / sub_b50ee138 * 10^stor6 / 100 / 20, sub_b50ee138, block.number, block.timestamp
}



}
