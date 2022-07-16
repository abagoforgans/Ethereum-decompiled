contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of uint8 stor102;
mapping of address sub_27d7ea1e;

function sub_27d7ea1e(?) payable {
    require calldata.size - 4 >= 32
    return sub_27d7ea1e[Mask(32, 224, arg1)]
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor102[address(arg1)])
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor51[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceWhitelisted() payable {
    require msg.sender
    require stor102[address(msg.sender)]
    stor102[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor102[address(arg1)]
    stor102[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require stor102[address(arg1)]
    stor102[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor51[address(arg1)]
    stor51[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_98bfd18f(?) payable {
    require calldata.size - 4 >= 160
    require msg.sender
    require stor102[address(msg.sender)]
    if not sub_27d7ea1e[Mask(32, 224, arg1)]:
        revert with 0, 'ASSET_DOSE_NOT_EXIST'
    require ext_code.size(sub_27d7ea1e[Mask(32, 224, arg1)])
    call sub_27d7ea1e[Mask(32, 224, arg1)].transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function registerAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require ext_code.size(arg1)
    staticcall arg1.getId() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
        revert with 0, 'ASSET_ALREADY_EXISTS'
    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = arg1
    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if not uint8(stor0.field_8):
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
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
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        require arg1
        if stor51[address(arg1)]:
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _526 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                    revert with 0, 'ASSET_ALREADY_EXISTS'
                mem[0] = Mask(32, 224, ext_call.return_data[0])
                mem[32] = 153
                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                mem[(32 * arg2.length) + 160] = address(_526)
                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_526)
                idx = idx + 1
                continue 
        else:
            require arg1
            require not stor51[address(arg1)]
            stor51[address(arg1)] = 1
            emit WhitelistAdminAdded(arg1);
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                _527 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                    revert with 0, 'ASSET_ALREADY_EXISTS'
                mem[0] = Mask(32, 224, ext_call.return_data[0])
                mem[32] = 153
                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                mem[(32 * arg2.length) + 160] = address(_527)
                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_527)
                idx = idx + 1
                continue 
    else:
        if not ext_code.size(this.address):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                require arg1
                if stor51[address(arg1)]:
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _528 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                            revert with 0, 'ASSET_ALREADY_EXISTS'
                        mem[0] = Mask(32, 224, ext_call.return_data[0])
                        mem[32] = 153
                        sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                        mem[(32 * arg2.length) + 160] = address(_528)
                        emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_528)
                        idx = idx + 1
                        continue 
                else:
                    require arg1
                    require not stor51[address(arg1)]
                    stor51[address(arg1)] = 1
                    emit WhitelistAdminAdded(arg1);
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _529 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                            revert with 0, 'ASSET_ALREADY_EXISTS'
                        mem[0] = Mask(32, 224, ext_call.return_data[0])
                        mem[32] = 153
                        sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                        mem[(32 * arg2.length) + 160] = address(_529)
                        emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_529)
                        idx = idx + 1
                        continue 
            else:
                if not ext_code.size(this.address):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        require arg1
                        if stor51[address(arg1)]:
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _530 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_530)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_530)
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require not stor51[address(arg1)]
                            stor51[address(arg1)] = 1
                            emit WhitelistAdminAdded(arg1);
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _531 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_531)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_531)
                                idx = idx + 1
                                continue 
                    else:
                        if not ext_code.size(this.address):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _532 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_532)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_532)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _533 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_533)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_533)
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 
                                            32,
                                            46,
                                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[(32 * arg2.length) + 242 len 18]
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _534 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_534)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_534)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _535 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_535)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_535)
                                    idx = idx + 1
                                    continue 
                else:
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[(32 * arg2.length) + 242 len 18]
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        require arg1
                        if stor51[address(arg1)]:
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _536 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_536)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_536)
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require not stor51[address(arg1)]
                            stor51[address(arg1)] = 1
                            emit WhitelistAdminAdded(arg1);
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _537 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_537)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_537)
                                idx = idx + 1
                                continue 
                    else:
                        if not ext_code.size(this.address):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _538 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_538)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_538)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _539 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_539)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_539)
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 
                                            32,
                                            46,
                                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[(32 * arg2.length) + 242 len 18]
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _540 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_540)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_540)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _541 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_541)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_541)
                                    idx = idx + 1
                                    continue 
        else:
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[(32 * arg2.length) + 242 len 18]
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                require arg1
                if stor51[address(arg1)]:
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _542 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                            revert with 0, 'ASSET_ALREADY_EXISTS'
                        mem[0] = Mask(32, 224, ext_call.return_data[0])
                        mem[32] = 153
                        sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                        mem[(32 * arg2.length) + 160] = address(_542)
                        emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_542)
                        idx = idx + 1
                        continue 
                else:
                    require arg1
                    require not stor51[address(arg1)]
                    stor51[address(arg1)] = 1
                    emit WhitelistAdminAdded(arg1);
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _543 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                            revert with 0, 'ASSET_ALREADY_EXISTS'
                        mem[0] = Mask(32, 224, ext_call.return_data[0])
                        mem[32] = 153
                        sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                        mem[(32 * arg2.length) + 160] = address(_543)
                        emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_543)
                        idx = idx + 1
                        continue 
            else:
                if not ext_code.size(this.address):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        require arg1
                        if stor51[address(arg1)]:
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _544 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_544)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_544)
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require not stor51[address(arg1)]
                            stor51[address(arg1)] = 1
                            emit WhitelistAdminAdded(arg1);
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _545 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_545)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_545)
                                idx = idx + 1
                                continue 
                    else:
                        if not ext_code.size(this.address):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _546 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_546)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_546)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _547 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_547)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_547)
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 
                                            32,
                                            46,
                                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[(32 * arg2.length) + 242 len 18]
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _548 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_548)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_548)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _549 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_549)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_549)
                                    idx = idx + 1
                                    continue 
                else:
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[(32 * arg2.length) + 242 len 18]
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        require arg1
                        if stor51[address(arg1)]:
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _550 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_550)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_550)
                                idx = idx + 1
                                continue 
                        else:
                            require arg1
                            require not stor51[address(arg1)]
                            stor51[address(arg1)] = 1
                            emit WhitelistAdminAdded(arg1);
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                _551 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                    revert with 0, 'ASSET_ALREADY_EXISTS'
                                mem[0] = Mask(32, 224, ext_call.return_data[0])
                                mem[32] = 153
                                sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                mem[(32 * arg2.length) + 160] = address(_551)
                                emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_551)
                                idx = idx + 1
                                continue 
                    else:
                        if not ext_code.size(this.address):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _552 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_552)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_552)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _553 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_553)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_553)
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 
                                            32,
                                            46,
                                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[(32 * arg2.length) + 242 len 18]
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            require arg1
                            if stor51[address(arg1)]:
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _554 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_554)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_554)
                                    idx = idx + 1
                                    continue 
                            else:
                                require arg1
                                require not stor51[address(arg1)]
                                stor51[address(arg1)] = 1
                                emit WhitelistAdminAdded(arg1);
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    _555 = mem[(32 * idx) + 128]
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].getId() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])]:
                                        revert with 0, 'ASSET_ALREADY_EXISTS'
                                    mem[0] = Mask(32, 224, ext_call.return_data[0])
                                    mem[32] = 153
                                    sub_27d7ea1e[Mask(32, 224, ext_call.return_data[0])] = mem[(32 * idx) + 140 len 20]
                                    mem[(32 * arg2.length) + 128] = Mask(32, 224, ext_call.return_data[0])
                                    mem[(32 * arg2.length) + 160] = address(_555)
                                    emit 0xe4d2f6df: Mask(32, 224, ext_call.return_data[0]), address(_555)
                                    idx = idx + 1
                                    continue 
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
