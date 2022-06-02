contract main {




// =====================  Runtime code  =====================


const PRESALE_LIMIT = 5000


address owner;
address sub_7d9527d6Address;
address sub_e43e9de0Address;
address sub_dede553fAddress;
address withdrawerAddress;
uint256 presaleEndTime;
uint256 sub_ef030012;
uint256 currentTokenId;
uint256 sub_cd99754a;

function currentTokenId() {
    return currentTokenId
}

function presaleEndTime() {
    return presaleEndTime
}

function getPresalePrice() {
    return sub_ef030012
}

function sub_7d9527d6(?) {
    return sub_7d9527d6Address
}

function owner() {
    return owner
}

function sub_cd99754a(?) {
    return sub_cd99754a
}

function withdrawer() {
    return withdrawerAddress
}

function sub_dede553f(?) {
    return sub_dede553fAddress
}

function sub_e43e9de0(?) {
    return sub_e43e9de0Address
}

function sub_ef030012(?) {
    return sub_ef030012
}

function _fallback() {
  stop
}

function sub_4ecf30e4(?) {
    require msg.sender == owner
    presaleEndTime = arg1
}

function setWithdrawer(address arg1) {
    require msg.sender == owner
    withdrawerAddress = arg1
}

function setCurrentTokenId(uint256 arg1) {
    require msg.sender == owner
    currentTokenId = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAddresses(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    if arg1:
        sub_7d9527d6Address = arg1
    if arg2:
        sub_e43e9de0Address = arg2
    if arg3:
        sub_dede553fAddress = arg3
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require msg.sender == withdrawerAddress
    require arg1 <= eth.balance(this.address)
    call withdrawerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getCryptantFragments(address arg1) {
    require ext_code.size(sub_dede553fAddress)
    call sub_dede553fAddress.readUint256(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(224, 0, arg1, 'cryptant', 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ec243555(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = 0
    while idx < arg1:
        sub_cd99754a++
        _125 = mem[64]
        mem[mem[64] + 32 len 128] = code.data[5427 len 128]
        mem[mem[64] + 160] = 4
        mem[mem[64] + 192 len 128] = code.data[5427 len 128]
        require ext_code.size(sub_7d9527d6Address)
        call sub_7d9527d6Address.generateCrabGene(bool arg1, bool arg2) with:
             gas gas_remaining wei
            args 0
        mem[mem[64] + 320 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[64]:
            mem[mem[64] + 388] = ext_call.return_data[32]
            require ext_code.size(sub_e43e9de0Address)
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, sub_cd99754a, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 352] = sub_cd99754a
            mem[mem[64] + 384] = 'gene'
            mem[mem[64] + 320] = 36
            mem[64] = mem[64] + 388
            t = _125 + 352
            u = _125 + 388
            s = 36
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_125 + 420] = mem[_125 + 412 len 4] or Mask(224, 32, mem[_125 + 420])
            require 0 < mem[_125 + 160]
            mem[_125 + 192] = sha3(mem[_125 + 388 len 36])
            require 0 < mem[_125]
            mem[_125 + 32] = ext_call.return_data[0]
            mem[_125 + 420] = sub_cd99754a
            mem[_125 + 452] = 'level'
            mem[_125 + 388] = 37
            mem[64] = _125 + 457
            t = _125 + 420
            u = _125 + 457
            s = 37
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_125 + 489] = mem[_125 + 479 len 5] or Mask(216, 40, mem[_125 + 489])
            require 1 < mem[_125 + 160]
            mem[_125 + 224] = sha3(mem[mem[64] len _125 + -mem[64] + 494])
            require 1 < mem[_125]
            mem[_125 + 64] = 1
            _361 = mem[64]
            mem[mem[64] + 32] = sub_cd99754a
            mem[mem[64] + 64] = 'heartValue'
            _362 = mem[64]
            mem[mem[64]] = 42
            mem[64] = mem[64] + 74
            _363 = mem[_362]
            t = _362 + 32
            u = _361 + 74
            s = mem[_362]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_361 + floor32(mem[_362]) + 74] = mem[_362 + floor32(mem[_362]) + -(mem[_362] % 32) + 64 len mem[_362] % 32] or Mask(8 * -(mem[_362] % 32) + 32, -(8 * -(mem[_362] % 32) + 32) + 256, mem[_361 + floor32(mem[_362]) + 74])
            require 2 < mem[_125 + 160]
            mem[_125 + 256] = sha3(mem[mem[64] len _363 + _361 + -mem[64] + 74])
            require 2 < mem[_125]
            mem[_125 + 96] = ext_call.return_data[64]
            _439 = mem[64]
            mem[mem[64] + 32] = sub_cd99754a
            mem[mem[64] + 64] = 'growthValue'
            _440 = mem[64]
            mem[mem[64]] = 43
            mem[64] = mem[64] + 75
            _441 = mem[_440]
            t = _440 + 32
            u = _439 + 75
            s = mem[_440]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_439 + floor32(mem[_440]) + 75] = mem[_440 + floor32(mem[_440]) + -(mem[_440] % 32) + 64 len mem[_440] % 32] or Mask(8 * -(mem[_440] % 32) + 32, -(8 * -(mem[_440] % 32) + 32) + 256, mem[_439 + floor32(mem[_440]) + 75])
            require 3 < mem[_125 + 160]
            mem[_125 + 288] = sha3(mem[mem[64] len _441 + _439 + -mem[64] + 75])
            require 3 < mem[_125]
            mem[_125 + 128] = ext_call.return_data[96]
            mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[_125 + 160]
            _499 = mem[_125 + 160]
            s = 0
            while s < 32 * _499:
                mem[s + mem[64] + 100] = mem[s + _125 + 192]
                s = s + 32
                continue 
            mem[mem[64] + 36] = (32 * _499) + 96
            mem[(32 * _499) + mem[64] + 100] = mem[_125]
            _522 = mem[_125]
            s = 0
            while s < 32 * _522:
                mem[s + (32 * _499) + mem[64] + 132] = mem[s + _125 + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, (32 * _499) + 96, mem[mem[64] + 68 len (32 * _522) + (32 * _499) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[mem[64]] = sub_cd99754a
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[32]
            mem[mem[64] + 96] = 12 * 10^16
            mem[mem[64] + 128] = ext_call.return_data[96]
            emit CrabHatched(sub_cd99754a, ext_call.return_data[0], ext_call.return_data[32], 12 * 10^16, ext_call.return_data[96], msg.sender);
        else:
            require ext_code.size(sub_7d9527d6Address)
            call sub_7d9527d6Address.generateCrabHeart() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[mem[64] + 388] = ext_call.return_data[32]
            require ext_code.size(sub_e43e9de0Address)
            call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, sub_cd99754a, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 352] = sub_cd99754a
            mem[mem[64] + 384] = 'gene'
            mem[mem[64] + 320] = 36
            mem[64] = mem[64] + 388
            t = _125 + 352
            u = _125 + 388
            s = 36
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_125 + 420] = mem[_125 + 412 len 4] or Mask(224, 32, mem[_125 + 420])
            require 0 < mem[_125 + 160]
            mem[_125 + 192] = sha3(mem[_125 + 388 len 36])
            require 0 < mem[_125]
            mem[_125 + 32] = ext_call.return_data[0]
            mem[_125 + 420] = sub_cd99754a
            mem[_125 + 452] = 'level'
            mem[_125 + 388] = 37
            mem[64] = _125 + 457
            t = _125 + 420
            u = _125 + 457
            s = 37
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_125 + 489] = mem[_125 + 479 len 5] or Mask(216, 40, mem[_125 + 489])
            require 1 < mem[_125 + 160]
            mem[_125 + 224] = sha3(mem[mem[64] len _125 + -mem[64] + 494])
            require 1 < mem[_125]
            mem[_125 + 64] = 1
            _364 = mem[64]
            mem[mem[64] + 32] = sub_cd99754a
            mem[mem[64] + 64] = 'heartValue'
            _365 = mem[64]
            mem[mem[64]] = 42
            mem[64] = mem[64] + 74
            _366 = mem[_365]
            t = _365 + 32
            u = _364 + 74
            s = mem[_365]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_364 + floor32(mem[_365]) + 74] = mem[_365 + floor32(mem[_365]) + -(mem[_365] % 32) + 64 len mem[_365] % 32] or Mask(8 * -(mem[_365] % 32) + 32, -(8 * -(mem[_365] % 32) + 32) + 256, mem[_364 + floor32(mem[_365]) + 74])
            require 2 < mem[_125 + 160]
            mem[_125 + 256] = sha3(mem[mem[64] len _366 + _364 + -mem[64] + 74])
            require 2 < mem[_125]
            mem[_125 + 96] = ext_call.return_data[0]
            _442 = mem[64]
            mem[mem[64] + 32] = sub_cd99754a
            mem[mem[64] + 64] = 'growthValue'
            _443 = mem[64]
            mem[mem[64]] = 43
            mem[64] = mem[64] + 75
            _444 = mem[_443]
            t = _443 + 32
            u = _442 + 75
            s = mem[_443]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_442 + floor32(mem[_443]) + 75] = mem[_443 + floor32(mem[_443]) + -(mem[_443] % 32) + 64 len mem[_443] % 32] or Mask(8 * -(mem[_443] % 32) + 32, -(8 * -(mem[_443] % 32) + 32) + 256, mem[_442 + floor32(mem[_443]) + 75])
            require 3 < mem[_125 + 160]
            mem[_125 + 288] = sha3(mem[mem[64] len _444 + _442 + -mem[64] + 75])
            require 3 < mem[_125]
            mem[_125 + 128] = ext_call.return_data[32]
            _500 = mem[64]
            mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[_125 + 160]
            _502 = mem[_125 + 160]
            s = 0
            while s < 32 * _502:
                mem[s + mem[64] + 100] = mem[s + _125 + 192]
                s = s + 32
                continue 
            mem[_500 + 36] = (32 * _502) + 96
            mem[(32 * _502) + _500 + 100] = mem[_125]
            _525 = mem[_125]
            s = 0
            while s < 32 * _525:
                mem[s + (32 * _502) + _500 + 132] = mem[s + _125 + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_dede553fAddress)
            call sub_dede553fAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _525) + (32 * _502) + _500 + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[mem[64]] = sub_cd99754a
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[32]
            mem[mem[64] + 96] = 12 * 10^16
            mem[mem[64] + 128] = ext_call.return_data[32]
            emit CrabHatched(sub_cd99754a, ext_call.return_data[0], ext_call.return_data[32], 12 * 10^16, ext_call.return_data[32], msg.sender);
        idx = idx + 1
        continue 
}

function sub_64c3dae6(?) {
    require msg.sender == owner
    if arg3:
        if not arg4:
            if arg5:
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, arg3, 0, arg2, 0, msg.sender);
            else:
                require ext_code.size(sub_7d9527d6Address)
                call sub_7d9527d6Address.generateCrabHeart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, arg3, 0, arg2, ext_call.return_data[32], msg.sender);
        else:
            if arg5:
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, arg3, arg4, arg2, 0, msg.sender);
            else:
                require ext_code.size(sub_7d9527d6Address)
                call sub_7d9527d6Address.generateCrabHeart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, arg3, arg4, arg2, ext_call.return_data[32], msg.sender);
    else:
        require ext_code.size(sub_7d9527d6Address)
        call sub_7d9527d6Address.generateCrabGene(bool arg1, bool arg2) with:
             gas gas_remaining wei
            args 1, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not arg4:
            if arg5:
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, ext_call.return_data[0], ext_call.return_data[32], arg2, ext_call.return_data[96], msg.sender);
            else:
                if ext_call.return_data[64]:
                    require ext_code.size(sub_e43e9de0Address)
                    call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[802 len 0] = None
                    mem[962 len 0] = None
                    require ext_code.size(sub_dede553fAddress)
                    call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                         gas gas_remaining wei
                        args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit CrabHatched(arg1, ext_call.return_data[0], ext_call.return_data[32], arg2, ext_call.return_data[96], msg.sender);
                else:
                    require ext_code.size(sub_7d9527d6Address)
                    call sub_7d9527d6Address.generateCrabHeart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_e43e9de0Address)
                    call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[802 len 0] = None
                    mem[962 len 0] = None
                    require ext_code.size(sub_dede553fAddress)
                    call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                         gas gas_remaining wei
                        args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit CrabHatched(arg1, ext_call.return_data[0], ext_call.return_data[32], arg2, ext_call.return_data[32], msg.sender);
        else:
            if arg5:
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[802 len 0] = None
                mem[962 len 0] = None
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit CrabHatched(arg1, ext_call.return_data[0], arg4, arg2, ext_call.return_data[96], msg.sender);
            else:
                if ext_call.return_data[64]:
                    require ext_code.size(sub_e43e9de0Address)
                    call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[802 len 0] = None
                    mem[962 len 0] = None
                    require ext_code.size(sub_dede553fAddress)
                    call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                         gas gas_remaining wei
                        args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit CrabHatched(arg1, ext_call.return_data[0], arg4, arg2, ext_call.return_data[96], msg.sender);
                else:
                    require ext_code.size(sub_7d9527d6Address)
                    call sub_7d9527d6Address.generateCrabHeart() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_e43e9de0Address)
                    call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, arg1, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[802 len 0] = None
                    mem[962 len 0] = None
                    require ext_code.size(sub_dede553fAddress)
                    call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                         gas gas_remaining wei
                        args 64, 224, 4, mem[802 len 128], 4, mem[962 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit CrabHatched(arg1, ext_call.return_data[0], arg4, arg2, ext_call.return_data[32], msg.sender);
}

function purchase(uint256 arg1) payable {
    mem[64] = 96
    require sub_7d9527d6Address
    require sub_e43e9de0Address
    require sub_dede553fAddress
    require arg1 > 0
    require arg1 <= 10
    require block.timestamp < presaleEndTime
    require 5000 >= arg1 + currentTokenId
    require msg.value >= sub_ef030012 * arg1
    if arg1 != 10:
        idx = 0
        while idx < arg1:
            currentTokenId++
            _324 = mem[64]
            mem[mem[64] + 32 len 128] = code.data[5427 len 128]
            mem[mem[64] + 160] = 4
            mem[mem[64] + 192 len 128] = code.data[5427 len 128]
            require ext_code.size(sub_7d9527d6Address)
            call sub_7d9527d6Address.generateCrabGene(bool arg1, bool arg2) with:
                 gas gas_remaining wei
                args 1, idx == 100
            mem[mem[64] + 320 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if ext_call.return_data[64]:
                mem[mem[64] + 388] = ext_call.return_data[32]
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, currentTokenId + 1, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 352] = currentTokenId + 1
                mem[mem[64] + 384] = 'gene'
                mem[mem[64] + 320] = 36
                mem[64] = mem[64] + 388
                t = _324 + 352
                u = _324 + 388
                s = mem[_324 + 320]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_324 + floor32(mem[_324 + 320]) + 388] = mem[_324 + floor32(mem[_324 + 320]) + -(mem[_324 + 320] % 32) + 384 len mem[_324 + 320] % 32] or Mask(8 * -(mem[_324 + 320] % 32) + 32, -(8 * -(mem[_324 + 320] % 32) + 32) + 256, mem[_324 + floor32(mem[_324 + 320]) + 388])
                require 0 < mem[_324 + 160]
                mem[_324 + 192] = sha3(mem[_324 + 388 len 36])
                require 0 < mem[_324]
                mem[_324 + 32] = ext_call.return_data[0]
                mem[_324 + 420] = currentTokenId + 1
                mem[_324 + 452] = 'level'
                mem[_324 + 388] = 37
                mem[64] = _324 + 457
                t = _324 + 420
                u = _324 + 457
                s = 37
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_324 + 489] = mem[_324 + 479 len 5] or Mask(216, 40, mem[_324 + 489])
                require 1 < mem[_324 + 160]
                mem[_324 + 224] = sha3(mem[mem[64] len _324 + -mem[64] + 494])
                require 1 < mem[_324]
                mem[_324 + 64] = 1
                _955 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'heartValue'
                _956 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 74
                _957 = mem[_956]
                t = _956 + 32
                u = _955 + 74
                s = mem[_956]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_955 + floor32(mem[_956]) + 74] = mem[_956 + floor32(mem[_956]) + -(mem[_956] % 32) + 64 len mem[_956] % 32] or Mask(8 * -(mem[_956] % 32) + 32, -(8 * -(mem[_956] % 32) + 32) + 256, mem[_955 + floor32(mem[_956]) + 74])
                require 2 < mem[_324 + 160]
                mem[_324 + 256] = sha3(mem[mem[64] len _957 + _955 + -mem[64] + 74])
                require 2 < mem[_324]
                mem[_324 + 96] = ext_call.return_data[64]
                _1167 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'growthValue'
                _1168 = mem[64]
                mem[mem[64]] = 43
                mem[64] = mem[64] + 75
                _1169 = mem[_1168]
                t = _1168 + 32
                u = _1167 + 75
                s = mem[_1168]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1167 + floor32(mem[_1168]) + 75] = mem[_1168 + floor32(mem[_1168]) + -(mem[_1168] % 32) + 64 len mem[_1168] % 32] or Mask(8 * -(mem[_1168] % 32) + 32, -(8 * -(mem[_1168] % 32) + 32) + 256, mem[_1167 + floor32(mem[_1168]) + 75])
                require 3 < mem[_324 + 160]
                mem[_324 + 288] = sha3(mem[mem[64] len _1169 + _1167 + -mem[64] + 75])
                require 3 < mem[_324]
                mem[_324 + 128] = ext_call.return_data[96]
                mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[_324 + 160]
                _1315 = mem[_324 + 160]
                s = 0
                while s < 32 * _1315:
                    mem[s + mem[64] + 100] = mem[s + _324 + 192]
                    s = s + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1315) + 96
                mem[(32 * _1315) + mem[64] + 100] = mem[_324]
                _1382 = mem[_324]
                s = 0
                while s < 32 * _1382:
                    mem[s + (32 * _1315) + mem[64] + 132] = mem[s + _324 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, (32 * _1315) + 96, mem[mem[64] + 68 len (32 * _1382) + (32 * _1315) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = currentTokenId + 1
                mem[mem[64] + 32] = ext_call.return_data[0]
                mem[mem[64] + 64] = ext_call.return_data[32]
                mem[mem[64] + 96] = sub_ef030012
                mem[mem[64] + 128] = ext_call.return_data[96]
                emit CrabHatched(currentTokenId + 1, ext_call.return_data[0], ext_call.return_data[32], sub_ef030012, ext_call.return_data[96], msg.sender);
            else:
                require ext_code.size(sub_7d9527d6Address)
                call sub_7d9527d6Address.generateCrabHeart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[mem[64] + 388] = ext_call.return_data[32]
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, currentTokenId + 1, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 352] = currentTokenId + 1
                mem[mem[64] + 384] = 'gene'
                mem[mem[64] + 320] = 36
                mem[64] = mem[64] + 388
                t = _324 + 352
                u = _324 + 388
                s = 36
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_324 + 420] = mem[_324 + 412 len 4] or Mask(224, 32, mem[_324 + 420])
                require 0 < mem[_324 + 160]
                mem[_324 + 192] = sha3(mem[_324 + 388 len 36])
                require 0 < mem[_324]
                mem[_324 + 32] = ext_call.return_data[0]
                mem[_324 + 420] = currentTokenId + 1
                mem[_324 + 452] = 'level'
                mem[_324 + 388] = 37
                mem[64] = _324 + 457
                t = _324 + 420
                u = _324 + 457
                s = 37
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_324 + 489] = mem[_324 + 479 len 5] or Mask(216, 40, mem[_324 + 489])
                require 1 < mem[_324 + 160]
                mem[_324 + 224] = sha3(mem[mem[64] len _324 + -mem[64] + 494])
                require 1 < mem[_324]
                mem[_324 + 64] = 1
                _958 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'heartValue'
                _959 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 74
                _960 = mem[_959]
                t = _959 + 32
                u = _958 + 74
                s = mem[_959]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_958 + floor32(mem[_959]) + 74] = mem[_959 + floor32(mem[_959]) + -(mem[_959] % 32) + 64 len mem[_959] % 32] or Mask(8 * -(mem[_959] % 32) + 32, -(8 * -(mem[_959] % 32) + 32) + 256, mem[_958 + floor32(mem[_959]) + 74])
                require 2 < mem[_324 + 160]
                mem[_324 + 256] = sha3(mem[mem[64] len _960 + _958 + -mem[64] + 74])
                require 2 < mem[_324]
                mem[_324 + 96] = ext_call.return_data[0]
                _1170 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'growthValue'
                _1171 = mem[64]
                mem[mem[64]] = 43
                mem[64] = mem[64] + 75
                _1172 = mem[_1171]
                t = _1171 + 32
                u = _1170 + 75
                s = mem[_1171]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1170 + floor32(mem[_1171]) + 75] = mem[_1171 + floor32(mem[_1171]) + -(mem[_1171] % 32) + 64 len mem[_1171] % 32] or Mask(8 * -(mem[_1171] % 32) + 32, -(8 * -(mem[_1171] % 32) + 32) + 256, mem[_1170 + floor32(mem[_1171]) + 75])
                require 3 < mem[_324 + 160]
                mem[_324 + 288] = sha3(mem[mem[64] len _1172 + _1170 + -mem[64] + 75])
                require 3 < mem[_324]
                mem[_324 + 128] = ext_call.return_data[32]
                _1316 = mem[64]
                mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[_324 + 160]
                _1318 = mem[_324 + 160]
                s = 0
                while s < 32 * _1318:
                    mem[s + mem[64] + 100] = mem[s + _324 + 192]
                    s = s + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1318) + 96
                mem[(32 * _1318) + mem[64] + 100] = mem[_324]
                _1385 = mem[_324]
                s = 0
                while s < 32 * _1385:
                    mem[s + (32 * _1318) + mem[64] + 132] = mem[s + _324 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _1385) + (32 * _1318) + _1316 + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = currentTokenId + 1
                mem[mem[64] + 32] = ext_call.return_data[0]
                mem[mem[64] + 64] = ext_call.return_data[32]
                mem[mem[64] + 96] = sub_ef030012
                mem[mem[64] + 128] = ext_call.return_data[32]
                emit CrabHatched(currentTokenId + 1, ext_call.return_data[0], ext_call.return_data[32], sub_ef030012, ext_call.return_data[32], msg.sender);
            idx = idx + 1
            continue 
        _325 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = 'cryptant'
        _326 = mem[64]
        mem[mem[64]] = 28
        mem[64] = mem[64] + 60
        _328 = mem[_326]
        mem[_325 + 60 len floor32(mem[_326])] = mem[_326 + 32 len floor32(mem[_326])]
        mem[_325 + floor32(mem[_326]) + 60] = 256^(-(mem[_326] % 32) + 32) - 1 and mem[_325 + floor32(mem[_326]) + 60] or mem[_326 + floor32(mem[_326]) + 32] and !(256^(-(mem[_326] % 32) + 32) - 1)
        require ext_code.size(sub_dede553fAddress)
        call sub_dede553fAddress.readUint256(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(mem[_325 + 60 len _328])
    else:
        mem[128] = block.hash(block.number - 1)
        mem[160] = currentTokenId
        mem[96] = 64
        mem[64] = 192
        mem[192 len 64] = block.hash(block.number - 1), currentTokenId
        idx = 0
        while idx < arg1:
            currentTokenId++
            _654 = mem[64]
            mem[mem[64] + 32 len 128] = code.data[5427 len 128]
            mem[mem[64] + 160] = 4
            mem[mem[64] + 192 len 128] = code.data[5427 len 128]
            require ext_code.size(sub_7d9527d6Address)
            call sub_7d9527d6Address.generateCrabGene(bool arg1, bool arg2) with:
                 gas gas_remaining wei
                args 1, idx == sha3(block.hash(block.number - 1), currentTokenId) % 10
            mem[mem[64] + 320 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if ext_call.return_data[64]:
                mem[mem[64] + 388] = ext_call.return_data[32]
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, currentTokenId + 1, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 352] = currentTokenId + 1
                mem[mem[64] + 384] = 'gene'
                mem[mem[64] + 320] = 36
                mem[64] = mem[64] + 388
                t = _654 + 352
                u = _654 + 388
                s = mem[_654 + 320]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_654 + floor32(mem[_654 + 320]) + 388] = mem[_654 + floor32(mem[_654 + 320]) + -(mem[_654 + 320] % 32) + 384 len mem[_654 + 320] % 32] or Mask(8 * -(mem[_654 + 320] % 32) + 32, -(8 * -(mem[_654 + 320] % 32) + 32) + 256, mem[_654 + floor32(mem[_654 + 320]) + 388])
                require 0 < mem[_654 + 160]
                mem[_654 + 192] = sha3(mem[_654 + 388 len 36])
                require 0 < mem[_654]
                mem[_654 + 32] = ext_call.return_data[0]
                mem[_654 + 420] = currentTokenId + 1
                mem[_654 + 452] = 'level'
                mem[_654 + 388] = 37
                mem[64] = _654 + 457
                t = _654 + 420
                u = _654 + 457
                s = 37
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_654 + 489] = mem[_654 + 479 len 5] or Mask(216, 40, mem[_654 + 489])
                require 1 < mem[_654 + 160]
                mem[_654 + 224] = sha3(mem[mem[64] len _654 + -mem[64] + 494])
                require 1 < mem[_654]
                mem[_654 + 64] = 1
                _1174 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'heartValue'
                _1175 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 74
                _1176 = mem[_1175]
                t = _1175 + 32
                u = _1174 + 74
                s = mem[_1175]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1174 + floor32(mem[_1175]) + 74] = mem[_1175 + floor32(mem[_1175]) + -(mem[_1175] % 32) + 64 len mem[_1175] % 32] or Mask(8 * -(mem[_1175] % 32) + 32, -(8 * -(mem[_1175] % 32) + 32) + 256, mem[_1174 + floor32(mem[_1175]) + 74])
                require 2 < mem[_654 + 160]
                mem[_654 + 256] = sha3(mem[mem[64] len _1176 + _1174 + -mem[64] + 74])
                require 2 < mem[_654]
                mem[_654 + 96] = ext_call.return_data[64]
                _1319 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'growthValue'
                _1320 = mem[64]
                mem[mem[64]] = 43
                mem[64] = mem[64] + 75
                _1321 = mem[_1320]
                t = _1320 + 32
                u = _1319 + 75
                s = mem[_1320]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1319 + floor32(mem[_1320]) + 75] = mem[_1320 + floor32(mem[_1320]) + -(mem[_1320] % 32) + 64 len mem[_1320] % 32] or Mask(8 * -(mem[_1320] % 32) + 32, -(8 * -(mem[_1320] % 32) + 32) + 256, mem[_1319 + floor32(mem[_1320]) + 75])
                require 3 < mem[_654 + 160]
                mem[_654 + 288] = sha3(mem[mem[64] len _1321 + _1319 + -mem[64] + 75])
                require 3 < mem[_654]
                mem[_654 + 128] = ext_call.return_data[96]
                mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[_654 + 160]
                _1407 = mem[_654 + 160]
                s = 0
                while s < 32 * _1407:
                    mem[s + mem[64] + 100] = mem[s + _654 + 192]
                    s = s + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1407) + 96
                mem[(32 * _1407) + mem[64] + 100] = mem[_654]
                _1442 = mem[_654]
                s = 0
                while s < 32 * _1442:
                    mem[s + (32 * _1407) + mem[64] + 132] = mem[s + _654 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, (32 * _1407) + 96, mem[mem[64] + 68 len (32 * _1442) + (32 * _1407) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = currentTokenId + 1
                mem[mem[64] + 32] = ext_call.return_data[0]
                mem[mem[64] + 64] = ext_call.return_data[32]
                mem[mem[64] + 96] = sub_ef030012
                mem[mem[64] + 128] = ext_call.return_data[96]
                emit CrabHatched(currentTokenId + 1, ext_call.return_data[0], ext_call.return_data[32], sub_ef030012, ext_call.return_data[96], msg.sender);
            else:
                require ext_code.size(sub_7d9527d6Address)
                call sub_7d9527d6Address.generateCrabHeart() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[mem[64] + 388] = ext_call.return_data[32]
                require ext_code.size(sub_e43e9de0Address)
                call sub_e43e9de0Address.mintToken(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, currentTokenId + 1, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 352] = currentTokenId + 1
                mem[mem[64] + 384] = 'gene'
                mem[mem[64] + 320] = 36
                mem[64] = mem[64] + 388
                t = _654 + 352
                u = _654 + 388
                s = 36
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_654 + 420] = mem[_654 + 412 len 4] or Mask(224, 32, mem[_654 + 420])
                require 0 < mem[_654 + 160]
                mem[_654 + 192] = sha3(mem[_654 + 388 len 36])
                require 0 < mem[_654]
                mem[_654 + 32] = ext_call.return_data[0]
                mem[_654 + 420] = currentTokenId + 1
                mem[_654 + 452] = 'level'
                mem[_654 + 388] = 37
                mem[64] = _654 + 457
                t = _654 + 420
                u = _654 + 457
                s = 37
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_654 + 489] = mem[_654 + 479 len 5] or Mask(216, 40, mem[_654 + 489])
                require 1 < mem[_654 + 160]
                mem[_654 + 224] = sha3(mem[mem[64] len _654 + -mem[64] + 494])
                require 1 < mem[_654]
                mem[_654 + 64] = 1
                _1177 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'heartValue'
                _1178 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 74
                _1179 = mem[_1178]
                t = _1178 + 32
                u = _1177 + 74
                s = mem[_1178]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1177 + floor32(mem[_1178]) + 74] = mem[_1178 + floor32(mem[_1178]) + -(mem[_1178] % 32) + 64 len mem[_1178] % 32] or Mask(8 * -(mem[_1178] % 32) + 32, -(8 * -(mem[_1178] % 32) + 32) + 256, mem[_1177 + floor32(mem[_1178]) + 74])
                require 2 < mem[_654 + 160]
                mem[_654 + 256] = sha3(mem[mem[64] len _1179 + _1177 + -mem[64] + 74])
                require 2 < mem[_654]
                mem[_654 + 96] = ext_call.return_data[0]
                _1322 = mem[64]
                mem[mem[64] + 32] = currentTokenId + 1
                mem[mem[64] + 64] = 'growthValue'
                _1323 = mem[64]
                mem[mem[64]] = 43
                mem[64] = mem[64] + 75
                _1324 = mem[_1323]
                t = _1323 + 32
                u = _1322 + 75
                s = mem[_1323]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1322 + floor32(mem[_1323]) + 75] = mem[_1323 + floor32(mem[_1323]) + -(mem[_1323] % 32) + 64 len mem[_1323] % 32] or Mask(8 * -(mem[_1323] % 32) + 32, -(8 * -(mem[_1323] % 32) + 32) + 256, mem[_1322 + floor32(mem[_1323]) + 75])
                require 3 < mem[_654 + 160]
                mem[_654 + 288] = sha3(mem[mem[64] len _1324 + _1322 + -mem[64] + 75])
                require 3 < mem[_654]
                mem[_654 + 128] = ext_call.return_data[32]
                mem[mem[64]] = 0xedf87aff00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[_654 + 160]
                _1410 = mem[_654 + 160]
                s = 0
                while s < 32 * _1410:
                    mem[s + mem[64] + 100] = mem[s + _654 + 192]
                    s = s + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1410) + 96
                mem[(32 * _1410) + mem[64] + 100] = mem[_654]
                _1445 = mem[_654]
                s = 0
                while s < 32 * _1445:
                    mem[s + (32 * _1410) + mem[64] + 132] = mem[s + _654 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_dede553fAddress)
                call sub_dede553fAddress.createUint256s(bytes32[] arg1, uint256[] arg2) with:
                     gas gas_remaining wei
                    args 64, (32 * _1410) + 96, mem[mem[64] + 68 len (32 * _1445) + (32 * _1410) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = currentTokenId + 1
                mem[mem[64] + 32] = ext_call.return_data[0]
                mem[mem[64] + 64] = ext_call.return_data[32]
                mem[mem[64] + 96] = sub_ef030012
                mem[mem[64] + 128] = ext_call.return_data[32]
                emit CrabHatched(currentTokenId + 1, ext_call.return_data[0], ext_call.return_data[32], sub_ef030012, ext_call.return_data[32], msg.sender);
            idx = idx + 1
            continue 
        _662 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = 'cryptant'
        _663 = mem[64]
        mem[mem[64]] = 28
        mem[64] = mem[64] + 60
        _665 = mem[_663]
        mem[_662 + 60 len floor32(mem[_663])] = mem[_663 + 32 len floor32(mem[_663])]
        mem[_662 + floor32(mem[_663]) + 60] = 256^(-(mem[_663] % 32) + 32) - 1 and mem[_662 + floor32(mem[_663]) + 60] or mem[_663 + floor32(mem[_663]) + 32] and !(256^(-(mem[_663] % 32) + 32) - 1)
        require ext_code.size(sub_dede553fAddress)
        call sub_dede553fAddress.readUint256(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(mem[_662 + 60 len _665])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (3000 * idx) + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_dede553fAddress)
    call sub_dede553fAddress.updateUint256(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(Mask(224, 0, msg.sender, 'cryptant', 0)), (3000 * idx) + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit CryptantFragmentsAdded(3000 * idx, (3000 * idx) + ext_call.return_data[0], msg.sender);
    require sub_ef030012 * arg1 <= msg.value
    if msg.value - (sub_ef030012 * arg1) > 0:
        call msg.sender with:
           value msg.value - (sub_ef030012 * arg1) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refund(sub_ef030012 * arg1, msg.value, msg.value - (sub_ef030012 * arg1), msg.sender);
    emit 0x260ecffe: arg1, 3000 * idx, msg.value - (sub_ef030012 * arg1), msg.sender
}



}
