contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of uint8 stor102;
address owner;
address sub_79a5524bAddress;
array of struct stor205;
mapping of uint256 balanceOf;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor102[address(arg1)])
}

function sub_79a5524b(?) {
    return sub_79a5524bAddress
}

function owner() {
    return owner
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor51[address(arg1)])
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg2)][address(arg1)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1ba80c10(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_79a5524bAddress = arg1
}

function renounceWhitelisted() {
    require msg.sender
    require stor102[address(msg.sender)]
    stor102[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor102[address(arg1)]
    stor102[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require stor102[address(arg1)]
    stor102[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor51[address(arg1)]
    stor51[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[msg.sender][address(arg1)] <= 0:
        revert with 0, 'BALANCE_IS_NOT_ENOUGH'
    require balanceOf[msg.sender][address(arg1)] <= balanceOf[address(msg.sender)][address(arg1)]
    balanceOf[address(msg.sender)][address(arg1)] -= balanceOf[msg.sender][address(arg1)]
    if 1 == arg1:
        call msg.sender with:
           value balanceOf[msg.sender][address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balanceOf[msg.sender][address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit 0x472be967: balanceOf[msg.sender][address(arg1)], arg1, msg.sender
}

function sub_ddb36ef8(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    if not address(cd[4]):
        revert with 0, 'INVALID_ASSET_ADDRESS'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'INVALID_ARGS'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 68).length
        require mem[(32 * ('cd', 36).length) + (32 * idx) + 160] + s >= s
        if mem[(32 * ('cd', 36).length) + (32 * idx) + 160] + s >= 10^18:
            revert with 0, 'OUT_MAX_PERCENTAGE'
        idx = idx + 1
        s = mem[(32 * ('cd', 36).length) + (32 * idx) + 160] + s
        continue 
    stor205[address(cd[4])].field_0 = 0
    idx = 0
    while 2 * stor205[address(cd[4])].field_0 > idx:
        address(stor205[address(cd[4])][idx].field_0) = 0
        stor205[address(cd[4])][idx].field_256 = 0
        idx = idx + 2
        continue 
    mem[0] = address(cd[4])
    mem[32] = 205
    idx = 0
    while idx < ('cd', 36).length:
        _98 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_98] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[_98 + 32] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        stor205[address(cd[4])].field_0++
        mem[0] = sha3(address(cd[4]), 205)
        address(stor205[address(cd[4])][stor205[address(cd[4])].field_0].field_0) = mem[_98 + 12 len 20]
        stor205[address(cd[4])][stor205[address(cd[4])].field_0].field_256 = mem[_98 + 32]
        idx = idx + 1
        continue 
}

function getRatios(address arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 205
    mem[64] = (32 * stor205[address(arg1)].field_0) + 128
    mem[96] = stor205[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor205[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 205)
        _40 = mem[64]
        mem[64] = mem[64] + 64
        mem[_40] = address(stor205[address(arg1)][idx].field_0)
        mem[_40 + 32] = stor205[address(arg1)][idx].field_256
        mem[s] = _40
        s = s + 32
        idx = idx + 1
        continue 
    _37 = mem[96]
    _38 = mem[64]
    if not mem[96]:
        _41 = mem[64] + (32 * mem[96]) + 32
        mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
        mem[64] = _41 + (32 * _37) + 32
        idx = 0
        while idx < _37:
            require idx < mem[96]
            require idx < mem[_38]
            mem[_38 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            require idx < mem[96]
            require idx < mem[_41]
            mem[_41 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 32]
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 64
        _89 = mem[_38]
        mem[mem[64] + 64] = mem[_38]
        idx = 0
        s = _38 + 32
        t = mem[64] + 96
        while idx < _89:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_73 + 32] = (32 * _89) + 96
        _101 = mem[_41]
        mem[_73 + (32 * _89) + 96] = mem[_41]
        mem[_73 + (32 * _89) + 128 len 32 * _101] = mem[_41 + 32 len 32 * _101]
        return memory
          from mem[64]
           len _73 + (32 * _89) + (32 * _101) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * mem[96]] = code.data[7469 len 32 * mem[96]]
    mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
    mem[64] = _38 + (64 * _37) + 64
    mem[_38 + (32 * _37) + 64 len 32 * _37] = code.data[7469 len 32 * _37]
    idx = 0
    while idx < _37:
        require idx < mem[96]
        require idx < mem[_38]
        mem[_38 + (32 * idx) + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        require idx < mem[96]
        require idx < mem[_38 + (32 * _37) + 32]
        mem[_38 + (32 * _37) + (32 * idx) + 64] = mem[mem[(32 * idx) + 128] + 32]
        idx = idx + 1
        continue 
    _77 = mem[64]
    mem[mem[64]] = 64
    _90 = mem[_38]
    mem[mem[64] + 64] = mem[_38]
    idx = 0
    s = _38 + 32
    t = mem[64] + 96
    while idx < _90:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_77 + 32] = (32 * _90) + 96
    _102 = mem[_38 + (32 * _37) + 32]
    mem[_77 + (32 * _90) + 96] = mem[_38 + (32 * _37) + 32]
    mem[_77 + (32 * _90) + 128 len 32 * _102] = mem[_38 + (32 * _37) + 64 len 32 * _102]
    return memory
      from mem[64]
       len _77 + (32 * _90) + (32 * _102) + -mem[64] + 128
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
        else:
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if not uint8(stor0.field_8):
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1
    if not stor51[address(arg1)]:
        require arg1
        require not stor51[address(arg1)]
        stor51[address(arg1)] = 1
        emit WhitelistAdminAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    sub_79a5524bAddress = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_c16137a2(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 128
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    require msg.sender
    require stor102[address(msg.sender)]
    if arg2 != 1:
        revert with 0, 'INVALID_FEE_TOKEN'
    if arg3 != msg.value:
        revert with 0, 'INVALID_FEE'
    if not arg1:
        revert with 0, 'INVALID_ASSET'
    mem[0] = arg1
    mem[32] = 205
    mem[64] = (32 * stor205[address(arg1)].field_0) + 256
    mem[224] = stor205[address(arg1)].field_0
    s = 256
    idx = 0
    while idx < stor205[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 205)
        _175 = mem[64]
        mem[64] = mem[64] + 64
        mem[_175] = address(stor205[address(arg1)][idx].field_0)
        mem[_175 + 32] = stor205[address(arg1)][idx].field_256
        mem[s] = _175
        s = s + 32
        idx = idx + 1
        continue 
    _176 = mem[224]
    _177 = mem[64]
    mem[mem[64]] = mem[224]
    mem[64] = mem[64] + (32 * _176) + 32
    if not _176:
        idx = 0
        while idx < _176:
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 0
            mem[_333 + 32] = 0
            require idx < mem[224]
            _335 = mem[(32 * idx) + 256]
            _336 = mem[64]
            mem[64] = mem[64] + 96
            mem[_336] = mem[mem[(32 * idx) + 256] + 12 len 20]
            mem[_336 + 32] = arg2
            if not mem[_335 + 32]:
                mem[_336 + 64] = 0
            else:
                require arg3 * mem[_335 + 32] / mem[_335 + 32] == arg3
                mem[_336 + 64] = arg3 * mem[_335 + 32] / 10^18
            require idx < mem[_177]
            mem[_177 + (32 * idx) + 32] = _336
            idx = idx + 1
            continue 
        _332 = mem[_177]
        idx = 0
        s = arg3
        while idx < _332:
            _485 = mem[64]
            mem[64] = mem[64] + 96
            mem[_485] = 0
            mem[_485 + 32] = 0
            mem[_485 + 64] = 0
            require idx < mem[_177]
            _488 = mem[_177 + (32 * idx) + 32]
            if sub_79a5524bAddress == mem[mem[_177 + (32 * idx) + 32] + 12 len 20]:
                idx = idx + 1
                s = s
                continue 
            require mem[mem[_177 + (32 * idx) + 32] + 44 len 20] == mem[140 len 20]
            _492 = mem[mem[_177 + (32 * idx) + 32] + 32]
            _493 = mem[mem[_177 + (32 * idx) + 32]]
            _494 = mem[mem[_177 + (32 * idx) + 32] + 64]
            mem[0] = mem[mem[_177 + (32 * idx) + 32] + 12 len 20]
            _498 = sha3(address(_492), sha3(mem[0], 206))
            require mem[mem[_177 + (32 * idx) + 32] + 64] + balanceOf[mem[0]][address(_492)] >= balanceOf[mem[0]][address(_492)]
            mem[0] = address(_492)
            mem[32] = sha3(address(_493), 206)
            balanceOf[address(_493)][address(_492)] = _494 + stor[_498]
            mem[mem[64]] = _494
            emit Received(_494, address(_492), address(_493));
            require mem[_488 + 64] <= s
            idx = idx + 1
            s = s - mem[_488 + 64]
            continue 
        if s > 0:
            if not arg5:
                require 0 <= s
                if s > 0:
                    require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                    balanceOf[stor204][address(mem[128])] += s
                    emit Received(s, mem[140 len 20], sub_79a5524bAddress);
            else:
                _486 = mem[192]
                if not mem[192]:
                    if 0 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s > 0:
                        require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                        balanceOf[stor204][address(mem[128])] += s
                        emit Received(s, mem[140 len 20], sub_79a5524bAddress);
                else:
                    require s * mem[192] / mem[192] == s
                    if s * mem[192] / 10^18 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s * mem[192] / 10^18 <= 0:
                        if s - (s * mem[192] / 10^18) > 0:
                            _545 = mem[128]
                            require s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])]
                            mem[mem[64]] = s - (s * mem[192] / 10^18)
                            emit Received(mem[mem[64]], address(_545), sub_79a5524bAddress);
                    else:
                        _541 = mem[128]
                        if 1 == mem[140 len 20]:
                            call arg5 with:
                               value s * mem[192] / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = s * mem[192] / 10^18
                            emit Rewarded(mem[mem[64]], address(_541), arg5);
                        else:
                            mem[mem[64] + 4] = arg5
                            mem[mem[64] + 36] = s * _486 / 10^18
                            require ext_code.size(address(_541))
                            call address(_541).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), s * _486 / 10^18
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_589]
                            mem[mem[64]] = s * _486 / 10^18
                            emit Rewarded((s * _486 / 10^18), address(_541), arg5);
                        if s - (s * _486 / 10^18) > 0:
                            require s - (s * _486 / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * _486 / 10^18) + balanceOf[stor204][address(mem[128])]
                            emit Received((s - (s * _486 / 10^18)), mem[140 len 20], sub_79a5524bAddress);
    else:
        mem[64] = _177 + (32 * _176) + 128
        mem[_177 + (32 * _176) + 32] = 0
        mem[_177 + (32 * _176) + 64] = 0
        mem[_177 + (32 * _176) + 96] = 0
        mem[var58001] = _177 + (32 * _176) + 32
        s = var58001
        idx = var58002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_177 + (32 * _176) + 32] = 0
            mem[_177 + (32 * _176) + 64] = 0
            mem[_177 + (32 * _176) + 96] = 0
            mem[s + 32] = _177 + (32 * _176) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _176:
            _629 = mem[64]
            mem[64] = mem[64] + 64
            mem[_629] = 0
            mem[_629 + 32] = 0
            require idx < mem[224]
            _631 = mem[(32 * idx) + 256]
            _632 = mem[64]
            mem[64] = mem[64] + 96
            mem[_632] = mem[mem[(32 * idx) + 256] + 12 len 20]
            mem[_632 + 32] = arg2
            if not mem[_631 + 32]:
                mem[_632 + 64] = 0
            else:
                require arg3 * mem[_631 + 32] / mem[_631 + 32] == arg3
                mem[_632 + 64] = arg3 * mem[_631 + 32] / 10^18
            require idx < mem[_177]
            mem[_177 + (32 * idx) + 32] = _632
            idx = idx + 1
            continue 
        _628 = mem[_177]
        idx = 0
        s = arg3
        while idx < _628:
            _704 = mem[64]
            mem[64] = mem[64] + 96
            mem[_704] = 0
            mem[_704 + 32] = 0
            mem[_704 + 64] = 0
            require idx < mem[_177]
            _707 = mem[_177 + (32 * idx) + 32]
            if sub_79a5524bAddress == mem[mem[_177 + (32 * idx) + 32] + 12 len 20]:
                idx = idx + 1
                s = s
                continue 
            require mem[mem[_177 + (32 * idx) + 32] + 44 len 20] == mem[140 len 20]
            _711 = mem[mem[_177 + (32 * idx) + 32] + 32]
            _712 = mem[mem[_177 + (32 * idx) + 32]]
            _713 = mem[mem[_177 + (32 * idx) + 32] + 64]
            mem[0] = mem[mem[_177 + (32 * idx) + 32] + 12 len 20]
            _715 = sha3(address(_711), sha3(mem[0], 206))
            require mem[mem[_177 + (32 * idx) + 32] + 64] + balanceOf[mem[0]][address(_711)] >= balanceOf[mem[0]][address(_711)]
            mem[0] = address(_711)
            mem[32] = sha3(address(_712), 206)
            balanceOf[address(_712)][address(_711)] = _713 + stor[_715]
            mem[mem[64]] = _713
            emit Received(_713, address(_711), address(_712));
            require mem[_707 + 64] <= s
            idx = idx + 1
            s = s - mem[_707 + 64]
            continue 
        if s > 0:
            if not arg5:
                require 0 <= s
                if s > 0:
                    require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                    balanceOf[stor204][address(mem[128])] += s
                    emit Received(s, mem[140 len 20], sub_79a5524bAddress);
            else:
                _705 = mem[192]
                if not mem[192]:
                    if 0 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s > 0:
                        require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                        balanceOf[stor204][address(mem[128])] += s
                        emit Received(s, mem[140 len 20], sub_79a5524bAddress);
                else:
                    require s * mem[192] / mem[192] == s
                    if s * mem[192] / 10^18 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s * mem[192] / 10^18 <= 0:
                        if s - (s * mem[192] / 10^18) > 0:
                            _734 = mem[128]
                            require s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])]
                            mem[mem[64]] = s - (s * mem[192] / 10^18)
                            emit Received(mem[mem[64]], address(_734), sub_79a5524bAddress);
                    else:
                        _731 = mem[128]
                        if 1 == mem[140 len 20]:
                            call arg5 with:
                               value s * mem[192] / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = s * mem[192] / 10^18
                            emit Rewarded(mem[mem[64]], address(_731), arg5);
                        else:
                            mem[mem[64] + 4] = arg5
                            mem[mem[64] + 36] = s * _705 / 10^18
                            require ext_code.size(address(_731))
                            call address(_731).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), s * _705 / 10^18
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_754]
                            mem[mem[64]] = s * _705 / 10^18
                            emit Rewarded((s * _705 / 10^18), address(_731), arg5);
                        if s - (s * _705 / 10^18) > 0:
                            require s - (s * _705 / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * _705 / 10^18) + balanceOf[stor204][address(mem[128])]
                            emit Received((s - (s * _705 / 10^18)), mem[140 len 20], sub_79a5524bAddress);
}

function sub_cae91ac3(?) payable {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 128
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    require msg.sender
    require stor102[address(msg.sender)]
    if arg2 != 1:
        revert with 0, 'INVALID_FEE_TOKEN'
    if arg3 != msg.value:
        revert with 0, 'INVALID_FEE'
    if not arg1:
        revert with 0, 'INVALID_ASSET'
    mem[0] = arg1
    mem[32] = 205
    mem[64] = (32 * stor205[address(arg1)].field_0) + 256
    mem[224] = stor205[address(arg1)].field_0
    s = 256
    idx = 0
    while idx < stor205[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 205)
        _175 = mem[64]
        mem[64] = mem[64] + 64
        mem[_175] = address(stor205[address(arg1)][idx].field_0)
        mem[_175 + 32] = stor205[address(arg1)][idx].field_256
        mem[s] = _175
        s = s + 32
        idx = idx + 1
        continue 
    _176 = mem[224]
    _177 = mem[64]
    mem[mem[64]] = mem[224]
    mem[64] = mem[64] + (32 * _176) + 32
    if not _176:
        idx = 0
        while idx < _176:
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 0
            mem[_333 + 32] = 0
            require idx < mem[224]
            _335 = mem[(32 * idx) + 256]
            _336 = mem[64]
            mem[64] = mem[64] + 96
            mem[_336] = mem[mem[(32 * idx) + 256] + 12 len 20]
            mem[_336 + 32] = arg2
            if not mem[_335 + 32]:
                mem[_336 + 64] = 0
            else:
                require arg3 * mem[_335 + 32] / mem[_335 + 32] == arg3
                mem[_336 + 64] = arg3 * mem[_335 + 32] / 10^18
            require idx < mem[_177]
            mem[_177 + (32 * idx) + 32] = _336
            idx = idx + 1
            continue 
        _332 = mem[_177]
        idx = 0
        s = arg3
        while idx < _332:
            _485 = mem[64]
            mem[64] = mem[64] + 96
            mem[_485] = 0
            mem[_485 + 32] = 0
            mem[_485 + 64] = 0
            require idx < mem[_177]
            _488 = mem[_177 + (32 * idx) + 32]
            if sub_79a5524bAddress == mem[mem[_177 + (32 * idx) + 32] + 12 len 20]:
                idx = idx + 1
                s = s
                continue 
            require mem[mem[_177 + (32 * idx) + 32] + 44 len 20] == mem[140 len 20]
            _492 = mem[mem[_177 + (32 * idx) + 32] + 32]
            _493 = mem[mem[_177 + (32 * idx) + 32]]
            _494 = mem[mem[_177 + (32 * idx) + 32] + 64]
            mem[0] = mem[mem[_177 + (32 * idx) + 32] + 12 len 20]
            _498 = sha3(address(_492), sha3(mem[0], 206))
            require mem[mem[_177 + (32 * idx) + 32] + 64] + balanceOf[mem[0]][address(_492)] >= balanceOf[mem[0]][address(_492)]
            mem[0] = address(_492)
            mem[32] = sha3(address(_493), 206)
            balanceOf[address(_493)][address(_492)] = _494 + stor[_498]
            mem[mem[64]] = _494
            emit Received(_494, address(_492), address(_493));
            require mem[_488 + 64] <= s
            idx = idx + 1
            s = s - mem[_488 + 64]
            continue 
        if s > 0:
            if not arg5:
                require 0 <= s
                if s > 0:
                    require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                    balanceOf[stor204][address(mem[128])] += s
                    emit Received(s, mem[140 len 20], sub_79a5524bAddress);
            else:
                _486 = mem[192]
                if not mem[192]:
                    if 0 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s > 0:
                        require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                        balanceOf[stor204][address(mem[128])] += s
                        emit Received(s, mem[140 len 20], sub_79a5524bAddress);
                else:
                    require s * mem[192] / mem[192] == s
                    if s * mem[192] / 10^18 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s * mem[192] / 10^18 <= 0:
                        if s - (s * mem[192] / 10^18) > 0:
                            _545 = mem[128]
                            require s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])]
                            mem[mem[64]] = s - (s * mem[192] / 10^18)
                            emit Received(mem[mem[64]], address(_545), sub_79a5524bAddress);
                    else:
                        _541 = mem[128]
                        if 1 == mem[140 len 20]:
                            call arg5 with:
                               value s * mem[192] / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = s * mem[192] / 10^18
                            emit Rewarded(mem[mem[64]], address(_541), arg5);
                        else:
                            mem[mem[64] + 4] = arg5
                            mem[mem[64] + 36] = s * _486 / 10^18
                            require ext_code.size(address(_541))
                            call address(_541).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), s * _486 / 10^18
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_589]
                            mem[mem[64]] = s * _486 / 10^18
                            emit Rewarded((s * _486 / 10^18), address(_541), arg5);
                        if s - (s * _486 / 10^18) > 0:
                            require s - (s * _486 / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * _486 / 10^18) + balanceOf[stor204][address(mem[128])]
                            emit Received((s - (s * _486 / 10^18)), mem[140 len 20], sub_79a5524bAddress);
    else:
        mem[64] = _177 + (32 * _176) + 128
        mem[_177 + (32 * _176) + 32] = 0
        mem[_177 + (32 * _176) + 64] = 0
        mem[_177 + (32 * _176) + 96] = 0
        mem[var57001] = _177 + (32 * _176) + 32
        s = var57001
        idx = var57002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_177 + (32 * _176) + 32] = 0
            mem[_177 + (32 * _176) + 64] = 0
            mem[_177 + (32 * _176) + 96] = 0
            mem[s + 32] = _177 + (32 * _176) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _176:
            _629 = mem[64]
            mem[64] = mem[64] + 64
            mem[_629] = 0
            mem[_629 + 32] = 0
            require idx < mem[224]
            _631 = mem[(32 * idx) + 256]
            _632 = mem[64]
            mem[64] = mem[64] + 96
            mem[_632] = mem[mem[(32 * idx) + 256] + 12 len 20]
            mem[_632 + 32] = arg2
            if not mem[_631 + 32]:
                mem[_632 + 64] = 0
            else:
                require arg3 * mem[_631 + 32] / mem[_631 + 32] == arg3
                mem[_632 + 64] = arg3 * mem[_631 + 32] / 10^18
            require idx < mem[_177]
            mem[_177 + (32 * idx) + 32] = _632
            idx = idx + 1
            continue 
        _628 = mem[_177]
        idx = 0
        s = arg3
        while idx < _628:
            _704 = mem[64]
            mem[64] = mem[64] + 96
            mem[_704] = 0
            mem[_704 + 32] = 0
            mem[_704 + 64] = 0
            require idx < mem[_177]
            _707 = mem[_177 + (32 * idx) + 32]
            if sub_79a5524bAddress == mem[mem[_177 + (32 * idx) + 32] + 12 len 20]:
                idx = idx + 1
                s = s
                continue 
            require mem[mem[_177 + (32 * idx) + 32] + 44 len 20] == mem[140 len 20]
            _711 = mem[mem[_177 + (32 * idx) + 32] + 32]
            _712 = mem[mem[_177 + (32 * idx) + 32]]
            _713 = mem[mem[_177 + (32 * idx) + 32] + 64]
            mem[0] = mem[mem[_177 + (32 * idx) + 32] + 12 len 20]
            _715 = sha3(address(_711), sha3(mem[0], 206))
            require mem[mem[_177 + (32 * idx) + 32] + 64] + balanceOf[mem[0]][address(_711)] >= balanceOf[mem[0]][address(_711)]
            mem[0] = address(_711)
            mem[32] = sha3(address(_712), 206)
            balanceOf[address(_712)][address(_711)] = _713 + stor[_715]
            mem[mem[64]] = _713
            emit Received(_713, address(_711), address(_712));
            require mem[_707 + 64] <= s
            idx = idx + 1
            s = s - mem[_707 + 64]
            continue 
        if s > 0:
            if not arg5:
                require 0 <= s
                if s > 0:
                    require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                    balanceOf[stor204][address(mem[128])] += s
                    emit Received(s, mem[140 len 20], sub_79a5524bAddress);
            else:
                _705 = mem[192]
                if not mem[192]:
                    if 0 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s > 0:
                        require s + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                        balanceOf[stor204][address(mem[128])] += s
                        emit Received(s, mem[140 len 20], sub_79a5524bAddress);
                else:
                    require s * mem[192] / mem[192] == s
                    if s * mem[192] / 10^18 > s:
                        revert with 0, 'INVALID_REWARD'
                    if s * mem[192] / 10^18 <= 0:
                        if s - (s * mem[192] / 10^18) > 0:
                            _734 = mem[128]
                            require s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * mem[192] / 10^18) + balanceOf[stor204][address(mem[128])]
                            mem[mem[64]] = s - (s * mem[192] / 10^18)
                            emit Received(mem[mem[64]], address(_734), sub_79a5524bAddress);
                    else:
                        _731 = mem[128]
                        if 1 == mem[140 len 20]:
                            call arg5 with:
                               value s * mem[192] / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = s * mem[192] / 10^18
                            emit Rewarded(mem[mem[64]], address(_731), arg5);
                        else:
                            mem[mem[64] + 4] = arg5
                            mem[mem[64] + 36] = s * _705 / 10^18
                            require ext_code.size(address(_731))
                            call address(_731).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg5), s * _705 / 10^18
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_754]
                            mem[mem[64]] = s * _705 / 10^18
                            emit Rewarded((s * _705 / 10^18), address(_731), arg5);
                        if s - (s * _705 / 10^18) > 0:
                            require s - (s * _705 / 10^18) + balanceOf[stor204][address(mem[128])] >= balanceOf[stor204][address(mem[128])]
                            balanceOf[stor204][address(mem[128])] = s - (s * _705 / 10^18) + balanceOf[stor204][address(mem[128])]
                            emit Received((s - (s * _705 / 10^18)), mem[140 len 20], sub_79a5524bAddress);
}



}
