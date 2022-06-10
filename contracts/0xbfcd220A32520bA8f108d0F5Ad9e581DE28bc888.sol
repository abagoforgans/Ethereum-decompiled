contract main {




// =====================  Runtime code  =====================


const ROLE_SUPERUSER = 'superuser'


address owner;
mapping of uint8 stor1;
uint8 stor2;
address stor2; offset 8
array of struct sub_10c5a247;
array of struct stor5;
array of struct stor6;
mapping of uint8 stor7;
mapping of uint8 stor99;

function sub_10c5a247(?) {
    require arg1 < sub_10c5a247.length
    return uint256(sub_10c5a247[arg1].field_0)
}

function paused() {
    return bool(uint8(stor2.field_0))
}

function owner() {
    return owner
}

function getLuckyblockBase(bytes32 arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    emit Pay(msg.sender, msg.value);
}

function stop(bytes32 arg1) {
    stor7[arg1] = 1
    stor7[arg1] = uint8(bool(stor7[arg1]))
}

function start(bytes32 arg1) {
    stor7[arg1] = 0
    stor7[arg1] = uint8(bool(stor7[arg1]))
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor2.field_0)
    uint8(stor2.field_0) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor2.field_0)
    uint8(stor2.field_0) = 1
    emit Pause()
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor1[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function setRandomContract(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    address(stor2.field_8) = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addLuckyblock(uint256 arg1) {
    if owner != msg.sender:
        mem[192 len 0] = None
        require stor1[mem[192 len 9]][address(msg.sender)]
    sub_10c5a247.length++
    uint256(sub_10c5a247[sub_10c5a247.length].field_0) = sha3(block.timestamp, arg1)
    stor7[block.timestamp][arg1] = 0
}

function transferSuperuser(address arg1) {
    mem[160 len 0] = None
    require stor1[mem[160 len 9]][address(msg.sender)]
    require arg1
    mem[224 len 0] = None
    stor1[mem[224 len 9]][address(msg.sender)] = 0
    emit RoleRemoved('superuser', msg.sender);
    stor1[Mask(72, 0, 'superuser')][address(arg1)] = 1
    emit RoleAdded('superuser', arg1);
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function withdrawEth(address arg1, uint256 arg2) {
    mem[160 len 0] = None
    require stor1[mem[160 len 9]][address(msg.sender)]
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithdrawEth(address(arg1), arg2);
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithdrawEth(address(arg1), eth.balance(this.address));
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getLuckyblockIds() {
    if not sub_10c5a247.length:
        mem[(32 * sub_10c5a247.length) + 128] = 32
        mem[(32 * sub_10c5a247.length) + 160] = sub_10c5a247.length
        mem[(32 * sub_10c5a247.length) + 192 len floor32(sub_10c5a247.length)] = mem[128 len floor32(sub_10c5a247.length)]
        return memory
          from (32 * sub_10c5a247.length) + 128
           len (96 * sub_10c5a247.length) + 64
    mem[128] = uint256(sub_10c5a247.field_0)
    idx = 128
    s = 0
    while (32 * sub_10c5a247.length) + 96 > idx:
        mem[idx + 32] = uint256(sub_10c5a247[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_10c5a247.length) + 192 len floor32(sub_10c5a247.length)] = mem[128 len floor32(sub_10c5a247.length)]
    return Array(len=sub_10c5a247.length, data=mem[128 len floor32(sub_10c5a247.length)], mem[(32 * sub_10c5a247.length) + floor32(sub_10c5a247.length) + 192 len (32 * sub_10c5a247.length) - floor32(sub_10c5a247.length)]), 
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(arg1)
    if arg3:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit WithdrawToken(address(arg2), arg3, arg1);
    else:
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit WithdrawToken(address(arg2), ext_call.return_data[0], arg1);
}

function getLuckyblockSpend(bytes32 arg1) {
    if uint256(stor6[arg1].field_0):
        mem[128] = address(stor6[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor6[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor6[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if uint256(stor6[arg1].field_256):
        mem[(32 * uint256(stor6[arg1].field_0)) + 160] = uint256(stor6[arg1][1].field_0)
        idx = (32 * uint256(stor6[arg1].field_0)) + 160
        s = 0
        while (32 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + 128 > idx:
            mem[idx + 32] = uint256(stor6[arg1][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + 288 len floor32(uint256(stor6[arg1].field_0))] = mem[128 len floor32(uint256(stor6[arg1].field_0))]
    mem[(64 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + 288] = uint256(stor6[arg1].field_256)
    mem[(64 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + 320 len floor32(uint256(stor6[arg1].field_256))] = mem[(32 * uint256(stor6[arg1].field_0)) + 160 len floor32(uint256(stor6[arg1].field_256))]
    return Array(len=uint256(stor6[arg1].field_0), data=mem[128 len floor32(uint256(stor6[arg1].field_0))], mem[(32 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + floor32(uint256(stor6[arg1].field_0)) + 288 len (32 * uint256(stor6[arg1].field_0)) + (32 * uint256(stor6[arg1].field_256)) + -floor32(uint256(stor6[arg1].field_0)) + 32]), 
           (32 * uint256(stor6[arg1].field_0)) + 128,
           uint256(stor6[arg1].field_512)
}

function updateLuckyblockSpend(bytes32 arg1, address[] arg2, uint256[] arg3, uint256 arg4) {
    if msg.sender == owner:
        mem[320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 320] = arg3.length
        mem[(32 * arg2.length) + 352 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        uint256(stor6[arg1].field_0) = arg2.length
        if not arg2.length:
            idx = 0
            while uint256(stor6[arg1].field_0) > idx:
                address(stor6[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 320
            while (32 * arg2.length) + 320 > idx:
                address(stor6[arg1][s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while uint256(stor6[arg1].field_0) > idx:
                address(stor6[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor6[arg1].field_256) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(stor6[arg1].field_256) > idx:
                uint256(stor6[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 352
            while (32 * arg2.length) + (32 * arg3.length) + 352 > idx:
                uint256(stor6[arg1][s + 1].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(stor6[arg1].field_256) > idx:
                uint256(stor6[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    else:
        mem[256 len 0] = None
        require stor1[mem[256 len 9]][address(msg.sender)]
        mem[384 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 384] = arg3.length
        mem[(32 * arg2.length) + 416 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        uint256(stor6[arg1].field_0) = arg2.length
        if not arg2.length:
            idx = 0
            while uint256(stor6[arg1].field_0) > idx:
                address(stor6[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 384
            while (32 * arg2.length) + 384 > idx:
                address(stor6[arg1][s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while uint256(stor6[arg1].field_0) > idx:
                address(stor6[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor6[arg1].field_256) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(stor6[arg1].field_256) > idx:
                uint256(stor6[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 416
            while (32 * arg2.length) + (32 * arg3.length) + 416 > idx:
                uint256(stor6[arg1][s + 1].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(stor6[arg1].field_256) > idx:
                uint256(stor6[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor6[arg1].field_512) = arg4
}

function sub_3ccd09af(?) {
    if msg.sender == owner:
        mem[448 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 448] = arg3.length
        mem[(32 * arg2.length) + 480 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg2.length) + (32 * arg3.length) + 480] = arg4.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 512 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        uint256(stor5[arg1].field_0) = arg2.length
        if not arg2.length:
            idx = 0
            while uint256(stor5[arg1].field_0) > idx:
                address(stor5[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 448
            while (32 * arg2.length) + 448 > idx:
                address(stor5[arg1][s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while uint256(stor5[arg1].field_0) > idx:
                address(stor5[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor5[arg1].field_256) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(stor5[arg1].field_256) > idx:
                uint256(stor5[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 480
            while (32 * arg2.length) + (32 * arg3.length) + 480 > idx:
                uint256(stor5[arg1][s + 1].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(stor5[arg1].field_256) > idx:
                uint256(stor5[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor5[arg1].field_512) = arg4.length
        if not arg4.length:
            idx = 0
            while uint256(stor5[arg1].field_512) > idx:
                uint256(stor5[arg1][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + (32 * arg3.length) + 512
            while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 512 > idx:
                uint256(stor5[arg1][s + 2].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            while uint256(stor5[arg1].field_512) > idx:
                uint256(stor5[arg1][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
    else:
        mem[320 len 0] = None
        require stor1[mem[320 len 9]][address(msg.sender)]
        mem[512 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 512] = arg3.length
        mem[(32 * arg2.length) + 544 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg2.length) + (32 * arg3.length) + 544] = arg4.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 576 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        uint256(stor5[arg1].field_0) = arg2.length
        if not arg2.length:
            idx = 0
            while uint256(stor5[arg1].field_0) > idx:
                address(stor5[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 512
            while (32 * arg2.length) + 512 > idx:
                address(stor5[arg1][s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while uint256(stor5[arg1].field_0) > idx:
                address(stor5[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor5[arg1].field_256) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(stor5[arg1].field_256) > idx:
                uint256(stor5[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 544
            while (32 * arg2.length) + (32 * arg3.length) + 544 > idx:
                uint256(stor5[arg1][s + 1].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(stor5[arg1].field_256) > idx:
                uint256(stor5[arg1][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor5[arg1].field_512) = arg4.length
        if not arg4.length:
            idx = 0
            while uint256(stor5[arg1].field_512) > idx:
                uint256(stor5[arg1][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + (32 * arg3.length) + 576
            while (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 576 > idx:
                uint256(stor5[arg1][s + 2].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            while uint256(stor5[arg1].field_512) > idx:
                uint256(stor5[arg1][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor5[arg1].field_768) = arg5
    uint256(stor5[arg1].field_1024) = arg6
}

function getLuckyblockEarn(bytes32 arg1) {
    if not uint256(stor5[arg1].field_0):
        if not uint256(stor5[arg1].field_256):
            if not uint256(stor5[arg1].field_512):
                mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 384 len floor32(uint256(stor5[arg1].field_0))] = mem[128 len floor32(uint256(stor5[arg1].field_0))]
                mem[(64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 384] = uint256(stor5[arg1].field_256)
                mem[(64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 416 len floor32(uint256(stor5[arg1].field_256))] = mem[(32 * uint256(stor5[arg1].field_0)) + 160 len floor32(uint256(stor5[arg1].field_256))]
                mem[(64 * uint256(stor5[arg1].field_256)) + (64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_512)) + 416] = uint256(stor5[arg1].field_512)
                mem[(64 * uint256(stor5[arg1].field_256)) + (64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_512)) + 448 len floor32(uint256(stor5[arg1].field_512))] = mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192 len floor32(uint256(stor5[arg1].field_512))]
                return Array(len=uint256(stor5[arg1].field_0), data=mem[128 len floor32(uint256(stor5[arg1].field_0))], mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + floor32(uint256(stor5[arg1].field_0)) + 384 len (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_512)) + (32 * uint256(stor5[arg1].field_256)) + -floor32(uint256(stor5[arg1].field_0)) + 64]), 
                       (32 * uint256(stor5[arg1].field_0)) + 192,
                       (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_0)) + 224,
                       uint256(stor5[arg1].field_768),
                       uint256(stor5[arg1].field_1024)
            mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192] = uint256(stor5[arg1][2].field_0)
            idx = (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192
            s = 0
            while (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 160 > idx:
                mem[idx + 32] = uint256(stor5[arg1][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        else:
            mem[(32 * uint256(stor5[arg1].field_0)) + 160] = uint256(stor5[arg1][1].field_0)
            idx = (32 * uint256(stor5[arg1].field_0)) + 160
            s = 0
            while (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 128 > idx:
                mem[idx + 32] = uint256(stor5[arg1][s + 1].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if uint256(stor5[arg1].field_512):
                mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192] = uint256(stor5[arg1][2].field_0)
                idx = (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192
                s = 0
                while (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 160 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        mem[128] = address(stor5[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor5[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor5[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(stor5[arg1].field_256):
            mem[(32 * uint256(stor5[arg1].field_0)) + 160] = uint256(stor5[arg1][1].field_0)
            idx = (32 * uint256(stor5[arg1].field_0)) + 160
            s = 0
            while (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 128 > idx:
                mem[idx + 32] = uint256(stor5[arg1][s + 1].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        if uint256(stor5[arg1].field_512):
            mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192] = uint256(stor5[arg1][2].field_0)
            idx = (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192
            s = 0
            while (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 160 > idx:
                mem[idx + 32] = uint256(stor5[arg1][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 384 len floor32(uint256(stor5[arg1].field_0))] = mem[128 len floor32(uint256(stor5[arg1].field_0))]
    mem[(64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 384] = uint256(stor5[arg1].field_256)
    mem[(64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + 416 len floor32(uint256(stor5[arg1].field_256))] = mem[(32 * uint256(stor5[arg1].field_0)) + 160 len floor32(uint256(stor5[arg1].field_256))]
    mem[(64 * uint256(stor5[arg1].field_256)) + (64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_512)) + 416] = uint256(stor5[arg1].field_512)
    mem[(64 * uint256(stor5[arg1].field_256)) + (64 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_512)) + 448 len floor32(uint256(stor5[arg1].field_512))] = mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + 192 len floor32(uint256(stor5[arg1].field_512))]
    return Array(len=uint256(stor5[arg1].field_0), data=mem[128 len floor32(uint256(stor5[arg1].field_0))], mem[(32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + floor32(uint256(stor5[arg1].field_0)) + 384 len (32 * uint256(stor5[arg1].field_0)) + (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_512)) + -floor32(uint256(stor5[arg1].field_0)) + 64]), 
           (32 * uint256(stor5[arg1].field_0)) + 192,
           (32 * uint256(stor5[arg1].field_256)) + (32 * uint256(stor5[arg1].field_0)) + 224,
           uint256(stor5[arg1].field_768),
           uint256(stor5[arg1].field_1024)
}

function play(bytes32 arg1) payable {
    require not uint8(stor2.field_0)
    if stor7[arg1]:
        revert with 0, 'luckyblock is ended'
    if msg.value < uint256(stor6[arg1].field_512):
        revert with 0, 'sender value not enough'
    require 0 < uint256(stor6[arg1].field_0)
    if not address(stor6[arg1].field_0):
        require 0 < uint256(stor5[arg1].field_0)
        if address(stor5[arg1].field_0):
            s = 0
            idx = 0
            while uint8(idx) < uint256(stor5[arg1].field_0):
                require uint8(idx) < uint256(stor5[arg1].field_256)
                require uint8(idx) < uint256(stor5[arg1].field_0)
                mem[0] = sha3(arg1, 5)
                mem[100] = this.address
                require ext_code.size(address(stor5[arg1][uint8(idx)].field_0))
                call address(stor5[arg1][uint8(idx)].field_0).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                s = uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                idx = idx + 1
                continue 
    else:
        idx = 0
        while uint8(idx) < uint256(stor6[arg1].field_0):
            require uint8(idx) < uint256(stor6[arg1].field_256)
            require uint8(idx) < uint256(stor6[arg1].field_0)
            require ext_code.size(address(stor6[arg1][uint8(idx)].field_0))
            call address(stor6[arg1][uint8(idx)].field_0).0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor6', 6))) + uint8(idx)].field_0)
            require uint8(idx) < uint256(stor6[arg1].field_256)
            require uint8(idx) < uint256(stor6[arg1].field_0)
            require ext_code.size(address(stor6[arg1][uint8(idx)].field_0))
            call address(stor6[arg1][uint8(idx)].field_0).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor6', 6))) + uint8(idx)].field_0)
            require uint8(idx) < uint256(stor6[arg1].field_0)
            require uint8(idx) < uint256(stor6[arg1].field_256)
            mem[0] = sha3(arg1, 6) + 1
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor6', 6))) + uint8(idx)].field_0)
            require ext_code.size(address(stor6[arg1][uint8(idx)].field_0))
            call address(stor6[arg1][uint8(idx)].field_0).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor6', 6))) + uint8(idx)].field_0)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
        require 0 < uint256(stor5[arg1].field_0)
        if address(stor5[arg1].field_0):
            s = 0
            idx = 0
            while uint8(idx) < uint256(stor5[arg1].field_0):
                require uint8(idx) < uint256(stor5[arg1].field_256)
                require uint8(idx) < uint256(stor5[arg1].field_0)
                mem[0] = sha3(arg1, 5)
                mem[100] = this.address
                require ext_code.size(address(stor5[arg1][uint8(idx)].field_0))
                call address(stor5[arg1][uint8(idx)].field_0).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                s = uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                idx = idx + 1
                continue 
    if eth.balance(this.address) < uint256(stor5[arg1].field_768):
        revert with 0, 'contract value not enough'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).getRandom() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint8(idx) < uint256(stor5[arg1].field_0):
        require 0 < uint256(stor5[arg1].field_0)
        mem[0] = sha3(arg1, 5)
        if address(stor5[arg1].field_0):
            require uint8(idx) < uint256(stor5[arg1].field_512)
            mem[0] = sha3(arg1, 5) + 2
            if uint8(ext_call.return_data[0]) + uint256(stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0) >= 100:
                require uint8(idx) < uint256(stor5[arg1].field_0)
                require uint8(idx) < uint256(stor5[arg1].field_256)
                mem[0] = sha3(arg1, 5) + 1
                mem[100] = msg.sender
                mem[132] = uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                require ext_code.size(address(stor5[arg1][uint8(idx)].field_0))
                call address(stor5[arg1][uint8(idx)].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor5', 5))) + uint8(idx)].field_0)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
    if uint256(stor6[arg1].field_512) > msg.value:
        revert with 0, 'SafeMath sub failed'
    if uint8(ext_call.return_data[0]) + uint256(stor5[arg1].field_1024) < 100:
        if msg.value - uint256(stor6[arg1].field_512) > 0:
            call msg.sender with:
               value msg.value - uint256(stor6[arg1].field_512) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint256(stor5[arg1].field_768) + msg.value - uint256(stor6[arg1].field_512) < uint256(stor5[arg1].field_768):
            revert with 0, 'SafeMath add failed'
        if uint256(stor5[arg1].field_768) + msg.value - uint256(stor6[arg1].field_512) > 0:
            call msg.sender with:
               value uint256(stor5[arg1].field_768) + msg.value - uint256(stor6[arg1].field_512) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Play(msg.sender, uint8(ext_call.return_data[0]), arg1);
}



}
