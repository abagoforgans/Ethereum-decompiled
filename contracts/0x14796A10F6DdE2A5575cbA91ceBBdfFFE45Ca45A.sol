contract main {




// =====================  Runtime code  =====================


const sub_3a5673a4(?) = Array(len=43, data=code.data[20925 len 43])


address _owner;
address tokenContractAddress;
array of struct shares;
mapping of address sharesToManager;
mapping of uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
address stor5;
address stor5; offset 16
uint256 stor5; offset 8
uint256 sub_5f1fc59a;
uint256 sub_192fc516;
uint256 sub_7286cff5;
uint256 sub_c7f73448;
uint256 sub_2cc6b2ce;

function sub_192fc516(?) {
    return sub_192fc516
}

function sub_2cc6b2ce(?) {
    return sub_2cc6b2ce
}

function tokenContract() {
    return tokenContractAddress
}

function shares(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shares.length
    return shares[arg1].field_0, shares[arg1].field_256
}

function sub_5f1fc59a(?) {
    return sub_5f1fc59a
}

function sub_7286cff5(?) {
    return sub_7286cff5
}

function owner() {
    return _owner
}

function sharesToManager(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sharesToManager[arg1]
}

function _owner() {
    return _owner
}

function sub_c7f73448(?) {
    return sub_c7f73448
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == _owner)
}

function renounceOwnership() {
    require msg.sender == _owner
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function getSharesByShareOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        mem[128 len 32 * stor4[address(arg1)]] = code.data[11432 len 32 * stor4[address(arg1)]]
    idx = 0
    s = 0
    while idx < shares.length:
        mem[0] = idx
        mem[32] = 3
        if sharesToManager[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < stor4[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)]) + 192 len floor32(stor4[address(arg1)])] = mem[128 len floor32(stor4[address(arg1)])]
    return Array(len=stor4[address(arg1)], data=mem[128 len floor32(stor4[address(arg1)])], mem[(32 * stor4[address(arg1)]) + floor32(stor4[address(arg1)]) + 192 len (32 * stor4[address(arg1)]) - floor32(stor4[address(arg1)])]), 
}

function etherPayout() payable {
    mem[64] = 96
    require eth.balance(this.address) > 10^16
    require not uint8(stor5.field_0)
    uint8(stor5.field_0) = 1
    idx = 0
    s = 0
    while idx < shares.length:
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[0] = 2
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = shares[idx].field_0
        mem[_32 + 32] = shares[idx].field_256
        if idx <= 0:
            if not eth.balance(this.address):
                call shares[idx].field_0 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                call shares[idx].field_0 with:
                   value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not eth.balance(this.address):
                mem[mem[64]] = shares[idx].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'Owner'
                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                 shares[idx].field_0,
                                 0,
                                 96,
                                 5,
                                 'Owner',
            else:
                require eth.balance(this.address)
                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                mem[mem[64]] = shares[idx].field_0
                mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'Owner'
                emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
        else:
            address(stor5.field_0) = shares[idx].field_0
            address(stor5.field_16) = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_c7f73448:
                require ext_code.size(address(stor5.field_16))
                staticcall address(stor5.field_16).0x3366eeb2 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not eth.balance(this.address):
                        call shares[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        call shares[idx].field_0 with:
                           value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
            else:
                require sub_c7f73448
                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                require ext_code.size(address(stor5.field_16))
                staticcall address(stor5.field_16).0x3366eeb2 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                    if not eth.balance(this.address):
                        call shares[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        call shares[idx].field_0 with:
                           value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
        idx = idx + 1
        s = s + 1
        continue 
    if eth.balance(this.address) > 0:
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit EtherPayout(_owner, eth.balance(this.address), Array(len=24, data='Owner - left from shares'));
    uint8(stor5.field_0) = 0
}

function tokenPayout() payable {
    mem[64] = 96
    require not uint8(stor5.field_0)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 10^ext_call.return_data[0]
    uint8(stor5.field_0) = 1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < shares.length:
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = 0
        mem[_58 + 32] = 0
        mem[0] = 2
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = shares[idx].field_0
        mem[_62 + 32] = shares[idx].field_256
        if idx <= 0:
            if not ext_call.return_data[0]:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args shares[idx].field_0, 0
            else:
                require ext_call.return_data[0]
                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[mem[64]] = shares[idx].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'Owner'
                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                 shares[idx].field_0,
                                 0,
                                 96,
                                 5,
                                 'Owner',
            else:
                require ext_call.return_data[0]
                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                mem[mem[64]] = shares[idx].field_0
                mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 5
                mem[mem[64] + 128] = 'Owner'
                emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
        else:
            address(stor5.field_0) = shares[idx].field_0
            address(stor5.field_16) = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_c7f73448:
                require ext_code.size(address(stor5.field_16))
                staticcall address(stor5.field_16).0x3366eeb2 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args shares[idx].field_0, 0
                    else:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
            else:
                require sub_c7f73448
                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                require ext_code.size(address(stor5.field_16))
                staticcall address(stor5.field_16).0x3366eeb2 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args shares[idx].field_0, 0
                    else:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
        idx = idx + 1
        s = s + 1
        continue 
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args _owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
    uint8(stor5.field_0) = 0
}

function newShare() payable {
    mem[64] = 96
    require shares.length <= sub_5f1fc59a
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_c7f73448:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        if eth.balance(this.address) <= 10^16:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                require not uint8(stor5.field_0)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                uint8(stor5.field_0) = 1
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < shares.length:
                    _3473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3473] = 0
                    mem[_3473 + 32] = 0
                    mem[0] = 2
                    _3492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3492] = shares[idx].field_0
                    mem[_3492 + 32] = shares[idx].field_256
                    if idx <= 0:
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args shares[idx].field_0, 0
                        else:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = shares[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 'Owner'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             shares[idx].field_0,
                                             0,
                                             96,
                                             5,
                                             'Owner',
                        else:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                            mem[mem[64]] = shares[idx].field_0
                            mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 'Owner'
                            emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                    else:
                        address(stor5.field_0) = shares[idx].field_0
                        address(stor5.field_16) = 0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_c7f73448:
                            require ext_code.size(address(stor5.field_16))
                            staticcall address(stor5.field_16).0x3366eeb2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     shares[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        else:
                            require sub_c7f73448
                            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                            require ext_code.size(address(stor5.field_16))
                            staticcall address(stor5.field_16).0x3366eeb2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     shares[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    idx = idx + 1
                    s = s + 1
                    continue 
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                uint8(stor5.field_0) = 0
        else:
            require eth.balance(this.address) > 10^16
            require not uint8(stor5.field_0)
            uint8(stor5.field_0) = 1
            idx = 0
            s = 0
            while idx < shares.length:
                _3476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3476] = 0
                mem[_3476 + 32] = 0
                mem[0] = 2
                _3496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3496] = shares[idx].field_0
                mem[_3496 + 32] = shares[idx].field_256
                if idx <= 0:
                    if not eth.balance(this.address):
                        call shares[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        call shares[idx].field_0 with:
                           value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 'Owner'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         5,
                                         'Owner',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 'Owner'
                        emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                else:
                    address(stor5.field_0) = shares[idx].field_0
                    address(stor5.field_16) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_c7f73448:
                        require ext_code.size(address(stor5.field_16))
                        staticcall address(stor5.field_16).0x3366eeb2 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not eth.balance(this.address):
                                call shares[idx].field_0 with:
                                     gas 2300 wei
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                call shares[idx].field_0 with:
                                   value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not eth.balance(this.address):
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    else:
                        require sub_c7f73448
                        require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                        require ext_code.size(address(stor5.field_16))
                        staticcall address(stor5.field_16).0x3366eeb2 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                            if not eth.balance(this.address):
                                call shares[idx].field_0 with:
                                     gas 2300 wei
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                call shares[idx].field_0 with:
                                   value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not eth.balance(this.address):
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                idx = idx + 1
                s = s + 1
                continue 
            if eth.balance(this.address) <= 0:
                uint8(stor5.field_0) = 0
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                    require not uint8(stor5.field_0)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                    uint8(stor5.field_0) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < shares.length:
                        _6763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6763] = 0
                        mem[_6763 + 32] = 0
                        mem[0] = 2
                        _6777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6777] = shares[idx].field_0
                        mem[_6777 + 32] = shares[idx].field_256
                        if idx <= 0:
                            if not ext_call.return_data[0]:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, 0
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 5,
                                                 'Owner',
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                        else:
                            address(stor5.field_0) = shares[idx].field_0
                            address(stor5.field_16) = 0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x313ce567 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_c7f73448:
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                            else:
                                require sub_c7f73448
                                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                    uint8(stor5.field_0) = 0
            else:
                call _owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 96] = 24
                emit EtherPayout(_owner, eth.balance(this.address), Array(len=24, data='Owner - left from shares'));
                uint8(stor5.field_0) = 0
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                    require not uint8(stor5.field_0)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                    uint8(stor5.field_0) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < shares.length:
                        _6764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6764] = 0
                        mem[_6764 + 32] = 0
                        mem[0] = 2
                        _6780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6780] = shares[idx].field_0
                        mem[_6780 + 32] = shares[idx].field_256
                        if idx <= 0:
                            if not ext_call.return_data[0]:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, 0
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 5,
                                                 'Owner',
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                        else:
                            address(stor5.field_0) = shares[idx].field_0
                            address(stor5.field_16) = 0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x313ce567 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_c7f73448:
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                            else:
                                require sub_c7f73448
                                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                    uint8(stor5.field_0) = 0
    else:
        require sub_c7f73448
        require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= sub_c7f73448 * 10^ext_call.return_data[0]
        if eth.balance(this.address) <= 10^16:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                require not uint8(stor5.field_0)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                uint8(stor5.field_0) = 1
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < shares.length:
                    _3469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3469] = 0
                    mem[_3469 + 32] = 0
                    mem[0] = 2
                    _3485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3485] = shares[idx].field_0
                    mem[_3485 + 32] = shares[idx].field_256
                    if idx <= 0:
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args shares[idx].field_0, 0
                        else:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = shares[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 'Owner'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             shares[idx].field_0,
                                             0,
                                             96,
                                             5,
                                             'Owner',
                        else:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                            mem[mem[64]] = shares[idx].field_0
                            mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 'Owner'
                            emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                    else:
                        address(stor5.field_0) = shares[idx].field_0
                        address(stor5.field_16) = 0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_c7f73448:
                            require ext_code.size(address(stor5.field_16))
                            staticcall address(stor5.field_16).0x3366eeb2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     shares[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        else:
                            require sub_c7f73448
                            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                            require ext_code.size(address(stor5.field_16))
                            staticcall address(stor5.field_16).0x3366eeb2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     shares[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                    mem[mem[64]] = shares[idx].field_0
                                    mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    idx = idx + 1
                    s = s + 1
                    continue 
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                uint8(stor5.field_0) = 0
        else:
            require eth.balance(this.address) > 10^16
            require not uint8(stor5.field_0)
            uint8(stor5.field_0) = 1
            idx = 0
            s = 0
            while idx < shares.length:
                _3472 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3472] = 0
                mem[_3472 + 32] = 0
                mem[0] = 2
                _3489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3489] = shares[idx].field_0
                mem[_3489 + 32] = shares[idx].field_256
                if idx <= 0:
                    if not eth.balance(this.address):
                        call shares[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        call shares[idx].field_0 with:
                           value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 'Owner'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         shares[idx].field_0,
                                         0,
                                         96,
                                         5,
                                         'Owner',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                        mem[mem[64]] = shares[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 'Owner'
                        emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                else:
                    address(stor5.field_0) = shares[idx].field_0
                    address(stor5.field_16) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_c7f73448:
                        require ext_code.size(address(stor5.field_16))
                        staticcall address(stor5.field_16).0x3366eeb2 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not eth.balance(this.address):
                                call shares[idx].field_0 with:
                                     gas 2300 wei
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                call shares[idx].field_0 with:
                                   value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not eth.balance(this.address):
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    else:
                        require sub_c7f73448
                        require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                        require ext_code.size(address(stor5.field_16))
                        staticcall address(stor5.field_16).0x3366eeb2 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                            if not eth.balance(this.address):
                                call shares[idx].field_0 with:
                                     gas 2300 wei
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                call shares[idx].field_0 with:
                                   value eth.balance(this.address) * shares[idx].field_256 / 100 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not eth.balance(this.address):
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require eth.balance(this.address)
                                require eth.balance(this.address) * shares[idx].field_256 / eth.balance(this.address) == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = eth.balance(this.address) * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit EtherPayout(shares[idx].field_0, eth.balance(this.address) * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                idx = idx + 1
                s = s + 1
                continue 
            if eth.balance(this.address) <= 0:
                uint8(stor5.field_0) = 0
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                    require not uint8(stor5.field_0)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                    uint8(stor5.field_0) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < shares.length:
                        _6761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6761] = 0
                        mem[_6761 + 32] = 0
                        mem[0] = 2
                        _6771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6771] = shares[idx].field_0
                        mem[_6771 + 32] = shares[idx].field_256
                        if idx <= 0:
                            if not ext_call.return_data[0]:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, 0
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 5,
                                                 'Owner',
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                        else:
                            address(stor5.field_0) = shares[idx].field_0
                            address(stor5.field_16) = 0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x313ce567 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_c7f73448:
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                            else:
                                require sub_c7f73448
                                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                    uint8(stor5.field_0) = 0
            else:
                call _owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 96] = 24
                emit EtherPayout(_owner, eth.balance(this.address), Array(len=24, data='Owner - left from shares'));
                uint8(stor5.field_0) = 0
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10^ext_call.return_data[0]:
                    require not uint8(stor5.field_0)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^ext_call.return_data[0] == 10^ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10^ext_call.return_data[0]
                    uint8(stor5.field_0) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < shares.length:
                        _6762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6762] = 0
                        mem[_6762 + 32] = 0
                        mem[0] = 2
                        _6774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6774] = shares[idx].field_0
                        mem[_6774 + 32] = shares[idx].field_256
                        if idx <= 0:
                            if not ext_call.return_data[0]:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, 0
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 shares[idx].field_0,
                                                 0,
                                                 96,
                                                 5,
                                                 'Owner',
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                mem[mem[64]] = shares[idx].field_0
                                mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 'Owner'
                                emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=5, data='Owner'));
                        else:
                            address(stor5.field_0) = shares[idx].field_0
                            address(stor5.field_16) = 0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x313ce567 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_c7f73448:
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                            else:
                                require sub_c7f73448
                                require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
                                require ext_code.size(address(stor5.field_16))
                                staticcall address(stor5.field_16).0x3366eeb2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] == sub_c7f73448 * 10^ext_call.return_data[0]:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, 0
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                         shares[idx].field_0,
                                                         0,
                                                         96,
                                                         11,
                                                         'Shareholder',
                                    else:
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0] * shares[idx].field_256 / ext_call.return_data[0] == shares[idx].field_256
                                        mem[mem[64]] = shares[idx].field_0
                                        mem[mem[64] + 32] = ext_call.return_data[0] * shares[idx].field_256 / 100
                                        mem[mem[64] + 64] = 96
                                        mem[mem[64] + 96] = 11
                                        mem[mem[64] + 128] = 'Shareholder'
                                        emit TokenPayout(shares[idx].field_0, ext_call.return_data[0] * shares[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPayout(_owner, ext_call.return_data[0], Array(len=24, data='Owner - left from shares'));
                    uint8(stor5.field_0) = 0
    require not uint8(stor5.field_8)
    if not sub_2cc6b2ce:
        require block.timestamp >= block.timestamp
        Mask(248, 0, stor5.field_8) = 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_c7f73448:
            create contract with 0 wei
                            code: code.data[11432 len 9493], tokenContractAddress, 0, block.timestamp
        else:
            require sub_c7f73448
            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
            create contract with 0 wei
                            code: code.data[11432 len 9493], tokenContractAddress, sub_c7f73448 * 10^ext_call.return_data[0], block.timestamp
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_c7f73448:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), 0
        else:
            require sub_c7f73448
            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), sub_c7f73448 * 10^ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        shares.length++
        shares[shares.length].field_0 = address(create.new_address)
        shares[shares.length].field_256 = sub_7286cff5
        require 1 <= shares.length + 1
        sharesToManager[stor2.length] = msg.sender
        require stor4[address(msg.sender)] + 1 >= stor4[address(msg.sender)]
        stor4[address(msg.sender)]++
        emit ShareSigned(msg.sender, address(create.new_address), block.timestamp);
    else:
        require sub_2cc6b2ce
        require 24 * 3600 * sub_2cc6b2ce / sub_2cc6b2ce == 24 * 3600
        require block.timestamp + (24 * 3600 * sub_2cc6b2ce) >= block.timestamp
        Mask(248, 0, stor5.field_8) = 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_c7f73448:
            create contract with 0 wei
                            code: code.data[11432 len 9493], tokenContractAddress, 0, block.timestamp + (24 * 3600 * sub_2cc6b2ce)
        else:
            require sub_c7f73448
            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
            create contract with 0 wei
                            code: code.data[11432 len 9493], tokenContractAddress, sub_c7f73448 * 10^ext_call.return_data[0], block.timestamp + (24 * 3600 * sub_2cc6b2ce)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_c7f73448:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), 0
        else:
            require sub_c7f73448
            require sub_c7f73448 * 10^ext_call.return_data[0] / sub_c7f73448 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), sub_c7f73448 * 10^ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        shares.length++
        shares[shares.length].field_0 = address(create.new_address)
        shares[shares.length].field_256 = sub_7286cff5
        require 1 <= shares.length + 1
        sharesToManager[stor2.length] = msg.sender
        require stor4[address(msg.sender)] + 1 >= stor4[address(msg.sender)]
        stor4[address(msg.sender)]++
        emit ShareSigned(msg.sender, address(create.new_address), block.timestamp + (24 * 3600 * sub_2cc6b2ce));
    if sub_2cc6b2ce > 0:
        require 1 <= sub_2cc6b2ce
        sub_2cc6b2ce--
    require sub_192fc516 + 1 >= sub_192fc516
    sub_192fc516++
    Mask(248, 0, stor5.field_8) = 0
    return address(create.new_address)
}



}
