contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[5845 len 20]
    stor4 = code.data[5845 len 20]
    return code.data[253 len 5580]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
mapping of struct stor2;
array of struct stor3;
address projectAddress;

function projectAddress() {
    return projectAddress
}

function owner() {
    return owner
}

function sub_e2048503(?) {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function sub_17f85f85(?) {
    require msg.sender == owner
    address(stor1.length) = arg1
}

function sub_6d809e43(?) {
    require msg.sender == owner
    address(stor3.length) = arg1
    projectAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_10ebcc1f(?) {
    require msg.sender == projectAddress
    if uint8(stor2[arg1[all]].field_768):
        Mask(240, 0, stor2[arg1[all]].field_784) = 1
}

function sub_8fc5dad8(?) {
    require msg.sender == address(stor1.length)
    require uint8(stor2[arg1[all]].field_768)
    Mask(248, 0, stor2[arg1[all]].field_776) = 0
}

function sub_75d0884d(?) {
    require msg.sender == address(stor1.length)
    stor2[arg1[all]][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[arg1[all]].field_256 = 0
    stor2[arg1[all]].field_512 = 0
    uint8(stor2[arg1[all]].field_768) = 1
    Mask(248, 0, stor2[arg1[all]].field_776) = 1
    Mask(240, 0, stor2[arg1[all]].field_784) = 0
}

function getVote(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][4][address(msg.sender)]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_f8722b47(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _64 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _120 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _169 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _211 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _246 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 192] = stor[sha3(_64)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_64].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_64) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[_64].length, data=mem[ceil32(arg1.length) + 192 len stor[_64].length]), 
           uint256(stor1[_120]),
           stor2[_169].field_0,
           bool(uint8(stor3[_211].field_8)),
           bool(uint8(stor3[_246].field_16))
}

function sub_a6385803(?) payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0xeda31bc2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 0 < ext_call.return_data[0]
    mem[160] = 0
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0xa39dbdb9 with:
         gas gas_remaining - 710 wei
        args 0
    mem[96 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    s = 0
    s = 0
    s = 0
    while address(ext_call.return_data[0]) != msg.sender:
        require s + 1 < ext_call.return_data[0]
        mem[mem[64] + 64] = 0
        mem[mem[64]] = 0xa39dbdb900000000000000000000000000000000000000000000000000000000
        mem[100] = s + 1
        require ext_code.size(address(stor3.length))
        call address(stor3.length).0xa39dbdb9 with:
             gas gas_remaining - 710 wei
            args mem[mem[64] + 4 len -mem[64] + 128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        s = s + 1
        continue 
    _182 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[mem[64] + arg1.length] = 2
    if uint8(stor3[sha3(mem[mem[64] len _182 + arg1.length + -mem[64] + 32])].field_0):
        _185 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length] = 2
        require uint8(stor3[sha3(mem[mem[64] len _185 + arg1.length + -mem[64] + 32])].field_8)
        _195 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length] = 2
        if stor[sha3(mem[mem[64] len _195 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] <= 0:
            _200 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _202 = sha3(mem[mem[64] len _200 + arg1.length + -mem[64] + 32])
            require stor2[sha3(mem[mem[64] len _200 + arg1.length + -mem[64] + 32])].field_0 + arg2 >= stor2[sha3(mem[mem[64] len _200 + arg1.length + -mem[64] + 32])].field_0
            _211 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor2[sha3(mem[mem[64] len _211 + arg1.length + -mem[64] + 32])].field_0 = stor2[_202].field_0 + arg2
            _214 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            uint256(stor1[sha3(mem[mem[64] len _214 + arg1.length + -mem[64] + 32])])++
            _218 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor[sha3(mem[mem[64] len _218 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] = arg2
        else:
            _203 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _206 = sha3(address(msg.sender), sha3(mem[mem[64] len _203 + arg1.length + -mem[64] + 32]) + 4)
            _207 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _209 = sha3(mem[mem[64] len _207 + arg1.length + -mem[64] + 32])
            require stor[_206] <= stor2[sha3(mem[mem[64] len _207 + arg1.length + -mem[64] + 32])].field_0
            require arg2 >= 0
            _222 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor2[sha3(mem[mem[64] len _222 + arg1.length + -mem[64] + 32])].field_0 = stor2[_209].field_0 - stor[_206] + arg2
            _225 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor[sha3(mem[mem[64] len _225 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] = arg2
    else:
        _188 = mem[64]
        mem[64] = mem[64] + 192
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_189] = arg1.length
        mem[_189 + 32 len arg1.length] = arg1[all]
        mem[_188] = _189
        mem[_188 + 32] = 0
        mem[_188 + 64] = 0
        mem[_188 + 96] = 1
        mem[_188 + 128] = 1
        mem[_188 + 160] = 0
        _190 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length] = 2
        _192 = sha3(mem[mem[64] len _190 + arg1.length + -mem[64] + 32])
        stor[sha3(_192)][] = Array(len=arg1.length, data=arg1[all])
        uint256(stor1[_192]) = 0
        stor2[_192].field_0 = 0
        uint8(stor3[_192].field_0) = 1
        Mask(248, 0, stor3[_192].field_8) = 1
        Mask(240, 0, stor3[_192].field_16) = 0
        _469 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length] = 2
        require uint8(stor3[sha3(mem[mem[64] len _469 + arg1.length + -mem[64] + 32])].field_8)
        _472 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length] = 2
        if stor[sha3(mem[mem[64] len _472 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] <= 0:
            _476 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _478 = sha3(mem[mem[64] len _476 + arg1.length + -mem[64] + 32])
            require stor2[sha3(mem[mem[64] len _476 + arg1.length + -mem[64] + 32])].field_0 + arg2 >= stor2[sha3(mem[mem[64] len _476 + arg1.length + -mem[64] + 32])].field_0
            _486 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor2[sha3(mem[mem[64] len _486 + arg1.length + -mem[64] + 32])].field_0 = stor2[_478].field_0 + arg2
            _489 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            uint256(stor1[sha3(mem[mem[64] len _489 + arg1.length + -mem[64] + 32])])++
            _492 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor[sha3(mem[mem[64] len _492 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] = arg2
        else:
            _479 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _482 = sha3(address(msg.sender), sha3(mem[mem[64] len _479 + arg1.length + -mem[64] + 32]) + 4)
            _483 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            _485 = sha3(mem[mem[64] len _483 + arg1.length + -mem[64] + 32])
            require stor[_482] <= stor2[sha3(mem[mem[64] len _483 + arg1.length + -mem[64] + 32])].field_0
            require arg2 >= 0
            _496 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor2[sha3(mem[mem[64] len _496 + arg1.length + -mem[64] + 32])].field_0 = stor2[_485].field_0 - stor[_482] + arg2
            _499 = mem[64]
            mem[mem[64] len arg1.length] = arg1[all]
            mem[mem[64] + arg1.length] = 2
            stor[sha3(mem[mem[64] len _499 + arg1.length + -mem[64] + 32]) + 4][address(msg.sender)] = arg2
}



}
