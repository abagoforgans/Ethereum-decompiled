contract main {




// =====================  Runtime code  =====================


const isContractMiniGame = 1


uint8 stor0;
address administratorAddress; offset 8
uint256 stor1;
uint256 stor1;
uint256 stor2;
uint256 stor2;
address sub_c26da794Address;
address sub_c3f656f1Address;
address sub_b4bd7d41Address;
mapping of struct factories;
mapping of uint8 stor7;

function factories(uint256 arg1) {
    return factories[arg1].field_0, 
           factories[arg1].field_256,
           factories[arg1].field_512,
           factories[arg1].field_768,
           factories[arg1].field_1024,
           factories[arg1].field_1280,
           factories[arg1].field_1536
}

function miniGames(address arg1) {
    return bool(stor7[arg1])
}

function sub_b4bd7d41(?) {
    return sub_b4bd7d41Address
}

function sub_c26da794(?) {
    return sub_c26da794Address
}

function sub_c3f656f1(?) {
    return sub_c3f656f1Address
}

function administrator() {
    return administratorAddress
}

function upgrade(address arg1) {
    require msg.sender == administratorAddress
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function setupMiniGame(uint256 arg1, uint256 arg2) {
  stop
}

function sub_3bb9d970(?) {
    require msg.sender == administratorAddress
    sub_c26da794Address = arg1
}

function sub_3cd1c8db(?) {
    require msg.sender == administratorAddress
    factories[arg1].field_768 = arg2
}

function sub_dcb7de5b(?) {
    require msg.sender == administratorAddress
    factories[arg1].field_512 = arg2
}

function sub_d40cafac(?) {
    require msg.sender == administratorAddress
    factories[arg1].field_1024 = arg2
}

function removeContractMiniGame(address arg1) {
    require msg.sender == administratorAddress
    stor7[address(arg1)] = 0
}

function setMiningWarInterface(address arg1) {
    require msg.sender == administratorAddress
    sub_c3f656f1Address = arg1
}

function sub_1ce68fb9(?) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.0x3281d576 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor7[address(arg1)] = 1
}

function setEngineerInterface(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.0x3281d576 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    sub_b4bd7d41Address = arg1
}

function sub_b0e7f289(?) {
    require msg.sender == administratorAddress
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x324726b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    factories[ext_call.return_data[0]].field_0 = ext_call.return_data[0] + 1
    factories[ext_call.return_data[0]].field_256 = arg1
    factories[ext_call.return_data[0]].field_512 = arg2
    factories[ext_call.return_data[0]].field_768 = arg3
    factories[ext_call.return_data[0]].field_1024 = arg4
    factories[ext_call.return_data[0]].field_1280 = arg5
    factories[ext_call.return_data[0]].field_1536 = arg6
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0xe7600c7c with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2222e43a(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor7[address(msg.sender)]) == 1
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x324726b with:
         gas gas_remaining wei
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length <= ext_call.return_data[0]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 128] > 0:
            require idx < arg2.length
            _19 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0x801b11ff00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = idx
            mem[(32 * arg2.length) + 196] = _19
            require ext_code.size(sub_c26da794Address)
            call sub_c26da794Address.0x801b11ff with:
                 gas gas_remaining wei
                args address(arg1), idx, _19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function startGame() {
    require msg.sender == administratorAddress
    require not stor0
    stor0 = 1
    factories[0].field_0 = 1
    factories[0].field_256 = 100000
    factories[0].field_512 = 10000
    factories[0].field_768 = 0
    factories[0].field_1024 = 10
    factories[0].field_1280 = 0
    factories[0].field_1536 = uint256(stor2)
    factories[1].field_0 = 2
    factories[1].field_256 = 500000
    factories[1].field_512 = 20000
    factories[1].field_768 = 0
    factories[1].field_1024 = 15
    factories[1].field_1280 = uint256(stor1)
    factories[1].field_1536 = 0
    factories[1].field_1537 = uint255(stor2)
    factories[2].field_0 = 3
    factories[2].field_256 = 1500000
    factories[2].field_512 = 40000
    factories[2].field_768 = 0
    factories[2].field_1024 = 20
    factories[2].field_1280 = 0
    factories[2].field_1282 = Mask(254, 0, stor1)
    factories[2].field_1536 = 3 * uint256(stor2)
    factories[3].field_0 = 4
    factories[3].field_256 = 3 * 10^6
    factories[3].field_512 = 80000
    factories[3].field_768 = 0
    factories[3].field_1024 = 5
    factories[3].field_1280 = 5 * uint256(stor1)
    factories[3].field_1536 = 6 * uint256(stor2)
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0xe7600c7c with:
         gas gas_remaining wei
        args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getData(address arg1) {
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x324726b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38266b2200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x38266b22 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _8 = mem[96 len 4], address(arg1) << 64
    _9 = 0, mem[132 len 28]
    _10 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 32 <= return_data.size
    require mem[mem[160] + 96] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = _8
    mem[ceil32(return_data.size) + 160] = _9
    mem[ceil32(return_data.size) + 192] = 128
    mem[ceil32(return_data.size) + 224] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return ext_call.return_data[0], _8, _9, 128, mem[ceil32(return_data.size) + 224 len (32 * _14) + 32]
}

function getProgramsValue() {
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x324726b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = ext_call.return_data[0]
    mem[64] = (32 * ext_call.return_data[0]) + 352
    if not ext_call.return_data[0]:
        s = 96
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[0] = idx
            mem[32] = 6
            _26 = mem[64]
            mem[64] = mem[64] + 224
            mem[_26] = factories[idx].field_0
            mem[_26 + 32] = factories[idx].field_256
            mem[_26 + 64] = factories[idx].field_512
            mem[_26 + 96] = factories[idx].field_768
            mem[_26 + 128] = factories[idx].field_1024
            mem[_26 + 160] = factories[idx].field_1280
            mem[_26 + 192] = factories[idx].field_1536
            require idx < mem[320]
            mem[(32 * idx) + 352] = factories[idx].field_1024
            s = _26
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[320]
        _35 = mem[320]
        mem[mem[64] + 64 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
        return 32, mem[mem[64] + 32 len (32 * _35) + 32]
    mem[352 len 32 * ext_call.return_data[0]] = code.data[11239 len 32 * ext_call.return_data[0]]
    s = 96
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[0] = idx
        mem[32] = 6
        _30 = mem[64]
        mem[64] = mem[64] + 224
        mem[_30] = factories[idx].field_0
        mem[_30 + 32] = factories[idx].field_256
        mem[_30 + 64] = factories[idx].field_512
        mem[_30 + 96] = factories[idx].field_768
        mem[_30 + 128] = factories[idx].field_1024
        mem[_30 + 160] = factories[idx].field_1280
        mem[_30 + 192] = factories[idx].field_1536
        require idx < mem[320]
        mem[(32 * idx) + 352] = factories[idx].field_1024
        s = _30
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[320]
    _38 = mem[320]
    mem[mem[64] + 64 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
    return 32, mem[mem[64] + 32 len (32 * _38) + 32]
}

function sub_98f5fa3b(?) payable {
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x4fdfe679 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.getLevel(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= factories[ext_call.return_data[0]].field_1280
    require ext_code.size(sub_c3f656f1Address)
    call sub_c3f656f1Address.subCrystal(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, factories[ext_call.return_data[0]].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x241e107e with:
         gas gas_remaining wei
        args msg.sender, factories[ext_call.return_data[0]].field_0, block.timestamp + factories[ext_call.return_data[0]].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        if not msg.value:
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.gameSponsor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
                 gas 2300 wei
            require ext_code.size(sub_c3f656f1Address)
            call sub_c3f656f1Address.fallback() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 <= msg.value
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.fallback() with:
               value msg.value wei
                 gas gas_remaining wei
        else:
            require msg.value
            require 5 * msg.value / msg.value == 5
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.gameSponsor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value 5 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
               value 5 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_code.size(sub_c3f656f1Address)
            call sub_c3f656f1Address.fallback() with:
               value 5 * msg.value / 100 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 3 * 5 * msg.value / 100 <= msg.value
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.fallback() with:
               value msg.value - (3 * 5 * msg.value / 100) wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x76d82315: msg.sender, factories[ext_call.return_data[0]].field_256, msg.value, factories[ext_call.return_data[0]].field_0, block.timestamp + factories[ext_call.return_data[0]].field_1536
}

function sub_ecad7376(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 352
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 320] = 0
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x324726b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1.length <= ext_call.return_data[0]
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.0x4fdfe679 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 356] = msg.sender
    require ext_code.size(sub_c26da794Address)
    call sub_c26da794Address.getLevel(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = (32 * arg1.length) + 128
    idx = 0
    while idx < arg1.length:
        mem[0] = idx
        mem[32] = 6
        _80 = mem[64]
        mem[64] = mem[64] + 224
        mem[_80] = factories[idx].field_0
        mem[_80 + 32] = factories[idx].field_256
        mem[_80 + 64] = factories[idx].field_512
        mem[_80 + 96] = factories[idx].field_768
        mem[_80 + 128] = factories[idx].field_1024
        mem[_80 + 160] = factories[idx].field_1280
        mem[_80 + 192] = factories[idx].field_1536
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            require idx < mem[96]
            if mem[(32 * idx) + 128] > 0:
                require idx < mem[96]
                if not mem[(32 * idx) + 128]:
                    require idx < mem[96]
                    if not mem[(32 * idx) + 128]:
                        require idx < mem[96]
                        _111 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _111
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _111
                    else:
                        require mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] * factories[idx].field_768 / mem[(32 * idx) + 128] == factories[idx].field_768
                        require idx < mem[96]
                        _123 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _123
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _123
                else:
                    require mem[(32 * idx) + 128]
                    require mem[(32 * idx) + 128] * factories[idx].field_512 / mem[(32 * idx) + 128] == factories[idx].field_512
                    require idx < mem[96]
                    if not mem[(32 * idx) + 128]:
                        require idx < mem[96]
                        _120 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _120
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _120
                    else:
                        require mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] * factories[idx].field_768 / mem[(32 * idx) + 128] == factories[idx].field_768
                        require idx < mem[96]
                        _135 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _135
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _135
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_call.return_data[0] >= idx + 1
            require idx < mem[96]
            if mem[(32 * idx) + 128] > 0:
                require idx < mem[96]
                if not mem[(32 * idx) + 128]:
                    require idx < mem[96]
                    if not mem[(32 * idx) + 128]:
                        require idx < mem[96]
                        _117 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _117
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _117
                    else:
                        require mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] * factories[idx].field_768 / mem[(32 * idx) + 128] == factories[idx].field_768
                        require idx < mem[96]
                        _132 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _132
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _132
                else:
                    require mem[(32 * idx) + 128]
                    require mem[(32 * idx) + 128] * factories[idx].field_512 / mem[(32 * idx) + 128] == factories[idx].field_512
                    require idx < mem[96]
                    if not mem[(32 * idx) + 128]:
                        require idx < mem[96]
                        _129 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _129
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _129
                    else:
                        require mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] * factories[idx].field_768 / mem[(32 * idx) + 128] == factories[idx].field_768
                        require idx < mem[96]
                        _139 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x55c0a79700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        mem[mem[64] + 68] = _139
                        require ext_code.size(sub_c26da794Address)
                        call sub_c26da794Address.0x55c0a797 with:
                             gas gas_remaining wei
                            args msg.sender, idx, _139
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        s = idx + 1
        s = _80
        idx = idx + 1
        continue 
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 128
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0x64059927: msg.sender, 0, 0, 128, mem[mem[64] + 128 len (32 * mem[96]) + 32]
}



}
