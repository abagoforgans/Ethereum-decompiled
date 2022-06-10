contract main {




// =====================  Runtime code  =====================


const sub_3a5673a4(?) = Array(len=43, data=0xfe417373657453706c69742e6f7267202d2074686520677579732077686f20637574207468652070697a7a, mem[171 len 21], mem[213 len 11])


address _owner;
array of struct payees;
uint8 stor2; offset 160
uint128 stor2; offset 160
address tokenContractAddress;
uint256 sub_2c3dcc50;
uint256 payeePartsToSell;
uint256 payeePricePerPart;
uint256 lockedToken;
uint256 sub_d9bfbcd9;
uint256 stor8;

function payeePricePerPart() {
    return payeePricePerPart
}

function lockedToken() {
    return lockedToken
}

function sub_2c3dcc50(?) {
    return sub_2c3dcc50
}

function getLockedToken() {
    return lockedToken
}

function tokenContract() {
    return tokenContractAddress
}

function payees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < payees.length
    return payees[arg1].field_0, payees[arg1].field_256
}

function getPayeeLenght() {
    return payees.length
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function sub_d9bfbcd9(?) {
    return sub_d9bfbcd9
}

function payeePartsToSell() {
    return payeePartsToSell
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

function setPartsToSell(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == _owner
    require sub_2c3dcc50 >= arg1
    payeePartsToSell = arg1
    payeePricePerPart = arg2
}

function sub_2a7de384(?) {
    require calldata.size - 4 >= 96
    require msg.sender == _owner
    require payees.length >= arg1
    require arg1 < payees.length
    payees[arg1].field_0 = arg2
    payees[arg1].field_256 = arg3
}

function etherPayout() payable {
    mem[64] = 96
    require not msg.value
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
    idx = 0
    s = 0
    while idx < payees.length:
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[0] = 1
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = payees[idx].field_0
        mem[_32 + 32] = payees[idx].field_256
        if not eth.balance(this.address):
            call payees[idx].field_0 with:
                 gas 2300 wei
        else:
            require eth.balance(this.address)
            require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
            call payees[idx].field_0 with:
               value eth.balance(this.address) * payees[idx].field_256 / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not eth.balance(this.address):
            mem[mem[64]] = payees[idx].field_0
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = 11
            mem[mem[64] + 128] = 'Shareholder'
            emit EtherPayout(address arg1, uint256 arg2, string arg3):
                             payees[idx].field_0,
                             0,
                             96,
                             11,
                             'Shareholder',
        else:
            require eth.balance(this.address)
            require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
            mem[mem[64]] = payees[idx].field_0
            mem[mem[64] + 32] = eth.balance(this.address) * payees[idx].field_256 / 100
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = 11
            mem[mem[64] + 128] = 'Shareholder'
            emit EtherPayout(payees[idx].field_0, eth.balance(this.address) * payees[idx].field_256 / 100, Array(len=11, data='Shareholder'));
        idx = idx + 1
        s = s + 1
        continue 
    if eth.balance(this.address) > 0:
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit EtherPayout(_owner, eth.balance(this.address), Array(len=5, data='Owner'));
    Mask(96, 0, stor2.field_160) = 0
}

function tokenPayout() payable {
    mem[64] = 96
    require not uint8(stor2.field_160)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor8:
        require lockedToken >= lockedToken
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= lockedToken
        Mask(96, 0, stor2.field_160) = 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require lockedToken <= ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < payees.length:
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 0
            mem[_112 + 32] = 0
            mem[0] = 1
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = payees[idx].field_0
            mem[_122 + 32] = payees[idx].field_256
            if not ext_call.return_data[0] - lockedToken:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args payees[idx].field_0, 0
            else:
                require ext_call.return_data[0] - lockedToken
                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] - lockedToken:
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                 payees[idx].field_0,
                                 0,
                                 96,
                                 11,
                                 'Shareholder',
            else:
                require ext_call.return_data[0] - lockedToken
                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
            idx = idx + 1
            s = s + 1
            continue 
    else:
        require stor8
        require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
        require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
        Mask(96, 0, stor2.field_160) = 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require lockedToken <= ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < payees.length:
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = 0
            mem[_111 + 32] = 0
            mem[0] = 1
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = payees[idx].field_0
            mem[_117 + 32] = payees[idx].field_256
            if not ext_call.return_data[0] - lockedToken:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args payees[idx].field_0, 0
            else:
                require ext_call.return_data[0] - lockedToken
                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] - lockedToken:
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                 payees[idx].field_0,
                                 0,
                                 96,
                                 11,
                                 'Shareholder',
            else:
                require ext_call.return_data[0] - lockedToken
                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
    require lockedToken <= ext_call.return_data[0]
    if ext_call.return_data[0] - lockedToken > 0:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require lockedToken <= ext_call.return_data[0]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args _owner, ext_call.return_data[0] - lockedToken
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
        require lockedToken <= ext_call.return_data[0]
        emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
    Mask(96, 0, stor2.field_160) = 0
}

function payoutLockedToken() payable {
    mem[64] = 96
    require msg.sender == _owner
    require not uint8(stor2.field_160)
    require block.timestamp > sub_d9bfbcd9
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= lockedToken
    lockedToken = 0
    if eth.balance(this.address) <= 0:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require lockedToken <= ext_call.return_data[0]
        if ext_call.return_data[0] - lockedToken <= 1:
            Mask(96, 0, stor2.field_160) = 1
            emit LockedTokensUnlocked()
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
        else:
            require not uint8(stor2.field_160)
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor8:
                require lockedToken >= lockedToken
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= lockedToken
                Mask(96, 0, stor2.field_160) = 1
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require lockedToken <= ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < payees.length:
                    _515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_515] = 0
                    mem[_515 + 32] = 0
                    mem[0] = 1
                    _530 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_530] = payees[idx].field_0
                    mem[_530 + 32] = payees[idx].field_256
                    if not ext_call.return_data[0] - lockedToken:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args payees[idx].field_0, 0
                    else:
                        require ext_call.return_data[0] - lockedToken
                        require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0] - lockedToken:
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                         payees[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require ext_call.return_data[0] - lockedToken
                        require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                require stor8
                require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                Mask(96, 0, stor2.field_160) = 1
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require lockedToken <= ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < payees.length:
                    _514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_514] = 0
                    mem[_514 + 32] = 0
                    mem[0] = 1
                    _525 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_525] = payees[idx].field_0
                    mem[_525 + 32] = payees[idx].field_256
                    if not ext_call.return_data[0] - lockedToken:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args payees[idx].field_0, 0
                    else:
                        require ext_call.return_data[0] - lockedToken
                        require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0] - lockedToken:
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                         payees[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require ext_call.return_data[0] - lockedToken
                        require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
            require lockedToken <= ext_call.return_data[0]
            if ext_call.return_data[0] - lockedToken > 0:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require lockedToken <= ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args _owner, ext_call.return_data[0] - lockedToken
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
                require lockedToken <= ext_call.return_data[0]
                emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
            Mask(96, 0, stor2.field_160) = 0
            Mask(96, 0, stor2.field_160) = 1
            emit LockedTokensUnlocked()
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
    else:
        require not uint8(stor2.field_160)
        Mask(96, 0, stor2.field_160) = 1
        idx = 0
        s = 0
        while idx < payees.length:
            _518 = mem[64]
            mem[64] = mem[64] + 64
            mem[_518] = 0
            mem[_518 + 32] = 0
            mem[0] = 1
            _536 = mem[64]
            mem[64] = mem[64] + 64
            mem[_536] = payees[idx].field_0
            mem[_536 + 32] = payees[idx].field_256
            if not eth.balance(this.address):
                call payees[idx].field_0 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                call payees[idx].field_0 with:
                   value eth.balance(this.address) * payees[idx].field_256 / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not eth.balance(this.address):
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                 payees[idx].field_0,
                                 0,
                                 96,
                                 11,
                                 'Shareholder',
            else:
                require eth.balance(this.address)
                require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                mem[mem[64]] = payees[idx].field_0
                mem[mem[64] + 32] = eth.balance(this.address) * payees[idx].field_256 / 100
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 'Shareholder'
                emit EtherPayout(payees[idx].field_0, eth.balance(this.address) * payees[idx].field_256 / 100, Array(len=11, data='Shareholder'));
            idx = idx + 1
            s = s + 1
            continue 
        if eth.balance(this.address) <= 0:
            Mask(96, 0, stor2.field_160) = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require lockedToken <= ext_call.return_data[0]
            if ext_call.return_data[0] - lockedToken > 1:
                require not uint8(stor2.field_160)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor8:
                    require lockedToken >= lockedToken
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= lockedToken
                    Mask(96, 0, stor2.field_160) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while idx < payees.length:
                        _990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_990] = 0
                        mem[_990 + 32] = 0
                        mem[0] = 1
                        _1004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1004] = payees[idx].field_0
                        mem[_1004 + 32] = payees[idx].field_256
                        if not ext_call.return_data[0] - lockedToken:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, 0
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] - lockedToken:
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             payees[idx].field_0,
                                             0,
                                             96,
                                             11,
                                             'Shareholder',
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    require stor8
                    require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                    require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                    Mask(96, 0, stor2.field_160) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while idx < payees.length:
                        _989 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_989] = 0
                        mem[_989 + 32] = 0
                        mem[0] = 1
                        _999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_999] = payees[idx].field_0
                        mem[_999 + 32] = payees[idx].field_256
                        if not ext_call.return_data[0] - lockedToken:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, 0
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] - lockedToken:
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             payees[idx].field_0,
                                             0,
                                             96,
                                             11,
                                             'Shareholder',
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                require lockedToken <= ext_call.return_data[0]
                if ext_call.return_data[0] - lockedToken > 0:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _owner, ext_call.return_data[0] - lockedToken
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
                    require lockedToken <= ext_call.return_data[0]
                    emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                Mask(96, 0, stor2.field_160) = 0
        else:
            call _owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 96] = 5
            emit EtherPayout(_owner, eth.balance(this.address), Array(len=5, data='Owner'));
            Mask(96, 0, stor2.field_160) = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require lockedToken <= ext_call.return_data[0]
            if ext_call.return_data[0] - lockedToken > 1:
                require not uint8(stor2.field_160)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor8:
                    require lockedToken >= lockedToken
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= lockedToken
                    Mask(96, 0, stor2.field_160) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while idx < payees.length:
                        _992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_992] = 0
                        mem[_992 + 32] = 0
                        mem[0] = 1
                        _1014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1014] = payees[idx].field_0
                        mem[_1014 + 32] = payees[idx].field_256
                        if not ext_call.return_data[0] - lockedToken:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, 0
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] - lockedToken:
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             payees[idx].field_0,
                                             0,
                                             96,
                                             11,
                                             'Shareholder',
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    require stor8
                    require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                    require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                    Mask(96, 0, stor2.field_160) = 1
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while idx < payees.length:
                        _991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_991] = 0
                        mem[_991 + 32] = 0
                        mem[0] = 1
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = payees[idx].field_0
                        mem[_1009 + 32] = payees[idx].field_256
                        if not ext_call.return_data[0] - lockedToken:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, 0
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] - lockedToken:
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                             payees[idx].field_0,
                                             0,
                                             96,
                                             11,
                                             'Shareholder',
                        else:
                            require ext_call.return_data[0] - lockedToken
                            require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                            mem[mem[64]] = payees[idx].field_0
                            mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = 11
                            mem[mem[64] + 128] = 'Shareholder'
                            emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                require lockedToken <= ext_call.return_data[0]
                if ext_call.return_data[0] - lockedToken > 0:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _owner, ext_call.return_data[0] - lockedToken
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
                    require lockedToken <= ext_call.return_data[0]
                    emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                Mask(96, 0, stor2.field_160) = 0
        Mask(96, 0, stor2.field_160) = 1
        emit LockedTokensUnlocked()
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
    Mask(96, 0, stor2.field_160) = 0
}

function addPayee(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if msg.sender == _owner:
        require sub_2c3dcc50 >= arg2
        require arg2 <= sub_2c3dcc50
        sub_2c3dcc50 -= arg2
        payees.length++
        payees[payees.length].field_0 = arg1
        payees[payees.length].field_256 = arg2
        emit PayeeAdded(address(arg1), arg2);
    else:
        if not arg2:
            require not msg.value
            if eth.balance(this.address) <= 0:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require lockedToken <= ext_call.return_data[0]
                if ext_call.return_data[0] - lockedToken > 1:
                    require not uint8(stor2.field_160)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor8:
                        require lockedToken >= lockedToken
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= lockedToken
                        Mask(96, 0, stor2.field_160) = 1
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        idx = 0
                        s = 0
                        while idx < payees.length:
                            _911 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_911] = 0
                            mem[_911 + 32] = 0
                            mem[0] = 1
                            _946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_946] = payees[idx].field_0
                            mem[_946 + 32] = payees[idx].field_256
                            if not ext_call.return_data[0] - lockedToken:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, 0
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - lockedToken:
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 payees[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                            idx = idx + 1
                            s = s + 1
                            continue 
                    else:
                        require stor8
                        require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                        require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                        Mask(96, 0, stor2.field_160) = 1
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        idx = 0
                        s = 0
                        while idx < payees.length:
                            _910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_910] = 0
                            mem[_910 + 32] = 0
                            mem[0] = 1
                            _941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_941] = payees[idx].field_0
                            mem[_941 + 32] = payees[idx].field_256
                            if not ext_call.return_data[0] - lockedToken:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, 0
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - lockedToken:
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 payees[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0] - lockedToken
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
                        require lockedToken <= ext_call.return_data[0]
                        emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                    Mask(96, 0, stor2.field_160) = 0
            else:
                require not uint8(stor2.field_160)
                Mask(96, 0, stor2.field_160) = 1
                idx = 0
                s = 0
                while idx < payees.length:
                    _914 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_914] = 0
                    mem[_914 + 32] = 0
                    mem[0] = 1
                    _952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_952] = payees[idx].field_0
                    mem[_952 + 32] = payees[idx].field_256
                    if not eth.balance(this.address):
                        call payees[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                        call payees[idx].field_0 with:
                           value eth.balance(this.address) * payees[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         payees[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * payees[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(payees[idx].field_0, eth.balance(this.address) * payees[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    idx = idx + 1
                    s = s + 1
                    continue 
                if eth.balance(this.address) <= 0:
                    Mask(96, 0, stor2.field_160) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 1:
                        require not uint8(stor2.field_160)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor8:
                            require lockedToken >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1748 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1748] = 0
                                mem[_1748 + 32] = 0
                                mem[0] = 1
                                _1786 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1786] = payees[idx].field_0
                                mem[_1786 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                                idx = idx + 1
                                s = s + 1
                                continue 
                        else:
                            require stor8
                            require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                            require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1747 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1747] = 0
                                mem[_1747 + 32] = 0
                                mem[0] = 1
                                _1781 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1781] = payees[idx].field_0
                                mem[_1781 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                        require lockedToken <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lockedToken > 0:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, ext_call.return_data[0] - lockedToken
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
                            require lockedToken <= ext_call.return_data[0]
                            emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                        Mask(96, 0, stor2.field_160) = 0
                else:
                    call _owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 96] = 5
                    emit EtherPayout(_owner, eth.balance(this.address), Array(len=5, data='Owner'));
                    Mask(96, 0, stor2.field_160) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 1:
                        require not uint8(stor2.field_160)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor8:
                            require lockedToken >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1750 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1750] = 0
                                mem[_1750 + 32] = 0
                                mem[0] = 1
                                _1796 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1796] = payees[idx].field_0
                                mem[_1796 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                                idx = idx + 1
                                s = s + 1
                                continue 
                        else:
                            require stor8
                            require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                            require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1749 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1749] = 0
                                mem[_1749 + 32] = 0
                                mem[0] = 1
                                _1791 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1791] = payees[idx].field_0
                                mem[_1791 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                        require lockedToken <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lockedToken > 0:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, ext_call.return_data[0] - lockedToken
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
                            require lockedToken <= ext_call.return_data[0]
                            emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                        Mask(96, 0, stor2.field_160) = 0
        else:
            require arg2
            require arg2 * payeePricePerPart / arg2 == payeePricePerPart
            require msg.value == arg2 * payeePricePerPart
            if eth.balance(this.address) <= 0:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require lockedToken <= ext_call.return_data[0]
                if ext_call.return_data[0] - lockedToken > 1:
                    require not uint8(stor2.field_160)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor8:
                        require lockedToken >= lockedToken
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= lockedToken
                        Mask(96, 0, stor2.field_160) = 1
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        idx = 0
                        s = 0
                        while idx < payees.length:
                            _906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_906] = 0
                            mem[_906 + 32] = 0
                            mem[0] = 1
                            _930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_930] = payees[idx].field_0
                            mem[_930 + 32] = payees[idx].field_256
                            if not ext_call.return_data[0] - lockedToken:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, 0
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - lockedToken:
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 payees[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                            idx = idx + 1
                            s = s + 1
                            continue 
                    else:
                        require stor8
                        require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                        require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                        Mask(96, 0, stor2.field_160) = 1
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        idx = 0
                        s = 0
                        while idx < payees.length:
                            _905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_905] = 0
                            mem[_905 + 32] = 0
                            mem[0] = 1
                            _925 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_925] = payees[idx].field_0
                            mem[_925 + 32] = payees[idx].field_256
                            if not ext_call.return_data[0] - lockedToken:
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, 0
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - lockedToken:
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                 payees[idx].field_0,
                                                 0,
                                                 96,
                                                 11,
                                                 'Shareholder',
                            else:
                                require ext_call.return_data[0] - lockedToken
                                require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                mem[mem[64]] = payees[idx].field_0
                                mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                mem[mem[64] + 64] = 96
                                mem[mem[64] + 96] = 11
                                mem[mem[64] + 128] = 'Shareholder'
                                emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 0:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require lockedToken <= ext_call.return_data[0]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _owner, ext_call.return_data[0] - lockedToken
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
                        require lockedToken <= ext_call.return_data[0]
                        emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                    Mask(96, 0, stor2.field_160) = 0
            else:
                require not uint8(stor2.field_160)
                Mask(96, 0, stor2.field_160) = 1
                idx = 0
                s = 0
                while idx < payees.length:
                    _909 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_909] = 0
                    mem[_909 + 32] = 0
                    mem[0] = 1
                    _936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_936] = payees[idx].field_0
                    mem[_936 + 32] = payees[idx].field_256
                    if not eth.balance(this.address):
                        call payees[idx].field_0 with:
                             gas 2300 wei
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                        call payees[idx].field_0 with:
                           value eth.balance(this.address) * payees[idx].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(address arg1, uint256 arg2, string arg3):
                                         payees[idx].field_0,
                                         0,
                                         96,
                                         11,
                                         'Shareholder',
                    else:
                        require eth.balance(this.address)
                        require eth.balance(this.address) * payees[idx].field_256 / eth.balance(this.address) == payees[idx].field_256
                        mem[mem[64]] = payees[idx].field_0
                        mem[mem[64] + 32] = eth.balance(this.address) * payees[idx].field_256 / 100
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = 11
                        mem[mem[64] + 128] = 'Shareholder'
                        emit EtherPayout(payees[idx].field_0, eth.balance(this.address) * payees[idx].field_256 / 100, Array(len=11, data='Shareholder'));
                    idx = idx + 1
                    s = s + 1
                    continue 
                if eth.balance(this.address) <= 0:
                    Mask(96, 0, stor2.field_160) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 1:
                        require not uint8(stor2.field_160)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor8:
                            require lockedToken >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1744 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1744] = 0
                                mem[_1744 + 32] = 0
                                mem[0] = 1
                                _1766 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1766] = payees[idx].field_0
                                mem[_1766 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                                idx = idx + 1
                                s = s + 1
                                continue 
                        else:
                            require stor8
                            require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                            require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1743 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1743] = 0
                                mem[_1743 + 32] = 0
                                mem[0] = 1
                                _1761 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1761] = payees[idx].field_0
                                mem[_1761 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                        require lockedToken <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lockedToken > 0:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, ext_call.return_data[0] - lockedToken
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
                            require lockedToken <= ext_call.return_data[0]
                            emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                        Mask(96, 0, stor2.field_160) = 0
                else:
                    call _owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 96] = 5
                    emit EtherPayout(_owner, eth.balance(this.address), Array(len=5, data='Owner'));
                    Mask(96, 0, stor2.field_160) = 0
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require lockedToken <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lockedToken > 1:
                        require not uint8(stor2.field_160)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x313ce567 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor8:
                            require lockedToken >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1746] = 0
                                mem[_1746 + 32] = 0
                                mem[0] = 1
                                _1776 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1776] = payees[idx].field_0
                                mem[_1776 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
                                idx = idx + 1
                                s = s + 1
                                continue 
                        else:
                            require stor8
                            require stor8 * 10^ext_call.return_data[0] / stor8 == 10^ext_call.return_data[0]
                            require lockedToken + (stor8 * 10^ext_call.return_data[0]) >= lockedToken
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= lockedToken + (stor8 * 10^ext_call.return_data[0])
                            Mask(96, 0, stor2.field_160) = 1
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            idx = 0
                            s = 0
                            while idx < payees.length:
                                _1745 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1745] = 0
                                mem[_1745 + 32] = 0
                                mem[0] = 1
                                _1771 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1771] = payees[idx].field_0
                                mem[_1771 + 32] = payees[idx].field_256
                                if not ext_call.return_data[0] - lockedToken:
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, 0
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - lockedToken:
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(address arg1, uint256 arg2, string arg3):
                                                     payees[idx].field_0,
                                                     0,
                                                     96,
                                                     11,
                                                     'Shareholder',
                                else:
                                    require ext_call.return_data[0] - lockedToken
                                    require (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / ext_call.return_data[0] - lockedToken == payees[idx].field_256
                                    mem[mem[64]] = payees[idx].field_0
                                    mem[mem[64] + 32] = (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100
                                    mem[mem[64] + 64] = 96
                                    mem[mem[64] + 96] = 11
                                    mem[mem[64] + 128] = 'Shareholder'
                                    emit TokenPayout(payees[idx].field_0, (ext_call.return_data[0] * payees[idx].field_256) - (lockedToken * payees[idx].field_256) / 100, Array(len=11, data='Shareholder'));
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
                        require lockedToken <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lockedToken > 0:
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require lockedToken <= ext_call.return_data[0]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _owner, ext_call.return_data[0] - lockedToken
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
                            require lockedToken <= ext_call.return_data[0]
                            emit TokenPayout(_owner, ext_call.return_data[0] - lockedToken, Array(len=5, data='Owner'));
                        Mask(96, 0, stor2.field_160) = 0
        require sub_2c3dcc50 >= arg2
        require payeePartsToSell >= arg2
        require tx.origin == msg.sender
        require arg2 <= payeePartsToSell
        payeePartsToSell -= arg2
        require arg2 <= sub_2c3dcc50
        sub_2c3dcc50 -= arg2
        payees.length++
        payees[payees.length].field_0 = tx.origin
        payees[payees.length].field_256 = arg2
        emit PayeeAdded(tx.origin, arg2);
}



}
