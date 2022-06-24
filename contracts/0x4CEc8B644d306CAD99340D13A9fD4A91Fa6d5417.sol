contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_05e5f1be(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.getLastFundId() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] + 1
    if not ext_call.return_data[0] + 1:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0] + 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.funds(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_56]
            require ext_code.size(mem[_56 + 12 len 20])
            call mem[_56 + 12 len 20].accounting() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_69 + 12 len 20])
            call mem[_69 + 12 len 20].calcGav() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_80]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = address(_60)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + (32 * idx) + 160] = _82
            s = _82
            s = address(_60)
            s = address(_60)
            idx = idx + 1
            continue 
        _50 = mem[64]
        mem[mem[64]] = 64
        _52 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _52:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_50 + 32] = (32 * _52) + 96
        _90 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[_50 + (32 * _52) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[_50 + (32 * _52) + 128 len 32 * _90] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _90]
        return memory
          from mem[64]
           len _50 + (32 * _52) + (32 * _90) + -mem[64] + 128
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0] + 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        call arg1.funds(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_57]
        require ext_code.size(mem[_57 + 12 len 20])
        call mem[_57 + 12 len 20].accounting() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(mem[_71 + 12 len 20])
        call mem[_71 + 12 len 20].calcGav() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _83 = mem[_81]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * idx) + 128] = address(_61)
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + (32 * idx) + 160] = _83
        s = _83
        s = address(_61)
        s = address(_61)
        idx = idx + 1
        continue 
    _51 = mem[64]
    mem[mem[64]] = 64
    _53 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 96
    while idx < _53:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_51 + 32] = (32 * _53) + 96
    _91 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[_51 + (32 * _53) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[_51 + (32 * _53) + 128 len 32 * _91] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _91]
    return memory
      from mem[64]
       len _51 + (32 * _53) + (32 * _91) + -mem[64] + 128
}

function sub_71988f30(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.getLastFundId() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] + 1
    if not ext_call.return_data[0] + 1:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0] + 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.funds(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _70 = mem[_66]
            require ext_code.size(mem[_66 + 12 len 20])
            call mem[_66 + 12 len 20].registry() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_79]
            require ext_code.size(address(_70))
            call address(_70).0x54fd4d50 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(address(_84))
            call address(_84).0x697c5364 with:
                 gas gas_remaining wei
                args address(mem[_90])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _102 = mem[_98 + 32]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = address(_70)
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + (32 * idx) + 160] = _102
            s = _102
            s = address(_70)
            s = address(_70)
            idx = idx + 1
            continue 
        _60 = mem[64]
        mem[mem[64]] = 64
        _62 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _62:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_60 + 32] = (32 * _62) + 96
        _110 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[_60 + (32 * _62) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[_60 + (32 * _62) + 128 len 32 * _110] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _110]
        return memory
          from mem[64]
           len _60 + (32 * _62) + (32 * _110) + -mem[64] + 128
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0] + 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        call arg1.funds(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _71 = mem[_67]
        require ext_code.size(mem[_67 + 12 len 20])
        call mem[_67 + 12 len 20].registry() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_81]
        require ext_code.size(address(_71))
        call address(_71).0x54fd4d50 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(address(_85))
        call address(_85).0x697c5364 with:
             gas gas_remaining wei
            args address(mem[_91])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _103 = mem[_99 + 32]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * idx) + 128] = address(_71)
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + (32 * idx) + 160] = _103
        s = _103
        s = address(_71)
        s = address(_71)
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 64
    _63 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 96
    while idx < _63:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_61 + 32] = (32 * _63) + 96
    _111 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[_61 + (32 * _63) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[_61 + (32 * _63) + 128 len 32 * _111] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _111]
    return memory
      from mem[64]
       len _61 + (32 * _63) + (32 * _111) + -mem[64] + 128
}

function getFundDetails(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.getLastFundId() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] + 1
    if not ext_call.return_data[0] + 1:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160] = ext_call.return_data[0] + 1
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290] = ext_call.return_data[0] + 1
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 322] = ext_call.return_data[0] + 1
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (64 * ext_call.return_data[0] + 1) + 354
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0] + 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.funds(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _181 = mem[_176]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_176 + 12 len 20]
            require ext_code.size(address(_181))
            call address(_181).accounting() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_196 + 12 len 20])
            call mem[_196 + 12 len 20].calcSharePrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160] = mem[_216]
            require ext_code.size(address(_181))
            call address(_181).accounting() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_237 + 12 len 20])
            call mem[_237 + 12 len 20].DENOMINATION_ASSET() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 322]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 354] = mem[_263 + 12 len 20]
            require ext_code.size(address(_181))
            call address(_181).creationTime() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192] = mem[_279]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_181))
            call address(_181).name() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _294 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _296 = mem[_294]
            require mem[_294] <= test266151307()
            require _294 + return_data.size > _294 + mem[_294] + 31
            _303 = mem[_294 + mem[_294]]
            require mem[_294 + mem[_294]] <= test266151307()
            require ceil32(mem[_294 + mem[_294]]) + 32 >= 0 and _294 + ceil32(return_data.size) + ceil32(mem[_294 + mem[_294]]) + 32 <= test266151307()
            mem[64] = _294 + ceil32(return_data.size) + ceil32(mem[_294 + mem[_294]]) + 32
            mem[_294 + ceil32(return_data.size)] = _303
            require _296 + _303 + 32 <= return_data.size
            s = 0
            while s < _303:
                mem[s + _294 + ceil32(return_data.size) + 32] = mem[s + _294 + _296 + 32]
                s = s + 32
                continue 
            if ceil32(_303) > _303:
                mem[_294 + ceil32(return_data.size) + _303 + 32] = 0
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * idx) + 322] = _294 + ceil32(return_data.size)
            s = address(_181)
            s = address(_181)
            idx = idx + 1
            continue 
        _168 = mem[64]
        mem[mem[64]] = 160
        _170 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _170:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _170) + 192
        _327 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[mem[64] + (32 * _170) + 192] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[mem[64] + (32 * _170) + 224 len 32 * _327] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _327]
        mem[mem[64] + 64] = (32 * _170) + (32 * _327) + 224
        _443 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
        mem[mem[64] + (32 * _170) + (32 * _327) + 224] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
        mem[mem[64] + (32 * _170) + (32 * _327) + 256 len 32 * _443] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192 len 32 * _443]
        mem[mem[64] + 96] = (32 * _170) + (32 * _327) + (32 * _443) + 256
        _481 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
        mem[mem[64] + (32 * _170) + (32 * _327) + (32 * _443) + 256] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
        idx = 0
        s = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 322
        t = mem[64] + (32 * _170) + (32 * _327) + (32 * _443) + (32 * _481) + 288
        u = mem[64] + (32 * _170) + (32 * _327) + (32 * _443) + 288
        while idx < _481:
            mem[u] = t + -_168 + -(32 * _170) + -(32 * _327) + -(32 * _443) - 288
            _506 = mem[s]
            _509 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _509:
                mem[v + t + 32] = mem[v + _506 + 32]
                v = v + 32
                continue 
            if ceil32(_509) > _509:
                mem[t + _509 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_509) + 32
            u = u + 32
            continue 
        mem[_168 + 128] = t - _168
        _510 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 322]
        mem[t] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 322]
        idx = 0
        s = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 354
        u = t + 32
        while idx < _510:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _510) + -mem[64] + 32
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128] = ext_call.return_data[0] + 1
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160] = ext_call.return_data[0] + 1
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290] = ext_call.return_data[0] + 1
    mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * ext_call.return_data[0] + 1) + 322
    mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 322] = 96
    s = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 322
    idx = ext_call.return_data[0] + 1
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _169 = mem[64]
    mem[mem[64]] = ext_call.return_data[0] + 1
    mem[64] = mem[64] + (32 * ext_call.return_data[0] + 1) + 32
    if not ext_call.return_data[0] + 1:
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0] + 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.funds(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_335]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_335 + 12 len 20]
            require ext_code.size(address(_340))
            call address(_340).accounting() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_353 + 12 len 20])
            call mem[_353 + 12 len 20].calcSharePrice() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160] = mem[_369]
            require ext_code.size(address(_340))
            call address(_340).accounting() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(mem[_390 + 12 len 20])
            call mem[_390 + 12 len 20].DENOMINATION_ASSET() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[_169]
            mem[(32 * idx) + _169 + 32] = mem[_404 + 12 len 20]
            require ext_code.size(address(_340))
            call address(_340).creationTime() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192] = mem[_414]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_340))
            call address(_340).name() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _426 = mem[_424]
            require mem[_424] <= test266151307()
            require _424 + return_data.size > _424 + mem[_424] + 31
            _428 = mem[_424 + mem[_424]]
            require mem[_424 + mem[_424]] <= test266151307()
            require ceil32(mem[_424 + mem[_424]]) + 32 >= 0 and _424 + ceil32(return_data.size) + ceil32(mem[_424 + mem[_424]]) + 32 <= test266151307()
            mem[64] = _424 + ceil32(return_data.size) + ceil32(mem[_424 + mem[_424]]) + 32
            mem[_424 + ceil32(return_data.size)] = _428
            require _426 + _428 + 32 <= return_data.size
            s = 0
            while s < _428:
                mem[s + _424 + ceil32(return_data.size) + 32] = mem[s + _424 + _426 + 32]
                s = s + 32
                continue 
            if ceil32(_428) > _428:
                mem[_424 + ceil32(return_data.size) + _428 + 32] = 0
            require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
            mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * idx) + 322] = _424 + ceil32(return_data.size)
            s = address(_340)
            s = address(_340)
            idx = idx + 1
            continue 
        _325 = mem[64]
        mem[mem[64]] = 160
        _329 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _329:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _329) + 192
        _444 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[mem[64] + (32 * _329) + 192] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[mem[64] + (32 * _329) + 224 len 32 * _444] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _444]
        mem[mem[64] + 64] = (32 * _329) + (32 * _444) + 224
        _482 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
        mem[mem[64] + (32 * _329) + (32 * _444) + 224] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
        mem[mem[64] + (32 * _329) + (32 * _444) + 256 len 32 * _482] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192 len 32 * _482]
        mem[mem[64] + 96] = (32 * _329) + (32 * _444) + (32 * _482) + 256
        _511 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
        mem[mem[64] + (32 * _329) + (32 * _444) + (32 * _482) + 256] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
        idx = 0
        s = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 322
        t = mem[64] + (32 * _329) + (32 * _444) + (32 * _482) + (32 * _511) + 288
        u = mem[64] + (32 * _329) + (32 * _444) + (32 * _482) + 288
        while idx < _511:
            mem[u] = t + -_325 + -(32 * _329) + -(32 * _444) + -(32 * _482) - 288
            _530 = mem[s]
            _533 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _533:
                mem[v + t + 32] = mem[v + _530 + 32]
                v = v + 32
                continue 
            if ceil32(_533) > _533:
                mem[t + _533 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_533) + 32
            u = u + 32
            continue 
        mem[_325 + 128] = t - _325
        _535 = mem[_169]
        mem[t] = mem[_169]
        idx = 0
        s = _169 + 32
        u = t + 32
        while idx < _535:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _535) + -mem[64] + 32
    mem[_169 + 32 len 32 * ext_call.return_data[0] + 1] = code.data[4471 len 32 * ext_call.return_data[0] + 1]
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0] + 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        call arg1.funds(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_336]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_336 + 12 len 20]
        require ext_code.size(address(_341))
        call address(_341).accounting() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(mem[_354 + 12 len 20])
        call mem[_354 + 12 len 20].calcSharePrice() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160] = mem[_370]
        require ext_code.size(address(_341))
        call address(_341).accounting() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(mem[_391 + 12 len 20])
        call mem[_391 + 12 len 20].DENOMINATION_ASSET() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[_169]
        mem[(32 * idx) + _169 + 32] = mem[_405 + 12 len 20]
        require ext_code.size(address(_341))
        call address(_341).creationTime() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192] = mem[_415]
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_341))
        call address(_341).name() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _425 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _427 = mem[_425]
        require mem[_425] <= test266151307()
        require _425 + return_data.size > _425 + mem[_425] + 31
        _429 = mem[_425 + mem[_425]]
        require mem[_425 + mem[_425]] <= test266151307()
        require ceil32(mem[_425 + mem[_425]]) + 32 >= 0 and _425 + ceil32(return_data.size) + ceil32(mem[_425 + mem[_425]]) + 32 <= test266151307()
        mem[64] = _425 + ceil32(return_data.size) + ceil32(mem[_425 + mem[_425]]) + 32
        mem[_425 + ceil32(return_data.size)] = _429
        require _427 + _429 + 32 <= return_data.size
        s = 0
        while s < _429:
            mem[s + _425 + ceil32(return_data.size) + 32] = mem[s + _425 + _427 + 32]
            s = s + 32
            continue 
        if ceil32(_429) > _429:
            mem[_425 + ceil32(return_data.size) + _429 + 32] = 0
        require idx < mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
        mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (32 * idx) + 322] = _425 + ceil32(return_data.size)
        s = address(_341)
        s = address(_341)
        idx = idx + 1
        continue 
    _326 = mem[64]
    mem[mem[64]] = 160
    _330 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 192
    while idx < _330:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _330) + 192
    _445 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[mem[64] + (32 * _330) + 192] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 128]
    mem[mem[64] + (32 * _330) + 224 len 32 * _445] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] + 1) + 160 len 32 * _445]
    mem[mem[64] + 64] = (32 * _330) + (32 * _445) + 224
    _483 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
    mem[mem[64] + (32 * _330) + (32 * _445) + 224] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 160]
    mem[mem[64] + (32 * _330) + (32 * _445) + 256 len 32 * _483] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] + 1) + 192 len 32 * _483]
    mem[mem[64] + 96] = (32 * _330) + (32 * _445) + (32 * _483) + 256
    _512 = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
    mem[mem[64] + (32 * _330) + (32 * _445) + (32 * _483) + 256] = mem[ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 290]
    idx = 0
    s = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 322
    t = mem[64] + (32 * _330) + (32 * _445) + (32 * _483) + (32 * _512) + 288
    u = mem[64] + (32 * _330) + (32 * _445) + (32 * _483) + 288
    while idx < _512:
        mem[u] = t + -_326 + -(32 * _330) + -(32 * _445) + -(32 * _483) - 288
        _531 = mem[s]
        _534 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _534:
            mem[v + t + 32] = mem[v + _531 + 32]
            v = v + 32
            continue 
        if ceil32(_534) > _534:
            mem[t + _534 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_534) + 32
        u = u + 32
        continue 
    mem[_326 + 128] = t - _326
    _536 = mem[_169]
    mem[t] = mem[_169]
    idx = 0
    s = _169 + 32
    u = t + 32
    while idx < _536:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t + (32 * _536) + -mem[64] + 32
}



}
