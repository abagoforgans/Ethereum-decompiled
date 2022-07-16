contract main {




// =====================  Runtime code  =====================


const name = 'J2TX Margin Tokens'

const sub_08dbebf6(?) = 'J2TX Margin Tokens'

const symbol = 'J2TX'

const sub_f4777e1d(?) = 'J2TX'

const URI = 'https://api.j2tx.com/token/'


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;
uint256 stor8;
address owner;
address stor10;
mapping of uint256 sub_1240efe6;
uint256 stor12;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_1240efe6(?) {
    require calldata.size - 4 >= 32
    return sub_1240efe6[arg1]
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor5[address(arg1)])
}

function paused() {
    return bool(stor6)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor7[address(arg1)])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_368474ee(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require stor6
    stor6 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require not stor6
    stor6 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor5[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require not stor6
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor6
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_04fcabc6(?) {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require not stor6
    stor8++
    mem[320 len arg1.length] = arg1[all]
    mem[arg1.length + 320] = 0
    require arg1.length == 65
    require mem[352] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0
    revert
}

function sub_4e3e2f7a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require not stor6
    stor8++
    mem[224 len arg1.length] = arg1[all]
    mem[arg1.length + 224] = 0
    require arg1.length == 65
    require mem[256] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor6
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor6
    stor8++
    require arg1 + stor12 >= arg1
    if arg1 + stor12 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0xfe776974686472617720616d6f756e74206d757374206265206c657373206f7220657175616c207468616e205b62616c616e6365202d206f626c69676174696f6e73,
                    mem[230 len 30]
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor8 == stor8
}

function sub_8fcfe9a9(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require sub_1240efe6[arg1] <= stor12
    stor12 -= sub_1240efe6[arg1]
    if not arg4:
        require arg2 <= sub_1240efe6[arg1]
        sub_1240efe6[arg1] -= arg2
        require stor12 + sub_1240efe6[arg1] - arg2 >= stor12
        stor12 = stor12 + sub_1240efe6[arg1] - arg2
        require ownerOf[arg1]
        emit 0xc75f7d7a: arg2, arg3 << 248, arg4, sub_1240efe6[arg1] - arg2, ownerOf[arg1], arg1
    else:
        require sub_1240efe6[arg1] + arg2 >= sub_1240efe6[arg1]
        sub_1240efe6[arg1] += arg2
        require stor12 + sub_1240efe6[arg1] + arg2 >= stor12
        stor12 = stor12 + sub_1240efe6[arg1] + arg2
        require ownerOf[arg1]
        emit 0xc75f7d7a: arg2, arg3 << 248, arg4, sub_1240efe6[arg1] + arg2, ownerOf[arg1], arg1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor6
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require not stor6
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 27
    mem[128] = 'https://api.j2tx.com/token/'
    if not arg1:
        mem[160] = 1
        mem[192] = '0'
        mem[224] = 28
        mem[256 len 28] = code.data[14654 len 28]
        idx = 0
        s = 0
        while idx < 27:
            require idx < 27
            require s < 28
            mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 27
        while idx < 1:
            require idx < 1
            require s < 28
            mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=28, data=mem[260 len 28])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        idx = arg1
        t = s - 1
        while idx:
            require t < mem[160]
            mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            idx = idx / 10
            t = t - 1
            continue 
        _151 = mem[160]
        _152 = mem[96]
        _153 = mem[64]
        mem[mem[64]] = mem[96] + mem[160]
        mem[64] = mem[64] + floor32(_152 + _151 + 31) + 32
        if not _152 + _151:
            _225 = mem[96]
            idx = 0
            s = 0
            while idx < _225:
                require idx < mem[96]
                require s < mem[_153]
                mem[s + _153 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _293 = mem[160]
            idx = 0
            s = _225
            while idx < _293:
                require idx < mem[160]
                require s < mem[_153]
                mem[s + _153 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
                _293 = mem[160]
                idx = idx + 1
                s = s + 1
                continue 
            _309 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_153]
            _311 = mem[_153]
            mem[mem[64] + 64 len ceil32(mem[_153])] = mem[_153 + 32 len ceil32(mem[_153])]
            if not _311 % 32:
                return 32, mem[mem[64] + 32 len _311 + 32]
            mem[floor32(_311) + mem[64] + 64] = mem[floor32(_311) + mem[64] + -(_311 % 32) + 96 len _311 % 32]
            return memory
              from mem[64]
               len floor32(_311) + _309 + -mem[64] + 96
        mem[_153 + 32 len _152 + _151] = code.data[14654 len _152 + _151]
        _226 = mem[96]
        idx = 0
        s = 0
        while idx < _226:
            require idx < mem[96]
            require s < mem[_153]
            mem[s + _153 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _294 = mem[160]
        idx = 0
        s = _226
        while idx < _294:
            require idx < mem[160]
            require s < mem[_153]
            mem[s + _153 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            _294 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        _312 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_153]
        _314 = mem[_153]
        mem[mem[64] + 64 len ceil32(mem[_153])] = mem[_153 + 32 len ceil32(mem[_153])]
        if not _314 % 32:
            return 32, mem[mem[64] + 32 len _314 + 32]
        mem[floor32(_314) + mem[64] + 64] = mem[floor32(_314) + mem[64] + -(_314 % 32) + 96 len _314 % 32]
        return memory
          from mem[64]
           len floor32(_314) + _312 + -mem[64] + 96
    mem[192 len s] = code.data[14654 len s]
    idx = arg1
    t = s - 1
    while idx:
        require t < mem[160]
        mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        idx = idx / 10
        t = t - 1
        continue 
    _154 = mem[160]
    _155 = mem[96]
    _156 = mem[64]
    mem[mem[64]] = mem[96] + mem[160]
    mem[64] = mem[64] + floor32(_155 + _154 + 31) + 32
    if not _155 + _154:
        _227 = mem[96]
        idx = 0
        s = 0
        while idx < _227:
            require idx < mem[96]
            require s < mem[_156]
            mem[s + _156 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _295 = mem[160]
        idx = 0
        s = _227
        while idx < _295:
            require idx < mem[160]
            require s < mem[_156]
            mem[s + _156 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            _295 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        _315 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_156]
        _317 = mem[_156]
        mem[mem[64] + 64 len ceil32(mem[_156])] = mem[_156 + 32 len ceil32(mem[_156])]
        if not _317 % 32:
            return 32, mem[mem[64] + 32 len _317 + 32]
        mem[floor32(_317) + mem[64] + 64] = mem[floor32(_317) + mem[64] + -(_317 % 32) + 96 len _317 % 32]
        return memory
          from mem[64]
           len floor32(_317) + _315 + -mem[64] + 96
    mem[_156 + 32 len _155 + _154] = code.data[14654 len _155 + _154]
    _228 = mem[96]
    idx = 0
    s = 0
    while idx < _228:
        require idx < mem[96]
        require s < mem[_156]
        mem[s + _156 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _296 = mem[160]
    idx = 0
    s = _228
    while idx < _296:
        require idx < mem[160]
        require s < mem[_156]
        mem[s + _156 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
        _296 = mem[160]
        idx = idx + 1
        s = s + 1
        continue 
    _318 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_156]
    _320 = mem[_156]
    mem[mem[64] + 64 len ceil32(mem[_156])] = mem[_156 + 32 len ceil32(mem[_156])]
    if not _320 % 32:
        return 32, mem[mem[64] + 32 len _320 + 32]
    mem[floor32(_320) + mem[64] + 64] = mem[floor32(_320) + mem[64] + -(_320 % 32) + 96 len _320 % 32]
    return memory
      from mem[64]
       len floor32(_320) + _318 + -mem[64] + 96
}



}
