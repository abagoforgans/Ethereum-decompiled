contract main {




// =====================  Runtime code  =====================


const decimals = 16

const ROLE_SUPERUSER = 'superuser'


mapping of struct stor0;
address owner;
mapping of uint8 stor2;
array of uint8 stor3;
array of uint256 stor4;
mapping of uint8 stor99;

function powerContract() {
    return address(stor3.length)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isBuilt(uint256 arg1) {
    return (uint256(stor0[arg1].field_0) > 0)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setPowerContract(address arg1) {
    mem[160 len 0] = None
    require stor2[mem[160 len 9]][address(msg.sender)]
    address(stor3.length) = arg1
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor2[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function tavern(uint256 arg1) {
    return uint256(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_256),
           uint256(stor0[arg1].field_512),
           stor0[arg1].field_768,
           uint256(stor0[arg1].field_1024)
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor2[mem[160 len 9]][address(msg.sender)]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function popularitySetting(uint256 arg1, uint8 arg2) {
    mem[160 len 0] = None
    require stor2[mem[160 len 9]][address(msg.sender)]
    require uint256(stor0[arg1].field_0) > 0
    stor0[arg1].field_768 = arg2
    emit PopularitySetting(stor0[arg1].field_768, arg2, arg1);
}

function levelByToken(uint256 arg1) {
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0x4b242252 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function influenceByToken(uint256 arg1) {
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0x67a7804b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferSuperuser(address arg1) {
    mem[160 len 0] = None
    require stor2[mem[160 len 9]][address(msg.sender)]
    require arg1
    mem[224 len 0] = None
    stor2[mem[224 len 9]][address(msg.sender)] = 0
    emit RoleRemoved('superuser', msg.sender);
    stor2[Mask(72, 0, 'superuser')][address(arg1)] = 1
    emit RoleAdded('superuser', arg1);
}

function weightsApportion(uint256 arg1, uint256 arg2) {
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0xae9f96c7 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function activenessUpgrade(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor2[mem[160 len 9]][address(msg.sender)]
    require uint256(stor0[arg1].field_0) > 0
    if uint256(stor0[arg1].field_1024) + arg2 < uint256(stor0[arg1].field_1024):
        revert with 0, 'SafeMath add failed'
    uint256(stor0[arg1].field_1024) += arg2
    stor0[arg1].field_768 = stor0[arg1].field_768
    emit ActivenessUpgrade(uint256(stor0[arg1].field_1024), uint256(stor0[arg1].field_1024) + arg2, arg1);
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function build(uint256 arg1, int256 arg2, int256 arg3, uint8 arg4) {
    mem[160 len 0] = None
    require stor2[mem[160 len 9]][address(msg.sender)]
    require uint256(stor0[arg1].field_0) <= 0
    require arg2 <= 5 * 10^14 * 3600
    require arg2 >= -18 * 10^17
    require arg3 <= 25 * 10^13 * 3600
    require arg3 >= -9 * 10^17
    require arg4
    uint256(stor0[arg1].field_0) = block.timestamp
    uint256(stor0[arg1].field_256) = arg2
    uint256(stor0[arg1].field_512) = arg3
    stor0[arg1].field_768 = arg4
    uint256(stor0[arg1].field_1024) = 0
    emit Build(block.timestamp, arg2, arg3, arg4, arg1);
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 2
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function batchPopularitySetting(uint256[] arg1, uint8[] arg2) {
    mem[160 len 0] = None
    mem[169] = 2
    require stor2[mem[160 len 9]][address(msg.sender)]
    mem[192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 192] = arg2.length
    mem[(32 * arg1.length) + 224 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _42 = mem[(32 * idx) + 192]
        require idx < arg2.length
        _44 = mem[(32 * idx) + (32 * arg1.length) + 224]
        require uint256(stor0[mem[(32 * idx) + 192]].field_0) > 0
        _46 = sha3(mem[(32 * idx) + 192], 0)
        mem[0] = mem[(32 * idx) + 192]
        mem[32] = 0
        stor0[mem[(32 * idx) + 192]].field_768 = mem[(32 * idx) + (32 * arg1.length) + 255 len 1]
        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = stor0[mem[(32 * idx) + 192]].field_768
        mem[(32 * arg1.length) + (32 * arg2.length) + 256] = uint8(_44)
        emit PopularitySetting(uint8(stor3[_46]), uint8(_44), _42);
        idx = idx + 1
        continue 
}

function batchBuild(uint256[] arg1, int256[] arg2, int256[] arg3, uint8[] arg4) {
    mem[160 len 0] = None
    mem[169] = 2
    require stor2[mem[160 len 9]][address(msg.sender)]
    mem[160] = arg1.length
    mem[192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 192] = arg2.length
    mem[(32 * arg1.length) + 224 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[160]
        _66 = mem[(32 * idx) + 192]
        require idx < mem[(32 * arg1.length) + 192]
        _68 = mem[(32 * idx) + (32 * arg1.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        _70 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
        _72 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288]
        _73 = mem[64]
        mem[64] = mem[64] + 160
        mem[_73] = 0
        mem[_73 + 32] = 0
        mem[_73 + 64] = 0
        mem[_73 + 96] = 0
        mem[_73 + 128] = 0
        mem[0] = _66
        mem[32] = 0
        require uint256(stor0[_66].field_0) <= 0
        require _68 <= 5 * 10^14 * 3600
        require _68 >= -18 * 10^17
        require _70 <= 25 * 10^13 * 3600
        require _70 >= -9 * 10^17
        require uint8(_72)
        _75 = mem[64]
        mem[64] = mem[64] + 160
        mem[_75] = block.timestamp
        mem[_75 + 32] = _68
        mem[_75 + 64] = _70
        mem[_75 + 96] = uint8(_72)
        mem[_75 + 128] = 0
        mem[0] = _66
        mem[32] = 0
        uint256(stor0[_66].field_0) = block.timestamp
        uint256(stor0[_66].field_256) = _68
        uint256(stor0[_66].field_512) = _70
        stor0[_66].field_768 = uint8(_72)
        uint256(stor0[_66].field_1024) = 0
        mem[mem[64]] = block.timestamp
        mem[mem[64] + 32] = _68
        mem[mem[64] + 64] = _70
        mem[mem[64] + 96] = uint8(_72)
        emit Build(block.timestamp, _68, _70, uint8(_72), _66);
        idx = idx + 1
        continue 
}

function batchActivenessUpgrade(uint256[] arg1, uint256[] arg2) {
    if msg.sender == owner:
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg2.length
        mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _45 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _48 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require uint256(stor0[mem[(32 * idx) + 128]].field_0) > 0
            _50 = sha3(mem[(32 * idx) + 128], 0)
            if uint256(stor0[mem[(32 * idx) + 128]].field_1024) + mem[(32 * idx) + (32 * arg1.length) + 160] < uint256(stor0[mem[(32 * idx) + 128]].field_1024):
                revert with 0, 'SafeMath add failed'
            uint256(stor0[mem[(32 * idx) + 128]].field_1024) += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 0
            stor0[mem[(32 * idx) + 128]].field_768 = stor0[mem[(32 * idx) + 128]].field_768
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = uint256(stor0[mem[(32 * idx) + 128]].field_1024)
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = stor4[_50] + _48
            emit ActivenessUpgrade(mem[(32 * arg1.length) + (32 * arg2.length) + 160], stor4[_50] + _48, _45);
            idx = idx + 1
            continue 
    else:
        mem[160 len 0] = None
        mem[169] = 2
        require stor2[mem[160 len 9]][address(msg.sender)]
        mem[192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 192] = arg2.length
        mem[(32 * arg1.length) + 224 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _72 = mem[(32 * idx) + 192]
            require idx < arg2.length
            _74 = mem[(32 * idx) + (32 * arg1.length) + 224]
            require uint256(stor0[mem[(32 * idx) + 192]].field_0) > 0
            _76 = sha3(mem[(32 * idx) + 192], 0)
            if uint256(stor0[mem[(32 * idx) + 192]].field_1024) + mem[(32 * idx) + (32 * arg1.length) + 224] < uint256(stor0[mem[(32 * idx) + 192]].field_1024):
                revert with 0, 'SafeMath add failed'
            uint256(stor0[mem[(32 * idx) + 192]].field_1024) += mem[(32 * idx) + (32 * arg1.length) + 224]
            mem[0] = mem[(32 * idx) + 192]
            mem[32] = 0
            stor0[mem[(32 * idx) + 192]].field_768 = stor0[mem[(32 * idx) + 192]].field_768
            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = uint256(stor0[mem[(32 * idx) + 192]].field_1024)
            mem[(32 * arg1.length) + (32 * arg2.length) + 256] = stor4[_76] + _74
            emit ActivenessUpgrade(mem[(32 * arg1.length) + (32 * arg2.length) + 224], stor4[_76] + _74, _72);
            idx = idx + 1
            continue 
}



}
